USE abdatabase;
GO

CREATE TABLE products (
  product_id INT NOT NULL PRIMARY KEY,
  product_name VARCHAR(50) NOT NULL,
  units_in_stock INT NOT NULL,
  sale_price DECIMAL(4,2) NOT NULL
);

INSERT INTO products VALUES (1001,'Chocolate Chip Cookie',200,1.50);
INSERT INTO products VALUES (1002,'Banana Nut Muffin',180,2.50);
INSERT INTO products VALUES (1003,'Croissant',70,1.75);
INSERT INTO products VALUES (1004,'Cheese Danish',55,1.85);
INSERT INTO products VALUES (1005,'Cannoli',112,2.25);
INSERT INTO products VALUES (1006,'Sweet Bread Loaf',32,15.50);
INSERT INTO products VALUES (1007,'Strawberry Macaron',98,2.00);
INSERT INTO products VALUES (1008,'Coffee Cake',25,13.00);
INSERT INTO products VALUES (1009,'Carrot Cake',15,14.50);
INSERT INTO products VALUES (1010,'Chocolate Covered Doughnut',80,1.00);

CREATE TABLE suppliers (
  supplier_id SMALLINT NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

INSERT INTO suppliers VALUES (1,'Bakery LLC');
INSERT INTO suppliers VALUES (2,'Goods 4 U');
INSERT INTO suppliers VALUES (3,'Savory Loaf Delivery Co.');
INSERT INTO suppliers VALUES (4,'Mrs. Yums');
INSERT INTO suppliers VALUES (5,'Grain to Table LLC');

CREATE TABLE supplier_delivery_status (
  order_status_id TINYINT NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

INSERT INTO supplier_delivery_status VALUES (1,'Processed');
INSERT INTO supplier_delivery_status VALUES (2,'Shipped');
INSERT INTO supplier_delivery_status VALUES (3,'Delivered');

CREATE TABLE ordered_items (
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  status TINYINT NOT NULL DEFAULT 1,
  quantity INT NOT NULL,
  unit_price DECIMAL(4,2) NOT NULL,
  shipped_date DATE NULL,
  shipper_id SMALLINT NULL
);

INSERT INTO ordered_items VALUES (1,1004,1,53,0.35,'2021-08-15',1);
INSERT INTO ordered_items VALUES (2,1001,2,73,0.29,'2022-03-21',2);
INSERT INTO ordered_items VALUES (2,1004,3,10,0.35,'2022-02-07',5);
INSERT INTO ordered_items VALUES (2,1006,2,63,5.28,'2021-06-09',4);
INSERT INTO ordered_items VALUES (3,1003,1,21,0.50,'2021-09-06',1);
INSERT INTO ordered_items VALUES (4,1003,2,85,0.50,'2022-06-22',3);
INSERT INTO ordered_items VALUES (4,1010,3,42,0.39,'2021-05-13',4);
INSERT INTO ordered_items VALUES (5,1002,1,100,1.89,'2022-02-03',2);
INSERT INTO ordered_items VALUES (6,1001,2,35,0.29,'2021-11-06',3);
INSERT INTO ordered_items VALUES (6,1002,2,54,1.89,'2022-12-23',5);
INSERT INTO ordered_items VALUES (6,1003,3,10,0.50,'2022-04-05',1);
INSERT INTO ordered_items VALUES (6,1005,3,55,0.47,'2021-05-22',2);
INSERT INTO ordered_items VALUES (7,1003,3,12,0.50,'2022-06-26',1);
INSERT INTO ordered_items VALUES (8,1005,2,70,0.47,'2021-09-21',5);
INSERT INTO ordered_items VALUES (8,1008,2,96,8.59,'2022-11-10',3);
INSERT INTO ordered_items VALUES (9,1006,3,43,5.28,'2022-10-15',1);
INSERT INTO ordered_items VALUES (10,1001,1,33,0.29,'2022-01-06',1);
INSERT INTO ordered_items VALUES (10,1009,3,23,4.28,'2022-07-23',1);

CREATE TABLE customers (
  customer_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  birth_date DATE NULL,
  phone VARCHAR(50) NULL,
  address VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  state CHAR(2) NOT NULL,
  total_money_spent INT NOT NULL DEFAULT 0
);

INSERT INTO customers VALUES (100101,'Kevin','Malone','1989-04-28','635-573-9754','1229 Main Street','Scranton','PA',11000);
INSERT INTO customers VALUES (100102,'Charles','Xavier','1965-04-11','729-287-9456','123 North Hill Drive','Dallas','TX',947);
INSERT INTO customers VALUES (100103,'Finley','Danish','1999-02-07','126-583-7856','432 Hilly Road','Austin','TX',534);
INSERT INTO customers VALUES (100104,'Obi','Kenobi','1921-04-22','975-357-7663','101 Alpine Avenue','New York','NY',3567);
INSERT INTO customers VALUES (100105,'Don','Draper',NULL,'12 South Main Lane','San Francisco','CA',195);
INSERT INTO customers VALUES (100106,'Frodo','Baggins',NULL,'1 Pastery Lane','Chicago','IL',56);
INSERT INTO customers VALUES (100107,'Michael','Scott','1978-08-20','235-357-3464','987 Croissant Street','Scranton','PA',2536);
INSERT INTO customers VALUES (100108,'Maggie','Muffin','2001-07-06','906-485-1542','701 North Street','Sarasota','FL',1009);
INSERT INTO customers VALUES (100109,'Kelly','Kapoor','1987-05-30','674-357-9151','62810 Julip Lane','Scranton','PA',540);
INSERT INTO customers VALUES (100110,'Anakin','Skywalker','1934-10-15','346-458-3370','122 South Street','Charleston','SC',36);
