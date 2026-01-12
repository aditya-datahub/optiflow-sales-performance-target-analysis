# OptiFlow – Sales Performance & Target Achievement Analysis

An end-to-end data analytics project focused on analyzing **sales performance against targets** using **Python, SQL, and Power BI**.  
This project covers the complete analytics lifecycle — from raw data cleaning and integration to KPI analysis and an interactive business dashboard.

---

## 🔎 About This Project
Organizations often track sales and targets separately, making it difficult to understand *why* targets are missed or *which areas require attention*.  
**OptiFlow** bridges this gap by integrating order-level sales data with target data to provide actionable insights on performance, profitability, and underperforming categories.

---

## 🗂️ Raw Data Sources
The project begins with **three raw CSV datasets**:

1. **List of Orders.csv**  
   - Order-level information (order date, state, order value, profit, etc.)

2. **Order Details.csv**  
   - Item-level details such as category, quantity, and sales distribution

3. **Sales target.csv**  
   - Monthly sales targets by product category

These datasets are cleaned **individually** before integration.

---

## 🔄 Project Workflow (Step-by-Step)

### 1️⃣ Data Cleaning (Python – Jupyter Notebooks)
Each raw dataset is cleaned separately to ensure accuracy and consistency:
- Handling missing and inconsistent values
- Data type corrections
- Feature engineering (year, month)
- Removing duplicates and anomalies

📓 Notebooks:
- `01_orders_data_cleaning.ipynb` → *List of Orders.csv*
- `02_order_items_data_cleaning.ipynb` → *Order Details.csv*
- `03_sales_target_data_cleaning.ipynb` → *Sales target.csv*

📁 Outputs:
- `orders_cleaned.csv`
- `order_items_cleaned.csv`
- `sales_target_cleaned.csv`  
(Location: `cleaned_data/`)

---

### 2️⃣ Data Integration
The cleaned datasets are merged to create analytical-ready tables:
- Orders + Order Details → consolidated sales dataset
- Sales data + Targets → **Sales vs Target** dataset

📓 Notebook:
- `04_data_integration.ipynb`

📁 Final integrated datasets:
- `orders_full.csv`
- `sales_vs_target.csv`

---

### 3️⃣ Exploratory Data Analysis (EDA)
EDA was performed to uncover early insights, including:
- Monthly sales and profit trends
- State-wise performance distribution
- Category-level sales contribution
- Identification of potential underperforming periods

📓 Notebook:
- `05_eda_analysis.ipynb`

---

### 4️⃣ SQL Analysis
SQL was used to:
- Calculate KPI metrics
- Compare actual sales vs targets
- Identify underperforming categories and months
- Prepare summarized tables for dashboard consumption

📁 Location:
- `sql/`

---

### 5️⃣ Power BI Dashboard
The final datasets were loaded into **Power BI** to build an interactive dashboard for business users.

#### 📊 Dashboard Highlights
- Total Orders, Total Sales, Total Profit
- Profit Margin % with **conditional color formatting**
- Monthly Sales vs Profit trend
- State-wise sales performance
- Category-wise Sales vs Target comparison
- **Critically Underperforming Categories** table
- Dynamic slicers (Year, State)

---

## 🖼️ Dashboard Preview

### Main Dashboard
📁 Add image here:
![Sales Performance & Target Achievement Dashboard](assets/dashboard.png)

### Profit Margin Tooltip
A custom tooltip was designed for **Profit Margin %** to:
- Explain the metric clearly
- Provide business context for low margins
- Improve dashboard interpretability

📁 Add image here:
![Profit Margin Tooltip](assets/profit_margin_tooltip.png)

---

## 📈 Key Insights
- Some categories meet targets but generate **low profit margins**
- Electronics category shows **high monthly volatility**
- Certain states consistently outperform others
- Target achievement alone does not guarantee profitability
- Conditional formatting helps quickly flag **At Risk** and **Needs Attention** segments

---

## 🛠️ Tools & Technologies
- **Python** (Pandas, NumPy)
- **SQL**
- **Power BI**
- **Jupyter Notebook**
- **Git & GitHub**

---

## 📂 Repository Structure
```
optiflow-sales-performance-target-analysis/
│
├── assets/ # Dashboard & tooltip screenshots
├── cleaned_data/ # Cleaned & integrated datasets
├── notebooks/ # Data cleaning, integration & EDA notebooks
├── sql/ # SQL queries for analysis
├── reports/ # Analysis summaries
├── List of Orders.csv
├── Order Details.csv
├── Sales target.csv
├── README.md
├── LICENSE
```

---

## 🚀 Future Enhancements
- Drill-through analysis for underperforming categories
- Sales forecasting vs targets
- Automated data refresh
- Region-wise profitability deep dive

---

## 👤 Author
**Aditya Sharma**  
Aspiring Data Analyst | Python | SQL | Power BI  
