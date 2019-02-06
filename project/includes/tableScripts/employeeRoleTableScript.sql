USE `CandyCustomDatabase`;
 

/****** Object:  Table [dbo].[employeeRole]    Script Date: 3/21/2018 10:55:23 AM ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE employeeRole(
	`roleId` int NOT NULL,
	`roledescription` varchar(100) NULL,
 CONSTRAINT `PK_employeeRole` PRIMARY KEY 
(
	`roleId` ASC
) 
);
