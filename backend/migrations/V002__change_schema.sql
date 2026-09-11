ALTER TABLE product ADD COLUMN price double precision;

UPDATE product p
SET price = pi.price
FROM product_info pi
WHERE p.id = pi.product_id;

DROP TABLE product_info;

ALTER TABLE orders ADD COLUMN date_created date DEFAULT current_date;

UPDATE orders o
SET date_created = od.date_created
FROM orders_date od
WHERE o.id = od.order_id;

DROP TABLE orders_date;
