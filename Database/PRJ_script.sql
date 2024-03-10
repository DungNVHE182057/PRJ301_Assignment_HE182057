USE [PRJ_final_dtb]
GO

/****** Object:  Table [dbo].[Product]    Script Date: 2/20/2024 4:02:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------create tables
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](100) NOT NULL,
	[description] [varchar](255) NULL,
	[price] [float] NOT NULL,
	[discount] [int] NOT NULL,
	[inStock] [int] NOT NULL,
	[sold] [int] NOT NULL,
	[imageLink] [varchar](255) NULL,
	[category_id] [int] NOT NULL,
	[owner_id][int] Null,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO

ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO

CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[role_id] [int] NOT NULL,
	
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO

ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[value] [float] NOT NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO

ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_User]
GO


---------------------------------------------insert data

INSERT INTO [dbo].[Category]
           ([cname])
     VALUES
			('Clothes'),
			('Shoes'),
			('Sport'),
			('Technology'),
			('Accessories'),
			('Perfume'),
			('Others')

INSERT INTO [dbo].[Product] ([pname], [description], [price], [discount], [inStock], [sold], [imageLink], [category_id],[owner_id])
VALUES
('Uniqlo Cotton T-Shirt', 'High-quality cotton T-shirt for men', 20.99, 0, 100, 20, 'https://image.uniqlo.com/UQ/ST3/WesternCommon/imagesgoods/469322/item/goods_56_469322.jpg', 1, 1), 
('NIKE Running Shoes', 'Comfortable running shoes for men', 49.99, 10, 50, 10, 'https://hips.hearstapps.com/hmg-prod/images/run-nike-running-shoes-1661870227.jpg', 2, 1), 
('NBA Basketball', 'Official NBA basketball for men', 29.99, 0, 30, 5, 'https://i5.walmartimages.com/asr/dbc9d0cf-89a7-497c-8be4-85a0a6aca8cc.1875a147d8eb056fa1d70556f3043ce5.jpeg', 3, 1), 
('Iphone 14 pro max', 'Latest model smartphone for men', 699.99, 50, 20, 5, 'https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-tim-thumb-600x600.jpg', 4, 1), 
('Apple Watch Series 6 ', 'Luxury watch for men', 299.99, 25, 10, 2, 'https://hc.com.vn/i/ecommerce/media/GS.007049_FEATURE_74641.jpg', 5, 1), 
('Dior Sauvage Perfume', 'Scented perfume for men', 49.99, 0, 50, 15, 'https://xxivstore.com/wp-content/uploads/2020/05/Nuoc-hoa-Dior-Sauvage-EDT.png', 6, 1), 
('Travel Backpack', 'Durable travel backpack for men', 39.99, 0, 40, 8, 'https://product.hstatic.net/200000450837/product/i-tnsmc5v-x3_931346b272c245ecbd6d19ec4427ce74_master.jpg', 7, 1), 
('Black Leather Jacket', 'Stylish leather jacket for men', 149.99, 20, 30, 5, 'https://i0.wp.com/www.theleatherjacketer.com/storage/2020/02/Mens-Black-Plane-Simple-Biker-Leather-Jacket-0003-2.jpg', 1, 1),
('Adidas Casual Sneakers', 'Casual sneakers for men', 39.99, 0, 60, 15, 'https://sneakerdaily.vn/wp-content/uploads/2022/11/Giay-adidas-Grand-Court-TD-Lifestyle-Court-Casual-%E2%80%98White-GW9250.jpg', 2, 2),
('World Cup 2022 Soccer Ball', 'Official soccer ball for men', 19.99, 0, 20, 3, 'https://m.media-amazon.com/images/I/615xwIblEAL._AC_UF1000,1000_QL80_.jpg', 3, 2),
('Asus TUF Gaming Laptop', 'High-performance laptop for men', 899.99, 30, 10, 2, 'https://dlcdnwebimgs.asus.com/gain/d21319d6-7ab4-4cf6-908a-ec9845d26221/', 4, 2),
('Designer Sunglasses', 'Designer sunglasses for men', 99.99, 15, 20, 5, 'https://www.quayaustralia.co.uk/cdn/shop/files/Quay_HighKey_BlackFadePol_Side.jpg?v=1693352655', 5, 2),
('Cologne Gift Set', 'Luxury cologne gift set for men', 79.99, 0, 25, 8, 'https://quatang3a.com/sites/default/files/gift-set-so-da-but-ki-5.jpg', 7, 2),
('Thudovang Hiking Backpack', 'Durable hiking backpack for men', 59.99, 0, 35, 7, 'https://nearzero.co/cdn/shop/products/W-Backside_620x.jpg?v=1669151387', 7, 2),
('Tokyo Life Denim Jeans', 'Classic denim jeans for men', 39.99, 0, 50, 10, 'https://product.hstatic.net/1000360022/product/id-002802a_0b65b2777ffc4e988e12876d6718fcd4_large.jpg', 1, 2),
('High quality Training Shoes', 'Training shoes for men', 59.99, 10, 40, 5, 'https://cdn.shopify.com/s/files/1/0456/5070/6581/files/IG3083-1_540x.jpg?v=1704275920', 2, 2),
('NBA Basketball Hoop', 'Portable basketball hoop for men', 199.99, 0, 10, 2, 'https://cdn-amz.woka.io/images/I/61eBFafrX3L.jpg', 3, 2),
('PS4 Gaming Console', 'Latest gaming console for men', 399.99, 20, 15, 3, 'https://www.sony.co.in/image/36b81e42a6bd825ba05ad08692069da0?fmt=jpeg', 4, 2),
('Vietnam Leather Wallet', 'Genuine leather wallet for men', 29.99, 0, 30, 6, 'https://m.media-amazon.com/images/I/715DZSDsEAL._AC_UY1100_.jpg', 5, 2),
('Chinese Body Spray', 'Refreshing body spray for men', 9.99, 0, 100, 20, 'https://product.hstatic.net/1000341801/product/smooth_amber_77da1699683f4e548e64013ac7c9bd4c_grande.png', 6, 2),
('Canon Camera Bag', 'Durable camera bag for men', 49.99, 0, 25, 5, 'https://www.bhphotovideo.com/images/images2500x2500/canon_900sr_holster_bag_1034963.jpg', 7, 2),
('Polo Shirt', 'Classic polo shirt for men', 29.99, 0, 70, 15, 'https://product.hstatic.net/1000312752/product/aplt233-3__4__b0450ae785194be8bdf0bfb3275fbee2.jpg', 1, 2),
('Running Shorts', 'Lightweight running shorts for men', 24.99, 0, 40, 8, 'https://product.hstatic.net/200000563747/product/kg2227301-10466__1__8f1cabeb3ee541179b268114cd68feed_1024x1024.jpg', 1, 2),
('Boxing Gloves', 'Premium boxing gloves for men', 49.99, 0, 15, 3, 'https://m.media-amazon.com/images/I/71kRp1fDB2L._AC_UF1000,1000_QL80_.jpg', 3, 3),
('JBL Bluetooth Speaker', 'Portable Bluetooth speaker for men', 79.99, 10, 20, 4, 'https://www.jbhifi.com.au/cdn/shop/products/597795-Product-0-I-637945077777426049.jpg', 4, 2),
('Leather Belt', 'Stylish leather belt for men', 19.99, 0, 50, 10, 'https://m.media-amazon.com/images/I/91fY-7BP8qS._AC_UY1000_.jpg', 5, 3),
('Shaving Kit', 'Complete shaving kit for men', 34.99, 0, 30, 6, 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1666699985-shaving-kit-for-men-1666699953.jpg', 6, 3),
('Camping Tent', 'Durable camping tent for men', 149.99, 0, 10, 2, 'https://th.bing.com/th/id/OIP.jN9zHevgkPuGNAz8aVnwaQHaHa?rs=1&pid=ImgDetMain', 7, 3),
('Hoodie Sweatshirt', 'Comfortable hoodie sweatshirt for men', 44.99, 0, 60, 12, 'https://pos.nvncdn.com/4260cc-24295/ps/20230818_nCyNt6pJ0b.jpeg', 1, 3),
('Basketball Shorts', 'Breathable basketball shorts for men', 19.99, 0, 30, 6, 'https://product.hstatic.net/200000563747/product/kg2227301-10466__1__8f1cabeb3ee541179b268114cd68feed_1024x1024.jpg', 1, 3),
('Fitness Tracker', 'Advanced fitness tracker for men', 99.99, 15, 25, 5, 'https://cdn-amz.woka.io/images/I/51ja6ds+pML.jpg', 4, 3),
('Leather Messenger Bag', 'Stylish leather messenger bag for men', 69.99, 0, 20, 4, 'https://product.hstatic.net/200000450837/product/i-tnsmc5v-x3_931346b272c245ecbd6d19ec4427ce74_master.jpg', 7, 3),
('Hair Care Set', 'Complete hair care set for men', 29.99, 0, 40, 8, 'https://www.crowncouture.co.uk/wp-content/uploads/2023/03/full_set.jpg', 6, 3),
('Camping Backpack', 'Heavy-duty camping backpack for men', 79.99, 0, 15, 3, 'https://product.hstatic.net/200000450837/product/i-tnsmc5v-x3_931346b272c245ecbd6d19ec4427ce74_master.jpg', 7, 3),
('Pullover Sweater', 'Warm pullover sweater for men', 39.99, 0, 50, 10, 'https://pos.nvncdn.com/4260cc-24295/ps/20230818_nCyNt6pJ0b.jpeg', 1, 3),
('Track Jacket', 'Stylish track jacket for men', 59.99, 0, 40, 8, 'https://i0.wp.com/www.theleatherjacketer.com/storage/2020/02/Mens-Black-Plane-Simple-Biker-Leather-Jacket-0003-2.jpg', 1, 3)

INSERT INTO [dbo].[Role]
           ([role])
     VALUES
           ('user'),('shop'),('admin');

INSERT INTO [dbo].[User]
           ([username]
           ,[password]
           ,[role_id])
     VALUES
			('shop1','shop',2),
		   ('shop2','shop',2),
		   ('shop3','shop',2),
           ('nguyenvietdung','vdung_2004',1),
		   ('user','user',1),
		   ('admin','admin',3)