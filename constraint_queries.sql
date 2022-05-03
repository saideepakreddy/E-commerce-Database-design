use buy_sell;


ALTER TABLE Seller           ADD CONSTRAINT fk1 FOREIGN KEY(SellerName)  REFERENCES Member_Account(UserName) ;	
ALTER TABLE Buyer            ADD CONSTRAINT fk2 FOREIGN KEY(BuyerName)   REFERENCES Member_Account(UserName) ;
ALTER TABLE Item             ADD CONSTRAINT fk3 FOREIGN KEY(ISellerName)  REFERENCES Seller(SellerName)  ;	
ALTER TABLE Item_Category    ADD CONSTRAINT fk4 FOREIGN KEY(ItemID)      REFERENCES Item(ItemID);
ALTER TABLE Buy_Now_Listing  ADD CONSTRAINT fk5 FOREIGN KEY(BuyNowListingID)  REFERENCES Item(ItemID) ;		
ALTER TABLE Orders       		ADD CONSTRAINT fk6 FOREIGN KEY(BuyerName)   REFERENCES Buyer(BuyerName);

ALTER TABLE Orders      		ADD CONSTRAINT fk7 FOREIGN KEY(ISellerName)   REFERENCES Seller(SellerName)  ;
ALTER TABLE Orders       		ADD CONSTRAINT fk8 FOREIGN KEY(ItemID )   REFERENCES Item(ItemID ) ;
ALTER TABLE Orders       		ADD CONSTRAINT fk9 FOREIGN KEY(OrderNo )   REFERENCES Order_Item(OrderNo);
ALTER TABLE Auction          ADD CONSTRAINT fk10 FOREIGN KEY(AuctionID)   REFERENCES Item(ItemID) ;
ALTER TABLE Bids             ADD CONSTRAINT f11 FOREIGN KEY(Bidder)      REFERENCES Buyer(BuyerName)  ;	
ALTER TABLE Bids             ADD CONSTRAINT f12 FOREIGN KEY(AuctionID)   REFERENCES Auction(AuctionID) ;



