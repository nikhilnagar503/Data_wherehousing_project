
# Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀
This project provides a comprehensive, end-to-end example of building a data warehouse and performing analytics using SQL Server. It serves as a practical portfolio piece showcasing skills in data engineering, data modeling, and data analysis, following industry best practices.

---

## 🏗️ Data Architecture: The Medallion Approach

This project utilizes the **Medallion Architecture** to structure the data flow, ensuring quality and usability:

![Data Architecture Diagram](docs/data_architecture.png)
*Diagram created with [DrawIO](https://www.drawio.com/)*

1.  **Bronze Layer**: Raw, unchanged data ingested directly from source systems (CSV files) into SQL Server tables. This serves as the historical archive.
2.  **Silver Layer**: Data is cleaned, standardized, transformed, and potentially enriched. This layer addresses data quality issues and prepares the data for modeling.
3.  **Gold Layer**: Business-ready, aggregated data modeled into a star schema (fact and dimension tables). This layer is optimized for reporting and analytical queries.

---

## 📖 Project Overview

This project demonstrates key stages of a data warehousing lifecycle:

1.  **Data Architecture Design**: Implementing the Bronze, Silver, and Gold layers.
2.  **ETL Pipeline Development**: Using SQL scripts to extract data from source CSVs, transform it through the layers, and load it into the final data models.
3.  **Data Modeling**: Designing and creating fact and dimension tables optimized for analytical performance (Star Schema).
4.  **Analytics & Reporting**: Developing SQL queries to generate reports and derive insights from the Gold layer data.

🎯 **This repository is ideal for demonstrating expertise in:**
-   SQL Development & T-SQL
-   Data Warehousing Concepts
-   Data Architecture (Medallion Architecture)
-   ETL/ELT Processes
-   Data Modeling (Star Schema)
-   Data Cleansing and Transformation
-   Data Analysis & Business Intelligence

---

## 🛠️ Tools & Technologies

This project primarily uses the following (mostly free) tools:

-   **Data Source**: CSV files provided in the `datasets/` folder (simulating ERP and CRM systems).
-   **Database**: [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) (Free, lightweight version).
-   **Database Management**: [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16) (Free GUI).
-   **Version Control**: Git & [GitHub](https://github.com/) for code management.
-   **Diagramming**: [DrawIO](https://app.diagrams.net/) (Free online tool) for architecture and model diagrams.
-   **(Optional) Project Management**: [Notion Template](https://thankful-pangolin-2ca.notion.site/SQL-Data-Warehouse-Project-16ed041640ef80489667cfe2f380b269?pvs=4) for tracking phases and tasks.

---

## 🚀 Project Requirements

### 1. Data Engineering: Building the Data Warehouse

**Objective**: Construct a SQL Server data warehouse to consolidate sales data from disparate sources, enabling robust analytics.

**Specifications**:
-   **Sources**: Ingest data from ERP and CRM CSV files (`datasets/`).
-   **Ingestion**: Load raw data into the Bronze layer.
-   **Transformation**: Cleanse, standardize, and integrate data within the Silver layer. Resolve data quality issues.
-   **Modeling**: Develop a Star Schema (fact and dimension tables) in the Gold layer, optimized for analysis.
-   **Integration**: Ensure the final model combines data from both sources logically.
-   **Scope**: Focus on processing the provided dataset snapshots (historization/SCD is not required).
-   **Documentation**: Maintain clear data models and potentially a data catalog (see `docs/`).

### 2. Data Analysis: BI & Reporting

**Objective**: Utilize the Gold layer data to develop SQL-based analytics providing insights into:
-   **Customer Behavior**: Analyze purchasing patterns, frequency, and value.
-   **Product Performance**: Identify top-selling products, categories, and profitability.
-   **Sales Trends**: Track sales over time, identify peak periods, and geographic patterns.

**Goal**: Empower business stakeholders with actionable metrics for strategic decision-making. (Refer to `docs/requirements.md` for more detailed analytical questions).

---

## 📂 Repository Structure
```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniquies and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies and requirements for the project
```
---


## 🛡️ License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and share this project with proper attribution.


