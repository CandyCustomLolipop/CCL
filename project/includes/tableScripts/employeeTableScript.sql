USE `CandyCustomDatabase`;
 

/****** Object:  Table [dbo].[employee]    Script Date: 3/21/2018 10:54:37 AM ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE employee(
	`employeeId` int NOT NULL,
	`roleId` int NOT NULL,
	`firstName` varchar(20) NOT NULL,
	`lastname` varchar(20) NOT NULL,
	`middleIn` char(1) NOT NULL,
	`SSN` numeric(9, 0) NOT NULL,
 CONSTRAINT `PK_employee` PRIMARY KEY 
(
	`employeeId` ASC
) 
);

ALTER TABLE `dbo`.`employee`  WITH CHECK ADD  CONSTRAINT `FK_employee_employeeRole` FOREIGN KEY(`roleId`)
REFERENCES [dbo].[employeeRole] (`roleId`)
GO

ALTER TABLE `dbo`.`employee` CHECK CONSTRAINT `FK_employee_employeeRole`
GO