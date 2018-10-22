CREATE DATABASE rdbms_assignment_day_02;

USE rdbms_assignment_day_02;

CREATE TABLE users_type
  (
     id         INT PRIMARY KEY,
     users_type VARCHAR(20)
  );

INSERT INTO users_type
VALUES      (1,
             "buyer");

INSERT INTO users_type
VALUES      (2,
             "inventory manager");

CREATE TABLE users
  (
     id            INT PRIMARY KEY,
     uname         VARCHAR(20),
     email         VARCHAR(30),
     password 		 INT,
     users_type_id INT,
     FOREIGN KEY (users_type_id) REFERENCES users_type(id)
  );


INSERT INTO users
VALUES      (512,
             "sam",
             "sam@gmail.com",
             123498765,
             2);

INSERT INTO users
VALUES      (513,
             "jack",
             "jack@gmail.com",
             12345678,             
             1);

INSERT INTO users
VALUES      (514,
             "lisa",
             "lisa@gmail.com",
             12340000,             
             2);

INSERT INTO users
VALUES      (515,
             "ross",
             "ross@gmail.com",
             12341234,             
             1);  
