 CREATE TABLE discounts
  (
     id              VARCHAR(20) PRIMARY KEY,
     discounts_value INT
  );

INSERT INTO discounts
VALUES     ("coup-01",
            20);

INSERT INTO discounts
VALUES     ("coup-02",
            30);

INSERT INTO discounts
VALUES     ("coup-03",
            25);

SELECT *
FROM   discounts;  
