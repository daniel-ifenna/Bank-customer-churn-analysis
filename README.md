# Customer Churn Analysis Report  
- Prepared by: Ifenna Daniel
- Client: Confidential Financial Institution
- Sector: Banking and Finance
- Date: June 2025

## Introduction  
Customer churn is a critical issue for financial institutions, impacting revenue and long-term business sustainability. My clients are experiencing a significant issue with customer retention.

## Objectives 
My role is to design and deploy a machine learning model that predicts which customers are likely to churn based on the given variables present in the dataset. Also to answer the following questions
1. What are the key factors influencing customer churn?  
2. How does customer churn vary across countries?  
3. Which customer segments are most at risk of churning?  
4. What is the accuracy of the predictive model?  

### Technical Tools  
- Regression Tree
- Decision Tree 
- R Programming
- Tableau 

## Data Preprocessing and Manipulation  
Performed exploratory data analysis. There were **no missing values or duplicates**. The column **`Customer_Id`** was dropped to optimize the dataset for analysis.  
Also, discovered **distribution of customer churn** was analyzed, revealing the following:  
- **Churned Customers:** **20.4%**  
- **Non-Churned Customers:** **79.6%**  

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
- **Number of Products**: Customers with **less than two products** have **higher churn risk**.  
- **Estimated Salary**: Customers with **lower estimated salaries** tend to churn more.  
- **Country**: Customers from **Germany** exhibit a **higher churn rate**.  

### **2. How does customer churn vary across countries?**  
- **Germany**: Highest churn rate, especially among **older customers with limited product holdings**.  
- **France & Spain**: **Lower churn rates**, especially for customers **with active memberships**.  

![](Country%20~%20churn.png)                 


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
![](R.tree%20chart.png)  

--
[Download PDF Report](Predictive%20model%20report.pdf)
# Dashboard link
[Tableau Churn](https://public.tableau.com/app/profile/ifenna.daniel/viz/Churnproject_17422301347520/Dashboard1?publish=yes)
