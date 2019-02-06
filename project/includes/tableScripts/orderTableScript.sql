USE `CandyCustomDatabase`;
 

/****** Object:  Table [dbo].[order]    Script Date: 3/26/2018 2:39:51 PM ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE order(
	`orderId` int NOT NULL,
	`userId` int NOT NULL,
	`shipAddress1` varchar(50) NOT NULL,
	`shipAddress2` varchar(50) NULL,
	`shipCity` varchar(20) NOT NULL,
	`shipState` char(2)NOT NULL,
	`shipZip` numeric(5, 0) NOT NULL,
	`productCost` Decimal(15,4) NOT NULL,
	`shipCost` Decimal(15,4) NOT NULL,
 CONSTRAINT `PK_order` PRIMARY KEY 
(
	`orderId` ASC
) 
);

ALTER TABLE `dbo`.`order`  WITH CHECK ADD  CONSTRAINT `FK_order_user` FOREIGN KEY(`userId`)
REFERENCES [dbo].[user] (`userId`)
GO

ALTER TABLE `dbo`.`order` CHECK CONSTRAINT `FK_order_user`
GO

