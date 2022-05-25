-- display all the orders along with product name ordered by a customer having Customer_Id=2

select order_details.*, prod.pro_name from product as prod inner join
(select ord.*, price.PRO_ID from e_com.order as ord inner join supplier_pricing as price
on ord.PRICING_ID = price.PRICING_ID where ord.cus_id = 2) as order_details
on order_details.PRO_ID = prod.pro_id;

select product.pro_name, `order`.* from `order`, supplier_pricing, product
where `order`.cus_id=2 and
`order`.pricing_id=supplier_pricing.pricing_id and supplier_pricing.pro_id=product.pro_id;


