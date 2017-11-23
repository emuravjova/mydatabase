DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS seller;
DROP TABLE IF EXISTS seller_propos;
DROP TABLE IF EXISTS deal;

CREATE TABLE IF NOT EXISTS car (
  id BIGINT PRIMARY KEY,
  number VARCHAR(20) NOT NULL,
  brand  VARCHAR(20) NOT NULL,
  year INTEGER NOT NULL,
  color VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS seller (
  id BIGINT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  contacts  VARCHAR(70) NOT NULL
);

CREATE TABLE IF NOT EXISTS offer (
  id BIGINT PRIMARY KEY,
  car_id INTEGER NOT NULL,
  seller_id  INTEGER NOT NULL,
  price INTEGER check (price > 0),
  deal_id INTEGER,
FOREIGN KEY (car_id) REFERENCES car(id),
FOREIGN KEY (seller_id) REFERENCES seller(id),
UNIQUE (car_id, deal_id)
);

CREATE TABLE IF NOT EXISTS deal (
  id BIGINT PRIMARY KEY,
  sale_id INTEGER NOT NULL,
  price INTEGER check (price > 0),
  state ENUM('active', 'rejected', 'accepted'),
  date DATE NOT NULL,
FOREIGN KEY (sale_id) REFERENCES offer(id)
);