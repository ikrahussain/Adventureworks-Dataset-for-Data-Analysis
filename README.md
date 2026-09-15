# Adventureworks-Dataset-for-Data-Analysis


For my data analysis project, I used the AdventureWorks dataset from Kaggle, which contains data on sales, customers, products, returns and territories. I chose this dataset because it allowed me to work with different types of business data and practise a complete data analysis process.

The aim of the project was to understand sales performance and identify patterns in products, customers, territories and returns. I wanted to answer questions such as which products and categories performed best, how sales changed over time, which territories generated the most sales, and where there were higher levels of product returns.

I used Jupyter Notebook and Python to clean and transform the data, MySQL to analyse it using SQL and Power BI to visualise the results and create an interactive dashboard.
  


---

## Table of Contents

* [Header](#header)  
* [Dataset](#dataset)  
* [Technologies Used](#technologies-used)  
* [Installation](#installation)  


---

## Header

- **Motivation:**
  - I chose the AdventureWorks dataset because it gave me the opportunity to work with realistic business data rather than a small or simple dataset.
  - It contains information about sales, customers, products, returns and territories, which allowed me to explore different areas of a business.
  - I also wanted to practise using different tools together, including Python, MySQL and Power BI.
    
- **Objective:**
  - The main objective of my analysis was to understand the company's sales performance and identify useful patterns in the data.
  - I wanted to find out which products and categories performed best, how sales changed over time, which territories and customers contributed the most sales and which products had higher levels of returns.
  - I then wanted to present these findings clearly using Power BI.
    
- **Learning Outcomes:**
  - During the project, I learned how to work with a larger dataset and prepare it for analysis.
  - I improved my skills in Python and Pandas by cleaning and transforming the data in Jupyter Notebook.
  - I also developed my SQL skills by using MySQL to join tables, filter data and calculate different metrics.
  - Finally, I learned how to use Power BI to create visualisations and present data in a way that is easier to understand.
  - Overall, the project helped me understand how the different stages of a data analysis project connect together, from raw data through to final insights.
---

## Dataset

Yes. For this section, I would keep it clear and not overcomplicate it. One thing to note is that the Kaggle dataset is made up of **10 separate tables**, so there isn't one single row/column count for the whole dataset. Kaggle lists **62 columns across the files**, with each table having a different number of rows and columns.  Kaggle

 Dataset✓

## Dataset

 ### Source

- I used the **AdventureWorks Dataset for Data Analysis** from Kaggle. The dataset was provided by Maven Analytics and contains 10 different tables covering areas such as sales, customers, products, returns, dates and territories. 

- This is the link: https://www.kaggle.com/datasets/shaikhshoeb/adventureworks-dataset-for-data-analysis

 ### Size

- The dataset contains **10 separate tables and 62 columns in total**.
- The number of rows and columns varies between each table because they contain different types of information.
- The main sales tables contain information such as order date, order number, product, customer, territory and order quantity. 

 ### Key Features/Columns
 
 The dataset contains 10 different tables, with each table providing different information about the business. I used the following key columns in my analysis:

  - Sales: OrderDate, OrderNumber, ProductKey, CustomerKey, TerritoryKey and OrderQuantity. These columns allowed me to analyse when sales were made, which products and customers were involved, where the sales took place and how many products were sold.

  - Customers: CustomerKey, FirstName, LastName, Gender, AnnualIncome and Occupation. I used these columns to understand customer information and analyse sales based on different customer characteristics.

  - Products: ProductKey, ProductName, ProductSubcategoryKey, ProductCost and ProductPrice. These were used to analyse product performance, pricing and costs.

  - Product Categories and Subcategories: ProductCategoryKey, CategoryName, ProductSubcategoryKey and SubcategoryName. These allowed me to group products into categories and subcategories when analysing sales performance.

  - Returns: ReturnDate, TerritoryKey, ProductKey and ReturnQuantity. These columns were used to analyse product returns and identify products or areas with higher return levels.

  - Territories: SalesTerritoryKey, Region, Country and Continent. I used these to compare sales performance across different geographical areas.

  - Calendar: Date. This was used to support the analysis of sales over time.

The different tables are connected using key columns such as ProductKey, CustomerKey and TerritoryKey. This allowed me to join the tables in MySQL and analyse the data together rather than looking at each table separately. 
These columns allowed me to connect the different tables and analyse sales performance by products, customers, dates and territories. 

 ### Preprocessing and Cleaning

- Before analysing the data, I used **Jupyter Notebook and Python/Pandas** to check the datasets for missing values, duplicate records and incorrect data types.
- I cleaned the data where necessary and made sure dates and other fields were in the correct format.
- I also combined the sales data from the different years into one dataset so that I could analyse the overall sales performance across the period.
- This made the data easier to work with when I later imported it into MySQL for SQL analysis.\
 :::

---

<h2>Technologies Used</h2>

<ul>
  <li><strong>Languages & Libraries:</strong> Python, Pandas, Numpy, MySQL,</li>
  <li><strong>Tools:</strong> Jupyter Notebook, VS Code, Git, GitHub</li>
  <li><strong>Data Visualization:</strong> Power BI / Tableau (if applicable)</li>
</ul>


  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python">
  <img src="https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white" alt="Pandas">
  <img src="https://img.shields.io/badge/Jupiyter_notebooks-150458?style=for-the-badge&logo=jupyter_notebooks&logoColor=white" alt="Jupyter Notebooks">
  <img src="https://img.shields.io/badge/MySQL-11557C?style=for-the-badge&logo=MYsql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/Power_BI-4C72B0?style=for-the-badge&logo=Power_BI&logoColor=white" alt="Power BI">
</p>

---

## Usage

Instructions for using the project:

1. Open the main notebook ('http://localhost:8786/notebooks/Adventureworks%20Dataset%20JN.ipynb?')  
2. Run each cell sequentially to reproduce the analysis  
3. Visualizations and results will be generated automatically  

---

## Analysis & Visualizations 

Summarize your findings, insights, and visualizations:

- Describe the key trends and patterns you observed  
- Show charts, graphs, and tables  ![Graph](img1.png)
- Include important observations or correlations found in the data  

---

## Conclusion 

- Summarize the outcome of your analysis  
- What are the main insights or takeaways?  
- How could this analysis inform decision-making?  
- Recommendations or next steps for further analysis  

---

## Credits

- **Collaborators:** Name – [GitHub Profile](https://github.com/USERNAME)  
- **Dataset Source:** [Link](https://link-to-dataset.com)  
- **Tutorials / References:** [Link](https://link.com)  

---

## License

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/) – feel free to use and modify it.  

---
