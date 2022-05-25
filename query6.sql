-- find the least expensive product from each category and print the table with category id, name, product name and price of the product

select category.CAT_ID, category.CAT_NAME, min(t3.min_price) as Min_Price from category inner join
(select product.CAT_ID, product.PRO_NAME, t2.* from product inner join
(select PRO_ID, min(supp_price) as Min_Price from supplier_pricing group by PRO_ID)
as t2 where t2.PRO_ID = product.PRO_ID)
as t3 where t3.CAT_ID = category.CAT_ID group by t3.CAT_ID;