DELIMITER //

CREATE PROCEDURE do_payment(IN pay_id INT, IN cart_id INT,IN variant_id INT,IN discount_id VARCHAR(20),IN pay_method VARCHAR(20))

BEGIN

DECLARE price INT;
DECLARE discounted_price INT;
DECLARE discount INT ;

SET price = (select sum(price) from cart_details,variant,product  where cart_details.id = variant.cart_id and cart_details.id = cart_id);

SET discount = (select discount_value from discount WHERE id = discount_id);

SET discounted_price = price - discount ;

insert into payment values(pay_id,pay_method,"success",cart_id,discount_id,variant_id);

CALL do_order(123,pay_id,variant_id,discount_id,discounted_price);

END //


