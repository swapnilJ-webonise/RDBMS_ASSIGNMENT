DELIMITER //
CREATE or REPLACE TRIGGER check_password_length BEFORE INSERT ON user

 for each row  
	begin
DECLARE passlen INT;
SET passlen = (SELECT LENGTH(NEW.password));

  IF (passlen > 9) THEN
  SIGNAL SQLSTATE '45000';
 SET MESSAGE_TEXT = 'length is invalide';
  END IF;
  END;
//
