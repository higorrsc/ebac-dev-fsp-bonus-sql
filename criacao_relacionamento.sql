ALTER TABLE store.product ADD PRIMARY KEY (id);

DROP TABLE IF EXISTS store.stock;

CREATE TABLE IF NOT EXISTS store.stock
(
    id SERIAL NOT NULL,
    product_id integer NOT NULL,
    quantity numeric(12,3) NOT NULL,
    minimum_quantity numeric(12,3) NOT NULL,
	CONSTRAINT stock_id PRIMARY KEY (id),
    CONSTRAINT stock_product_id_key UNIQUE (product_id),
	CONSTRAINT fk_stock_product FOREIGN KEY (product_id) REFERENCES store.product(id)
);