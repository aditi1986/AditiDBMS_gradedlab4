
-- supplier table create script
CREATE TABLE supplier (
    SUPP_ID int unsigned primary key auto_increment,
    SUPP_NAME varchar(50) NOT NULL,
    SUPP_CITY varchar(50) NOT NULL,
    SUPP_PHONE varchar(50) NOT NULL
);

--  customer table create script
CREATE TABLE customer (
    CUS_ID int unsigned primary key auto_increment,
    CUS_NAME varchar(20) NOT NULL,
    CUS_PHONE varchar(10) NOT NULL,
    CUS_CITY varchar(30) NOT NULL,
CUS_GENDER enum('M', 'F') not null);

-- category table create script
CREATE TABLE category (
    CAT_ID int unsigned primary key auto_increment,
    CAT_NAME varchar(20) NOT NULL
);

-- product table create script
Create table product(
pro_id int unsigned primary key auto_increment,
pro_name varchar(20) not null ,
pro_desc varchar(60),
cat_id int unsigned, foreign key (cat_id) references category(cat_id)
);

-- supplier pricing table create script
CREATE TABLE supplier_pricing (
    PRICING_ID int unsigned primary key auto_increment,
PRO_ID int unsigned,
SUPP_ID int unsigned,
FOREIGN  Key (PRO_ID) REFERENCES product(PRO_ID),
FOREIGN  Key (SUPP_ID) REFERENCES supplier(SUPP_ID),
    SUPP_PRICE int default 0
);

-- cutomer order table create script
CREATE TABLE customer_order (
    ORD_ID int unsigned primary key auto_increment,
ORD_AMOUNT int not null,
ORD_DATE date not null,
CUS_ID int unsigned,
PRICING_ID int unsigned,
FOREIGN  Key (CUS_ID) REFERENCES customer(CUS_ID),
FOREIGN  Key (PRICING_ID) REFERENCES supplier_pricing(PRICING_ID)  
);

-- rating table create script
CREATE TABLE rating (
    RAT_ID int unsigned primary key auto_increment,
ORD_ID int unsigned,
FOREIGN  Key (ORD_ID) REFERENCES customer_order(ORD_ID),
RAT_RATSTARS int not null
);

