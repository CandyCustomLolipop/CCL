USE `CandyCustomDatabase`;
 

/****** Object:  Table [dbo].[employeePayroll]    Script Date: 3/21/2018 10:55:02 AM ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

CREATE TABLE employeePayroll(
	`payrollId` int NOT NULL,
	`employeeId` int NOT NULL,
	`amountPayed` Decimal(15,4) NOT NULL,
	`payDate` date NOT NULL,
 CONSTRAINT `PK_employeePayroll` PRIMARY KEY 
(
	`payrollId` ASC
) 
);

ALTER TABLE `dbo`.`employeePayroll`  WITH CHECK ADD  CONSTRAINT `FK_employeePayroll_employee` FOREIGN KEY(`employeeId`)
REFERENCES [dbo].[employee] (`employeeId`)
GO

ALTER TABLE `dbo`.`employeePayroll` CHECK CONSTRAINT `FK_employeePayroll_employee`
GO


