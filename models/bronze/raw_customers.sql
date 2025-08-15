{% if var('run_mode', 'incremental') == 'initial' %}
    {{ config(materialized='table') }}

    WITH CTE_Customer AS (
        SELECT *
        FROM SESSION12.SESSION12SCH.customers
        -- Optional: initial run filter
    )
    SELECT * FROM CTE_Customer

{% else %}
    {{ config(materialized='incremental') }}

    WITH CTE_Customer AS (
        SELECT *
        FROM SESSION12.SESSION12SCH.customers
        WHERE customerid > (
            SELECT MAX(customerid) 
            FROM SESSION12.BRONZE.RAW_CUSTOMERS
        )
    )
    SELECT * FROM CTE_Customer
{% endif %}
