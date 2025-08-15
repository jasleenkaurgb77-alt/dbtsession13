{{ config(
    materialized='table'
) }}

with cte_revenue as (
    select *
    from SESSION12.Silver.silver_orders
)

select 
    order_date,
    sum(amount) as Total_revenue
from cte_revenue
Group by
Order_date

