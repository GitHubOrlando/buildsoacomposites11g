select * from online_store where prod_id = 'SKU101';

Select p.prod_id, p.prod_name, o.quantity "ONLINE", i.quantity "INTERNAL" from products p, online_store o, internal_store i 
where p.prod_id = o.prod_id and i.prod_id = o.prod_id and i.prod_id like 'SKU3%';


select * from customers;
select *from address;

