{{ config(
    materialized='table',
    ) }}

with cte_customers as (
    select * from  SESSION12.BRONZE.RAW_CUSTOMERS
)

select * from cte_customers
