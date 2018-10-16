DELIMITER //

CREATE PROCEDURE do_order (
IN order_id INT,
IN pay_id INT,
IN variant_id INT,
IN discount_id VARCHAR(20),
IN price double(10,3))

BEGIN
DECLARE pay_status VARCHAR(10);


SET pay_status = (select payment.payment_status from payment where payment.id = pay_id);

IF pay_status = 'success' THEN

INSERT INTO order_details VALUES (order_id,price,discount_id,pay_id,511);
INSERT INTO order_product VALUES (variant_id,order_id,'2018-10-05');

END IF;
END //

