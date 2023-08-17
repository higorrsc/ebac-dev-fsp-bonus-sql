CREATE TABLE store.customer
(
  id serial NOT NULL,
  name character varying(50) NOT NULL,
  cpf character varying(11) NOT NULL,
  email character varying(100) NOT NULL,
  phone character varying(10),
  address character varying(100),
  UNIQUE(cpf),
  UNIQUE(email)
);

CREATE TABLE store.product
(
  id serial NOT NULL,
  name character varying(50) NOT NULL,
  unitprice numeric(12, 3) NOT NULL,
  UNIQUE(name)
);

CREATE TABLE store.stock
(
  id serial NOT NULL,
  id_product int NOT NULL,
  quantity numeric(12, 3) NOT NULL,
  minimum_quantity numeric(12, 3) NOT NULL,
  UNIQUE(id_product)
);