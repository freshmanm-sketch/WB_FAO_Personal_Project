# WB_FAO_Personal_Project
This project analyzes global food production and resource efficiency from 1995–2023 using FAO agricultural statistics and World Bank economic indicators.

I first built an ETL pipeline in Python to ingest the raw CSVs, standardize country names and year formats, and reshape wide FAO/World Bank tables into SQL-ready form. The cleaned tables were loaded into SQLite and joined in DBeaver to create a single master_country_year table combining population, GDP per capita, agricultural land, crop production, fertilizer use, and pesticide use for ~200 countries.

Back in Python, I engineered a set of efficiency metrics, including:

- Fertilizer, pesticide, and total chemical kg use per hectare of agricultural land
- Crop tonnes per hectare and per capita
- Crop tonnes per kg of fertilizer / pesticide / total chemical
- Crop output per kg of fertilizer, pesticide, and combined chemical inputs
- Agricultural land area per person

Using pandas, NumPy, seaborn, matplotlib, and statsmodels, I explored distributions (with log transforms where needed), visualized key relationships (e.g., inputs vs yields, GDP vs intensity/efficiency), and quantified correlations to identify:

 - How strongly fertilizer and pesticide intensity relate to yield
 - Diminishing returns to chemical inputs at very high application rates
 - How economic development (GDP per capita) is associated with both input intensity and production efficiency

 - The repository includes the full pipeline: data cleaning, SQL schema and joins, metric construction, visualizations, and notebooks documenting the analysis workflow and findings.
