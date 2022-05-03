BULK INSERT Seller
FROM 'C:\Users\sxg210094\Box\downloads\DB proj\check\seller.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);	

BULK INSERT Buyer
FROM 'C:\Users\sxg210094\Box\downloads\DB proj\check\buyer.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);	

BULK INSERT Item_Category
FROM 'C:\Users\sxg210094\Box\downloads\DB proj\check\item_catagory.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);
	
BULK INSERT Item_Category
FROM 'C:\Users\sxg210094\Box\downloads\DB proj\check\item_catagory.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);

BULK INSERT Item_Category
FROM 'C:\Users\sxg210094\Box\downloads\DB proj\check\item_catagory.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);


BULK INSERT Buy_Now_Listing
FROM 'C:\Users\sxg210094\Box\downloads\DB proj\check\buyNow_listing.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);

	BULK INSERT Bids
FROM 'C:\Users\sxg210094\Box\downloads\DB proj\check\bids.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);

	BULK INSERT orders
FROM 'C:\Users\sxg210094\Box\downloads\DB proj\check\orders.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);

		BULK INSERT order_item
FROM 'C:\Users\sxg210094\Box\downloads\DB proj\check\order_item.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);



		BULK INSERT item
FROM 'C:\Users\sxg210094\Box\downloads\DB proj\check\item.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);		



	select sellerName,email from Seller,Member_Account where SellerName = UserName

	select * from Member_Account

	select username from Member_Account where AccountType = 'Business'
	
	select SellerName from Seller
	except
		select username from Member_Account where AccountType = 'Business'