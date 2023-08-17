ALTER TABLE store.customer
ALTER COLUMN phone TYPE character varying(11);

INSERT INTO store.customer(name, cpf, email, phone, address) 
VALUES ('Higor', '48989577063', 'higorrsc@gmail.com', '27992054791', 'R ABC, 1300, Laranjeiras, Serra, ES');
INSERT INTO store.customer(name, cpf, email, phone, address) 
VALUES ('Thais', '63398894097', 'higorrsc.t@gmail.com', '27992054792', 'R ABC, 1300, Laranjeiras, Serra, ES');
INSERT INTO store.customer(name, cpf, email, phone, address) 
VALUES ('Vinicius', '93950846000', 'higorrsc.v@gmail.com', '27992054793', 'R DEF, 135, Carapina, Serra, ES');
INSERT INTO store.customer(name, cpf, email, phone, address) 
VALUES ('Erick', '70295553090', 'higorrsc.e@gmail.com', '27992054794', 'R GHI, 1301, Campo Belo, Serra, ES');

INSERT INTO store.product(name, unitprice)
VALUES ('TV LED 4K 42', 2300);
INSERT INTO store.product(name, unitprice)
VALUES ('PS5', 4299);
INSERT INTO store.product(name, unitprice)
VALUES ('PS5 DIGITAL', 3799);
INSERT INTO store.product(name, unitprice)
VALUES ('XBOX SERIES X', 4299);
INSERT INTO store.product(name, unitprice)
VALUES ('XBOX SERIES S', 2199);

INSERT INTO store.stock(id_product, quantity, minimum_quantity)
VALUES (1, 10, 2);
INSERT INTO store.stock(id_product, quantity, minimum_quantity)
VALUES (2, 5, 1);
INSERT INTO store.stock(id_product, quantity, minimum_quantity)
VALUES (3, 5, 1);
INSERT INTO store.stock(id_product, quantity, minimum_quantity)
VALUES (4, 5, 1);
INSERT INTO store.stock(id_product, quantity, minimum_quantity)
VALUES (5, 10, 5);

SELECT *
FROM store.customer;

SELECT *
FROM store.product;

SELECT *
FROM store.stock;