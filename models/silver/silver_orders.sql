{{ config(
    materialized='table',
    ) }}

with cte_customers as (
    select * from  SESSION12.BRONZE.RAW_orders
)

select * from cte_customers
