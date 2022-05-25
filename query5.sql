-- display the Supplier details of who is supplying more than one product.

select supplier.* from supplier where supplier.supp_id in
(select supp_id from supplier_pricing group by SUPP_ID having
count(SUPP_ID)>1);