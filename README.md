# Project for Data Engineering Zoomcamp by DTC

# Dataset

Dataset used from Citi Bike Trip New York City Year 2020
Citi Bike Trip [Dataset](https://www.ecobici.cdmx.gob.mx/sites/default/files/data/usages/2020-01.csv)

Dataset format 

- Trip Duration (seconds)
- Start Time and Date
- Stop Time and Date
- Start Station Name
- End Station Name
- Station ID
- Station Lat/Long
- Bike ID
- User Type (Customer = 24-hour pass or 3-day pass user; Subscriber = Annual Member)
- Gender (Zero=unknown; 1=male; 2=female)
- Year of Birth

# Problem Statement

For this project, i've chosen this dataset  bike mexicain. This data set is available on [Dataset](https://www.ecobici.cdmx.gob.mx/sites/default/files/data/usages/2020-01.csv) and updated every monthly. The goal was to develop dashboard contain trip summary & user distribution by user type/Gender 


# Data Pipeline

Data pipeline used with batch which is run periodically (monthly)

- Create Data Pipeline with 6 : Step Download_dataset_task (Zip Format) -> Format_to_parquet_task (Change format from CSV to parquet) -> local_to_gcs_task (upload parquet to Data Lake/GCS) -> import to external table to bigquery ->create a non partioned tabe and make some transformations on field ->create partionned table

# Technologies

- Cloud : GCP
- IaC : Terraform for making Bucket in GCS & Config on BigQuery
- Workflow orchestration : Runnning Airflow on container(Docker)
- Data Warehouse : BigQuery

# Transformation

- Just doing some simple SQL Transformation

# Dashboard

Create dashboard with 3 Tile (1 Bar & 2 Pie) from bike trip dataset year 2020
- Summary most popular route taken by gender
- Distribution by usertype
- Monthly summary trip

[Dashboard]()