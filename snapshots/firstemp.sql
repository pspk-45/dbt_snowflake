{% snapshot firstemp %}

{{
    config
    (
        target_schema='srcs',
 unique_key='id',
 strategy='timestamp',
 updated_at='updated_date',
 invalidate_hard_deletes=True

    )
}}

select * from {{ source('snowflake','t_name')}}
{% endsnapshot %}