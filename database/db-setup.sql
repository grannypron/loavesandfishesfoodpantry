--
-- Create schema pantry
--

CREATE DATABASE IF NOT EXISTS pantry;
USE pantry;

--
-- Definition of table `intake`
--
CREATE TABLE `intake` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IntakeDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LastName` varchar(100) NOT NULL DEFAULT '',
  `FirstName` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `AptNumber` varchar(50) DEFAULT NULL,
  `FoodStamps` bit(1) NOT NULL,
  `FoodStampAmount` decimal(10,0) DEFAULT NULL,
  `WorkerName` varchar(100) DEFAULT NULL,
  `DoB` datetime DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Line1_Name` varchar(300) DEFAULT NULL,
  `Line1_Age` decimal(10,0) DEFAULT NULL,
  `Line1_Sex` varchar(1) DEFAULT NULL,
  `Line1_Income` float DEFAULT NULL,
  `Line1_Monthly` bit(1) DEFAULT NULL,
  `Line1_Weekly` bit(1) DEFAULT NULL,
  `Line1_BiWeekly` bit(1) DEFAULT NULL,
  `Line1_Yearly` bit(1) DEFAULT NULL,
  `Line1_Medicaid` bit(1) DEFAULT NULL,
  `Line1_TANF` bit(1) DEFAULT NULL,
  `Line1_SSI` bit(1) DEFAULT NULL,
  `Line1_Other` bit(1) DEFAULT NULL,
  `Line2_Name` varchar(300) DEFAULT NULL,
  `Line2_Age` decimal(10,0) DEFAULT NULL,
  `Line2_Sex` varchar(1) DEFAULT NULL,
  `Line2_Income` float DEFAULT NULL,
  `Line2_Monthly` bit(1) DEFAULT NULL,
  `Line2_Weekly` bit(1) DEFAULT NULL,
  `Line2_BiWeekly` bit(1) DEFAULT NULL,
  `Line2_Yearly` bit(1) DEFAULT NULL,
  `Line2_Medicaid` bit(1) DEFAULT NULL,
  `Line2_TANF` bit(1) DEFAULT NULL,
  `Line2_SSI` bit(1) DEFAULT NULL,
  `Line2_Other` bit(1) DEFAULT NULL,
  `Line3_Name` varchar(300) DEFAULT NULL,
  `Line3_Age` decimal(10,0) DEFAULT NULL,
  `Line3_Sex` varchar(1) DEFAULT NULL,
  `Line3_Income` float DEFAULT NULL,
  `Line3_Monthly` bit(1) DEFAULT NULL,
  `Line3_Weekly` bit(1) DEFAULT NULL,
  `Line3_BiWeekly` bit(1) DEFAULT NULL,
  `Line3_Yearly` bit(1) DEFAULT NULL,
  `Line3_Medicaid` bit(1) DEFAULT NULL,
  `Line3_TANF` bit(1) DEFAULT NULL,
  `Line3_SSI` bit(1) DEFAULT NULL,
  `Line3_Other` bit(1) DEFAULT NULL,
  `Line4_Name` varchar(300) DEFAULT NULL,
  `Line4_Age` decimal(10,0) DEFAULT NULL,
  `Line4_Sex` varchar(1) DEFAULT NULL,
  `Line4_Income` float DEFAULT NULL,
  `Line4_Monthly` bit(1) DEFAULT NULL,
  `Line4_Weekly` bit(1) DEFAULT NULL,
  `Line4_BiWeekly` bit(1) DEFAULT NULL,
  `Line4_Yearly` bit(1) DEFAULT NULL,
  `Line4_Medicaid` bit(1) DEFAULT NULL,
  `Line4_TANF` bit(1) DEFAULT NULL,
  `Line4_SSI` bit(1) DEFAULT NULL,
  `Line4_Other` bit(1) DEFAULT NULL,
  `Line5_Name` varchar(300) DEFAULT NULL,
  `Line5_Age` decimal(10,0) DEFAULT NULL,
  `Line5_Sex` varchar(1) DEFAULT NULL,
  `Line5_Income` float DEFAULT NULL,
  `Line5_Monthly` bit(1) DEFAULT NULL,
  `Line5_Weekly` bit(1) DEFAULT NULL,
  `Line5_BiWeekly` bit(1) DEFAULT NULL,
  `Line5_Yearly` bit(1) DEFAULT NULL,
  `Line5_Medicaid` bit(1) DEFAULT NULL,
  `Line5_TANF` bit(1) DEFAULT NULL,
  `Line5_SSI` bit(1) DEFAULT NULL,
  `Line5_Other` bit(1) DEFAULT NULL,
  `Line6_Name` varchar(300) DEFAULT NULL,
  `Line6_Age` decimal(10,0) DEFAULT NULL,
  `Line6_Sex` varchar(1) DEFAULT NULL,
  `Line6_Income` float DEFAULT NULL,
  `Line6_Monthly` bit(1) DEFAULT NULL,
  `Line6_Weekly` bit(1) DEFAULT NULL,
  `Line6_BiWeekly` bit(1) DEFAULT NULL,
  `Line6_Yearly` bit(1) DEFAULT NULL,
  `Line6_Medicaid` bit(1) DEFAULT NULL,
  `Line6_TANF` bit(1) DEFAULT NULL,
  `Line6_SSI` bit(1) DEFAULT NULL,
  `Line6_Other` bit(1) DEFAULT NULL,
  `Line7_Name` varchar(300) DEFAULT NULL,
  `Line7_Age` decimal(10,0) DEFAULT NULL,
  `Line7_Sex` varchar(1) DEFAULT NULL,
  `Line7_Income` float DEFAULT NULL,
  `Line7_Monthly` bit(1) DEFAULT NULL,
  `Line7_Weekly` bit(1) DEFAULT NULL,
  `Line7_BiWeekly` bit(1) DEFAULT NULL,
  `Line7_Yearly` bit(1) DEFAULT NULL,
  `Line7_Medicaid` bit(1) DEFAULT NULL,
  `Line7_TANF` bit(1) DEFAULT NULL,
  `Line7_SSI` bit(1) DEFAULT NULL,
  `Line7_Other` bit(1) DEFAULT NULL,
  `Line8_Name` varchar(300) DEFAULT NULL,
  `Line8_Age` decimal(10,0) DEFAULT NULL,
  `Line8_Sex` varchar(1) DEFAULT NULL,
  `Line8_Income` float DEFAULT NULL,
  `Line8_Monthly` bit(1) DEFAULT NULL,
  `Line8_Weekly` bit(1) DEFAULT NULL,
  `Line8_BiWeekly` bit(1) DEFAULT NULL,
  `Line8_Yearly` bit(1) DEFAULT NULL,
  `Line8_Medicaid` bit(1) DEFAULT NULL,
  `Line8_TANF` bit(1) DEFAULT NULL,
  `Line8_SSI` bit(1) DEFAULT NULL,
  `Line8_Other` bit(1) DEFAULT NULL,
  `Line9_Name` varchar(300) DEFAULT NULL,
  `Line9_Age` decimal(10,0) DEFAULT NULL,
  `Line9_Sex` varchar(1) DEFAULT NULL,
  `Line9_Income` float DEFAULT NULL,
  `Line9_Monthly` bit(1) DEFAULT NULL,
  `Line9_Weekly` bit(1) DEFAULT NULL,
  `Line9_BiWeekly` bit(1) DEFAULT NULL,
  `Line9_Yearly` bit(1) DEFAULT NULL,
  `Line9_Medicaid` bit(1) DEFAULT NULL,
  `Line9_TANF` bit(1) DEFAULT NULL,
  `Line9_SSI` bit(1) DEFAULT NULL,
  `Line9_Other` bit(1) DEFAULT NULL,
  `Line10_Name` varchar(300) DEFAULT NULL,
  `Line10_Age` decimal(10,0) DEFAULT NULL,
  `Line10_Sex` varchar(1) DEFAULT NULL,
  `Line10_Income` float DEFAULT NULL,
  `Line10_Monthly` bit(1) DEFAULT NULL,
  `Line10_Weekly` bit(1) DEFAULT NULL,
  `Line10_BiWeekly` bit(1) DEFAULT NULL,
  `Line10_Yearly` bit(1) DEFAULT NULL,
  `Line10_Medicaid` bit(1) DEFAULT NULL,
  `Line10_TANF` bit(1) DEFAULT NULL,
  `Line10_SSI` bit(1) DEFAULT NULL,
  `Line10_Other` bit(1) DEFAULT NULL,
  `Line11_Name` varchar(300) DEFAULT NULL,
  `Line11_Age` decimal(10,0) DEFAULT NULL,
  `Line11_Sex` varchar(1) DEFAULT NULL,
  `Line11_Income` float DEFAULT NULL,
  `Line11_Monthly` bit(1) DEFAULT NULL,
  `Line11_Weekly` bit(1) DEFAULT NULL,
  `Line11_BiWeekly` bit(1) DEFAULT NULL,
  `Line11_Yearly` bit(1) DEFAULT NULL,
  `Line11_Medicaid` bit(1) DEFAULT NULL,
  `Line11_TANF` bit(1) DEFAULT NULL,
  `Line11_SSI` bit(1) DEFAULT NULL,
  `Line11_Other` bit(1) DEFAULT NULL,
  `Line12_Name` varchar(300) DEFAULT NULL,
  `Line12_Age` decimal(10,0) DEFAULT NULL,
  `Line12_Sex` varchar(1) DEFAULT NULL,
  `Line12_Income` float DEFAULT NULL,
  `Line12_Monthly` bit(1) DEFAULT NULL,
  `Line12_Weekly` bit(1) DEFAULT NULL,
  `Line12_BiWeekly` bit(1) DEFAULT NULL,
  `Line12_Yearly` bit(1) DEFAULT NULL,
  `Line12_Medicaid` bit(1) DEFAULT NULL,
  `Line12_TANF` bit(1) DEFAULT NULL,
  `Line12_SSI` bit(1) DEFAULT NULL,
  `Line12_Other` bit(1) DEFAULT NULL,
  `Line13_Name` varchar(300) DEFAULT NULL,
  `Line13_Age` decimal(10,0) DEFAULT NULL,
  `Line13_Sex` varchar(1) DEFAULT NULL,
  `Line13_Income` float DEFAULT NULL,
  `Line13_Monthly` bit(1) DEFAULT NULL,
  `Line13_Weekly` bit(1) DEFAULT NULL,
  `Line13_BiWeekly` bit(1) DEFAULT NULL,
  `Line13_Yearly` bit(1) DEFAULT NULL,
  `Line13_Medicaid` bit(1) DEFAULT NULL,
  `Line13_TANF` bit(1) DEFAULT NULL,
  `Line13_SSI` bit(1) DEFAULT NULL,
  `Line13_Other` bit(1) DEFAULT NULL,
  `Line14_Name` varchar(300) DEFAULT NULL,
  `Line14_Age` decimal(10,0) DEFAULT NULL,
  `Line14_Sex` varchar(1) DEFAULT NULL,
  `Line14_Income` float DEFAULT NULL,
  `Line14_Monthly` bit(1) DEFAULT NULL,
  `Line14_Weekly` bit(1) DEFAULT NULL,
  `Line14_BiWeekly` bit(1) DEFAULT NULL,
  `Line14_Yearly` bit(1) DEFAULT NULL,
  `Line14_Medicaid` bit(1) DEFAULT NULL,
  `Line14_TANF` bit(1) DEFAULT NULL,
  `Line14_SSI` bit(1) DEFAULT NULL,
  `Line14_Other` bit(1) DEFAULT NULL,
  `Line15_Name` varchar(300) DEFAULT NULL,
  `Line15_Age` decimal(10,0) DEFAULT NULL,
  `Line15_Sex` varchar(1) DEFAULT NULL,
  `Line15_Income` float DEFAULT NULL,
  `Line15_Monthly` bit(1) DEFAULT NULL,
  `Line15_Weekly` bit(1) DEFAULT NULL,
  `Line15_BiWeekly` bit(1) DEFAULT NULL,
  `Line15_Yearly` bit(1) DEFAULT NULL,
  `Line15_Medicaid` bit(1) DEFAULT NULL,
  `Line15_TANF` bit(1) DEFAULT NULL,
  `Line15_SSI` bit(1) DEFAULT NULL,
  `Line15_Other` bit(1) DEFAULT NULL,
  `Line16_Name` varchar(300) DEFAULT NULL,
  `Line16_Age` decimal(10,0) DEFAULT NULL,
  `Line16_Sex` varchar(1) DEFAULT NULL,
  `Line16_Income` float DEFAULT NULL,
  `Line16_Monthly` bit(1) DEFAULT NULL,
  `Line16_Weekly` bit(1) DEFAULT NULL,
  `Line16_BiWeekly` bit(1) DEFAULT NULL,
  `Line16_Yearly` bit(1) DEFAULT NULL,
  `Line16_Medicaid` bit(1) DEFAULT NULL,
  `Line16_TANF` bit(1) DEFAULT NULL,
  `Line16_SSI` bit(1) DEFAULT NULL,
  `Line16_Other` bit(1) DEFAULT NULL,
  `Line17_Name` varchar(300) DEFAULT NULL,
  `Line17_Age` decimal(10,0) DEFAULT NULL,
  `Line17_Sex` varchar(1) DEFAULT NULL,
  `Line17_Income` float DEFAULT NULL,
  `Line17_Monthly` bit(1) DEFAULT NULL,
  `Line17_Weekly` bit(1) DEFAULT NULL,
  `Line17_BiWeekly` bit(1) DEFAULT NULL,
  `Line17_Yearly` bit(1) DEFAULT NULL,
  `Line17_Medicaid` bit(1) DEFAULT NULL,
  `Line17_TANF` bit(1) DEFAULT NULL,
  `Line17_SSI` bit(1) DEFAULT NULL,
  `Line17_Other` bit(1) DEFAULT NULL,
  `Line18_Name` varchar(300) DEFAULT NULL,
  `Line18_Age` decimal(10,0) DEFAULT NULL,
  `Line18_Sex` varchar(1) DEFAULT NULL,
  `Line18_Income` float DEFAULT NULL,
  `Line18_Monthly` bit(1) DEFAULT NULL,
  `Line18_Weekly` bit(1) DEFAULT NULL,
  `Line18_BiWeekly` bit(1) DEFAULT NULL,
  `Line18_Yearly` bit(1) DEFAULT NULL,
  `Line18_Medicaid` bit(1) DEFAULT NULL,
  `Line18_TANF` bit(1) DEFAULT NULL,
  `Line18_SSI` bit(1) DEFAULT NULL,
  `Line18_Other` bit(1) DEFAULT NULL,
  `Line19_Name` varchar(300) DEFAULT NULL,
  `Line19_Age` decimal(10,0) DEFAULT NULL,
  `Line19_Sex` varchar(1) DEFAULT NULL,
  `Line19_Income` float DEFAULT NULL,
  `Line19_Monthly` bit(1) DEFAULT NULL,
  `Line19_Weekly` bit(1) DEFAULT NULL,
  `Line19_BiWeekly` bit(1) DEFAULT NULL,
  `Line19_Yearly` bit(1) DEFAULT NULL,
  `Line19_Medicaid` bit(1) DEFAULT NULL,
  `Line19_TANF` bit(1) DEFAULT NULL,
  `Line19_SSI` bit(1) DEFAULT NULL,
  `Line19_Other` bit(1) DEFAULT NULL,
  `Line20_Name` varchar(300) DEFAULT NULL,
  `Line20_Age` decimal(10,0) DEFAULT NULL,
  `Line20_Sex` varchar(1) DEFAULT NULL,
  `Line20_Income` float DEFAULT NULL,
  `Line20_Monthly` bit(1) DEFAULT NULL,
  `Line20_Weekly` bit(1) DEFAULT NULL,
  `Line20_BiWeekly` bit(1) DEFAULT NULL,
  `Line20_Yearly` bit(1) DEFAULT NULL,
  `Line20_Medicaid` bit(1) DEFAULT NULL,
  `Line20_TANF` bit(1) DEFAULT NULL,
  `Line20_SSI` bit(1) DEFAULT NULL,
  `Line20_Other` bit(1) DEFAULT NULL,
  `Line21_Name` varchar(300) DEFAULT NULL,
  `Line21_Age` decimal(10,0) DEFAULT NULL,
  `Line21_Sex` varchar(1) DEFAULT NULL,
  `Line21_Income` float DEFAULT NULL,
  `Line21_Monthly` bit(1) DEFAULT NULL,
  `Line21_Weekly` bit(1) DEFAULT NULL,
  `Line21_BiWeekly` bit(1) DEFAULT NULL,
  `Line21_Yearly` bit(1) DEFAULT NULL,
  `Line21_Medicaid` bit(1) DEFAULT NULL,
  `Line21_TANF` bit(1) DEFAULT NULL,
  `Line21_SSI` bit(1) DEFAULT NULL,
  `Line21_Other` bit(1) DEFAULT NULL,
  `Signature1` blob,
  `Signature2` blob,
  `Signature3` blob,
  `Signature4` blob,
  `Signature5` blob,
  `Signature6` blob,
  `Signature1Date` datetime DEFAULT NULL,
  `Signature2Date` datetime DEFAULT NULL,
  `Signature3Date` datetime DEFAULT NULL,
  `Signature4Date` datetime DEFAULT NULL,
  `Signature5Date` datetime DEFAULT NULL,
  `Signature6Date` datetime DEFAULT NULL,
  `PickupForAnother` varchar(200) DEFAULT NULL,
  `PickupForAnotherSignature` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`,`LastName`)
) ENGINE=InnoDB AUTO_INCREMENT=2974 DEFAULT CHARSET=latin1;


--
-- Definition of trigger `log_row`
--

DELIMITER $$

CREATE DEFINER = `pantry`@`localhost` TRIGGER `log_row` BEFORE UPDATE ON `intake` FOR EACH ROW INSERT INTO intakelog
  (
  `LastName`,
  `FirstName`,
  `Address`,
  `City`,
  `State`,
  `Phone`,
  `AptNumber`,
  `FoodStamps`,
  `FoodStampAmount`,
  `WorkerName`,
  `DoB`,
  `Zip`,
  `Line1_Name`,
  `Line1_Age`,
  `Line1_Sex`,
  `Line1_Income`,
  `Line1_Monthly`,
  `Line1_Weekly`,
  `Line1_BiWeekly`,
  `Line1_Yearly`,
  `Line1_Medicaid`,
  `Line1_TANF`,
  `Line1_SSI`,
  `Line1_Other`,
  `Line2_Name`,
  `Line2_Age`,
  `Line2_Sex`,
  `Line2_Income`,
  `Line2_Monthly`,
  `Line2_Weekly`,
  `Line2_BiWeekly`,
  `Line2_Yearly`,
  `Line2_Medicaid`,
  `Line2_TANF`,
  `Line2_SSI`,
  `Line2_Other`,
  `Line3_Name`,
  `Line3_Age`,
  `Line3_Sex`,
  `Line3_Income`,
  `Line3_Monthly`,
  `Line3_Weekly`,
  `Line3_BiWeekly`,
  `Line3_Yearly`,
  `Line3_Medicaid`,
  `Line3_TANF`,
  `Line3_SSI`,
  `Line3_Other`,
  `Line4_Name`,
  `Line4_Age`,
  `Line4_Sex`,
  `Line4_Income`,
  `Line4_Monthly`,
  `Line4_Weekly`,
  `Line4_BiWeekly`,
  `Line4_Yearly`,
  `Line4_Medicaid`,
  `Line4_TANF`,
  `Line4_SSI`,
  `Line4_Other`,
  `Line5_Name`,
  `Line5_Age`,
  `Line5_Sex`,
  `Line5_Income`,
  `Line5_Monthly`,
  `Line5_Weekly`,
  `Line5_BiWeekly`,
  `Line5_Yearly`,
  `Line5_Medicaid`,
  `Line5_TANF`,
  `Line5_SSI`,
  `Line5_Other`,
  `Line6_Name`,
  `Line6_Age`,
  `Line6_Sex`,
  `Line6_Income`,
  `Line6_Monthly`,
  `Line6_Weekly`,
  `Line6_BiWeekly`,
  `Line6_Yearly`,
  `Line6_Medicaid`,
  `Line6_TANF`,
  `Line6_SSI`,
  `Line6_Other`,
  `Line7_Name`,
  `Line7_Age`,
  `Line7_Sex`,
  `Line7_Income`,
  `Line7_Monthly`,
  `Line7_Weekly`,
  `Line7_BiWeekly`,
  `Line7_Yearly`,
  `Line7_Medicaid`,
  `Line7_TANF`,
  `Line7_SSI`,
  `Line7_Other`,
  `Line8_Name`,
  `Line8_Age`,
  `Line8_Sex`,
  `Line8_Income`,
  `Line8_Monthly`,
  `Line8_Weekly`,
  `Line8_BiWeekly`,
  `Line8_Yearly`,
  `Line8_Medicaid`,
  `Line8_TANF`,
  `Line8_SSI`,
  `Line8_Other`,
  `Line9_Name`,
  `Line9_Age`,
  `Line9_Sex`,
  `Line9_Income`,
  `Line9_Monthly`,
  `Line9_Weekly`,
  `Line9_BiWeekly`,
  `Line9_Yearly`,
  `Line9_Medicaid`,
  `Line9_TANF`,
  `Line9_SSI`,
  `Line9_Other`,
  `Line10_Name`,
  `Line10_Age`,
  `Line10_Sex`,
  `Line10_Income`,
  `Line10_Monthly`,
  `Line10_Weekly`,
  `Line10_BiWeekly`,
  `Line10_Yearly`,
  `Line10_Medicaid`,
  `Line10_TANF`,
  `Line10_SSI`,
  `Line10_Other`,
  `Line11_Name`,
  `Line11_Age`,
  `Line11_Sex`,
  `Line11_Income`,
  `Line11_Monthly`,
  `Line11_Weekly`,
  `Line11_BiWeekly`,
  `Line11_Yearly`,
  `Line11_Medicaid`,
  `Line11_TANF`,
  `Line11_SSI`,
  `Line11_Other`,
  `Line12_Name`,
  `Line12_Age`,
  `Line12_Sex`,
  `Line12_Income`,
  `Line12_Monthly`,
  `Line12_Weekly`,
  `Line12_BiWeekly`,
  `Line12_Yearly`,
  `Line12_Medicaid`,
  `Line12_TANF`,
  `Line12_SSI`,
  `Line12_Other`,
  `Line13_Name`,
  `Line13_Age`,
  `Line13_Sex`,
  `Line13_Income`,
  `Line13_Monthly`,
  `Line13_Weekly`,
  `Line13_BiWeekly`,
  `Line13_Yearly`,
  `Line13_Medicaid`,
  `Line13_TANF`,
  `Line13_SSI`,
  `Line13_Other`,
  `Line14_Name`,
  `Line14_Age`,
  `Line14_Sex`,
  `Line14_Income`,
  `Line14_Monthly`,
  `Line14_Weekly`,
  `Line14_BiWeekly`,
  `Line14_Yearly`,
  `Line14_Medicaid`,
  `Line14_TANF`,
  `Line14_SSI`,
  `Line14_Other`,
  `Line15_Name`,
  `Line15_Age`,
  `Line15_Sex`,
  `Line15_Income`,
  `Line15_Monthly`,
  `Line15_Weekly`,
  `Line15_BiWeekly`,
  `Line15_Yearly`,
  `Line15_Medicaid`,
  `Line15_TANF`,
  `Line15_SSI`,
  `Line15_Other`,
  `Line16_Name`,
  `Line16_Age`,
  `Line16_Sex`,
  `Line16_Income`,
  `Line16_Monthly`,
  `Line16_Weekly`,
  `Line16_BiWeekly`,
  `Line16_Yearly`,
  `Line16_Medicaid`,
  `Line16_TANF`,
  `Line16_SSI`,
  `Line16_Other`,
  `Line17_Name`,
  `Line17_Age`,
  `Line17_Sex`,
  `Line17_Income`,
  `Line17_Monthly`,
  `Line17_Weekly`,
  `Line17_BiWeekly`,
  `Line17_Yearly`,
  `Line17_Medicaid`,
  `Line17_TANF`,
  `Line17_SSI`,
  `Line17_Other`,
  `Line18_Name`,
  `Line18_Age`,
  `Line18_Sex`,
  `Line18_Income`,
  `Line18_Monthly`,
  `Line18_Weekly`,
  `Line18_BiWeekly`,
  `Line18_Yearly`,
  `Line18_Medicaid`,
  `Line18_TANF`,
  `Line18_SSI`,
  `Line18_Other`,
  `Line19_Name`,
  `Line19_Age`,
  `Line19_Sex`,
  `Line19_Income`,
  `Line19_Monthly`,
  `Line19_Weekly`,
  `Line19_BiWeekly`,
  `Line19_Yearly`,
  `Line19_Medicaid`,
  `Line19_TANF`,
  `Line19_SSI`,
  `Line19_Other`,
  `Line20_Name`,
  `Line20_Age`,
  `Line20_Sex`,
  `Line20_Income`,
  `Line20_Monthly`,
  `Line20_Weekly`,
  `Line20_BiWeekly`,
  `Line20_Yearly`,
  `Line20_Medicaid`,
  `Line20_TANF`,
  `Line20_SSI`,
  `Line20_Other`,
  `Line21_Name`,
  `Line21_Age`,
  `Line21_Sex`,
  `Line21_Income`,
  `Line21_Monthly`,
  `Line21_Weekly`,
  `Line21_BiWeekly`,
  `Line21_Yearly`,
  `Line21_Medicaid`,
  `Line21_TANF`,
  `Line21_SSI`,
  `Line21_Other`,
  `Signature1`,
  `Signature2`,
  `Signature3`,
  `Signature4`,
  `Signature5`,
  `Signature6`,
  `Signature1Date`,
  `Signature2Date`,
  `Signature3Date`,
  `Signature4Date`,
  `Signature5Date`,
  `Signature6Date`,
  `UpdateDate`)
VALUES (
  OLD.LastName,
  OLD.FirstName,
  OLD.Address,
  OLD.City,
  OLD.State,
  OLD.Phone,
  OLD.AptNumber,
  OLD.FoodStamps,
  OLD.FoodStampAmount,
  OLD.WorkerName,
  OLD.DoB,
  OLD.Zip,
  OLD.Line1_Name,
  OLD.Line1_Age,
  OLD.Line1_Sex,
  OLD.Line1_Income,
  OLD.Line1_Monthly,
  OLD.Line1_Weekly,
  OLD.Line1_BiWeekly,
  OLD.Line1_Yearly,
  OLD.Line1_Medicaid,
  OLD.Line1_TANF,
  OLD.Line1_SSI,
  OLD.Line1_Other,
  OLD.Line2_Name,
  OLD.Line2_Age,
  OLD.Line2_Sex,
  OLD.Line2_Income,
  OLD.Line2_Monthly,
  OLD.Line2_Weekly,
  OLD.Line2_BiWeekly,
  OLD.Line2_Yearly,
  OLD.Line2_Medicaid,
  OLD.Line2_TANF,
  OLD.Line2_SSI,
  OLD.Line2_Other,
  OLD.Line3_Name,
  OLD.Line3_Age,
  OLD.Line3_Sex,
  OLD.Line3_Income,
  OLD.Line3_Monthly,
  OLD.Line3_Weekly,
  OLD.Line3_BiWeekly,
  OLD.Line3_Yearly,
  OLD.Line3_Medicaid,
  OLD.Line3_TANF,
  OLD.Line3_SSI,
  OLD.Line3_Other,
  OLD.Line4_Name,
  OLD.Line4_Age,
  OLD.Line4_Sex,
  OLD.Line4_Income,
  OLD.Line4_Monthly,
  OLD.Line4_Weekly,
  OLD.Line4_BiWeekly,
  OLD.Line4_Yearly,
  OLD.Line4_Medicaid,
  OLD.Line4_TANF,
  OLD.Line4_SSI,
  OLD.Line4_Other,
  OLD.Line5_Name,
  OLD.Line5_Age,
  OLD.Line5_Sex,
  OLD.Line5_Income,
  OLD.Line5_Monthly,
  OLD.Line5_Weekly,
  OLD.Line5_BiWeekly,
  OLD.Line5_Yearly,
  OLD.Line5_Medicaid,
  OLD.Line5_TANF,
  OLD.Line5_SSI,
  OLD.Line5_Other,
  OLD.Line6_Name,
  OLD.Line6_Age,
  OLD.Line6_Sex,
  OLD.Line6_Income,
  OLD.Line6_Monthly,
  OLD.Line6_Weekly,
  OLD.Line6_BiWeekly,
  OLD.Line6_Yearly,
  OLD.Line6_Medicaid,
  OLD.Line6_TANF,
  OLD.Line6_SSI,
  OLD.Line6_Other,
  OLD.Line7_Name,
  OLD.Line7_Age,
  OLD.Line7_Sex,
  OLD.Line7_Income,
  OLD.Line7_Monthly,
  OLD.Line7_Weekly,
  OLD.Line7_BiWeekly,
  OLD.Line7_Yearly,
  OLD.Line7_Medicaid,
  OLD.Line7_TANF,
  OLD.Line7_SSI,
  OLD.Line7_Other,
  OLD.Line8_Name,
  OLD.Line8_Age,
  OLD.Line8_Sex,
  OLD.Line8_Income,
  OLD.Line8_Monthly,
  OLD.Line8_Weekly,
  OLD.Line8_BiWeekly,
  OLD.Line8_Yearly,
  OLD.Line8_Medicaid,
  OLD.Line8_TANF,
  OLD.Line8_SSI,
  OLD.Line8_Other,
  OLD.Line9_Name,
  OLD.Line9_Age,
  OLD.Line9_Sex,
  OLD.Line9_Income,
  OLD.Line9_Monthly,
  OLD.Line9_Weekly,
  OLD.Line9_BiWeekly,
  OLD.Line9_Yearly,
  OLD.Line9_Medicaid,
  OLD.Line9_TANF,
  OLD.Line9_SSI,
  OLD.Line9_Other,
  OLD.Line10_Name,
  OLD.Line10_Age,
  OLD.Line10_Sex,
  OLD.Line10_Income,
  OLD.Line10_Monthly,
  OLD.Line10_Weekly,
  OLD.Line10_BiWeekly,
  OLD.Line10_Yearly,
  OLD.Line10_Medicaid,
  OLD.Line10_TANF,
  OLD.Line10_SSI,
  OLD.Line10_Other,
  OLD.Line11_Name,
  OLD.Line11_Age,
  OLD.Line11_Sex,
  OLD.Line11_Income,
  OLD.Line11_Monthly,
  OLD.Line11_Weekly,
  OLD.Line11_BiWeekly,
  OLD.Line11_Yearly,
  OLD.Line11_Medicaid,
  OLD.Line11_TANF,
  OLD.Line11_SSI,
  OLD.Line11_Other,
  OLD.Line12_Name,
  OLD.Line12_Age,
  OLD.Line12_Sex,
  OLD.Line12_Income,
  OLD.Line12_Monthly,
  OLD.Line12_Weekly,
  OLD.Line12_BiWeekly,
  OLD.Line12_Yearly,
  OLD.Line12_Medicaid,
  OLD.Line12_TANF,
  OLD.Line12_SSI,
  OLD.Line12_Other,
  OLD.Line13_Name,
  OLD.Line13_Age,
  OLD.Line13_Sex,
  OLD.Line13_Income,
  OLD.Line13_Monthly,
  OLD.Line13_Weekly,
  OLD.Line13_BiWeekly,
  OLD.Line13_Yearly,
  OLD.Line13_Medicaid,
  OLD.Line13_TANF,
  OLD.Line13_SSI,
  OLD.Line13_Other,
  OLD.Line14_Name,
  OLD.Line14_Age,
  OLD.Line14_Sex,
  OLD.Line14_Income,
  OLD.Line14_Monthly,
  OLD.Line14_Weekly,
  OLD.Line14_BiWeekly,
  OLD.Line14_Yearly,
  OLD.Line14_Medicaid,
  OLD.Line14_TANF,
  OLD.Line14_SSI,
  OLD.Line14_Other,
  OLD.Line15_Name,
  OLD.Line15_Age,
  OLD.Line15_Sex,
  OLD.Line15_Income,
  OLD.Line15_Monthly,
  OLD.Line15_Weekly,
  OLD.Line15_BiWeekly,
  OLD.Line15_Yearly,
  OLD.Line15_Medicaid,
  OLD.Line15_TANF,
  OLD.Line15_SSI,
  OLD.Line15_Other,
  OLD.Line16_Name,
  OLD.Line16_Age,
  OLD.Line16_Sex,
  OLD.Line16_Income,
  OLD.Line16_Monthly,
  OLD.Line16_Weekly,
  OLD.Line16_BiWeekly,
  OLD.Line16_Yearly,
  OLD.Line16_Medicaid,
  OLD.Line16_TANF,
  OLD.Line16_SSI,
  OLD.Line16_Other,
  OLD.Line17_Name,
  OLD.Line17_Age,
  OLD.Line17_Sex,
  OLD.Line17_Income,
  OLD.Line17_Monthly,
  OLD.Line17_Weekly,
  OLD.Line17_BiWeekly,
  OLD.Line17_Yearly,
  OLD.Line17_Medicaid,
  OLD.Line17_TANF,
  OLD.Line17_SSI,
  OLD.Line17_Other,
  OLD.Line18_Name,
  OLD.Line18_Age,
  OLD.Line18_Sex,
  OLD.Line18_Income,
  OLD.Line18_Monthly,
  OLD.Line18_Weekly,
  OLD.Line18_BiWeekly,
  OLD.Line18_Yearly,
  OLD.Line18_Medicaid,
  OLD.Line18_TANF,
  OLD.Line18_SSI,
  OLD.Line18_Other,
  OLD.Line19_Name,
  OLD.Line19_Age,
  OLD.Line19_Sex,
  OLD.Line19_Income,
  OLD.Line19_Monthly,
  OLD.Line19_Weekly,
  OLD.Line19_BiWeekly,
  OLD.Line19_Yearly,
  OLD.Line19_Medicaid,
  OLD.Line19_TANF,
  OLD.Line19_SSI,
  OLD.Line19_Other,
  OLD.Line20_Name,
  OLD.Line20_Age,
  OLD.Line20_Sex,
  OLD.Line20_Income,
  OLD.Line20_Monthly,
  OLD.Line20_Weekly,
  OLD.Line20_BiWeekly,
  OLD.Line20_Yearly,
  OLD.Line20_Medicaid,
  OLD.Line20_TANF,
  OLD.Line20_SSI,
  OLD.Line20_Other,
  OLD.Line21_Name,
  OLD.Line21_Age,
  OLD.Line21_Sex,
  OLD.Line21_Income,
  OLD.Line21_Monthly,
  OLD.Line21_Weekly,
  OLD.Line21_BiWeekly,
  OLD.Line21_Yearly,
  OLD.Line21_Medicaid,
  OLD.Line21_TANF,
  OLD.Line21_SSI,
  OLD.Line21_Other,
  OLD.Signature1,
  OLD.Signature2,
  OLD.Signature3,
  OLD.Signature4,
  OLD.Signature5,
  OLD.Signature6,
  OLD.Signature1Date,
  OLD.Signature2Date,
  OLD.Signature3Date,
  OLD.Signature4Date,
  OLD.Signature5Date,
  OLD.Signature6Date,
  Now()
  ) $$

DELIMITER ;




--
-- Definition of table `intakelog`
--
CREATE TABLE `intakelog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LastName` varchar(100) NOT NULL DEFAULT '',
  `FirstName` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `AptNumber` varchar(50) DEFAULT NULL,
  `FoodStamps` bit(1) NOT NULL,
  `FoodStampAmount` decimal(10,0) DEFAULT NULL,
  `WorkerName` varchar(100) DEFAULT NULL,
  `DoB` datetime DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Line1_Name` varchar(300) DEFAULT NULL,
  `Line1_Age` decimal(10,0) DEFAULT NULL,
  `Line1_Sex` varchar(1) DEFAULT NULL,
  `Line1_Income` float DEFAULT NULL,
  `Line1_Monthly` bit(1) DEFAULT NULL,
  `Line1_Weekly` bit(1) DEFAULT NULL,
  `Line1_BiWeekly` bit(1) DEFAULT NULL,
  `Line1_Yearly` bit(1) DEFAULT NULL,
  `Line1_Medicaid` bit(1) DEFAULT NULL,
  `Line1_TANF` bit(1) DEFAULT NULL,
  `Line1_SSI` bit(1) DEFAULT NULL,
  `Line1_Other` bit(1) DEFAULT NULL,
  `Line2_Name` varchar(300) DEFAULT NULL,
  `Line2_Age` decimal(10,0) DEFAULT NULL,
  `Line2_Sex` varchar(1) DEFAULT NULL,
  `Line2_Income` float DEFAULT NULL,
  `Line2_Monthly` bit(1) DEFAULT NULL,
  `Line2_Weekly` bit(1) DEFAULT NULL,
  `Line2_BiWeekly` bit(1) DEFAULT NULL,
  `Line2_Yearly` bit(1) DEFAULT NULL,
  `Line2_Medicaid` bit(1) DEFAULT NULL,
  `Line2_TANF` bit(1) DEFAULT NULL,
  `Line2_SSI` bit(1) DEFAULT NULL,
  `Line2_Other` bit(1) DEFAULT NULL,
  `Line3_Name` varchar(300) DEFAULT NULL,
  `Line3_Age` decimal(10,0) DEFAULT NULL,
  `Line3_Sex` varchar(1) DEFAULT NULL,
  `Line3_Income` float DEFAULT NULL,
  `Line3_Monthly` bit(1) DEFAULT NULL,
  `Line3_Weekly` bit(1) DEFAULT NULL,
  `Line3_BiWeekly` bit(1) DEFAULT NULL,
  `Line3_Yearly` bit(1) DEFAULT NULL,
  `Line3_Medicaid` bit(1) DEFAULT NULL,
  `Line3_TANF` bit(1) DEFAULT NULL,
  `Line3_SSI` bit(1) DEFAULT NULL,
  `Line3_Other` bit(1) DEFAULT NULL,
  `Line4_Name` varchar(300) DEFAULT NULL,
  `Line4_Age` decimal(10,0) DEFAULT NULL,
  `Line4_Sex` varchar(1) DEFAULT NULL,
  `Line4_Income` float DEFAULT NULL,
  `Line4_Monthly` bit(1) DEFAULT NULL,
  `Line4_Weekly` bit(1) DEFAULT NULL,
  `Line4_BiWeekly` bit(1) DEFAULT NULL,
  `Line4_Yearly` bit(1) DEFAULT NULL,
  `Line4_Medicaid` bit(1) DEFAULT NULL,
  `Line4_TANF` bit(1) DEFAULT NULL,
  `Line4_SSI` bit(1) DEFAULT NULL,
  `Line4_Other` bit(1) DEFAULT NULL,
  `Line5_Name` varchar(300) DEFAULT NULL,
  `Line5_Age` decimal(10,0) DEFAULT NULL,
  `Line5_Sex` varchar(1) DEFAULT NULL,
  `Line5_Income` float DEFAULT NULL,
  `Line5_Monthly` bit(1) DEFAULT NULL,
  `Line5_Weekly` bit(1) DEFAULT NULL,
  `Line5_BiWeekly` bit(1) DEFAULT NULL,
  `Line5_Yearly` bit(1) DEFAULT NULL,
  `Line5_Medicaid` bit(1) DEFAULT NULL,
  `Line5_TANF` bit(1) DEFAULT NULL,
  `Line5_SSI` bit(1) DEFAULT NULL,
  `Line5_Other` bit(1) DEFAULT NULL,
  `Line6_Name` varchar(300) DEFAULT NULL,
  `Line6_Age` decimal(10,0) DEFAULT NULL,
  `Line6_Sex` varchar(1) DEFAULT NULL,
  `Line6_Income` float DEFAULT NULL,
  `Line6_Monthly` bit(1) DEFAULT NULL,
  `Line6_Weekly` bit(1) DEFAULT NULL,
  `Line6_BiWeekly` bit(1) DEFAULT NULL,
  `Line6_Yearly` bit(1) DEFAULT NULL,
  `Line6_Medicaid` bit(1) DEFAULT NULL,
  `Line6_TANF` bit(1) DEFAULT NULL,
  `Line6_SSI` bit(1) DEFAULT NULL,
  `Line6_Other` bit(1) DEFAULT NULL,
  `Line7_Name` varchar(300) DEFAULT NULL,
  `Line7_Age` decimal(10,0) DEFAULT NULL,
  `Line7_Sex` varchar(1) DEFAULT NULL,
  `Line7_Income` float DEFAULT NULL,
  `Line7_Monthly` bit(1) DEFAULT NULL,
  `Line7_Weekly` bit(1) DEFAULT NULL,
  `Line7_BiWeekly` bit(1) DEFAULT NULL,
  `Line7_Yearly` bit(1) DEFAULT NULL,
  `Line7_Medicaid` bit(1) DEFAULT NULL,
  `Line7_TANF` bit(1) DEFAULT NULL,
  `Line7_SSI` bit(1) DEFAULT NULL,
  `Line7_Other` bit(1) DEFAULT NULL,
  `Line8_Name` varchar(300) DEFAULT NULL,
  `Line8_Age` decimal(10,0) DEFAULT NULL,
  `Line8_Sex` varchar(1) DEFAULT NULL,
  `Line8_Income` float DEFAULT NULL,
  `Line8_Monthly` bit(1) DEFAULT NULL,
  `Line8_Weekly` bit(1) DEFAULT NULL,
  `Line8_BiWeekly` bit(1) DEFAULT NULL,
  `Line8_Yearly` bit(1) DEFAULT NULL,
  `Line8_Medicaid` bit(1) DEFAULT NULL,
  `Line8_TANF` bit(1) DEFAULT NULL,
  `Line8_SSI` bit(1) DEFAULT NULL,
  `Line8_Other` bit(1) DEFAULT NULL,
  `Line9_Name` varchar(300) DEFAULT NULL,
  `Line9_Age` decimal(10,0) DEFAULT NULL,
  `Line9_Sex` varchar(1) DEFAULT NULL,
  `Line9_Income` float DEFAULT NULL,
  `Line9_Monthly` bit(1) DEFAULT NULL,
  `Line9_Weekly` bit(1) DEFAULT NULL,
  `Line9_BiWeekly` bit(1) DEFAULT NULL,
  `Line9_Yearly` bit(1) DEFAULT NULL,
  `Line9_Medicaid` bit(1) DEFAULT NULL,
  `Line9_TANF` bit(1) DEFAULT NULL,
  `Line9_SSI` bit(1) DEFAULT NULL,
  `Line9_Other` bit(1) DEFAULT NULL,
  `Line10_Name` varchar(300) DEFAULT NULL,
  `Line10_Age` decimal(10,0) DEFAULT NULL,
  `Line10_Sex` varchar(1) DEFAULT NULL,
  `Line10_Income` float DEFAULT NULL,
  `Line10_Monthly` bit(1) DEFAULT NULL,
  `Line10_Weekly` bit(1) DEFAULT NULL,
  `Line10_BiWeekly` bit(1) DEFAULT NULL,
  `Line10_Yearly` bit(1) DEFAULT NULL,
  `Line10_Medicaid` bit(1) DEFAULT NULL,
  `Line10_TANF` bit(1) DEFAULT NULL,
  `Line10_SSI` bit(1) DEFAULT NULL,
  `Line10_Other` bit(1) DEFAULT NULL,
  `Line11_Name` varchar(300) DEFAULT NULL,
  `Line11_Age` decimal(10,0) DEFAULT NULL,
  `Line11_Sex` varchar(1) DEFAULT NULL,
  `Line11_Income` float DEFAULT NULL,
  `Line11_Monthly` bit(1) DEFAULT NULL,
  `Line11_Weekly` bit(1) DEFAULT NULL,
  `Line11_BiWeekly` bit(1) DEFAULT NULL,
  `Line11_Yearly` bit(1) DEFAULT NULL,
  `Line11_Medicaid` bit(1) DEFAULT NULL,
  `Line11_TANF` bit(1) DEFAULT NULL,
  `Line11_SSI` bit(1) DEFAULT NULL,
  `Line11_Other` bit(1) DEFAULT NULL,
  `Line12_Name` varchar(300) DEFAULT NULL,
  `Line12_Age` decimal(10,0) DEFAULT NULL,
  `Line12_Sex` varchar(1) DEFAULT NULL,
  `Line12_Income` float DEFAULT NULL,
  `Line12_Monthly` bit(1) DEFAULT NULL,
  `Line12_Weekly` bit(1) DEFAULT NULL,
  `Line12_BiWeekly` bit(1) DEFAULT NULL,
  `Line12_Yearly` bit(1) DEFAULT NULL,
  `Line12_Medicaid` bit(1) DEFAULT NULL,
  `Line12_TANF` bit(1) DEFAULT NULL,
  `Line12_SSI` bit(1) DEFAULT NULL,
  `Line12_Other` bit(1) DEFAULT NULL,
  `Line13_Name` varchar(300) DEFAULT NULL,
  `Line13_Age` decimal(10,0) DEFAULT NULL,
  `Line13_Sex` varchar(1) DEFAULT NULL,
  `Line13_Income` float DEFAULT NULL,
  `Line13_Monthly` bit(1) DEFAULT NULL,
  `Line13_Weekly` bit(1) DEFAULT NULL,
  `Line13_BiWeekly` bit(1) DEFAULT NULL,
  `Line13_Yearly` bit(1) DEFAULT NULL,
  `Line13_Medicaid` bit(1) DEFAULT NULL,
  `Line13_TANF` bit(1) DEFAULT NULL,
  `Line13_SSI` bit(1) DEFAULT NULL,
  `Line13_Other` bit(1) DEFAULT NULL,
  `Line14_Name` varchar(300) DEFAULT NULL,
  `Line14_Age` decimal(10,0) DEFAULT NULL,
  `Line14_Sex` varchar(1) DEFAULT NULL,
  `Line14_Income` float DEFAULT NULL,
  `Line14_Monthly` bit(1) DEFAULT NULL,
  `Line14_Weekly` bit(1) DEFAULT NULL,
  `Line14_BiWeekly` bit(1) DEFAULT NULL,
  `Line14_Yearly` bit(1) DEFAULT NULL,
  `Line14_Medicaid` bit(1) DEFAULT NULL,
  `Line14_TANF` bit(1) DEFAULT NULL,
  `Line14_SSI` bit(1) DEFAULT NULL,
  `Line14_Other` bit(1) DEFAULT NULL,
  `Line15_Name` varchar(300) DEFAULT NULL,
  `Line15_Age` decimal(10,0) DEFAULT NULL,
  `Line15_Sex` varchar(1) DEFAULT NULL,
  `Line15_Income` float DEFAULT NULL,
  `Line15_Monthly` bit(1) DEFAULT NULL,
  `Line15_Weekly` bit(1) DEFAULT NULL,
  `Line15_BiWeekly` bit(1) DEFAULT NULL,
  `Line15_Yearly` bit(1) DEFAULT NULL,
  `Line15_Medicaid` bit(1) DEFAULT NULL,
  `Line15_TANF` bit(1) DEFAULT NULL,
  `Line15_SSI` bit(1) DEFAULT NULL,
  `Line15_Other` bit(1) DEFAULT NULL,
  `Line16_Name` varchar(300) DEFAULT NULL,
  `Line16_Age` decimal(10,0) DEFAULT NULL,
  `Line16_Sex` varchar(1) DEFAULT NULL,
  `Line16_Income` float DEFAULT NULL,
  `Line16_Monthly` bit(1) DEFAULT NULL,
  `Line16_Weekly` bit(1) DEFAULT NULL,
  `Line16_BiWeekly` bit(1) DEFAULT NULL,
  `Line16_Yearly` bit(1) DEFAULT NULL,
  `Line16_Medicaid` bit(1) DEFAULT NULL,
  `Line16_TANF` bit(1) DEFAULT NULL,
  `Line16_SSI` bit(1) DEFAULT NULL,
  `Line16_Other` bit(1) DEFAULT NULL,
  `Line17_Name` varchar(300) DEFAULT NULL,
  `Line17_Age` decimal(10,0) DEFAULT NULL,
  `Line17_Sex` varchar(1) DEFAULT NULL,
  `Line17_Income` float DEFAULT NULL,
  `Line17_Monthly` bit(1) DEFAULT NULL,
  `Line17_Weekly` bit(1) DEFAULT NULL,
  `Line17_BiWeekly` bit(1) DEFAULT NULL,
  `Line17_Yearly` bit(1) DEFAULT NULL,
  `Line17_Medicaid` bit(1) DEFAULT NULL,
  `Line17_TANF` bit(1) DEFAULT NULL,
  `Line17_SSI` bit(1) DEFAULT NULL,
  `Line17_Other` bit(1) DEFAULT NULL,
  `Line18_Name` varchar(300) DEFAULT NULL,
  `Line18_Age` decimal(10,0) DEFAULT NULL,
  `Line18_Sex` varchar(1) DEFAULT NULL,
  `Line18_Income` float DEFAULT NULL,
  `Line18_Monthly` bit(1) DEFAULT NULL,
  `Line18_Weekly` bit(1) DEFAULT NULL,
  `Line18_BiWeekly` bit(1) DEFAULT NULL,
  `Line18_Yearly` bit(1) DEFAULT NULL,
  `Line18_Medicaid` bit(1) DEFAULT NULL,
  `Line18_TANF` bit(1) DEFAULT NULL,
  `Line18_SSI` bit(1) DEFAULT NULL,
  `Line18_Other` bit(1) DEFAULT NULL,
  `Line19_Name` varchar(300) DEFAULT NULL,
  `Line19_Age` decimal(10,0) DEFAULT NULL,
  `Line19_Sex` varchar(1) DEFAULT NULL,
  `Line19_Income` float DEFAULT NULL,
  `Line19_Monthly` bit(1) DEFAULT NULL,
  `Line19_Weekly` bit(1) DEFAULT NULL,
  `Line19_BiWeekly` bit(1) DEFAULT NULL,
  `Line19_Yearly` bit(1) DEFAULT NULL,
  `Line19_Medicaid` bit(1) DEFAULT NULL,
  `Line19_TANF` bit(1) DEFAULT NULL,
  `Line19_SSI` bit(1) DEFAULT NULL,
  `Line19_Other` bit(1) DEFAULT NULL,
  `Line20_Name` varchar(300) DEFAULT NULL,
  `Line20_Age` decimal(10,0) DEFAULT NULL,
  `Line20_Sex` varchar(1) DEFAULT NULL,
  `Line20_Income` float DEFAULT NULL,
  `Line20_Monthly` bit(1) DEFAULT NULL,
  `Line20_Weekly` bit(1) DEFAULT NULL,
  `Line20_BiWeekly` bit(1) DEFAULT NULL,
  `Line20_Yearly` bit(1) DEFAULT NULL,
  `Line20_Medicaid` bit(1) DEFAULT NULL,
  `Line20_TANF` bit(1) DEFAULT NULL,
  `Line20_SSI` bit(1) DEFAULT NULL,
  `Line20_Other` bit(1) DEFAULT NULL,
  `Line21_Name` varchar(300) DEFAULT NULL,
  `Line21_Age` decimal(10,0) DEFAULT NULL,
  `Line21_Sex` varchar(1) DEFAULT NULL,
  `Line21_Income` float DEFAULT NULL,
  `Line21_Monthly` bit(1) DEFAULT NULL,
  `Line21_Weekly` bit(1) DEFAULT NULL,
  `Line21_BiWeekly` bit(1) DEFAULT NULL,
  `Line21_Yearly` bit(1) DEFAULT NULL,
  `Line21_Medicaid` bit(1) DEFAULT NULL,
  `Line21_TANF` bit(1) DEFAULT NULL,
  `Line21_SSI` bit(1) DEFAULT NULL,
  `Line21_Other` bit(1) DEFAULT NULL,
  `Signature1` blob,
  `Signature2` blob,
  `Signature3` blob,
  `Signature4` blob,
  `Signature5` blob,
  `Signature6` blob,
  `Signature1Date` datetime DEFAULT NULL,
  `Signature2Date` datetime DEFAULT NULL,
  `Signature3Date` datetime DEFAULT NULL,
  `Signature4Date` datetime DEFAULT NULL,
  `Signature5Date` datetime DEFAULT NULL,
  `Signature6Date` datetime DEFAULT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`ID`,`LastName`)
) ENGINE=InnoDB AUTO_INCREMENT=1941 DEFAULT CHARSET=latin1;


