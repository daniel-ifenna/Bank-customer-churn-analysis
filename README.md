# Customer Churn Analysis Report  

## Introduction  
Customer churn is a critical issue for financial institutions, impacting revenue and long-term business sustainability.  
This project aims to identify factors leading to customer churn based on various attributes:  

`credit_score` `country` `gender` `age`  
`tenure` `balance` `products_number` `credit_card`  
`active_member` `estimated_salary` `churn`  

## Objectives  
1. What are the key factors influencing customer churn?  
2. How does customer churn vary across countries?  
3. Which customer segments are most at risk of churning?  
4. What is the accuracy of the predictive model?  

## Technical Tools  
- MySQL  
- R Programming  

## Data Preprocessing and Manipulation  
The data was imported into **MySQL** for cleaning. There were **no missing values or duplicates**. The column **`Customer_Id`** was dropped to optimize the dataset for analysis.  

Using **SQL**, the **distribution of customer churn** was analyzed, revealing the following:  
- **Churned Customers:** **20.4%**  
- **Non-Churned Customers:** **79.6%**  

[View SQL Code](https://github.com/daniel-ifenna/Bank-customer-churn-analysis/blob/7b8708649fa256480f4f7dbdc449a7bed7e4ce38/Customer_churn%20data%20cleaning.sql)  

The cleaned data was then imported into **R** for modeling.  

## Model Approach  

### **Decision Tree Vs. Regression Tree**  
- The **Regression Tree** outperformed the Decision Tree with an **accuracy of 86.1%**, offering more precise probability estimates for churn.  
- The **Decision Tree** provided interpretable rules but had a slightly lower accuracy of **83.6%**.  

Thus, the **Regression Tree model** was selected for deeper insights.  

## Key Findings  

### **1. What are the key factors influencing customer churn?**  
- **Age**: Customers **over 50** are more likely to churn.  
- **Active Membership**: **Inactive** customers show a **higher churn probability**.  
- **Number of Products**: Customers with **more than two products** have **higher churn risk**.  
- **Estimated Salary**: Customers with **lower estimated salaries** tend to churn more.  
- **Country**: Customers from **Germany** exhibit a **higher churn rate**.  

### **2. How does customer churn vary across countries?**  
- **Germany**: Highest churn rate, especially among **older customers with limited product holdings**.  
- **France & Spain**: **Lower churn rates**, especially for customers **with active memberships**.  

[Bar Plot](Country%20~%20churn.png)                 []()

### **3. Which customer segments are most at risk of churning?**  
- **Customers over 50 years old**  
- **German customers with low salaries and inactive memberships**  
- **Individuals with only 1 or 2 products**  

## Conclusion & Recommendations  
To reduce customer churn, the bank can implement the following strategies:  

1. **Target Inactive Customers** – Launch engagement campaigns for inactive members.  
2. **Increase Product Adoption** – Encourage single-product holders to adopt additional products.  
3. **Monitor High-Risk Customers** – Develop retention programs for customers over **50 years old**.  
4. **Customize Regional Strategies** – Focus on **Germany** with **personalized offers**.  
5. **Salary-Based Incentives** – Provide **special incentives** for customers with **lower estimated salaries**.  

## Regression Tree Visualization  
***(Insert Regression Tree Chart Here)***  
[View R Code](https://github.com/daniel-ifenna/Bank-customer-churn-analysis/blob/7b8708649fa256480f4f7dbdc449a7bed7e4ce38/Customer_churn%20data%20cleaning.sql) 
