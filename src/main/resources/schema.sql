DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS seller;
DROP TABLE IF EXISTS seller_propos;
DROP TABLE IF EXISTS deal;

CREATE TABLE car (
  car_id         INTEGER PRIMARY KEY,
  number VARCHAR(20),
  brand  VARCHAR(20),
  year VARCHAR(4),
  color VARCHAR(15)
);

CREATE TABLE seller (
  seller_id         INTEGER PRIMARY KEY,
  name VARCHAR(20),
  contacts  VARCHAR(70)
 );

CREATE TABLE seller_propos (
  sale_id INTEGER PRIMARY KEY,
  car_id INTEGER NOT NULL,
  seller_id  INTEGER NOT NULL,
  price INTEGER check (price>0),
  deal_id INTEGER,
FOREIGN KEY (car_id) REFERENCES car(car_id),
FOREIGN KEY (seller_id) REFERENCES seller(seller_id),
UNIQUE (car_id)
    );

CREATE TABLE deal (
  deal_id INTEGER PRIMARY KEY,
  sale_id INTEGER NOT NULL,
  price INTEGER check (price>0),
  state ENUM('active', 'rejected', 'accepted'),
  date DATE,
FOREIGN KEY (sale_id) REFERENCES seller_propos(sale_id)
    );