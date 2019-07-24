CREATE VIEW orders_view
AS SELECT 

order_details.price, 
order_details.order_date,
discount.id,
payment.payment_method,
payment.payment_status FROM payment,order_details,discount WHERE  discount.id=payment.discount_id and payment.id=order_details.payment_id;
