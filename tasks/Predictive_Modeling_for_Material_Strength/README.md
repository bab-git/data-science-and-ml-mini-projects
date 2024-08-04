# Predictive Modeling for Material Strength

## Description

This task involves developing a predictive model for material strength based on easily accessible chemical and mechanical properties. The goal is to avoid waiting for time-consuming and costly laboratory measurements.    
The dataset provided includes the target variable 'Y', which is the mean of six individual lab measurements (Y1, ..., Y6).

## Instructions

1. **Develop a Prediction Model**:
   - Predict the material strength ('Y') using the given dataset.
   - Utilize various machine learning techniques to achieve the best possible model performance.

2. **Estimate Laboratory Measurement Error**:
   - Estimate the inherent laboratory measurement error of the material strength.
   - Make a statement about the best possible model performance considering this error.

3. **Evaluation Metric**:
   - The model's performance on unseen data will be evaluated using Mean Absolute Error (MAE).

## Contents
- [Solution Notebook: Predictive Modeling for Material Strength](DS_task_final.ipynb) - A regression-based predictive model to estimate the material strength.
  
## Methodology

### Data Preprocessing

- **Loading Data**: The data is loaded from an Excel file.
- **Data Cleaning**: Removal of missing values and irrelevant columns.
- **Outlier Detection**: Identifying and removing outliers based on interquartile range (IQR).
- **Feature Selection**: Removing redundant features based on correlation analysis.
- **Data Splitting**: Splitting the data into training and testing sets.
- **Skewness Correction**: Applying Box-Cox transformation to reduce skewness.
- **Normalization**: Normalizing features to have zero mean and unit variance.

### Exploratory Data Analysis (EDA)

- **Visualization**: Scatter plots and box plots to understand data distribution and detect outliers.
- **Correlation Analysis**: Heatmap to visualize correlations between features.

### Modeling

- **Feature Relevance**: Calculating mutual information to assess feature importance.
- **Model Selection**: Trying multiple models including Linear Regression, ElasticNet, Random Forest, SVR, and kNN.
- **Hyperparameter Tuning**: Using GridSearchCV to find the best model parameters.
- **Model Training**: Training models using the optimal number of features.
- **Model Evaluation**: Evaluating models on test data using MAE and MAPE.

### Tools and Libraries Used

- Python
- Jupyter Notebook
- Pandas
- NumPy
- Scikit-Learn
- Matplotlib/Seaborn
- Scipy
- Random Forest Regressor
- ElasticNet
- Docker

## Reproducibility - Docker Setup

To ensure reproducibility and an isolated environment, a Docker container is used to run the Jupyter Notebook.

### Build and Run the Docker Container
1. Build the Docker Image:
```bash
docker build -t material_task:latest .
```
2. Run the Docker Container:
```bash
docker run -p 8888:8888 --name material_container material_task
```
3. Access the Jupyter Notebook:
Open a web browser and navigate to http://localhost:8888   
You will see the Jupyter Notebook interface where you can open and run material_strength_prediction.ipynb.



