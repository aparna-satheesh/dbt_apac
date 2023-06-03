select orders.order_id, round(avg(items.total_amount), 2) as avg_order_value
from {{ ref("order") }} orders
inner join {{ ref("orderitem") }} items on orders.order_id = items.order_id
group by orders.order_id
order by order_id asc