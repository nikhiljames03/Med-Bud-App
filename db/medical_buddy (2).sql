-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 05:44 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medical_buddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_tbl`
--

CREATE TABLE IF NOT EXISTS `ambulance_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amu_name` varchar(225) NOT NULL,
  `place` varchar(225) NOT NULL,
  `driver_name` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `image` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ambulance_tbl`
--

INSERT INTO `ambulance_tbl` (`id`, `amu_name`, `place`, `driver_name`, `phone`, `image`) VALUES
(1, 'renai emergency ', 'palarivattom', 'unni krishnan', '9895666444', '2023-11-22-09-24-21a10.PNG'),
(2, 'amurtha emergency ', 'edappaly', 'unni kannan', '9895555444', '2023-11-22-09-24-21a10.PNG'),
(3, 'renai emergency ', 'palarivattom', 'unni kuttan', '9895333444', '2023-11-22-09-24-21a10.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `booking_tbl`
--

CREATE TABLE IF NOT EXISTS `booking_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(100) NOT NULL,
  `doctor_id` varchar(100) NOT NULL,
  `booking_date` varchar(100) NOT NULL,
  `booking_time` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `booking_tbl`
--

INSERT INTO `booking_tbl` (`id`, `patient_id`, `doctor_id`, `booking_date`, `booking_time`, `status`) VALUES
(1, '1', '1', '10-11-2023', '14:15', 'completed'),
(4, '1', '1', '28-11-2023', '14.00', 'rejected'),
(5, '2', '1', '18-11-2023', '18:15', 'accepted'),
(6, '2', '1', '16-11-2023', '12:30', 'accepted'),
(7, '1', '5', '29-11-2023', '16.00', 'requested'),
(9, '1', '1', '24-11-2023', '12.00', 'accepted'),
(10, '1', '4', '30-11-2023', '10.00', 'requested');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE IF NOT EXISTS `disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disease` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `precaution` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `disease`, `description`, `precaution`) VALUES
(2, 'Osteoarthristis', '', ''),
(3, 'Alcoholic hepatitis', '', ''),
(4, 'Drug Reaction', '', ''),
(5, 'Common Cold', '', ''),
(6, 'Typhoid', '', ''),
(7, '(vertigo) Paroymsal  Positional Vertigo', '', ''),
(8, 'Migraine', '', ''),
(9, 'Tuberculosis', '', ''),
(10, 'Hyperthyroidism', '', ''),
(11, 'Dengue', 'Dengue (break-bone fever) is a viral infection that spreads from mosquitoes to people. It is more common in tropical and subtropical climates. Most people who get dengue wont have symptoms. But for those that do, the most common symptoms are high fever, headache, body aches, nausea and rash.', 'Prevent mosquito habitats,Keep your doors and windows closed as much as possible, or invest in insect screens,Protect your skin from mosquito bites,Avoid visiting areas prone to mosquitoes,Be vigilant'),
(12, 'Dimorphic hemmorhoids(piles)', '', ''),
(13, 'Malaria', '', ''),
(14, 'Hepatitis E', '', ''),
(15, 'Psoriasis', '', ''),
(16, 'hepatitis A', '', ''),
(17, 'Jaundice', '', ''),
(18, 'Diabetes', '', ''),
(19, 'Cervical spondylosis', '', ''),
(20, 'Hepatitis C', '', ''),
(21, 'Peptic ulcer disease', '', ''),
(22, 'Chicken pox', '', ''),
(23, 'Chronic cholestasis', '', ''),
(24, 'Pneumonia', '', ''),
(25, 'Hypertension', '', ''),
(26, 'Varicose veins', '', ''),
(27, 'Hypoglycemia', '', ''),
(28, 'Arthritis', '', ''),
(29, 'Bronchial Asthma', '', ''),
(30, 'Hypothyroidism', '', ''),
(31, 'Hepatitis B', '', ''),
(32, 'Hepatitis D', '', ''),
(33, 'Impetigo', '', ''),
(34, 'GERD', '', ''),
(35, 'Paralysis (brain hemorrhage)', '', ''),
(36, 'Heart attack', '', ''),
(37, 'Gastroenteritis', '', ''),
(38, 'Acne', '', ''),
(39, 'Urinary tract infection', '', ''),
(40, 'AIDS', '', ''),
(41, 'Fungal infection', '', ''),
(42, 'Allergy', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_tbl`
--

CREATE TABLE IF NOT EXISTS `doctor_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `specialisation` varchar(100) NOT NULL,
  `image` tinytext NOT NULL,
  `rating` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `doctor_tbl`
--

INSERT INTO `doctor_tbl` (`id`, `hospital_id`, `name`, `email`, `number`, `specialisation`, `image`, `rating`, `password`, `status`) VALUES
(1, '1', 'George Issac', 'g@gmail.com', '8520963014', 'Cardiologist', 'doctor1.jpg', '5.0', '123', 'available'),
(2, '2', 'Alex', 'alex@gmail.com', '7886655430', 'Orthopedics', 'doctor2.jpg', '4.5', '456', 'available'),
(3, '1', 'Savitha', 's@gmail.com', '8520963014', 'ENT', 'doctor3.jpg', '4.3', '258', 'available'),
(4, '2', 'Radhakrishnan', 'eadha@gmail.com', '7412589630', 'pediatrician', 'doctor4.jpg', '4.8', '987', 'available'),
(5, '1', 'Pradeep', 'pradeep@gmail.com', '7560855091', 'Dentist', '2023-11-22-11-28-43doctor2.jpg', '4', '123', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_tbl`
--

CREATE TABLE IF NOT EXISTS `hospital_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hospital_tbl`
--

INSERT INTO `hospital_tbl` (`id`, `name`, `location`, `number`, `email`, `password`) VALUES
(1, 'Renai Medicity', 'Palarivattom', '7412304523', 'renai@gmail.com', '777'),
(2, 'Amritha', 'Ernakulam', '9798949596', 'amrith@gmail.com', '111');

-- --------------------------------------------------------

--
-- Table structure for table `patient_tbl`
--

CREATE TABLE IF NOT EXISTS `patient_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `userimage` tinytext NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `patient_tbl`
--

INSERT INTO `patient_tbl` (`id`, `name`, `number`, `email`, `age`, `blood_group`, `height`, `weight`, `userimage`, `username`, `password`) VALUES
(1, 'anandu', '8943409211', 'anandu@gmail.com', '24', 'b -ve', '165', '58', 'image1.jpg', 'anandu', '555'),
(2, 'Anu', '8921675486', 'a@gmail.com', '20', 'AB +ve', '160', '65', 'image2.jpg', 'anu', '54321');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_tbl`
--

CREATE TABLE IF NOT EXISTS `prescription_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) NOT NULL,
  `doctor_id` varchar(100) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `symptoms` varchar(100) NOT NULL,
  `medicines` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `prescription_tbl`
--

INSERT INTO `prescription_tbl` (`id`, `uid`, `doctor_id`, `diagnosis`, `symptoms`, `medicines`, `date`) VALUES
(1, '1', '1', 'Fever', 'cold, fever', 'dolo 650', '2023-11-15'),
(2, '2', '2', 'dengue', 'fever,temperature,cough', 'paracetamol', '2023-11-17');

-- --------------------------------------------------------

--
-- Table structure for table `request_tbl`
--

CREATE TABLE IF NOT EXISTS `request_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `acc_hospital` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `request_tbl`
--

INSERT INTO `request_tbl` (`id`, `message`, `status`, `hospital_name`, `acc_hospital`) VALUES
(1, 'fkughsrku fghseifa fnaiefn aef an', 'accepted', '1', '1'),
(2, 'test', 'accepted', '1', '1'),
(3, 'qrtrytuyiu', 'accepted', '1', '2'),
(4, 'needed an ambulance immediately ', 'accepted', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE IF NOT EXISTS `symptoms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Symptom_1` varchar(100) DEFAULT NULL,
  `Symptom_2` varchar(100) DEFAULT NULL,
  `Symptom_3` varchar(100) DEFAULT NULL,
  `Symptom_4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`id`, `Symptom_1`, `Symptom_2`, `Symptom_3`, `Symptom_4`) VALUES
(2, 'itching', 'skin rash', 'nodal skin eruptions', 'dischromic  patches'),
(3, 'continuous sneezing', 'shivering', 'chills', 'watering from eyes'),
(4, 'stomach pain', 'acidity', 'ulcers on tongue', 'vomiting'),
(5, 'acidity', 'ulcers on tongue', 'vomiting', 'cough'),
(6, 'vomiting', 'vomiting', 'yellowish skin', 'nausea'),
(7, 'skin rash', 'yellowish skin', 'nausea', 'loss of appetite'),
(8, 'indigestion', 'stomach pain', 'stomach pain', 'burning micturition'),
(9, 'muscle wasting', 'loss of appetite', 'burning micturition', 'spotting  urination'),
(10, 'fatigue', 'indigestion', 'abdominal pain', 'passage of gases'),
(11, 'weight loss', 'patches in throat', 'loss of appetite', 'abdominal pain'),
(12, 'cough', 'weight loss', 'high fever', 'extra marital contacts'),
(13, 'headache', 'restlessness', 'restlessness', 'lethargy'),
(14, 'chest pain', 'sunken eyes', 'lethargy', 'irregular sugar level'),
(15, 'back pain', 'cough', 'dehydration', 'diarrhoea'),
(16, 'weakness in limbs', 'high fever', 'breathlessness', 'breathlessness'),
(17, 'chills', 'chest pain', 'dizziness', 'family history'),
(18, 'joint pain', 'dizziness', 'loss of balance', 'loss of balance'),
(19, 'yellowish skin', 'headache', 'headache', 'lack of concentration'),
(20, 'constipation', 'weakness in limbs', 'blurred and distorted vision', 'blurred and distorted vision'),
(21, 'pain during bowel movements', 'neck pain', 'neck pain', 'excessive hunger'),
(22, 'cramps', 'fatigue', 'weakness of one body side', 'dizziness'),
(23, 'weight gain', 'chills', 'fatigue', 'altered sensorium'),
(24, 'mood swings', 'joint pain', 'weight loss', 'weight loss'),
(25, 'neck pain', 'lethargy', 'sweating', 'high fever'),
(26, 'muscle weakness', 'nausea', 'joint pain', 'sweating'),
(27, 'stiff neck', 'abdominal pain', 'dark urine', 'headache'),
(28, 'burning micturition', 'pain during bowel movements', 'swelling of stomach', 'fatigue'),
(29, 'high fever', 'pain in anal region', 'cough', 'dark urine'),
(30, '', 'breathlessness', 'pain in anal region', 'yellowish skin'),
(31, '', 'cramps', 'bloody stool', 'yellowing of eyes'),
(32, '', 'bruising', 'bruising', 'swelling of stomach'),
(33, '', 'weight gain', 'obesity', 'distention of abdomen'),
(34, '', 'cold hands and feets', 'cold hands and feets', 'bloody stool'),
(35, '', 'mood swings', 'mood swings', 'irritation in anus'),
(36, '', 'anxiety', 'anxiety', 'chest pain'),
(37, '', 'knee pain', 'knee pain', 'obesity'),
(38, '', 'stiff neck', 'hip joint pain', 'swollen legs'),
(39, '', 'swelling joints', 'swelling joints', 'mood swings'),
(40, '', 'pus filled pimples', 'movement stiffness', 'restlessness'),
(41, '', 'bladder discomfort', 'spinning movements', 'hip joint pain'),
(42, '', 'skin peeling', 'blackheads', 'swelling joints');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
