{{
config(file_format='delta',
location_root= 'dbfs:/mnt/dbt/silver/')
}}

select * from  {{ source ('order_details', 'customer')}}
inner join {{ source ('order_details', 'source')}}using (source_id)