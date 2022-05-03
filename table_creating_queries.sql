--create database buy_sell;
use buy_sell;
CREATE TABLE Member_Account (
  UserName        varchar(50),
  AccountType     varchar(15) not null, 
  Name      varchar(80),
  Email     varchar(320),
  Phone     char(12),
  Password  varchar(12), 
  QID       varchar(10),
  Answer    varchar(50), 
  CardExpDate     date,
  CardNo       char(16),
  PayPal       varchar(320),
  primary key (UserName),
  unique (Email)
);

CREATE TABLE Seller (
  SellerName        varchar(50),
  CreditMerchantAcc char(10) not null,
  ShipFromAddress   varchar(200) not null,
  primary key (SellerName )
);

CREATE TABLE Buyer (
  BuyerName         varchar(50),
  ShippingAddress   varchar(200) not null,
  primary key (BuyerName )
);

CREATE TABLE Item (
  ItemID                 varchar(25),
  Location               varchar(200) not null,
  Condition              varchar(50),
  ShippingType           varchar(50), 
  AvailableQty           integer,
  Description            varchar(200),
  ISellerName        varchar(50),
  primary key (ItemID)
);

CREATE TABLE Item_Category (
  ItemID     varchar(25),
  Category   varchar(50), 
  primary key (ItemID,Category)
);

CREATE TABLE Buy_Now_Listing (
  BuyNowListingID      varchar(25),
  Price                decimal(10,2) not null,
  primary key (BuyNowListingID)
);


CREATE TABLE Auction (
  AuctionID      varchar(25),
  BidIncrement   decimal(5,2) not null,
  BidEndTime     datetime2,
  ReservePrice   decimal(10,2) not null,
  primary key (AuctionID)
);

CREATE TABLE Bids (
  Bidder          varchar(50),
  AuctionID       varchar(25),
  BidAmount       decimal(10,2) not null,
  BidTime          datetime2 not null,
  primary key (Bidder, AuctionID )
);

CREATE TABLE orders (
  OrderNo            varchar(50),
  ItemID                 varchar(25),
  ISellerName        varchar(50),
  BuyerName         varchar(50),
  Quantity        integer not null,
  primary key (OrderNo,ItemID,ISellerName,BuyerName)
);


CREATE TABLE Order_Item (
  OrderNo            varchar(50),
  ExpShipDate        date,
  ActShipDate        date,
  OrderTime          datetime2,
  BuyerComment     varchar(100),
  BuyerRating      integer,
  SellerComment    varchar(100),
  SellerRating     integer,
  primary key (OrderNo )
);







