DROP DATABASE IF EXISTS greatbayDB;

CREATE DATABASE greatbayDB;

USE greatbayDB;

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    userName VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE items(
    id INT NOT NULL AUTO_INCREMENT,
    owner SMALLINT UNSIGNED NOT NULL REFERENCES users(id),
    itemName VARCHAR(200) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price INT DEFAULT 0,
    leadBidder SMALLINT UNSIGNED REFERENCES users(id),
    PRIMARY KEY(id)
);

INSERT INTO users (userName)
VALUES("Tim"),
("Peter"),
("Daniel"),
("Tom"),
("Paulina");

INSERT INTO items (owner,itemName, category, price)
VALUES(1,"Daihatsu Rocky 1994 4wd Wagon","Vehicles",5000),
(1,"Mercedes Sprinter 4x4 Cab Chassis 2012","Vehicles",24500),
(2,"Land Rover Discovery 4 2.7td 2012","Vehicles",32500),
(2,"K1 kayak","Watersports",350),
(3,"Hartley 16 plywood sailing boat","Watersports",1550);
 


