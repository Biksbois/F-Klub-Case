INSERT INTO product_dimension (product_id, product_name, price, product_availability, alcohol_content, quantity)
VALUES
(1,'Diverse - Fyttetur',100,'f',0,0),
(2,'½L Letmælk',450,'f',0,0),
(3,'¼L Letmælk',250,'f',0,0),

INSERT INTO room_dimension(room_id, room_name, room_description)
VALUES
(1,'Websalg','Websalg'),
(2,'cs','Jægerstuen'),
(3,'math','Vektorrummet'),
(4,'Fyttetur','Fyttetur'),
(5,'Julefrokost','Julefrokost'),
(6,'FooBar','FooBar'),
(7,'Sportsdag','Sportsdag'),
(8,'Ad hoc - FRB 7A Kæld','FRB 7A'),
(9,'FRB 7A','FRB 7A'),

INSERT INTO time_dimension(date_time)

VALUES
('1996-11-19 17:11:51+01'),
('1996-11-19 17:12:31+01'),
('1999-09-03 13:13:03+02'),
('1999-09-03 13:13:03+02'),
('1999-09-03 12:54:09+02'),
('1999-09-03 12:52:57+02'),
('1999-09-03 12:33:15+02'),

INSERT INTO costumer_dimension(member_id, active, activation_year, gender)
VALUES
(1,'f',2004,'M'),
(2,'t',2014,'M'),
(3,'f',1994,'M'),
(4,'f',1992,'M'),
(5,'f',2005,'M'),

INSERT INTO sales_fact(sale_id, time_stamp_id, product_id, member_id, room_id, sale_price)
VALUES
(943,1,1,1,1,275),
(944,2,1,1,1,275),
(1,3,1,2,1,600)