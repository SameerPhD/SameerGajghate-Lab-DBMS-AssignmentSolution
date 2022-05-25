-- Display the Id and Name of the Product ordered after “2021-10-05”

select PRO_ID, PRO_NAME from product where PRO_ID in
(select PRO_ID from supplier_pricing where PRICING_ID in
(select PRICING_ID from e_com.order where ORD_DATE > "2021-10-05"));

select product.PRO_ID, product.PRO_NAME from `order` inner join supplier_pricing on supplier_pricing.PRICING_ID=`order`.PRICING_ID inner join product
on product.pro_id=supplier_pricing.pro_id where `order`.ord_date>"2021-10-05";

