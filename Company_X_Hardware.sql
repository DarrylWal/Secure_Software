-- MySQL dump 10.13  Distrib 5.6.23, for Linux (x86_64)
--
-- Host: localhost    Database: Company_X_Hardware
-- ------------------------------------------------------
-- Server version	5.6.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employees` (
  `Employee_ID` int(11) NOT NULL DEFAULT '0',
  `Employee_name` varchar(40) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `City` varchar(40) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Position` varchar(25) DEFAULT NULL,
  `Hire_Date` varchar(9) DEFAULT NULL,
  `SSI` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1001,'Robert Stevens','6 Bob Street','Chesapeake','VA','GM','10/4/08','111-12-1234'),(1002,'Cheryl Stevens','6 Bob Street','Chesapeake','VA','Payroll/Accounting','10/4/08','106-13-1456'),(1003,'Sonny Stevens','6 Lee Street','Norfolk','VA','Front-End Manager','10/4/08','543-34-7654'),(1004,'Kyle Brown','90 Bend Avenue','Chesapeake','VA','Warehouse Associate','10/4/08','980-09-3322'),(1005,'Dale Hendricks','5487 Case Road','Chesapeake','VA','Warehouse Manager','6/6/09','098-98-7654'),(1006,'Steven Goode','34 Race Street','Portsmouth','VA','IT Manager','6/10/09','111-14-4321'),(1007,'Larry Bishop','234 White Storm Road','Norfolk','VA','Warehouse Associate','12/5/09','879-09-8999'),(1008,'Kevin Jones','983 Bank Street','Norfolk','VA','Sales Associate','1/17/10','354-34-5089'),(1009,'Joan Hill','87 Elm Avenue','Portsmouth','VA','Sales Associate','10/13/10','687-90-9438'),(1010,'Jill Stevens','765 Murry Blvd','Virginia Beach','VA','Payroll/Accounting','2/23/12','213-22-2212'),(1011,'Stephen Jobs','1098 Welcome Road','Portsmouth','VA','Warehouse Associate','6/7/13','098-09-0000'),(1012,'John Wilcox','560 Left Road','Virginia Beach','VA','Sales Associate','2/8/14','654-56-5431'),(1013,'Joseph Brown','4567 Canty Way','Virginia Beach','VA','Warehouse Associate','7/8/14','789-98-9898');
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory_lumber`
--

DROP TABLE IF EXISTS `Inventory_lumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inventory_lumber` (
  `2_x_4` int(11) DEFAULT NULL,
  `2_x_4_10` int(11) DEFAULT NULL,
  `2_x_4_12` int(11) DEFAULT NULL,
  `2_x_6` int(11) DEFAULT NULL,
  `2_x_6_10` int(11) DEFAULT NULL,
  `2_x_6_12` int(11) DEFAULT NULL,
  `2_x_6_16` int(11) DEFAULT NULL,
  `2_x_8` int(11) DEFAULT NULL,
  `2_x_8_10` int(11) DEFAULT NULL,
  `2_x_8_12` int(11) DEFAULT NULL,
  `2_x_8_14` int(11) DEFAULT NULL,
  `2_x_8_16` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory_lumber`
--

LOCK TABLES `Inventory_lumber` WRITE;
/*!40000 ALTER TABLE `Inventory_lumber` DISABLE KEYS */;
INSERT INTO `Inventory_lumber` VALUES (500,300,250,250,300,275,300,300,280,354,175,80);
/*!40000 ALTER TABLE `Inventory_lumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory_paint`
--

DROP TABLE IF EXISTS `Inventory_paint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inventory_paint` (
  `flat` varchar(35) DEFAULT NULL,
  `semi_gloss` varchar(35) DEFAULT NULL,
  `ultra_gloss` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory_paint`
--

LOCK TABLES `Inventory_paint` WRITE;
/*!40000 ALTER TABLE `Inventory_paint` DISABLE KEYS */;
INSERT INTO `Inventory_paint` VALUES ('Valspar 25','Valspar 25','Valspar 25'),('Benjamin Moore 25','Benjamin Moore 25','Benjamin Moore 25'),('Behr 25','Behr 25','Behr 25'),('Glidden 25','Glidden 25','Glidden 25'),('Sherwin Williams 25','Sherwin Williams 25','Sherwin Williams 25');
/*!40000 ALTER TABLE `Inventory_paint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_form`
--

DROP TABLE IF EXISTS `Order_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order_form` (
  `Item` varchar(35) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Employee_ID` int(11) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_form`
--

LOCK TABLES `Order_form` WRITE;
/*!40000 ALTER TABLE `Order_form` DISABLE KEYS */;
INSERT INTO `Order_form` VALUES ('Valspar',10,1003,NULL);
/*!40000 ALTER TABLE `Order_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payroll`
--

DROP TABLE IF EXISTS `Payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Payroll` (
  `Employee_ID` int(11) NOT NULL DEFAULT '0',
  `Employee_name` varchar(40) DEFAULT NULL,
  `Salary` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payroll`
--

LOCK TABLES `Payroll` WRITE;
/*!40000 ALTER TABLE `Payroll` DISABLE KEYS */;
INSERT INTO `Payroll` VALUES (1001,'Robert Stevens',59.70),(1002,'Cheryl Stevens',37.31),(1003,'Sonny Stevens',33.83),(1004,'Kyle Brown',18.90),(1005,'Dale Hendricks',24.63),(1006,'Steven Goode',35.82),(1007,'Larry Bishop',13.43),(1008,'Kevin Jones',10.95),(1009,'Joan Hill',9.45),(1010,'Jill Stevens',16.42),(1011,'Stephen Jobs',10.45),(1012,'John Wilcox',10.00),(1013,'Joseph Brown',10.00);
/*!40000 ALTER TABLE `Payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Timesheet`
--

DROP TABLE IF EXISTS `Timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Timesheet` (
  `Time_in` int(11) NOT NULL,
  `Time_out` int(11) NOT NULL,
  `Employee_ID` int(11) DEFAULT NULL,
  `Date` varchar(10) NOT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `Timesheet_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Employees` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Timesheet`
--

LOCK TABLES `Timesheet` WRITE;
/*!40000 ALTER TABLE `Timesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `Timesheet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-30 20:22:29
