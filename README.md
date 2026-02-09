# Tech & Finance Data Analytics (Python + SQL)
Analyzing revenue performance, customer behavior, financial risk indicators and operational trends. The project demonstrates end-to-end analytics using Python and SQL including data cleaning, exploratory analysis, KPI development and insight-driven visualizations designed for business decision-making.
 
## Objectives
- Build a clean, reproducible analytics workflow (data cleaning → analysis → visualization → insights)
- Use SQL to answer business questions and validate metrics
- Develop finance-focused KPIs (profit margin, growth rate, volatility) and customer KPIs (churn, ARPU, CLV)

## Tools & Tech
- Python (Pandas, NumPy)
- SQL (PostgreSQL/SQLite style)
- Jupyter Notebooks
- Matplotlib
- Git/GitHub

## Project Structure
tech-finance-data-analytics/
│
├── data/
│   ├── raw/              # Original, unmodified datasets
│   └── processed/        # Cleaned and transformed datasets
│
├── notebooks/            # Jupyter notebooks for analysis
│   ├── 01_data_cleaning.ipynb
│   ├── 02_exploratory_analysis.ipynb
│   ├── 03_financial_metrics.ipynb
│   └── 04_visualizations.ipynb
│
├── sql/                  # SQL queries for analytics
│   ├── revenue_analysis.sql
│   ├── customer_metrics.sql
│   └── risk_indicators.sql
│
├── visuals/              # Exported charts and dashboards
│
├── insights/             # Business-facing summaries
│   └── executive_summary.md
│
├── requirements.txt      # Python dependencies
├── README.md             # Project overview
└── LICENSE               # MIT License

## Key Analyses (Planned)
- Revenue growth by month/quarter
- Profit margin and cost-to-revenue trends
- Customer segmentation + churn analysis
- Risk indicators: margin compression, expense spikes, revenue volatility

## How to Run
1. Create a virtual environment and install dependencies:
   - `pip install -r requirements.txt`
2. Run notebooks in order from `notebooks/01_...` onward.

## License
MIT License
