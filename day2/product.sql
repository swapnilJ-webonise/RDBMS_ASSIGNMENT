 CREATE TABLE products
  (
     id   INT PRIMARY KEY,
     NAME VARCHAR(30) NOT NULL
  );

INSERT INTO products
VALUES      (2020,
             "puma shoes");

INSERT INTO products
VALUES      (2010,
             "sport shoes");

INSERT INTO products
VALUES      (2030,
             "lancer shoes");

INSERT INTO products
VALUES      (2040,
             "buckaroo shoes");

INSERT INTO products
VALUES      (2050,
             "formal shoes");

SELECT *
FROM   products  
