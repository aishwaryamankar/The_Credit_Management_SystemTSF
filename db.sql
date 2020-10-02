
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `epiz_26872998_creditmanagement` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `epiz_26872998_creditmanagement`;


CREATE TABLE `transactions` (
  `ID` int(20) NOT NULL,
  `Sender` varchar(50) NOT NULL,
  `Receiver` varchar(50) NOT NULL,
  `Transferred_Credits` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `transactions` (`ID`, `Sender`, `Receiver`, `Transferred_Credits`) VALUES
(1, 'Aishwarya', 'Jaclyn', 20),
(2, 'Bhavy', 'Ajay', 50),
(7, 'Parth', 'Aishwarya', 800),
(8, 'Siri', 'Cortana', 1000),
(11, 'Alexa', 'Shreya', 10),
(12, 'Cortana', 'Vaibhav', 94),
(14, 'Vaibhav', 'Kylie', 100),
(15, 'Alexa', 'Jaclyn', 20),
(19, 'Parth', 'Vaishnavi', 100),
(18, 'Shreya', 'Alexa', 901),
(21, 'Jaclyn', 'Alexa', 10),
(25, 'Ajay', 'Vaishnavi', 76);


CREATE TABLE `users` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Credits` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `users` (`Name`, `Email`, `Credits`) VALUES
('Vaibhav', 'vaibhav@gmail.com', 1000),
('Bhavy', 'Bhavy@gmail.com', 1000),
('Shreya', 'shreya@gmail.com', 1000),
('Jaclyn', 'jaclyn@gmail.com', 1000),
('Kylie', 'kylie@gmail.com', 1000),
('Cortana', 'coretana@gmail.com', 1000),
('Siri', 'siri@gmail.com', 1000),
('Alexa', 'alexa@gmail.com', 1000),
('Vaishnavi', 'vaishnavi@gmail.com', 1000),
('Aishwarya', 'aishwarya@gmail.com', 1000),
('Parth', 'parth@gmail.com', 1000),
('Ajay', 'ajay@gmail.com', 1000);


ALTER TABLE `transactions`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`Email`);

ALTER TABLE `transactions`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

