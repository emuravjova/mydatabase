INSERT INTO car VALUES (1, '1234', 'BMW', '2019', 'red');
INSERT INTO car VALUES (2, '2345', 'Lexus', '2018', 'blue');
INSERT INTO car VALUES (3, '3456', 'Audi', '2017', 'black');
INSERT INTO car VALUES (4, '4567', 'Volkswagen', '2016',	'white');
INSERT INTO car VALUES (5, '5678', 'Peugeot', '2017', 'yellow');
INSERT INTO car VALUES (6, '6789', 'Renault', '2015', 'green');

INSERT INTO seller VALUES (1, 'Den', '30981234567');
INSERT INTO seller VALUES (2, 'Ron', '30972345678');
INSERT INTO seller VALUES (3, 'Bob', '30963456789');
INSERT INTO seller VALUES (4, 'Carl', '30954567890');

INSERT INTO sale_propos VALUES (1, 5, 4, 40000, 1);
INSERT INTO sale_propos VALUES (2, 4, 3, 50000, NULL);
INSERT INTO sale_propos VALUES (3, 3, 2, 21000, 7);
INSERT INTO sale_propos VALUES (4, 2, 1, 75000, NULL);
INSERT INTO sale_propos VALUES (5, 1, 4, 10000, NULL);
INSERT INTO sale_propos VALUES (6, 6, 2, 36000, 9);

INSERT INTO deal VALUES (1, 1, 40000, 'accepted', '2017-11-10');
INSERT INTO deal VALUES (2, 1, 38000, 'rejected', '2017-11-08');
INSERT INTO deal VALUES (3, 2, 45000, 'rejected', '2017-11-07');
INSERT INTO deal VALUES (4, 2, 47000, 'active', '2017-11-13');
INSERT INTO deal VALUES (5, 2, 48000, 'active', '2017-11-12');
INSERT INTO deal VALUES (6, 3, 19000, 'rejected', '2017-11-09');
INSERT INTO deal VALUES (7, 3, 20000, 'accepted', '2017-11-11');
INSERT INTO deal VALUES (8, 4, 70000, 'active', '2017-11-14');
INSERT INTO deal VALUES (9, 6, 36000, 'accepted', '2017-11-16');