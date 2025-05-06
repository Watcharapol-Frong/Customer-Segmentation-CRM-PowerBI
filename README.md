# Customer-Segmentation-CRM-PowerBI
Customer Segmentation CRM PowerBI &amp; analysis test

# 🎯 Project Objectives
The main objective of this project is to explore how different types of CRM marketing campaigns perform across various customer segments.
Using Power BI as the main tool, this project aims to visualize campaign effectiveness, understand customer responses, and identify patterns that may help improve future marketing strategies.

In addition, Python was used for basic statistical testing to support data-driven insights. The project was developed using synthetic data for the purpose of learning and practice.

# 📂 Dataset Overview
The dataset used in this project is a synthetic marketing campaign dataset, designed to simulate real-world CRM data. It includes key attributes related to campaign types, communication channels, target audiences, customer segments, and campaign outcomes such as conversion rate, ROI, and engagement score.

The data was stored in a MySQL database hosted on AWS RDS, and later imported into Power BI for analysis and visualization. Basic data preprocessing and validation were performed to ensure consistency before building the dashboard.
Please note that the data is fictional and was created for learning and demonstration purposes only.

This dataset is synthetic and was created for the purpose of practicing CRM and marketing campaign analysis.
**Source**: Kaggle – [Marketing Campaign Performance Dataset](https://www.kaggle.com/datasets/manishabhatt22/marketing-campaign-performance-dataset)

**The data does not represent actual customer behavior or real business outcomes.**

# 🔁 Process of the Project
This project followed a step-by-step approach to ensure a clean and insightful data analysis outcome. Below are the key steps in the workflow:

1. **Data Acquisition**
   Synthetic dataset was imported and stored in a MySQL database on AWS RDS.
2. **Data Cleaning & Preparation**
   Basic data validation, formatting, and removal of duplicates were performed using SQL and Beekeeper Studio.
3. **Data Exploration & Statistical Testing**
   Python (via JetBrains Datalore) was used to perform ANOVA and Chi-square tests to explore potential differences and relationships 
   among variables.
4. **Dashboard Development**
   Power BI was used to build an interactive, one-page dashboard summarizing key metrics like ROI, conversion rate, and engagement 
   score, along with slicers for user exploration.
5. **Report Writing & Publishing**
   The findings were summarized into a presentation-style report for inclusion in a professional portfolio.

# 📊 Statistical Test Results Summary

| No. | Test Type  | Variables Tested                    | Test Statistic | P-Value | Conclusion                    |
| --- | ---------- | ----------------------------------- | -------------- | ------- | ----------------------------- |
| 1   | ANOVA      | ROI \~ Campaign Type                | 1.0170         | 0.3969  | ❌ No significant difference   |
| 2   | ANOVA      | Conversion Rate \~ Customer Segment | 0.8991         | 0.4634  | ❌ No significant difference   |
| 3   | ANOVA      | Engagement Score \~ Campaign Type   | 0.4255         | 0.7903  | ❌ No significant difference   |
| 4   | Chi-Square | Channel Used × Customer Segment     | 19.1343        | 0.5131  | ❌ No significant relationship |
| 5   | Chi-Square | Campaign Type × Customer Segment    | 14.2767        | 0.5781  | ❌ No significant relationship |
| 6   | Chi-Square | Channel Used × Campaign Type        | 17.3612        | 0.6294  | ❌ No significant relationship |

**Interpretation Summary**
- All statistical tests returned p-values greater than 0.05, meaning we fail to reject the null hypothesis in every case.

- This implies there were no statistically significant differences or associations between the tested variables.

- This result is expected, given the use of synthetic (balanced) data.

- Nonetheless, the process of conducting these tests shows capability in:

  - Applying statistical methods using Python

  - Selecting appropriate tests (ANOVA & Chi-Square)

  - Interpreting p-values and statistical significance in a business context
 
# ✅ KEY INSIGHTS (Simplified & Clearer Version)
- All campaign types showed similar performance in both ROI and conversion rate.

- There were no major differences in results across customer segments or campaign types.

- Statistical tests (ANOVA and Chi-Square) confirmed that performance differences were not significant.

- The dataset was synthetically created but is well-balanced and suitable for practicing CRM analysis and 
  dashboard creation.
