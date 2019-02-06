USE `master`;
 
/****** Object:  Database [CandyCustomDatabase]    Script Date: 4/2/2018 3:15:15 PM ******/
CREATE DATABASE CandyCustomDatabase
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CandyCustomDatabase', FILENAME = N'C:Program FilesMicrosoft SQL ServerMSSQL14.SQLEXPRESSMSSQLDATACandyCustomDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CandyCustomDatabase_log', FILENAME = N'C:Program FilesMicrosoft SQL ServerMSSQL14.SQLEXPRESSMSSQLDATACandyCustomDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE `CandyCustomDatabase` SET COMPATIBILITY_LEVEL = 140;
 
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
then
CALL `CandyCustomDatabase`.`dbo` v_action; = 'enable'
end if;
 
ALTER DATABASE `CandyCustomDatabase` SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE `CandyCustomDatabase` /* SET ANSI_NULLS OFF */ 
 
ALTER DATABASE `CandyCustomDatabase` /* SET ANSI_PADDING OFF */ 
 
ALTER DATABASE `CandyCustomDatabase` SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET ARITHABORT OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET AUTO_CLOSE OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET AUTO_SHRINK OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE `CandyCustomDatabase` SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE `CandyCustomDatabase` SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE `CandyCustomDatabase` /* SET QUOTED_IDENTIFIER OFF */ 
 
ALTER DATABASE `CandyCustomDatabase` SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET  DISABLE_BROKER 
GO
ALTER DATABASE `CandyCustomDatabase` SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET TRUSTWORTHY OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE `CandyCustomDatabase` SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET RECOVERY SIMPLE 
GO
ALTER DATABASE `CandyCustomDatabase` SET  MULTI_USER 
GO
ALTER DATABASE `CandyCustomDatabase` SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE `CandyCustomDatabase` SET DB_CHAINING OFF 
GO
ALTER DATABASE `CandyCustomDatabase` SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE `CandyCustomDatabase` SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE `CandyCustomDatabase` SET DELAYED_DURABILITY = DISABLED; 
 
ALTER DATABASE `CandyCustomDatabase` SET QUERY_STORE = OFF;
 
USE `CandyCustomDatabase`;
 
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
 
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
 
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
 
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
 
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
 
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
 
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
 
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
 
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
 
USE `CandyCustomDatabase`;
 
/****** Object:  Table [dbo].[employee]    Script Date: 4/2/2018 3:15:15 PM ******/
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
/****** Object:  Table [dbo].[employeePayroll]    Script Date: 4/2/2018 3:15:15 PM ******/
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
/****** Object:  Table [dbo].[employeeRole]    Script Date: 4/2/2018 3:15:15 PM ******/
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
/****** Object:  Table [dbo].[order]    Script Date: 4/2/2018 3:15:16 PM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE order(
	`orderId` int NOT NULL,
	`userId` int NOT NULL,
	`shipAddress1` varchar(50) NOT NULL,
	`shipAddress2` varchar(50) NULL,
	`shipCity` varchar(20) NOT NULL,
	`shipZip` numeric(5, 0) NOT NULL,
	`productCost` Decimal(15,4) NOT NULL,
	`shipCost` Decimal(15,4) NOT NULL,
 CONSTRAINT `PK_order` PRIMARY KEY 
(
	`orderId` ASC
) 
);
/****** Object:  Table [dbo].[orderProduct]    Script Date: 4/2/2018 3:15:16 PM ******/
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
/****** Object:  Table [dbo].[product]    Script Date: 4/2/2018 3:15:16 PM ******/
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
/****** Object:  Table [dbo].[user]    Script Date: 4/2/2018 3:15:16 PM ******/
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
/****** Object:  Table [dbo].[userLogin]    Script Date: 4/2/2018 3:15:16 PM ******/
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
ALTER TABLE `dbo`.`employee`  WITH CHECK ADD  CONSTRAINT `FK_employee_employeeRole` FOREIGN KEY(`roleId`)
REFERENCES [dbo].[employeeRole] (`roleId`)
GO
ALTER TABLE `dbo`.`employee` CHECK CONSTRAINT `FK_employee_employeeRole`
GO
ALTER TABLE `dbo`.`employeePayroll`  WITH CHECK ADD  CONSTRAINT `FK_employeePayroll_employee` FOREIGN KEY(`employeeId`)
REFERENCES [dbo].[employee] (`employeeId`)
GO
ALTER TABLE `dbo`.`employeePayroll` CHECK CONSTRAINT `FK_employeePayroll_employee`
GO
ALTER TABLE `dbo`.`order`  WITH CHECK ADD  CONSTRAINT `FK_order_user` FOREIGN KEY(`userId`)
REFERENCES [dbo].[user] (`userId`)
GO
ALTER TABLE `dbo`.`order` CHECK CONSTRAINT `FK_order_user`
GO
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
ALTER TABLE `dbo`.`user`  WITH CHECK ADD  CONSTRAINT `FK_user_userLogin` FOREIGN KEY(`loginId`)
REFERENCES [dbo].[userLogin] (`loginId`)
GO
ALTER TABLE `dbo`.`user` CHECK CONSTRAINT `FK_user_userLogin`
GO
USE `master`;
 
ALTER DATABASE `CandyCustomDatabase` SET  READ_WRITE 
GO