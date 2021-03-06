INSERT INTO car VALUES
(1, '1234', 'BMW', 2019, 'red'),
(2, '2345', 'Lexus', 2018, 'blue'),
(3, '3456', 'Audi', 2017, 'black'),
(4, '4567', 'Volkswagen', 2016,	'white'),
(5, '5678', 'Peugeot', 2017, 'yellow'),
(6, '6789', 'Renault', 2015, 'green');

INSERT INTO seller VALUES
(1, 'Den', '30981234567'),
(2, 'Ron', '30972345678'),
(3, 'Bob', '30963456789'),
(4, 'Carl', '30954567890');

INSERT INTO offer VALUES
(1, 5, 4, 40000, 1),
(2, 4, 3, 50000, NULL),
(3, 3, 2, 21000, 8),
(4, 2, 1, 75000, NULL),
(5, 1, 4, 10000, NULL),
(6, 6, 2, 36000, 10);

INSERT INTO deal VALUES
(1, 1, 40000, 'accepted', '2017-11-10'),
(2, 1, 38000, 'rejected', '2017-11-08'),
(3, 1, 45000, 'rejected', '2017-11-10'),
(4, 2, 50000, 'rejected', '2017-11-07'),
(5, 2, 47000, 'active', '2017-11-13'),
(6, 2, 48000, 'active', '2017-11-12'),
(7, 3, 19000, 'rejected', '2017-11-09'),
(8, 3, 20000, 'accepted', '2017-11-11'),
(9, 4, 70000, 'active', '2017-11-14'),
(10, 6, 36000, 'accepted', '2017-11-16');