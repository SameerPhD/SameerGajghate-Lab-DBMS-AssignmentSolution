-- Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
select CUS_GENDER as GENDER, count(distinct(CUS_ID)) as NoOfCustomers from
(select customer.CUS_ID, customer.CUS_GENDER from customer inner join
(Select CUS_ID from e_com.order where ORD_AMOUNT >= 3000) as filter_order
on customer.CUS_ID = filter_order.CUS_ID) as filter_customer group by CUS_GENDER;

select CUS_GENDER as GENDER, count(distinct(CUS_ID)) as NoOfCustomers from
(select customer.CUS_ID, customer.CUS_GENDER from customer where CUS_ID in
(select CUS_ID from e_com.order where ORD_AMOUNT >= 3000)) as filter_customer group by CUS_GENDER;
