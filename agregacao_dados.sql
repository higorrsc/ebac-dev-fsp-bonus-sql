--------------------------------DDL--------------------------------
--product
DROP TABLE IF EXISTS store.product;
CREATE TABLE store.product (
	product_id serial NOT NULL,
	"name" varchar(25) NOT NULL,
	created_date timestamp NOT NULL DEFAULT now(),
	CONSTRAINT product_pkey PRIMARY KEY (product_id)
);

-- stock
DROP TABLE IF EXISTS store.stock;
CREATE TABLE store.stock (
	id serial NOT NULL,
	product_id int4 NOT NULL,
	quantity int4 NOT NULL,
	CONSTRAINT stock_pkey PRIMARY KEY (id),
	CONSTRAINT fk_stock_product FOREIGN KEY (product_id) REFERENCES store.product(product_id)
);

--------------------------------DML--------------------------------
--1 
insert into store.product (name)
values ('celular')
	  ,('livro')
	  ,('tablet')
	  ,('notebook')
	  ,('roteador');

insert into store.stock (product_id, quantity)
values (1, 5)
	  ,(2, 3)
	  ,(3, 0)
	  ,(4, 1)
	  ,(5, 0);

--2
-- Dica 1 há um erro de sintaxe (lembre que o Group By precisa estar com a mesma quantidade de colunas do SELECT)
-- Dica 2 ordene pela quantidade decrescente de produtos
SELECT name product_name
	  ,SUM(stock.quantity) product_stock
FROM store.product INNER JOIN store.stock USING (product_id)
GROUP BY product_name
ORDER BY product_stock DESC;

--3
select sum(stock.quantity) -- campo para somar a quantidade de itens no stock
from store.stock