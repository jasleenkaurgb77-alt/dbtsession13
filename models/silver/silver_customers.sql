
{{ config(
    materialized='table'
) }}

with cte_customers as (
    select *
    from SESSION12.BRONZE.RAW_CUSTOMERS
)

select 
    customerid,
    initcap(name) as name,  -- use initcap in Snowflake instead of init()
    case 
        when age > 18 then 'Adult'
        else 'Minor' 
    end as age_group
from cte_customers
