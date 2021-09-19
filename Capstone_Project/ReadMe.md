# Customer Personality Analysis
## Scenario
You are a junior data analyst working in the marketing analyst team for a ecommerce company. You're addigned to the 2 questions to answer: 1/ which customer segment is most likely to buy a particular product and 2/ Which product should we recommend to whom?  
# Business task
## Problem Statement
Analyze customers personality for for marketing programs.
Tools: Python for data cleaning and data modeling, Tableau for data visualization.
Dataset: Here
Python code : Here
Tableau: Here
# Data exploration
To be able to answer the business question, I'll perform exploration data analysis. Most of this task will be explained in the notebook in which I will classify the customers of into different segments with the purpose of understanding their needs. The steps of the analysis are below  
- 1. Analysis preparation
  - Understand data: The dataset is used to analyze customer personality. The dataset's feature an be found Here
  - Importing libraries: I used mainly numpy, pandas, and plotly
  - Data Preparation: I create new features for the dataset in order to define the customer personalities
  - Data cleaning: I identify missing values and outliners. Then I'll make decision on how to handle them
- 2. Data Exploratory: this is the main step of the analysis
  - Modeling clusters: in this step I'll organize the customers into clusters. I'll classify the customers by demographics segment. Then I'll analyzise by products to answer which customer segment tend to buy what.
  - Clusters interpretation: in this step I'll export the dataset and visualize them using tableau. The visualization can be found Here
# Results
What I found from the data:

People

- ID: Customer's unique identifier
- Year_Birth: Customer's birth year
- Education: Customer's education level
- Marital_Status: Customer's marital status
- Income: Customer's yearly household income
- Kidhome: Number of children in customer's household
- Teenhome: Number of teenagers in customer's household
- Dt_Customer: Date of customer's enrollment with the company
- Recency: Number of days since customer's last purchase
- Complain: 1 if customer complained in the last 2 years, 0 otherwise
- Products

- MntWines: Amount spent on wine in last 2 years
- MntFruits: Amount spent on fruits in last 2 years
- MntMeatProducts: Amount spent on meat in last 2 years
- MntFishProducts: Amount spent on fish in last 2 years
- MntSweetProducts: Amount spent on sweets in last 2 years
- MntGoldProds: Amount spent on gold in last 2 years

Promotion

- NumDealsPurchases: Number of purchases made with a discount
- AcceptedCmp1: 1 if customer accepted the offer in the 1st campaign, 0 otherwise
- AcceptedCmp2: 1 if customer accepted the offer in the 2nd campaign, 0 otherwise
- AcceptedCmp3: 1 if customer accepted the offer in the 3rd campaign, 0 otherwise
- AcceptedCmp4: 1 if customer accepted the offer in the 4th campaign, 0 otherwise
- AcceptedCmp5: 1 if customer accepted the offer in the 5th campaign, 0 otherwise
- Response: 1 if customer accepted the offer in the last campaign, 0 otherwise

Place

- NumWebPurchases: Number of purchases made through the company’s web site
- NumCatalogPurchases: Number of purchases made using a catalogue
- NumStorePurchases: Number of purchases made directly in stores
- NumWebVisitsMonth: Number of visits to company’s web site in the last month

