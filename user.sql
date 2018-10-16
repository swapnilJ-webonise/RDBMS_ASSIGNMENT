CREATE TABLE user ( 
	id INT PRIMARY KEY, 
	order_id INT, 
	name VARCHAR(30) NOT NULL, 
	email VARCHAR(40) UNIQUE NOT NULL, 
	password INT CHECK (password >= 8),
	CONSTRAINT name CHECK (name NOT LIKE '%[^A-Z]%')
);

	INSERT INTO user VALUES (511, 102, "Swapnil", "Swapnilj@gmail.com",1234);
	INSERT INTO user VALUES (512, 102, "Swapnil1", "JEJEURKRS@gmail.com",1234);
	INSERT INTO user VALUES (513, 105, "SAM", "sam@gmail.com",1224);
	INSERT INTO user VALUES (514, 110, "JACK", "jack@gmail.com",3224);

	select * from user;