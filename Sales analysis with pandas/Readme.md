# Exploratory Data Analysis on an Electronics Store (Sales & Buy patterns)
Exploratory Data Analysis and Data Visualization of an Electronics Store using Python.
![eda s](https://github.com/souptik-d/Portfolio_projects/assets/128696109/0b06ba05-3b6e-4b4e-a87d-a93887d2688c)


The data contains hundreds of thousands of electronics store purchases broken down by month, product type, cost, purchase address, etc. It is a 12 months sales data and I have to analyse it to find patterns of sales and buys.
I have analysed the 12 months data-set and provided the insights below.
*	**Framework**- Jupyter Notebook
*	**Language**- Python
*	**Libraries**- Numpy, Panda
*	**Plot Lib**- Seaborn, Matplotlib

**Dataset -** [Data-set Link](https://github.com/KeithGalli/Pandas-Data-Science-Tasks/tree/master/SalesAnalysis/Sales_Data)

## Cleaning the Data set
We start by cleaning our data. Tasks during this section include:
*	Finding any null values in the dataset that could affect our calculations
*	Fill and Drop NaN values from DataFrame whenever necessary using appropriate measures
*	Removing rows based on a condition
*	Change the type of columns (to_numeric, to_datetime, astype) to ease the calculation process.

## Analysis Insights
Once we have cleaned up our data a bit, we move to the data exploration section. In this section we explore 5 high level business questions related to our data:

### **1.	What was the best month for sales? How much was earned that month?**

The best month for sales was in December. More than 4 million USD was earned in that month. Such high sales in the month of December might be due to festive seasons like Christmas.

![1](https://github.com/souptik-d/Portfolio_projects/assets/128696109/c812f4ca-4fd6-4020-bea9-6675b8474c18)


### **2.	What city recorded the highest sales?**

San Fransisco recorded the highest sales and the sale amount was approx. 8 million USD.

| Table                  | Graph                  |
| ---------------------- | ---------------------- |
|  ![2a](https://github.com/souptik-d/Portfolio_projects/assets/128696109/60c393b0-728e-48bc-8b8c-7396326df0fe) | ![2b](https://github.com/souptik-d/Portfolio_projects/assets/128696109/4e0c751a-a859-4e62-b88b-b0698d7bd21a) |



### **3.	What time should we display advertisements to maximize the likelihood of customer’s buying product?**

I found out from the graph that 11th Hour and 19th Hour are the best time for advertisement as most people order at that time of the day. And also running good promotional offers just before that time of the day can also boost sales.

![3](https://github.com/souptik-d/Portfolio_projects/assets/128696109/dcb99f36-05e0-49d7-8df0-f4bb1d9a5abc)

### **4.	What products are most often sold together?**

iPhone and Lightning Charging Cable are top most products often sold together and it was ordered 1005 times during the 12 months period. Following this Google Phone and USB-C Charging Cable were sold together and it counted to 987 times.

![4](https://github.com/souptik-d/Portfolio_projects/assets/128696109/8cca43e4-b842-4886-88c1-6fa9888b25ef)

### **5.	What product sold the most? Why do you think the product was sold the most?**

AAA Batteries (4 pack), AA Batteries (4 pack), USB C charging cable were the sold the most in order respectively. The price for the above-mentioned products was low compared to its peers and it was very much affordable to buy. This may be the reason for these products to get sold the most.

![5](https://github.com/souptik-d/Portfolio_projects/assets/128696109/1abf86b1-830f-4ae5-8473-8491bf8329de)





