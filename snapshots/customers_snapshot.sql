{% snapshot customers_snapshot %}

{{
    config(
        unique_key='customerid',
        strategy='check',
        check_cols=['name', 'city', 'age']
    )
}}

SELECT *
FROM SESSION12.bronze.RAW_CUSTOMERS

{% endsnapshot %}
