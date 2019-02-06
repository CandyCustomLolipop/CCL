USE `CandyCustomDatabase`;
 

/****** Object:  Table [dbo].[product]    Script Date: 3/26/2018 3:33:02 PM ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE product(
	`productId` int NOT NULL,
	`color` char(6) NOT NULL,
	`quantity` int NOT NULL,
 CONSTRAINT `PK_product` PRIMARY KEY 
(
	`productId` ASC
) 
);

