CREATE CATALOG IF NOT EXISTS tienda_online_sa;

USE CATALOG tienda_online_sa;

CREATE SCHEMA IF NOT EXISTS clientes_schema;

CREATE TABLE IF NOT EXISTS clientes_schema.dim_cliente (
  id_cliente STRING NOT NULL, pais STRING,  PRIMARY KEY (id_cliente)
);

CREATE SCHEMA IF NOT EXISTS productos_schema;

CREATE TABLE IF NOT EXISTS productos_schema.dim_producto (
  id_producto STRING NOT NULL,
  nombre_producto STRING,
  precio_unitario DOUBLE,
   PRIMARY KEY (id_producto)
);

CREATE SCHEMA IF NOT EXISTS ventas_schema;

CREATE TABLE IF NOT EXISTS ventas_schema.fact_ventas (
  id_transaccion STRING NOT NULL,
  id_cliente STRING NOT NULL,
  id_producto STRING NOT NULL,
  fecha DATE NOT NULL,
  cantidad LONG NOT NULL,
  precio_unitario DOUBLE NOT NULL,
  precio_total DOUBLE NOT NULL,
   PRIMARY KEY (id_transaccion),
   FOREIGN KEY (id_cliente) REFERENCES clientes_schema.dim_cliente (id_cliente),
   FOREIGN KEY (id_producto) REFERENCES productos_schema.dim_producto (id_producto)
);