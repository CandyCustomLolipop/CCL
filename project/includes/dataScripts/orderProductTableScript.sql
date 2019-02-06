USE `CandyCustomDatabase`;
 

/****** Object:  Table [dbo].[orderProduct]    Script Date: 3/26/2018 10:41:06 AM ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE orderProduct(
	`transactionId` int NOT NULL,
	`orderId` int NOT NULL,
	`productId` int NOT NULL,
	`orderDate` datetime(3) NOT NULL,
	`shipDate` datetime(3) NULL,
 CONSTRAINT `PK_orderProduct` PRIMARY KEY 
(
	`transactionId` ASC
) 
);

ALTER TABLE `dbo`.`orderProduct`  WITH CHECK ADD  CONSTRAINT `FK_orderProduct_order` FOREIGN KEY(`orderId`)
REFERENCES [dbo].[order] (`orderId`)
GO

ALTER TABLE `dbo`.`orderProduct` CHECK CONSTRAINT `FK_orderProduct_order`
GO

ALTER TABLE `dbo`.`orderProduct`  WITH CHECK ADD  CONSTRAINT `FK_orderProduct_product` FOREIGN KEY(`productId`)
REFERENCES [dbo].[product] (`productId`)
GO

ALTER TABLE `dbo`.`orderProduct` CHECK CONSTRAINT `FK_orderProduct_product`
GO

