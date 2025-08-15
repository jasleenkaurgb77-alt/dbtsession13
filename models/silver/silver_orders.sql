{{ config(
    materialized='table'
) }}

with cte_orders as (
    select *
    from SESSION12.BRONZE.RAW_ORDERS
)

select 
    order_id
    customerid,
    try_to_date(order_date) as order_date, amount
from cte_orders

