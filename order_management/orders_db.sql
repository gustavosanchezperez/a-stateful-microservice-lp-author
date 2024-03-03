CREATE DATABASE IF NOT EXISTS orders COMMENT 'Orders microservice db';
CREATE USER 'orders' IDENTIFIED BY 'orders';
GRANT ALL PRIVILEGES ON orders.* TO 'orders'@'%';

USE orders;

CREATE OR REPLACE TABLE orders (order_id int primary key NOT NULL AUTO_INCREMENT,
    product_id int DEFAULT 0,
       quantity int DEFAULT 0,
       subtotal float DEFAULT 0.0,
       shipping_address mediumtext,
       shipping_zip mediumint(5) UNSIGNED ZEROFILL,
       total float DEFAULT 0.0,
       shipping_cost float DEFAULT 0.0);