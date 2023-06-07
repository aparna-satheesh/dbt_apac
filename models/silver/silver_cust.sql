{{
config(file_format='delta',
location_root= 'dbfs:/mnt/dbt/silver/')
}}
select * from 
{{ source('order_details', 'customer') }}