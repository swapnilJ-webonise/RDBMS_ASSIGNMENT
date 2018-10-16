DELIMITER //

CREATE PROCEDURE do_order (
IN user_id INT,
IN pay_id INT,
IN variant_id INT,
IN discount_id VARCHAR(20),
IN price double(10,3))

BEGIN
DECLARE pay_status VARCHAR(10);


SET pay_status = (select payment.payment_status from payment where payment.id = pay_id);

IF pay_status = 'success' THEN

INSERT INTO order_details VALUES (user_id,price,discount_id,pay_id,user_id,current_date());
INSERT INTO order_product VALUES (variant_id,user_id,current_date());
DELETE FROM cart_details;

END IF;
END //

