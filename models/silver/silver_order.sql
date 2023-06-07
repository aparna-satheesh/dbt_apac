{{
config(file_format='delta',
location_root= 'dbfs:/mnt/dbt/silver/')
}}
select *, 1 as new_col from {{ source ('order_details', 'order')}}