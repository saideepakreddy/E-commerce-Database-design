---top seller
select  Isellername from orders t1
inner join Order_Item t2 on t1.OrderNo = t2.OrderNo
where SellerRating =5;

--orderno whose buyerrating is 4

select  t1.OrderNo from orders t1
inner join Order_Item t2 on t1.OrderNo = t2.OrderNo
where BuyerRating =4;

---Certified refurbished items

select * from Item
where Condition = 'Certified refurbished'

---seller who has availableqty more than 70
select SellerName from Seller t1
inner join orders t2 on t1.SellerName = t2.ISellerName
inner join Item t3 on t3.ItemID = t2.ItemID
where availableQty >70

--- top bidding amount

select top 1 Bidder,max(bidAmount) from Bids
group by Bidder
order by max(bidAmount) desc

---All Items of category Men

select t1.ItemID from Item_Category t1
inner join item t2 on t1.ItemID = t2.ItemID
where t1.Category like 'Men%'


----itemid available for freeshipping or free Instore Pickup or free local pickup

select ItemID from Item
where ShippingType like '%Free%';

---Itemid with min(availableqty) greater than  10 avilableqty in descending order

select ItemID,min(availableqty) as min_availableqty from Item
group by ItemID
having min(availableqty) > 10
order by min(availableqty) desc


----
