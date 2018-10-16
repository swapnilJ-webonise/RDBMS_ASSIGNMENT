DELIMITER //
 CREATE PROCEDURE do_payment(
IN pay_id int,
IN pay_method VARCHAR(20),
IN pay_status VARCHAR(20),
IN cart_id INT, 
IN discount_id VARCHAR(20),
IN variant_id INT,
IN user_id INT)

   BEGIN
    DECLARE total_cost int;
    DECLARE payid int;
   		
select DISTINCT sum(price) into total_cost from cart_details,variant,product  where cart_details.id = variant.cart_id and cart_details.id = cart_id;

	insert into payment 
values(pay_id,pay_method,pay_status,cart_id,discount_id,variant_id,user_id,total_cost);

    SELECT id into payid from payment ORDER BY id DESC LIMIT 1;
    
call do_order(user_id,pay_id,variant_id,discount_id,total_cost);
    
   END //
 DELIMITER ;
