# Write your MySQL query statement below

Select product_id,'store1' store, store1 price from Products
WHERE store1 IS NOT NULL
UNION
Select product_id,'store2' store, store2 price from Products
WHERE store2 IS NOT NULL
UNION
Select product_id,'store3' store, store3 price from Products
WHERE store3 IS NOT NULL