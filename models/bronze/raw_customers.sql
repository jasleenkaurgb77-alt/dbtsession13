{{ config(
    materialized='table',
   ) }}

with cte_customers as (
    select * 
    from SESSION12.SESSION12SCH.CUSTOMERS
)

select * from cte_customers


