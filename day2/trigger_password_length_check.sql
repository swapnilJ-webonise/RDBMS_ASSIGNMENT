DELIMITER //
CREATE TRIGGER check_password_length BEFORE INSERT ON users

 for each row  
	BEGIN
		DECLARE passlen INT;
		SET passlen = (SELECT LENGTH(NEW.password));

	  IF (passlen <8) THEN
  		SIGNAL SQLSTATE '45000'	SET MESSAGE_TEXT = 'length is invalid';
		END IF;
  END;
//
