CREATE DATABASE rdbms_assignment_Day2;
use rdbms_assignment_Day2;

CREATE TABLE user_type ( 
id INT PRIMARY KEY, 
user_type varchar(20) 
);



INSERT INTO user_type VALUES (1,"buyer");
INSERT INTO user_type VALUES (2,"inventory manager");

CREATE TABLE user (
    -> id INT PRIMARY KEY,
    -> uname VARCHAR(20),
    -> email VARCHAR(30),
    -> user_type_id INT,
    -> FOREIGN KEY (user_type_id) REFERENCES user_type(id)
    -> );



INSERT INTO user VALUES (511,"swapnil","swapnil@gmail.com",1);
INSERT INTO user VALUES (512,"SAM","sam@gmail.com",2);
INSERT INTO user VALUES (513,"JACK","jack@gmail.com",1);
INSERT INTO user VALUES (514,"LISA","lisa@gmail.com",2);
INSERT INTO user VALUES (515,"ROSS","ross@gmail.com",1);


