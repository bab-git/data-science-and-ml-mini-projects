# Predict Advertisement Response

## Task Overview

This task involves building a data-driven model to predict the response of residents to direct mailing advertisements. The goal is to demonstrate data analysis and machine learning skills by analyzing the provided dataset, developing a predictive model, and presenting the findings.

## Data and Task Description

The data describes the information collected about a group of residents to whom the advertisements were sent by mail. The information indicates if each resident has sent a response to the advertisement and includes the following personal features about them:

- `name`: Anonymized identifier of the resident
- `age`: Age of the resident
- `lifestyle`: Lifestyle category of the resident
- `zip code`: ZIP code of the resident's area
- `family status`: Family status of the resident (e.g., single, married)
- `car`: Type of car owned by the resident (if any)
- `sports`: Preferred sport of the resident
- `earnings`: Annual earnings of the resident
- `living area`: Type of living area (e.g., urban, suburban)
- `label`: Response to the advertisement (target variable)

## Task Objectives

1. Build a predictive model that uses the nine input features to predict the resident's response to the advertisement.
2. Identify the characteristics of an ideal resident who is most likely to respond positively to the advertisement.

## Contents
- [Solution Notebook: Predict Advertisement Response](ads_task.ipynb) - A supervised model to predict the response of residents to direct mailing advertisements.
  
## Methodology

The approach to solving this task involves the following steps:

1. **Data Preprocessing**:
    - Load and explore the dataset.
    - Simplify feature names and change data types where necessary.
    - Separate categorical and numerical features.

2. **Exploratory Data Analysis (EDA)**:
    - Visualize the distribution of individual features.
    - Balance the classes regarding the number of samples.
    - Analyze the response rates to identify relevant and irrelevant features.
    - Plot feature distributions and response ratios.

3. **Model Building**:
    - Select relevant features for training the model.
    - Train a Decision Tree classifier.
    - Visualize the trained Decision Tree.

4. **Model Evaluation**:
    - Evaluate the model in a cross-validation setting.
    - Calculate accuracy, recall, and F1 score.

5. **Business Recommendations**:
    - Provide insights based on the analysis.
    - Offer recommendations to improve advertisement strategies.

6. **Supplementary Material - Technical Analysis**:
    - Investigate feature relevance using Random Forest.
    - 2D embedding of the data using t-SNE.
    - Search for the best depth for the Decision Tree using cross-validation.
    - Study feature correlations.