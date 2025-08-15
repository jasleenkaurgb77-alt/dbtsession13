{% snapshot orders_snapshot %}

{{
    config(
        unique_key='order_id',
        strategy='timestamp',
        updated_at='updated_at',
        invalidate_hard_deletes=True
    )
}}

SELECT *
FROM SESSION12.bronze.raw_orders

{% endsnapshot %}
