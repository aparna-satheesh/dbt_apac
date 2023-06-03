select * from 
{{ source('bronze', 'orderitem') }}