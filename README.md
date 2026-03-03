# Customer Churn Analysis & Prediction (SQL + Python + Power BI)

## Overview
This project demonstrates an end-to-end churn analytics pipeline:
- SQL Server relational database design
- Synthetic data generation
- Python ETL & Machine Learning (Logistic Regression)
- Power BI dashboard with churn risk segmentation

The goal is to simulate a telecom-style business and predict customer churn risk.

---

## Tech Stack
- Microsoft SQL Server (MSSQL)
- Python (pandas, scikit-learn, pyodbc)
- Power BI
- Logistic Regression

---

## Database Schema

Tables:
- customers
- usage
- payments
- complaints
- churn

Foreign keys ensure referential integrity.

---

## Project Workflow

### 1️⃣ Create Database & Tables
Run the SQL files in SQL Server Management Studio:
- sql/01_create_database.sql
- sql/02_create_tables.sql

### 2️⃣ Generate Synthetic Data
Run:
```bash
python src/generate_data.py
3️⃣ Build ML Dataset

Run:

python src/etl_build_ml_dataset.py
4️⃣ Train Model & Export Predictions

Run:

python src/train_model.py

This generates:
outputs/churn_predictions_for_powerbi.csv

5️⃣ Power BI Dashboard

Load ML dataset CSV

Load churn_predictions_for_powerbi.csv

Create relationship on customer_id

Build risk segmentation visuals

Machine Learning

Model: Logistic Regression

Metrics: Precision, Recall, F1-score

Output: Churn probability + Risk band

Notes

Data is fully synthetic

No real customer data used

