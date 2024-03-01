CREATE DATABASE IF NOT EXISTS orders COMMENT 'Orders microservice db';

GRANT ALL PRIVILEGES ON orders.* TO 'orders'@'%';

USE orders;

CREATE OR REPLACE TABLE orders (id int primary key NOT NULL AUTO_INCREMENT,
    productId int DEFAULT 0,
       qty int DEFAULT 0,
       subtotal float DEFAULT 0.0,
       address mediumtext,
       zipCode mediumint(5) UNSIGNED ZEROFILL,
       total float DEFAULT 0.0);