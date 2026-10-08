SELECT * FROM product;
 
ALTER TABLE product 
MODIFY COLUMN updated_at  TIMESTAMP  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;


UPDATE product SET price = price*0.9   WHERE id = 1;

UPDATE product SET id = 31 WHERE id =1 ;


CREATE TABLE duniya ( id INT PRIMARY KEY AUTO_INCREMENT , duniya VARCHAR(50));

INSERT INTO duniya( duniya)
VALUES ( "X"),("Y"),("Z");

SELECT * FROM duniya

UPDATE duniya SET id = 4 WHERE id = 1;


SHOW CREATE TABLE orders_items;
-- CREATE TABLE `orders_items`    CONSTRAINT `orders_items_ibfk_2` F


ALTER TABLE orders_items 
DROP    CONSTRAINT `orders_items_ibfk_2` ;


ALTER TABLE orders_items 
ADD  CONSTRAINT `orders_items_ibfk_2`  
FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE;


ALTER TABLE orders_items
DROP CONSTRAINT `orders_items_ibfk_1` ;

SELECT * FROM product;
SELECT * FROM orders_items;

DELETE FROM product WHERE id = 9;



SELECT *  FROM duniya;


TRUNCATE TABLE duniya WHERE  id =2;



--  Replace 

 SELECT * FROM duniya;
 
 INSERT INTO duniya( duniya)
VALUES ( "X"),("Y"),("Z");

REPLACE INTO duniya(id, duniya)
VALUES (1, "A"), (2, "B");



REPLACE INTO duniya( duniya)
VALUES( SELECT duniya FROM duniya);
