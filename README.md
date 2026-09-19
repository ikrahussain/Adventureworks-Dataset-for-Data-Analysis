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
  <li><strong>Data Visualization:</strong> Power BI / Tableau </li>
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

Findings, Insights and Visualisations:
After cleaning and analysing the AdventureWorks data, I used MySQL to identify different patterns in the sales and returns data. I then used Power BI to turn these results into visualisations and an interactive dashboard.

Key Trends and Patterns:
- One of the main areas I looked at was sales over time. By combining the sales data from 2020, 2021 and 2022, I was able to compare sales performance across different years and identify changes in sales over time.
- I also analysed sales by product and product category to see which products and categories contributed the most to overall sales. This helped me understand which areas of the product range were performing well.
- Another area I looked at was sales by territory. Using the Territory Lookup table, I could compare performance across different regions and countries.
- I also analysed the returns data to identify which products and territories had higher return quantities. This provided another way of looking at product performance, rather than only focusing on sales.


Visualisations:
I used several different visualisations in Power BI to present my findings, including:
- KPI cards to show important figures such as total sales and total returns.
- Line charts to show how sales changed over time.
- Bar charts to compare sales between products and categories.
- Charts by territory to compare geographical sales performance.
- Return charts to identify products or areas with higher levels of returns.
- Filters and slicers to allow the data to be explored by year, product, category and territory.

<img width="1530" height="862" alt="image" src="https://github.com/user-attachments/assets/388d4766-47a6-42aa-8e9c-92265b01f26b" />


<img width="1538" height="850" alt="image" src="https://github.com/user-attachments/assets/13986a48-6fa2-4e2d-9b1e-8ffceb9148e9" />


<img width="1546" height="852" alt="image" src="https://github.com/user-attachments/assets/6104e3cf-e7ee-4d03-a66f-4e04ff9cd3aa" />


<img width="1516" height="844" alt="image" src="https://github.com/user-attachments/assets/4f5d5af4-9e26-4542-9177-133e5098942c" />



These visualisations made it easier to identify patterns in the data and allowed the results to be explored interactively.

Important Observations:
- The analysis showed that sales performance can vary depending on the product, category, time period and territory. Looking at returns alongside sales also provided a better understanding of product performance, as a product with high sales may also have a higher number of returns.
- The different tables in the dataset were connected using common keys such as ProductKey, CustomerKey and TerritoryKey. This allowed me to combine information from different areas of the business and analyse relationships between sales, customers, products and territories. 

Overall, the Power BI dashboard helped turn the results of my SQL analysis into a more visual and easier-to-understand format. It allowed me to explore the data and identify patterns that would be harder to see from tables of raw data alone. 

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
