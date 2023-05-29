insert into supplier ( supp_name, supp_city, supp_phone) 
values ('Rajesh Retails', 'Delhi', '1234567890'),
('Appario Ltd.', 'Mumbai', '2589631470'),
('Knome products', 'Banglore', '9785462315'),
('Bansal Retails'		,'Kochi'		,'8975463285'),
('Mittal Ltd.', 'Lucknow', '7898456532');


INSERT INTO CUSTOMER 
  (CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) 
  
  VALUES('AAKASH','9999999999', 'DELHI','M'),
  		('AMAN','9785463215', 'NOIDA','M'),
	  	('NEHA','9999999999', "MUMBAI",'F'),
		  ('MEGHA','9994562399', 'KOLKATA','F'),
		  ('PULKIT','7895999999', 'LUCKNOW','M');

insert into category( cat_name)
values ("BOOKS") ;
insert into category( cat_name)
values ("GAMES");
insert into category( cat_name)
values ("GROCERIES");
insert into category( cat_name)
values ("ELECTRONICS");
insert into category( cat_name)
values ("CLOTHES");


insert into product (pro_name, pro_desc, cat_id)

values ("GTA V","Windows 7 and above with i5 processor and 8GB RAM",2),
("TSHIRT","SIZE-L with Black, Blue and White variations",5),
("ROG LAPTOP	","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4),
("OATS","Highly Nutritious from Nestle",3),
("HARRY POTTER","Best Collection of all time by J.K Rowling",1),
("MILK","1L Toned Milk",3),
("Boat Earphones","1.5Meter long Dolby Atmos",4),
("Jeans","Stretchable Denim Jeans with various sizes and color",5),
("Project IGI","compatible with windows 7 and above",2),
("Hoodie","Black GUCCI for 13 yrs and above",5),
("Rich Dad Poor Dad","Written by RObert Kiyosaki",1),
("Train Your Brain","By Shireen Stephen",1);



insert into supplier_pricing (pro_id,supp_id,supp_price)
values 
( 1,2,1500),
(3,5,30000),
(5,1,3000),
(2,3,2500),
(4,1,1000),
(2,1,500),
(1,1,500),
(5,1,1500),
(4,1,1500),
(2,3,2500),
(4,1,1000),
(2,1,500),
(1,3,500),
(5,4,1500),
(4,1,1500);




insert into customer_order (ord_id, ord_amount, ord_date, cus_id, pricing_id) 
values(101,1500, "2021-10-06",2,1),
	 (102,1000, "2021-10-12",3,5),
 		(103,30000, "2021-09-16",5,2),
 		(104,1500, "2021-10-05",1,1),
		(105,3000, "2021-08-16",4,3),
		(106,1450, "2021-08-18",1,9),
		(107,789, "2021-09-01",3,7),
		(108,780, "2021-09-07",5,6),
		(109,3000, "2021-10-10",5,3),
		(110,2500, "2021-09-10",2,4),
		(111,1000, "2021-09-15",4,5),
		(112,789, "2021-09-16",4,7),
		(113,31000, "2021-09-16",1,8),
		(114,1000, "2021-09-16",3,5),
		(115,3000, "2021-09-16",5,3),
		(116,99, "2021-09-17",2,14);



insert into rating (ord_id, rat_ratstars)
values (101,4),
		(102,3),
		(103,1),
		(104,2),
		(105,4),
		(106,3),
		(107,4),
		(108,4),
		(109,3),
		(110,5),
		(111,3),
		(112,4),
		(113,2),
		(114,1),
		(115,1),
		(116,0);
        