# Data-Warehouse1

# About Project

Department Business, Innovation and Skills published a dataset of their spending for Government’s commitment to transparency 
in expenditure in a monthly basis. I this project, I will use this dataset and built a data warehouse with it. I
perform ETL process then build a start schema. After that I have run some query to get better
understanding of the dataset then put the result in PowerBi to visualize my result.

# Data Loading
I have only used sql to perform my task. At fast, 
I have download all 12 month data. The data was .CSV format I have change it to Excel format. Then I load the dataset into sql. For that,

![image](https://user-images.githubusercontent.com/64610564/151347478-968f4446-8ac4-424f-a031-ea2a80b70d0e.png)

First put mouse curser on my database(Coursework) , then  from task to import data.

![image](https://user-images.githubusercontent.com/64610564/151347505-33b7ef4c-bd0c-44b8-8f50-75aca4d05e70.png)

Then from dropdown menu choose Microsoft Excel.

![image](https://user-images.githubusercontent.com/64610564/151347533-2796f17f-6ec0-4c59-8b2d-36bd706b491c.png)

Then from Browse choose the data I want to upload.

![image](https://user-images.githubusercontent.com/64610564/151347551-a46f96d2-769c-4af6-95f7-9e77310c312b.png)

Then for destination choose sql-server from dropdown menu.

![image](https://user-images.githubusercontent.com/64610564/151347573-8a2431de-27cf-4a75-8dab-fba864f5d362.png)

Then I needed to check the datatype. If it’s not okay change it.

![image](https://user-images.githubusercontent.com/64610564/151347610-0086e8f2-b45e-468b-a445-41c600a2c4a5.png)

Then press next and finish to upload the data. Then the data will upload into the database as a table. I have done the same process for all 12  dataset.

# Data Preprocessing
Then Done some preprocessing like drop null value. Check all Column name is the same and all file has the same number of column.
Then I have done uninion to add all 12 files together. Then I copy the file and work with it.

# Fact
After loading and pre-processing I had 42011 data in the business table. In the real word scenario this data volume can be million to billion.
So if I perform any query into this table the performance will be slow. So for better performance I divide the dataset into different table a build a star schema.

![image](https://user-images.githubusercontent.com/64610564/151349218-bfb3cf1a-e7f7-4a37-8a55-09e718adb632.png)

After build the Schema I have performed 3 complex query task to analyse the data
1. In this query I have shown the top 3 Supplier and the Amount spent  on this Supplier for whole year.
Then, I had to get the top 3 Supplier and Spend amount for every quarter of the year.

2. In query 2 I have find the Expense type which spend amount more the the average spend amount of the half year

3. : In query3 I had to get the top 10 [Expense area] for every month and compare it with previous months and if the Rank of a [Expense Area ] 
is there I needed to find if the rank goes up or down.

# Powerbi

After that I have put my result into visualization with powerbi

![image](https://user-images.githubusercontent.com/64610564/151349947-c3eaf2db-a8e4-4ee4-8b0c-6ddc958f9fd7.png)

