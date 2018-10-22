DELIMITER //

CREATE PROCEDURE do_order (
IN user_id INT,
IN order_id INT,
IN pay_id INT,
IN variant_id INT,
IN discount_id VARCHAR(20),
IN price double(10,3))

BEGIN
DECLARE pay_status VARCHAR(10);


SET pay_status = (select payments.payments_status from payments where payments.id = pay_id);

IF pay_status = 'success' THEN

INSERT INTO order_details VALUES (order_id,price,discount_id,pay_id,user_id,current_date());
INSERT INTO order_product VALUES (variant_id,order_id,current_date(),user_id);
DELETE FROM cart_details;

END IF;
END //
DELIMITER ;
