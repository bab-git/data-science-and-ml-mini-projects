# Data Science and Machine Learning Mini Tasks

## About This Repository

Welcome to my collection of data science and machine learning tasks. 
This repository contains a series of single-notebook solutions to various data-related problems.

## Table of Contents
1. [Overview](#overview)
2. [How to Use This Repository](#how-to-use-this-repository)
3. [Tasks List](#tasks-list)
4. [Relevant Skills](#relevant-skills)
5. [Technologies Used](#technologies-used)


## Overview

These tasks represent a range of data analysis and machine learning exercises, typically completed within a single Jupyter notebook. 
Some of these may be derived from interview challenges I've encountered, while others are practice exercises or small personal projects.

Key points about this collection:

- Each notebook focuses on a specific data analysis or machine learning task
- Tasks vary in complexity but are generally designed to be concise and focused
- The solutions demonstrate my approach to data problems and coding style
- Data used is either synthetic, from public datasets, or modified to ensure privacy

Feel free to explore the notebooks. If you have any questions about the approaches used or would like to discuss any of the tasks, please don't hesitate to reach out!

## How to Use This Repository

1. Clone the repository:
```bash
git clone https://github.com/bab-git/data-science-interviews.git
```

2. Python Environment Setup:
Ensure you have Python 3.12.0 installed. You can install it using [pyenv](https://github.com/pyenv/pyenv):
```bash
pyenv install 3.12.0
pyenv local 3.12.0
```

3. Use `make` to set up your environment (strict setup recommended):
- Option A — Strict (preferred for reproducibility)
```bash
make setup          # for strict requirements
```
- Option B — Flexible (use with caution)
```bash
make setup-flex     # for flexible requirements
```
  - ⚠️ This is more forgiving with package versions but may require minor code fixes depending on Python version.

4. Run a specific task notebook:
```bash
make notebook TASK=task_folder_name
```
This will:
- Check that your Python version is 3.12.0
- Install any task-specific `requirements.txt` if available
- Launch Jupyter Notebook in the given task directory

5. To reset the environment:
```bash
make clean
```

## Tasks List:
1. [Predict Advertisement Response](tasks/Predict_Advertisement_Response/README.md) - A supervised model to predict the response of residents to direct mailing advertisements.
2. [Predictive Modeling for Material Strength](tasks/Predictive_Modeling_for_Material_Strength/README.md) - a regression-based predictive model to estimate the material strength.
3. [Recipe Recommender for Grocery Apps](tasks/Recommendation_System_Food_Recipes/README.md): Presentation slides detailing the business proposal, system architecture, and implementation strategy for a Recipe Recommender System.
4. [Customer Satisfaction Prediction](tasks/Customer_Satisfaction_Prediction/README.md): A classification model to predict customer satisfaction of an online store based on demographic, transactional, and behavioral data.
5. [Hotel Staff Size Estimation via Regression](tasks/Hotel_Staff_Size_Estimation_via_Regression/README.md): A regression model to estimate the optimal number of hotel staff for prospective buyers based on various hotel characteristics.
6. [Other tasks will be added soon]


## Relevant Skills

- Data Cleaning and Preprocessing
- Exploratory Data Analysis (EDA)
- Feature Engineering
- Machine Learning (Supervised and Unsupervised)
- Deep Learning
<!-- - Natural Language Processing (NLP) -->
- Time Series Analysis
- Data Visualization

## Technologies Used

- Python
- Pandas, NumPy
- Scikit-learn
- TensorFlow, PyTorch
- Matplotlib, Seaborn
- Jupyter Notebooks

## Contributing

While this repository is primarily for showcasing my work, I welcome discussions and suggestions. 
Feel free to open an issue if you have any questions or ideas for improvement.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

LinkedIn: [https://www.linkedin.com/in/bhosseini/](https://www.linkedin.com/in/bhosseini/) 

GitHub: [https://github.com/bab-git/](https://github.com/bab-git/)