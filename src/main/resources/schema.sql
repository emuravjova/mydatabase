
DROP TABLE car;
CREATE TABLE car (
  car_id         INTEGER PRIMARY KEY,
  number VARCHAR(20),
  brand  VARCHAR(20),
  year VARCHAR(4),
  color VARCHAR(15)
);

DROP TABLE seller;
CREATE TABLE seller (
  seller_id         INTEGER PRIMARY KEY,
  name VARCHAR(20),
  contacts  VARCHAR(70)
 );

DROP TABLE sale_propos;
CREATE TABLE sale_propos (
  sale_id INTEGER PRIMARY KEY,
  car_id INTEGER NOT NULL,
  seller_id  INTEGER NOT NULL,
  price INTEGER check (price>0),
  is_closed BOOLEAN,
FOREIGN KEY (car_id) REFERENCES car(car_id),
FOREIGN KEY (seller_id) REFERENCES seller(seller_id),
UNIQUE (car_id)
    );

DROP TABLE deal;
CREATE TABLE deal (
  deal_id INTEGER PRIMARY KEY,
  sale_id INTEGER NOT NULL,
  price INTEGER check (price>0),
  state INTEGER,
  date DATE,
FOREIGN KEY (sale_id) REFERENCES sale_propos(sale_id)
    );