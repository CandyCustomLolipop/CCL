USE `CandyCustomDatabase`;
 

/****** Object:  Table [dbo].[userLogin]    Script Date: 3/26/2018 10:40:13 AM ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE userLogin(
	`loginId` int NOT NULL,
	`loginEmail` varchar(50) NOT NULL,
	`password` varchar(50) NOT NULL,
 CONSTRAINT `PK_userLogin` PRIMARY KEY 
(
	`loginId` ASC
) 
);