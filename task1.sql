SELECT 
    order_details.*,
    (SELECT customer_id FROM orders WHERE orders.order_id = order_details.order_id) AS customer_id
FROM 
    order_details;
