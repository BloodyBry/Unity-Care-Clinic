-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2025 at 03:18 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `admission_id` int NOT NULL,
  `patient_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `discharge_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`admission_id`, `patient_id`, `room_id`, `admission_date`, `discharge_date`) VALUES
(1, 1, 3, '2025-01-05', '2025-01-12'),
(2, 2, 5, '2025-02-10', '2025-02-15'),
(3, 3, 2, '2025-03-01', '2025-03-05'),
(4, 4, 1, '2025-03-08', '2025-03-14'),
(5, 5, 4, '2025-04-02', '2025-04-11'),
(6, 6, 6, '2025-04-10', '2025-04-18'),
(7, 7, 3, '2025-05-01', '2025-05-06'),
(8, 8, 2, '2025-05-11', '2025-05-20'),
(9, 9, 7, '2025-05-22', '2025-05-28'),
(10, 10, 8, '2025-05-25', '2025-06-02'),
(11, 11, 1, '2025-06-01', '2025-06-07'),
(12, 12, 2, '2025-06-04', '2025-06-10'),
(13, 13, 9, '2025-06-08', '2025-06-14'),
(14, 14, 10, '2025-06-12', '2025-06-18'),
(15, 15, 3, '2025-06-15', '2025-06-22'),
(16, 16, 5, '2025-06-18', '2025-06-24'),
(17, 17, 6, '2025-06-20', '2025-06-28'),
(18, 18, 7, '2025-06-25', '2025-07-03'),
(19, 19, 8, '2025-06-28', '2025-07-05'),
(20, 20, 4, '2025-07-01', '2025-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int NOT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `appointment_date`, `appointment_time`, `doctor_id`, `patient_id`, `reason`) VALUES
(1, '2025-01-10', '09:00:00', 1, 1, 'Routine Checkup'),
(2, '2025-01-11', '10:30:00', 3, 2, 'Flu Symptoms'),
(3, '2025-01-14', '14:00:00', 5, 3, 'Blood Pressure'),
(4, '2025-01-16', '11:00:00', 2, 4, 'Back Pain'),
(5, '2025-01-20', '15:00:00', 4, 5, 'Follow Up'),
(6, '2025-01-22', '09:30:00', 1, 6, 'Headache'),
(7, '2025-01-25', '13:00:00', 2, 7, 'Stomach Pain'),
(8, '2025-02-01', '10:00:00', 3, 8, 'Allergy Test'),
(9, '2025-02-03', '12:00:00', 5, 9, 'X-Ray Review'),
(10, '2025-02-05', '16:00:00', 4, 10, 'Asthma Checkup'),
(11, '2025-02-08', '09:15:00', 2, 11, 'Chest Pain'),
(12, '2025-02-11', '11:45:00', 1, 12, 'Routine Exam'),
(13, '2025-02-14', '10:20:00', 3, 13, 'Skin Rash'),
(14, '2025-02-16', '15:30:00', 5, 14, 'ENT Issue'),
(15, '2025-02-20', '09:50:00', 4, 15, 'Vision Problem'),
(16, '2025-02-23', '13:40:00', 2, 16, 'Migraine'),
(17, '2025-02-26', '14:10:00', 1, 17, 'Joint Pain'),
(18, '2025-02-28', '11:05:00', 5, 18, 'Checkup'),
(19, '2025-03-03', '15:00:00', 4, 19, 'Blood Test'),
(20, '2025-03-06', '10:25:00', 3, 20, 'Flu Symptoms');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int NOT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `location`) VALUES
(1, 'Cardiology', 'Building A - Floor 2'),
(2, 'Neurology', 'Building B - Floor 3'),
(3, 'Orthopedics', 'Building A - Floor 1'),
(4, 'Pediatrics', 'Building C - Floor 2'),
(5, 'Oncology', 'Building D - Floor 4'),
(6, 'Dermatology', 'Building C - Floor 1'),
(7, 'Emergency', 'Building E - Ground Floor'),
(8, 'Radiology', 'Building B - Floor 1'),
(9, 'Gastroenterology', 'Building A - Floor 3'),
(10, 'Urology', 'Building D - Floor 2');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `department_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `first_name`, `last_name`, `specialization`, `phone_number`, `email`, `department_id`) VALUES
(1, 'Adam', 'Johnson', 'Cardiology', '0612345678', 'adam.johnson@hospital.com', 1),
(2, 'Laura', 'Smith', 'Neurology', '0612345679', 'laura.smith@hospital.com', 2),
(3, 'Michael', 'Brown', 'Orthopedics', '0612345680', 'michael.brown@hospital.com', 3),
(4, 'Emily', 'Wilson', 'Pediatrics', '0612345681', 'emily.wilson@hospital.com', 4),
(5, 'Daniel', 'Martinez', 'Oncology', '0612345682', 'daniel.martinez@hospital.com', 5),
(6, 'Sarah', 'Taylor', 'Dermatology', '0612345683', 'sarah.taylor@hospital.com', 6),
(7, 'James', 'Anderson', 'Emergency', '0612345684', 'james.anderson@hospital.com', 7),
(8, 'Olivia', 'Thomas', 'Radiology', '0612345685', 'olivia.thomas@hospital.com', 8),
(9, 'William', 'Moore', 'Gastroenterology', '0612345686', 'william.moore@hospital.com', 9),
(10, 'Sophia', 'Jackson', 'Urology', '0612345687', 'sophia.jackson@hospital.com', 10),
(11, 'Benjamin', 'White', 'Cardiology', '0612345688', 'benjamin.white@hospital.com', 1),
(12, 'Isabella', 'Harris', 'Neurology', '0612345689', 'isabella.harris@hospital.com', 2),
(13, 'Elijah', 'Martin', 'Orthopedics', '0612345690', 'elijah.martin@hospital.com', 3),
(14, 'Mia', 'Thompson', 'Pediatrics', '0612345691', 'mia.thompson@hospital.com', 4),
(15, 'Logan', 'Garcia', 'Oncology', '0612345692', 'logan.garcia@hospital.com', 5),
(16, 'Charlotte', 'Martins', 'Dermatology', '0612345693', 'charlotte.martins@hospital.com', 6),
(17, 'Lucas', 'Clark', 'Emergency', '0612345694', 'lucas.clark@hospital.com', 7),
(18, 'Amelia', 'Rodriguez', 'Radiology', '0612345695', 'amelia.rodriguez@hospital.com', 8),
(19, 'Henry', 'Lewis', 'Gastroenterology', '0612345696', 'henry.lewis@hospital.com', 9),
(20, 'Ella', 'Lee', 'Urology', '0612345697', 'ella.lee@hospital.com', 10),
(21, 'Sebastian', 'Walker', 'Cardiology', '0612345698', 'sebastian.walker@hospital.com', 1),
(22, 'Grace', 'Hall', 'Neurology', '0612345699', 'grace.hall@hospital.com', 2),
(23, 'Jack', 'Allen', 'Orthopedics', '0612345700', 'jack.allen@hospital.com', 3),
(24, 'Victoria', 'Young', 'Pediatrics', '0612345701', 'victoria.young@hospital.com', 4),
(25, 'Alexander', 'King', 'Oncology', '0612345702', 'alexander.king@hospital.com', 5),
(26, 'Zoe', 'Wright', 'Dermatology', '0612345703', 'zoe.wright@hospital.com', 6),
(27, 'Samuel', 'Lopez', 'Emergency', '0612345704', 'samuel.lopez@hospital.com', 7),
(28, 'Hannah', 'Hill', 'Radiology', '0612345705', 'hannah.hill@hospital.com', 8),
(29, 'Matthew', 'Scott', 'Gastroenterology', '0612345706', 'matthew.scott@hospital.com', 9),
(30, 'Lily', 'Green', 'Urology', '0612345707', 'lily.green@hospital.com', 10),
(31, 'David', 'Adams', 'Cardiology', '0612345708', 'david.adams@hospital.com', 1),
(32, 'Natalie', 'Baker', 'Neurology', '0612345709', 'natalie.baker@hospital.com', 2),
(33, 'Joseph', 'Nelson', 'Orthopedics', '0612345710', 'joseph.nelson@hospital.com', 3),
(34, 'Ava', 'Carter', 'Pediatrics', '0612345711', 'ava.carter@hospital.com', 4),
(35, 'Christopher', 'Mitchell', 'Oncology', '0612345712', 'christopher.mitchell@hospital.com', 5),
(36, 'Evelyn', 'Perez', 'Dermatology', '0612345713', 'evelyn.perez@hospital.com', 6),
(37, 'Andrew', 'Roberts', 'Emergency', '0612345714', 'andrew.roberts@hospital.com', 7),
(38, 'Scarlett', 'Turner', 'Radiology', '0612345715', 'scarlett.turner@hospital.com', 8),
(39, 'Jonathan', 'Phillips', 'Gastroenterology', '0612345716', 'jonathan.phillips@hospital.com', 9),
(40, 'Aria', 'Campbell', 'Urology', '0612345717', 'aria.campbell@hospital.com', 10);

-- --------------------------------------------------------

--
-- Table structure for table `medications`
--

CREATE TABLE `medications` (
  `medication_id` int NOT NULL,
  `medication_name` varchar(100) DEFAULT NULL,
  `dosage` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medications`
--

INSERT INTO `medications` (`medication_id`, `medication_name`, `dosage`) VALUES
(1, 'Paracetamol', '500mg'),
(2, 'Ibuprofen', '200mg'),
(3, 'Amoxicillin', '250mg'),
(4, 'Metformin', '850mg'),
(5, 'Aspirin', '100mg'),
(6, 'Ciprofloxacin', '500mg'),
(7, 'Omeprazole', '20mg'),
(8, 'Vitamin D', '1000IU'),
(9, 'Lisinopril', '10mg'),
(10, 'Atorvastatin', '20mg'),
(11, 'Cetirizine', '10mg'),
(12, 'Prednisone', '5mg'),
(13, 'Azithromycin', '250mg'),
(14, 'Furosemide', '40mg'),
(15, 'Insulin', '5 units'),
(16, 'Salbutamol', '2mg'),
(17, 'Doxycycline', '100mg'),
(18, 'Hydroxychloroquine', '200mg'),
(19, 'Clopidogrel', '75mg'),
(20, 'Levothyroxine', '50mcg');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `phone_number`, `email`, `address`) VALUES
(1, 'Adam', 'Smith', 'Male', '1985-03-12', '0612340001', 'adam.smith1@mail.com', '123 Main St, Casablanca'),
(2, 'Nora', 'Johnson', 'Female', '1992-07-22', '0612340002', 'nora.johnson2@mail.com', '45 Avenue Hassan II, Rabat'),
(3, 'Youssef', 'Bennani', 'Male', '1978-11-05', '0612340003', 'youssef.bennani3@mail.com', 'Hay Riad, Rabat'),
(4, 'Sara', 'El Amrani', 'Female', '1995-09-17', '0612340004', 'sara.elamrani4@mail.com', 'Maarif, Casablanca'),
(5, 'Omar', 'Lahlou', 'Male', '1989-01-29', '0612340005', 'omar.lahlou5@mail.com', 'Agdal, Rabat'),
(6, 'Meryem', 'Fassi', 'Female', '1991-02-14', '0612340006', 'meryem.fassi6@mail.com', 'Gueliz, Marrakech'),
(7, 'Ali', 'Tahiri', 'Male', '1984-12-03', '0612340007', 'ali.tahiri7@mail.com', 'Derb Sultan, Casablanca'),
(8, 'Lina', 'Karimi', 'Female', '1998-06-09', '0612340008', 'lina.karimi8@mail.com', 'Oasis, Casablanca'),
(9, 'Hassan', 'Chami', 'Male', '1975-04-18', '0612340009', 'hassan.chami9@mail.com', 'Centre Ville, Fes'),
(10, 'Rania', 'Bakkali', 'Female', '1993-10-28', '0612340010', 'rania.bakkali10@mail.com', 'Hay Farah, Casablanca'),
(11, 'Yassin', 'El Idrissi', 'Male', '1988-05-21', '0612340011', 'yassin.elidrissi11@mail.com', 'Agdal, Rabat'),
(12, 'Khadija', 'Amrani', 'Female', '1979-03-12', '0612340012', 'khadija.amrani12@mail.com', 'Derb Ghallef, Casablanca'),
(13, 'Hamza', 'Zerouali', 'Male', '1996-11-16', '0612340013', 'hamza.zerouali13@mail.com', 'Tanger City Center, Tanger'),
(14, 'Imane', 'Slaoui', 'Female', '1990-08-25', '0612340014', 'imane.slaoui14@mail.com', 'Bab Doukkala, Marrakech'),
(15, 'Mehdi', 'Alaoui', 'Male', '1982-01-10', '0612340015', 'mehdi.alaoui15@mail.com', 'Maarif Extension, Casablanca'),
(16, 'Salma', 'Rami', 'Female', '1997-04-30', '0612340016', 'salma.rami16@mail.com', 'Aourir, Agadir'),
(17, 'Anas', 'El Guar', 'Male', '1985-10-02', '0612340017', 'anas.elguar17@mail.com', 'Hay Mohammadi, Casablanca'),
(18, 'Sophia', 'Benjelloun', 'Female', '1994-02-18', '0612340018', 'sophia.benjelloun18@mail.com', 'Souissi, Rabat'),
(19, 'Ismail', 'Chakir', 'Male', '1987-06-27', '0612340019', 'ismail.chakir19@mail.com', 'Ain Sebaa, Casablanca'),
(20, 'Aya', 'Moutawakil', 'Female', '1999-12-12', '0612340020', 'aya.moutawakil20@mail.com', 'Ville Nouvelle, Meknes'),
(21, 'Karim', 'Mouradi', 'Male', '1977-09-07', '0612340021', 'karim.mouradi21@mail.com', 'Zerktouni, Casablanca'),
(22, 'Nada', 'El Yousfi', 'Female', '1983-01-25', '0612340022', 'nada.yousfi22@mail.com', 'Hay Hassani, Casablanca'),
(23, 'Tariq', 'Bouchaib', 'Male', '1992-07-14', '0612340023', 'tariq.bouchaib23@mail.com', 'Medina, Marrakech'),
(24, 'Houda', 'Chafik', 'Female', '1996-03-03', '0612340024', 'houda.chafik24@mail.com', 'Ibn Tachfine, Fes'),
(25, 'Rachid', 'El Malki', 'Male', '1981-10-20', '0612340025', 'rachid.elmalki25@mail.com', 'Bourgogne, Casablanca'),
(26, 'Ilham', 'El Mernissi', 'Female', '1990-05-06', '0612340026', 'ilham.elmernissi26@mail.com', 'Kénitra Centre, Kénitra'),
(27, 'Samir', 'Fakir', 'Male', '1986-07-31', '0612340027', 'samir.fakir27@mail.com', 'Hay Karima, Sale'),
(28, 'Siham', 'Berrada', 'Female', '1994-08-15', '0612340028', 'siham.berrada28@mail.com', 'Route Immouzer, Fes'),
(29, 'Yahya', 'Mazouzi', 'Male', '1983-04-02', '0612340029', 'yahya.mazouzi29@mail.com', 'Hay Salam, Agadir'),
(30, 'Wiam', 'Soufi', 'Female', '1998-11-10', '0612340030', 'wiam.soufi30@mail.com', 'Oulfa, Casablanca'),
(31, 'Daniel', 'White', 'Male', '1980-06-11', '0612340031', 'daniel.white31@mail.com', '123 Palm St, Marrakech'),
(32, 'Emily', 'Stone', 'Female', '1995-09-29', '0612340032', 'emily.stone32@mail.com', 'Sunset Ave, Casablanca'),
(33, 'Robert', 'King', 'Male', '1979-12-19', '0612340033', 'robert.king33@mail.com', 'New Town, Tangier'),
(34, 'Julia', 'Moore', 'Female', '1991-03-22', '0612340034', 'julia.moore34@mail.com', 'Green Park, Rabat'),
(35, 'Kevin', 'Young', 'Male', '1987-10-13', '0612340035', 'kevin.young35@mail.com', 'Blue Area, Agadir'),
(36, 'Laura', 'Parker', 'Female', '1993-01-09', '0612340036', 'laura.parker36@mail.com', 'Avenue Massira, Casablanca'),
(37, 'Ryan', 'Foster', 'Male', '1986-04-25', '0612340037', 'ryan.foster37@mail.com', 'Ocean View, Tangier'),
(38, 'Anna', 'Rogers', 'Female', '1998-12-01', '0612340038', 'anna.rogers38@mail.com', 'Central District, Rabat'),
(39, 'Peter', 'Wood', 'Male', '1985-07-05', '0612340039', 'peter.wood39@mail.com', 'Hay Irfan, Fes'),
(40, 'Sophie', 'Bennett', 'Female', '1992-07-18', '0612340040', 'sophie.bennett40@mail.com', 'Sidi Moussa, Sale'),
(41, 'Jason', 'Cole', 'Male', '1990-02-17', '0612340041', 'jason.cole41@mail.com', 'Palm Street, Marrakech'),
(42, 'Amina', 'Rahman', 'Female', '1984-05-30', '0612340042', 'amina.rahman42@mail.com', 'Hay Riad, Rabat'),
(43, 'Othman', 'Hakimi', 'Male', '1997-09-28', '0612340043', 'othman.hakimi43@mail.com', 'Val Fleuri, Casablanca'),
(44, 'Sanae', 'Marzouki', 'Female', '1991-06-14', '0612340044', 'sanae.marzouki44@mail.com', 'Medina Jdida, Meknes'),
(45, 'Hicham', 'El Fadili', 'Male', '1983-11-22', '0612340045', 'hicham.fadili45@mail.com', 'Charf, Tangier'),
(46, 'Fatima', 'Guessous', 'Female', '1978-10-07', '0612340046', 'fatima.guessous46@mail.com', 'Targa, Marrakech'),
(47, 'Walid', 'Rafsanjani', 'Male', '1989-02-09', '0612340047', 'walid.rafsanjani47@mail.com', 'Maarif, Casablanca'),
(48, 'Ikram', 'Chafi', 'Female', '1995-03-11', '0612340048', 'ikram.chafi48@mail.com', 'Al Qods, Casablanca'),
(49, 'Nabil', 'Ziani', 'Male', '1988-08-03', '0612340049', 'nabil.ziani49@mail.com', 'Derb Drissi, Fes'),
(50, 'Kenza', 'Mimouni', 'Female', '1999-04-27', '0612340050', 'kenza.mimouni50@mail.com', 'Mont Fleuri, Rabat');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `prescription_id` int NOT NULL,
  `patient_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `medication_id` int DEFAULT NULL,
  `prescription_date` date DEFAULT NULL,
  `dosage_instructions` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`prescription_id`, `patient_id`, `doctor_id`, `medication_id`, `prescription_date`, `dosage_instructions`) VALUES
(1, 1, 1, 1, '2025-01-10', '1 pill daily for 7 days'),
(2, 2, 3, 4, '2025-01-12', '2 pills daily after meals'),
(3, 3, 5, 3, '2025-01-15', '1 pill every 8 hours'),
(4, 4, 2, 5, '2025-01-18', 'Apply cream twice daily'),
(5, 5, 4, 7, '2025-01-22', '5ml syrup three times a day'),
(6, 6, 1, 2, '2025-01-24', '1 pill daily'),
(7, 7, 2, 6, '2025-01-27', 'Take after meals'),
(8, 8, 3, 8, '2025-02-02', '1 tablet morning and night'),
(9, 9, 5, 9, '2025-02-04', 'Spray twice daily'),
(10, 10, 4, 10, '2025-02-06', 'Apply to affected area'),
(11, 11, 2, 1, '2025-02-10', '1 pill daily'),
(12, 12, 1, 3, '2025-02-12', '1 pill every 12 hours'),
(13, 13, 5, 4, '2025-02-14', 'As needed'),
(14, 14, 3, 2, '2025-02-17', '2 pills daily'),
(15, 15, 4, 7, '2025-02-20', '5ml syrup twice daily'),
(16, 16, 5, 5, '2025-02-23', 'Cream twice per day'),
(17, 17, 2, 6, '2025-02-26', 'Take after meals'),
(18, 18, 1, 2, '2025-03-01', 'One every morning'),
(19, 19, 3, 8, '2025-03-04', 'Morning and evening'),
(20, 20, 4, 9, '2025-03-06', 'Spray once daily');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int NOT NULL,
  `room_number` varchar(10) DEFAULT NULL,
  `room_type` enum('General','Private','ICU') DEFAULT NULL,
  `availability` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_number`, `room_type`, `availability`) VALUES
(1, '101', 'General', 1),
(2, '102', 'General', 0),
(3, '103', 'Private', 1),
(4, '104', 'ICU', 0),
(5, '105', 'Private', 1),
(6, '201', 'General', 1),
(7, '202', 'ICU', 0),
(8, '203', 'Private', 1),
(9, '204', 'General', 1),
(10, '205', 'General', 0),
(11, '301', 'ICU', 1),
(12, '302', 'Private', 1),
(13, '303', 'General', 1),
(14, '304', 'ICU', 0),
(15, '305', 'Private', 1),
(16, '401', 'General', 1),
(17, '402', 'Private', 1),
(18, '403', 'ICU', 0),
(19, '404', 'General', 1),
(20, '405', 'Private', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `department_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `job_title`, `phone_number`, `email`, `department_id`) VALUES
(1, 'Sarah', 'Johnson', 'Receptionist', '0600123456', 'sarah.johnson@example.com', 1),
(2, 'Mark', 'Thompson', 'Nurse', '0600543210', 'mark.thompson@example.com', 2),
(3, 'Julia', 'Martinez', 'Lab Technician', '0600789123', 'julia.martinez@example.com', 3),
(4, 'David', 'Walker', 'Cleaner', '0600900876', 'david.walker@example.com', 4),
(5, 'Emily', 'Brown', 'HR Assistant', '0600567890', 'emily.brown@example.com', 5),
(6, 'Adam', 'Lopez', 'Nurse', '0600345678', 'adam.lopez@example.com', 2),
(7, 'Linda', 'Harris', 'IT Support', '0600223344', 'linda.harris@example.com', 6),
(8, 'Kevin', 'White', 'Security Guard', '0600987654', 'kevin.white@example.com', 7),
(9, 'Laura', 'King', 'Pharmacist Assistant', '0600432123', 'laura.king@example.com', 8),
(10, 'Joseph', 'Young', 'Maintenance', '0600234598', 'joseph.young@example.com', 9),
(11, 'Noah', 'Adams', 'Nurse', '0600765432', 'noah.adams@example.com', 2),
(12, 'Chloe', 'Bennett', 'Secretary', '0600112233', 'chloe.bennett@example.com', 1),
(13, 'Ethan', 'Carter', 'Lab Technician', '0600667788', 'ethan.carter@example.com', 3),
(14, 'Sophia', 'Evans', 'Cleaner', '0600556677', 'sophia.evans@example.com', 4),
(15, 'Liam', 'Foster', 'Security Guard', '0600778899', 'liam.foster@example.com', 7),
(16, 'Mia', 'Gibson', 'Nurse', '0600123987', 'mia.gibson@example.com', 2),
(17, 'James', 'Harper', 'HR Assistant', '0600345899', 'james.harper@example.com', 5),
(18, 'Olivia', 'Ingram', 'IT Support', '0600789543', 'olivia.ingram@example.com', 6),
(19, 'Lucas', 'Jackson', 'Receptionist', '0600549872', 'lucas.jackson@example.com', 1),
(20, 'Ella', 'Kelly', 'Maintenance', '0600765498', 'ella.kelly@example.com', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`admission_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `medications`
--
ALTER TABLE `medications`
  ADD PRIMARY KEY (`medication_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`prescription_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `medication_id` (`medication_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `admission_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `medications`
--
ALTER TABLE `medications`
  MODIFY `medication_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `prescription_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  ADD CONSTRAINT `admissions_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  ADD CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  ADD CONSTRAINT `prescriptions_ibfk_3` FOREIGN KEY (`medication_id`) REFERENCES `medications` (`medication_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
