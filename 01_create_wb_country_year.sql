DROP VIEW IF EXISTS wb_country_year;

CREATE VIEW wb_country_year AS
SELECT
    "Area" AS area,
    "Country Code" AS country_code,
    "Year" AS year,

    -- Population, total
    MAX(
        CASE
            WHEN "Series Code" = 'SP.POP.TOTL'
            THEN Value
        END
    ) AS pop_total,

    -- Agriculture, value added (% of GDP)
    MAX(
        CASE
            WHEN "Series Code" = 'NV.AGR.TOTL.ZS'
            THEN Value
        END
    ) AS agr_va_pct_gdp,

    -- GDP per capita (current US$)
    MAX(
        CASE
            WHEN "Series Code" = 'NY.GDP.PCAP.CD'
            THEN Value
        END
    ) AS gdp_per_capita

FROM world_bank
GROUP BY
    "Area",
    "Country Code",
    "Year";

SELECT "Series Code", COUNT(*) AS n_rows
FROM world_bank
GROUP BY "Series Code";
