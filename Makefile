PYTHON_VERSION := 3.12.0
VENV_DIR := .env
REQUIREMENTS_STRICT := requirements_strict.txt
REQUIREMENTS := requirements.txt

# Default target
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  make help            - Show this help message"
	@echo "  make check-python    - Enforce Python version"
	@echo "  make setup           - Create venv and install strict requirements"
	@echo "  make setup-flex      - Create venv and install flexible requirements"
	@echo "  make notebook TASK=  - Run a specific task (venv or Docker-aware)"
	@echo "  make clean           - Remove virtual environment"

# Strict Python version check (fatal)
.PHONY: check-python
check-python:
	@echo "Enforcing Python version: $(PYTHON_VERSION)"
	@python3 --version | grep -q "Python $(PYTHON_VERSION)" || \
	    (echo "❌ Error: Python $(PYTHON_VERSION) is required. Please install or switch to this version."; exit 1)
	@echo "✅ Python $(PYTHON_VERSION) detected."

UNAME_S := $(shell uname -s)

.PHONY: check-libomp
check-libomp:
ifeq ($(UNAME_S),Darwin)
	@brew list libomp >/dev/null 2>&1 && \
		echo "✅ libomp is installed." || \
		(echo \"❌ libomp is missing. Run: brew install libomp\"; exit 1)
else
	@echo "ℹ️  libomp check skipped (non-macOS system)"
endif


# Setup with strict requirements (requires correct Python)
.PHONY: setup
setup: check-python check-libomp $(VENV_DIR)/bin/activate
	@$(VENV_DIR)/bin/pip install --upgrade pip
	@$(VENV_DIR)/bin/pip install -r $(REQUIREMENTS_STRICT)

# Setup with flexible requirements (requires correct Python)
.PHONY: setup-flex
setup-flex: check-python check-libomp $(VENV_DIR)/bin/activate
	@$(VENV_DIR)/bin/pip install --upgrade pip
	@$(VENV_DIR)/bin/pip install -r $(REQUIREMENTS)

# Create venv (if not exists)
$(VENV_DIR)/bin/activate:
	@test -d $(VENV_DIR) || python3 -m venv $(VENV_DIR)

# Install task-specific requirements if present
.PHONY: task-setup
task-setup: check-python
ifndef TASK
	$(error TASK is not set. Use 'make notebook TASK=task_name')
endif
	@if [ -f tasks/$(TASK)/requirements.txt ]; then \
		echo "🔄 Installing tasks/$(TASK)/requirements.txt..."; \
		$(VENV_DIR)/bin/pip install -r tasks/$(TASK)/requirements.txt; \
	fi

# Run a specific task (detects Dockerfile)
.PHONY: notebook
notebook: task-setup
ifndef TASK
	$(error TASK is not set. Use 'make notebook TASK=task_name')
endif
	@echo "🚀 Launching Jupyter notebook for $(TASK)"; \
	cd tasks/$(TASK) && ../../$(VENV_DIR)/bin/jupyter notebook; \

# Clean environment
.PHONY: clean
clean:
	@rm -rf $(VENV_DIR)
	@echo "✅ Cleaned virtual environment"
