USE `CandyCustomDatabase`;
 

/****** Object:  Table [dbo].[user]    Script Date: 3/26/2018 10:39:50 AM ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE user(
	`userId` int NOT NULL,
	`loginId` int NOT NULL,
	`firstName` varchar(20) NOT NULL,
	`lastName` varchar(20) NOT NULL,
	`billAddress1` varchar(20) NOT NULL,
	`billAddress2` varchar(20) NULL,
	`billCity` varchar(20) NOT NULL,
	`billState` char(2) NOT NULL,
	`billZip` numeric(5, 0) NOT NULL,
	`phoneNumber` numeric(10, 0) NOT NULL,
 CONSTRAINT `PK_user` PRIMARY KEY 
(
	`userId` ASC
) 
);

ALTER TABLE `dbo`.`user`  WITH CHECK ADD  CONSTRAINT `FK_user_userLogin` FOREIGN KEY(`loginId`)
REFERENCES [dbo].[userLogin] (`loginId`)
GO

ALTER TABLE `dbo`.`user` CHECK CONSTRAINT `FK_user_userLogin`
GO