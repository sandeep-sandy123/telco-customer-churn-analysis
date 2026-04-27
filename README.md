# telco-customer-churn-analysis
End-to-end customer churn analysis using SQL Server, Python, Power BI and ChatGPT

# Telco Customer Churn Analysis

## Project Overview
End-to-end churn analysis on 7,043 telecom customers to identify 
retention risk factors and support business decision-making using 
SQL Server, Python, Power BI, and ChatGPT.

## Business Problem
A telecom company is losing 26.5% of its customers annually. 
This analysis identifies the key drivers of churn and provides 
actionable recommendations to reduce customer attrition.

## Key Findings
- Month-to-month customers churn at 42.71% — 15x higher than two-year customers
- Customers without OnlineSecurity churn at 41.77% vs 14.61% with security
- Electronic check users have highest churn at 45.29%
- New customers (0-12 months tenure) are highest risk segment

## Tools Used
- SQL Server — data import, segmentation queries
- Python (Pandas, Matplotlib) — data cleaning, EDA
- Power BI — 3-page interactive dashboard
- ChatGPT — AI-generated business recommendations

## Dashboard Pages
1. Executive Summary — KPIs, overall churn rate, contract analysis
2. Risk Segmentation — Security, payment method, tenure analysis
3. AI Recommendations — ChatGPT-generated retention strategies

## Files
- [Telco_Cleaned.csv — cleaned dataset (7,043 rows)](https://github.com/sandeep-sandy123/telco-customer-churn-analysis/blob/main/Telco_Cleaned.csv)
- Telco_Churn_Analysis.sql — all SQL queries used
- Churn_Analysis.ipynb — Python EDA notebook
- Dashboard screenshots — all 3 Power BI pages
