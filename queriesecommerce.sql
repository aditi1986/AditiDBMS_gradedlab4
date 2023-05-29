
-- Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
select count(customer_order.cus_id)   from customer_order , customer
where ord_amount >= '3000'
and customer.cus_id = customer_order.cus_id
group by customer.cus_gender;

-- 4)	Display all the orders along with product name ordered by a customer having Customer_Id=2


select * from customer_order c
inner join supplier_pricing sp
on c.pricing_id = sp.pricing_id
inner join product p
on p.pro_id = sp.pro_id
where cus_id ='2';


-- 5)	Display the Supplier details who can supply more than one product.

select  sp.* from supplier sp, supplier_pricing spr
where sp.supp_id = spr.supp_id
group by (spr.supp_id)
having count(spr.supp_id) >1;

-- 6)	Find the least expensive product from each category and print the table with category id, name, 
-- product name and price of the product
select distinct ct.CAT_ID, sp.SUPP_PRICE from supplier_pricing sp
inner join product pr on
sp.pro_id = pr.pro_id
inner join category ct on
ct.cat_id = pr.cat_id
and sp.SUPP_PRICE in (select min(SUPP_PRICE) from supplier_pricing group by supplier_pricing.SUPP_ID);

-- 7)	Display the Id and Name of the Product ordered after “2021-10-05”.

select prd.pro_id, prd.pro_name, ord.ord_date from supplier_pricing sp, product prd, customer_order ord
where sp.pro_id = prd.pro_id
and ord.pricing_id = sp.pricing_id
and ord.ord_date > '2020-10-05';

-- 8)	Display customer name and gender whose names start or end with character 'A'.

select cus_name, cus_gender from customer 
where cus_name like 'A%' 
or cus_name like '%A';

-- 9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service. select sp.SUPP_ID, sup.SUPP_NAME, r.RAT_RATSTARS from rating r


CREATE PROCEDURE Typeofservice(out Message(10) )
BEGIN 
DECLARE Message VARCHAR(20);
select sp.SUPP_ID into supplier_id, sup.SUPP_NAME into suppliername, r.RAT_RATSTARS into ratingstar from rating r
inner join customer_order cod
on 
r.ORD_ID = cod.ord_id
inner join supplier_pricing sp 
on
cod.PRICING_ID=sp.PRICING_ID
inner join supplier sup
on 
sup.SUPP_ID= sp.SUPP_ID;
    IF ratingstar = 5 THEN
        SET Message = 'Excellent';
        
    ELSEIF ratingstar= 4 THEN
        SET Message = 'Good';  
        
    ELSEIF rat_ratstars= 3 THEN
        SET Message = 'Average';  
    ELSEIF rat_ratstars= 2 THEN
        SET Message = 'Poor'; 
    ELSE 
        SET Message = 'Waiting' ;
    END IF;
    RETURN Message;
END
DELIMITER;

