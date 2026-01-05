✈️ Travel Agency Analytics Dashboard
📌 Project Summary

This project is an end-to-end Data Analytics & Business Intelligence solution built to simulate a real-world travel agency analytics workflow. It demonstrates how raw travel data can be transformed into actionable business insights using Python, PostgreSQL, and Power BI.

The project follows a company-level analytics pipeline — from data ingestion and cleaning to SQL-based analysis and executive dashboard reporting.

🎯 Business Objective

A travel agency wants to answer critical business questions such as:

Which countries and continents are most visited?

Which airlines are the most expensive or delay-prone?

How do customer budgets influence seat class and booking behavior?

How do visa costs impact travel decisions?

What factors affect customer satisfaction?

This dashboard helps stakeholders make data-driven decisions related to pricing, destination marketing, airline partnerships, and customer experience.

📂 Datasets Used
🔹 Public Datasets (Kaggle)

Airport codes and country information

Country-to-continent mapping

Global visa cost dataset (tourist, business, student, work visas)

🔹 Synthetic / Generated Data

Flight and passenger transaction data

Customer travel budget estimations

Synthetic data was generated to simulate realistic customer behavior and fill gaps commonly found in real business datasets.

🛠️ Tools & Technologies
Tool	Usage
Python (Pandas, NumPy)	Data loading, cleaning, transformation
PostgreSQL	Data storage, modeling, SQL analytics
Power BI	Interactive dashboards & storytelling
Jupyter Notebook	Data exploration & preprocessing
🧹 Data Preparation (Python)

Key preprocessing steps:

Handling missing values using business logic

Resolving encoding and format issues

Standardizing country names across datasets

Creating manual country-mapping tables

Generating derived columns (travel budgets, categories)

Cleaned datasets were saved and loaded into PostgreSQL for structured analysis.

🗄️ Data Modeling (PostgreSQL)

A Star Schema was designed for analytical efficiency:

⭐ Fact Table

public_fact_flights – transactional flight and passenger data

⭐ Dimension Tables

public dim_airport – Airport public_fact_flightsand country details
public dim_country_continent – Country to continent mapping
public dim_passenger_budget – Customer budgets
public dim_visa– Visa prices according to country

This structure enables fast aggregations and seamless BI reporting.

🧮 SQL Analysis Highlights

PostgreSQL was used to answer key business questions:

Top visited countries and destinations

Total Flights per Airport

Average flight price by airline

Visa Cost Impact

Flight Delays Analysis

Frequent Flyer Behavior

Travel purpose distribution by country

Flight Satisfaction Analysis

Booking Behavior Insights

PostgreSQL-specific features such as joins, aggregations, casting, and views were used.

📊 Power BI Dashboard Features

The dashboard provides interactive, executive-level insights:

🔹 KPIs

Total Passengers

Average Delay

Average Satisfaction Score


🔹 Visual Insights

Top destinations (Map & Bar charts)

Revenue by continent

Airline pricing & delay performance

Customer budget vs seat class

Travel purpose distribution

Visa cost impact on travel

Booking behavior trends


📈 Key Business Insights

Certain continents generate higher revenue despite fewer passengers

Business travelers tend to book earlier and prefer premium seat classes

Flight delays have a strong negative impact on customer satisfaction

Visa costs may influence destination popularity

Frequent flyers contribute significantly to repeat revenue

💼 Business Value

This project demonstrates how analytics can help a travel agency:

Optimize pricing strategies

Improve airline partnerships

Target marketing campaigns effectively

Enhance customer experience

Identify high-value customer segments

🚀 Future Enhancements

Time-series forecasting for travel demand

Profit and cost analysis

Automated ETL pipelines

Deployment to Power BI Service

👤 Author

Jayasundara M. L. Y.
Aspiring Data Analyst | Python • SQL • Power BI

⭐ Why This Project Matters

This project reflects a realistic, company-style analytics workflow, making it a strong addition to a Data Analyst / Business Intelligence portfolio.
