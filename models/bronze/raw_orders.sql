{{ config(
    materialized='table',
   ) }}

with cte_orders as (
    select * 
    from SESSION12.SESSION12SCH.orders
)

select * from cte_orders