-- индекс по внешнему ключу.
CREATE INDEX order_product_order_id_idx ON order_product (order_id);

-- индекс по статусу и дате.
CREATE INDEX orders_status_date_idx ON orders (status, date_created);
