DELIMITER //

CREATE PROCEDURE do_payment(
									IN user_id INT,
									IN pay_id INT,
									IN order_id INT,
									IN pay_method VARCHAR(20),
									IN pay_status VARCHAR(20),
									IN discount_id VARCHAR(20),
									IN variant_id INT
									)

		BEGIN
	    DECLARE total_cost int;
	    DECLARE payid int;
   		
			select sum(price) into total_cost 
			from cart_details,variants 
			where cart_details.variant_id = variants.id and cart_details.user_id = user_id;

			insert into payments
			values(pay_id,pay_method,pay_status,user_id,discount_id,total_cost);

	    SELECT id into payid from payments ORDER BY id DESC LIMIT 1;

    	CALL do_order(user_id,order_id,pay_id,variant_id,discount_id,total_cost);
    
   END //
DELIMITER ;
