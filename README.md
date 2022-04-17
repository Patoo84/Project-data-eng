# Project for Data Engineering Zoomcamp by DTC

# Dataset

Dataset used from Ecobici Trip mexico City Year 2020
Citi Bike Trip [Dataset](https://www.ecobici.cdmx.gob.mx/sites/default/files/data/usages/2020-01.csv)

Dataset format 
Edad_Usuario	Bici	Ciclo_Estacion_Retiro	Fecha_Retiro	Hora_Retiro	Ciclo_Estacion_Arribo	Fecha_Arribo	Hora_Arribo
- Trip Duration (seconds)
- Start Time Trip
- Start Date Trip
- Stop Time Trip
- Stop Date Trip
- Ciclo_Estacion_Retiro is Start Station id
- Ciclo_Estacion_Arribo is End Station id
- Bici is Bike ID
- Genario Usario  meaning Gender (male; female)
- Edad Usario age of the user

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
