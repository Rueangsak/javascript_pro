-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2022 at 10:56 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopcolor`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`detail_id`, `order_id`, `product_id`) VALUES
(1, 5, 3),
(2, 5, 2),
(3, 5, 2),
(4, 9, 1),
(5, 10, 10),
(6, 10, 50),
(7, 10, 10),
(8, 11, 10),
(9, 11, 50),
(10, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_date`, `fname`, `lname`, `address`, `mobile`) VALUES
(9, '2022-09-20 22:28:06', 'Pongniti', 'Owattanakij', '14-16', '0957390975'),
(10, '2022-10-22 00:32:11', 'Rueangsak', 'Tong', '204/348\r\nหมู่บ้านเซนสิริทาวน์ เฟส2', '0624581819'),
(11, '2022-10-22 00:43:23', 'Rueangsak', 'Tong', '204/348\r\nหมู่บ้านเซนสิริทาวน์ เฟส2', '0624581819');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` text,
  `price` float NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'สีน้ำทาภายนอก JOTUN JOTASHIELD COLOUR EXTREME BASE A เนียน 2.5 แกลลอน', 'สีน้ำอะคริลิกที่ดีสุดสําหรับทาภายนอก เหมาะสำหรับการใช้งานในสภาพอากาศร้อนชื้นที่รุนแรง\r\nช่วยลดอุณหภูมิภายในบ้าน และในอาคารได้ ด้วยฟิล์มสีสะท้อนรังสีความร้อน', 2390, 'https://cdn.homepro.co.th/ART_IMAGE/10/760/1076010/160x160/10072021_1076010$Imagec1.jpg'),
(2, 'สีน้ำทาภายนอก BEGERCOOL DIAMONDSHIELD 15 BASE D กึ่งเงา 2.5 แกลลอน', 'ทำความสะอาดได้ ทนต่อการเช็ดล้างขัดถู\r\nป้องกันคราบด่าง และคราบเกลือ สีโป่งพอง', 2090, 'https://cdn.homepro.co.th/ART_IMAGE/10/500/1050056/160x160/05102022_1050056$Imagec1.jpg'),
(3, 'สีน้ำทาภายนอก NIPPON PAINT HYBRIDSHIELD BASE A 2.5 GL', 'สีน้ำอะคริลิกแท้ พร้อมเทคโนโลยีอณูเม็ดสีละเอียดจากประเทศญี่ปุ่น\r\nยึดเกาะ และแทรกซึมลึกลงถึงเนื้อปูนชั้นใน ให้ความสวยยาวนานเสมอ', 1480, 'https://cdn.homepro.co.th/ART_IMAGE/11/424/1142432/160x160/31082021_1142432$Imagec1.jpg'),
(4, 'สีน้ำทาภายนอก BEGER COOL DIAMONDSHIELD 15 BASE A กึ่งเงา 2.5 แกลลอน', 'ทำความสะอาดได้ ทนต่อการเช็ดล้างขัดถู\r\nป้องกันคราบด่าง และคราบเกลือ สีโป่งพอง', 2190, 'https://cdn.homepro.co.th/ART_IMAGE/10/501/1050126/160x160/30092022_1050126$Imagec1.jpg'),
(5, 'สีน้ำทาภายนอก TOA SUPERSHIELD ADVANCE BASE A กึ่งเงา 1/4 แกลลอน', 'สะท้อนความร้อนได้มากกว่า 90% อายุการใช้งานนานกว่า 15 ปี\r\nป้องกันเชื้อรา ตะไคร่น้ำ รอยด่างจากคราบเกลือและจากปูน', 385, 'https://cdn.homepro.co.th/ART_IMAGE/01/498/149833/160x160/10072021_149833$Imagec1.jpg'),
(6, 'สีน้ำทาภายนอก TOA SUPERSHIELD ADVANCE BASE D เนียน 9 ลิตร', 'สะท้อนความร้อนได้มากกว่า 90% อายุการใช้งานนานกว่า 15 ปี\r\nป้องกันเชื้อรา ตะไคร่น้ำ รอยด่างจากคราบเกลือและจากปูน', 1590, 'https://cdn.homepro.co.th/ART_IMAGE/01/498/149832/160x160/10072021_149832$Imagec1.jpg'),
(7, 'สีน้ำทาภายนอก NIPPON PAINT WEATHERBONDFLEX 9L SG BASE A', 'สีสูตรน้ำ ผลิตจากอะคริลิกแท้ ให้การยึดเกาะดีเยี่ยม พร้อมให้การปกป้องพื้นผิวที่ยาวนาน\r\nเทคโนโลยี Nippon Cross Link Technology ให้ประสิทธิภาพสีที่แข็งแรง และติดทนนาน', 2080, 'https://cdn.homepro.co.th/ART_IMAGE/11/701/1170102/160x160/10072021_1170102$Imagec1.jpg'),
(8, 'สีน้ำทาภายนอก TOA 4 SEASONS ADVANCE BASE A กึ่งเงา 1 แกลลอน', 'สีน้ำอะคริลิก ฟิล์มสียึดเกาะแน่น ป้องกันการเกิดเชื้อราและตะไคร่น้ำ\r\nเช็ดล้างทำความสะอาดง่ายด้วยนวัตกรรมจากประเทศสหรัฐอเมริกา', 720, 'https://cdn.homepro.co.th/ART_IMAGE/02/349/234976/160x160/17082022_234976$Imagec1.jpg'),
(9, 'สีน้ำทาภายนอก BEGER CoolDiamondd 10 BASE A กึ่งเงา 2.5 แกลลอน', 'ฟิล์มสีทนทาน 10 ปีให้สีสันสดใส ทนทานต่อการขัดถู\r\nสะท้อนความร้อนมากกว่า 94% ประหยัดค่าไฟ 25%', 1520, 'https://cdn.homepro.co.th/ART_IMAGE/02/380/238016/160x160/10072021_238016$Imagec1.jpg'),
(10, 'สีน้ำทาภายนอก TOA SUPERSHIELD ADVANCE BASE B กึ่งเงา 9 ลิตร', 'สะท้อนความร้อนได้มากกว่า 90% อายุการใช้งานนานกว่า 15 ปี\r\nป้องกันเชื้อรา ตะไคร่น้ำ รอยด่างจากคราบเกลือและจากปูน', 2090, 'https://cdn.homepro.co.th/ART_IMAGE/01/498/149841/160x160/10072021_149841$Imagec1.jpg'),
(11, 'สีน้ำทาภายนอก BEGER NANO1 SHIELD BASE A กึ่งเงา 9 ลิตร', 'Shield-1 Nano ลิขสิทธิ์การผลิตจากประเทศเยอรมัน\r\nคุณสมบัติต้านทานเชื้อแบคทีเรีย และป้องกันน้ำซึมเข้าสู่พื้นผิวผนัง', 1370, 'https://cdn.homepro.co.th/ART_IMAGE/10/578/1057856/160x160/03102022_1057856$Imagec1.jpg'),
(12, 'สีน้ำทาภายนอก TOA 7 IN 1 BASE A กึ่งเงา 10 L', 'ยืดหยุ่นสูง 300% ปกป้องบ้านจากทุกปัญหารอยแตกร้าว\r\nนาโนซิลิโคน ป้องกันน้ำและการแทรกซึมของคราบสกปรก', 2485, 'https://cdn.homepro.co.th/ART_IMAGE/01/498/149875/160x160/22072022_149875$Imagec1.jpg'),
(13, 'สีน้ำทาภายนอก TOA SUPERMATEX BASE A กึ่งเงา 2.5GL', 'ฟิล์มสีสะท้อนความร้อน บ้านเย็น ประหยัดพลังงาน\r\nเทคโนโลยีฟิล์มสี ULTRA HIDING กลบมิดพื้นผิวได้ดี', 1100, 'https://cdn.homepro.co.th/ART_IMAGE/11/121/1112136/160x160/10072021_1112136$Imagec1.jpg'),
(14, 'สีน้ำทาภายนอก DYNOPROMAX BASE C กึ่งเงา 1 แกลลอน', 'ผลิตจากกาวอะครีลิคแท้ 100 % ยึดเกาะพื้นผิวดีเยี่ยม และทนต่อทุกสภาพอากาศได้เป็นเลิศ\r\nต่อต้านการเกาะตัวของฝุ่นละอองบนฟิล์มสี ป้องกันการเกิดเชื้อรา และตะไคร่น้ำได้ดีเยี่ยม', 580, 'https://cdn.homepro.co.th/ART_IMAGE/11/392/1139259/160x160/10062022_1139259$Imagec1.jpg'),
(15, 'สีน้ำทาภายนอก NIPPON PAINT COLORSHIELD BASE A SG 2.5GL', 'สะท้อนรังสีความร้อนได้ดี ลดอุณหภูมิภายในบ้าน ช่วยประหยัดไฟ\r\nฟิล์มสีไม่ซีดจาง ไม่เสื่อมสภาพเป็นฝุ่นผง ยึดเกาะแน่นไม่หลุดล่อน', 2680, 'https://cdn.homepro.co.th/ART_IMAGE/02/176/217653/160x160/10072021_217653$Imagec1.jpg'),
(16, 'สีน้ำทาภายนอก DELTASHIELD PLUS BASE E กึ่งเงา 1GL', 'สีน้ำอะคริลิกชนิดกึ่งเงา สำหรับภายนอกและภายใน เกรด 15 ปี\r\nสะท้อนความร้อน ให้บ้านเย็นและช่วยประหยัดพลังงาน\\', 739, 'https://cdn.homepro.co.th/ART_IMAGE/10/998/1099872/160x160/10072021_1099872$Imagec1.jpg'),
(17, 'สีน้ำทาภายนอก DELTA ChillShield BASE A กึ่งเงา 2.5 แกลลอน', 'กาวอะคริลิกเกรดพิเศษ ช่วยให้สีติดทนแน่น ซึมลึกเป็นเนื้อเดียวกับผนังปูน\r\nOne Top Paint เนื้อสีเยอะกว่า 57 % จึงทาทับหน้ารอบเดียวเอาอยู่', 2350, 'https://cdn.homepro.co.th/ART_IMAGE/11/456/1145631/160x160/10072021_1145631$Imagec1.jpg'),
(18, 'สีน้ำทาภายนอก RTB CRYSTAL SHIELD BASE A ด้าน 2.5GL', 'ปกปิดรอยแตกลายงาได้เป็นอย่างดี\r\nสะท้อนความร้อนและรังสีอินฟาเรด ทำให้บ้านเย็น', 1600, 'https://cdn.homepro.co.th/ART_IMAGE/02/588/258831/160x160/10072021_258831$Imagec1.jpg'),
(19, 'สีน้ำทาภายนอก DULUX SUPERCOTE NANOTEX BASE D กึ่งเงา 3 ลิตร', 'ฟิล์มสีดูดซึมน้ำต่ำ ไม่อมน้ำและความชื้น ไม่ลอกล่อนง่าย\r\nผลิตจากอะคริลิกแท้ เทคโนโลยีเฉพาะของ ICI DULUX', 424, 'https://cdn.homepro.co.th/ART_IMAGE/10/174/1017410/160x160/20092022_1017410$Imagec1.jpg'),
(20, 'สีน้ำทาภายนอก TOA SUPERSHIELD ADVANCE BASE B กึ่งเงา 1 แกลลอน', 'สะท้อนความร้อนได้มากกว่า 90% อายุการใช้งานนานกว่า 15 ปี\r\nป้องกันเชื้อรา ตะไคร่น้ำ รอยด่างจากคราบเกลือและจากปูน', 1345, 'https://cdn.homepro.co.th/ART_IMAGE/01/498/149839/160x160/10072021_149839$Imagec1.jpg'),
(21, 'สีน้ำทาภายนอก RTB DECO SHIELD PLUS+ BASE D กึ่งเงา 1 แกลลอน', 'สะท้อนความร้อน และรังสีอินฟาเรด ทำให้บ้านเย็น\r\nเช็ดล้างทำความสะอาดง่าย', 425, 'https://cdn.homepro.co.th/ART_IMAGE/02/702/270228/160x160/10072021_270228$Imagec1.jpg'),
(22, 'สีน้ำทาภายนอก DELTA SHIELD BASE D กึ่งเงา 2.5 แกลลอน', 'สีน้ำอะคริลิก 100% พร้อมทา ให้ความทนทานต่อสภาพอากาศ ทั้งฝนและแสงแดด\r\nมีสาร UV Protection สีไม่ซีดจาง พร้อมให้ประสิทธิภาพในการยึดเกาะสูงถึง 3 เท่า ฟิล์มสีไม่ลอกล่อน', 1449, 'https://cdn.homepro.co.th/ART_IMAGE/02/604/260405/160x160/10072021_260405$Imagec1.jpg'),
(23, 'สีน้ำทาภายนอก RTB 1GL สีขาว', 'สะท้อนความร้อนและรังสีอินฟาเรด ทำให้บ้านเย็น\r\nเช็ดล้างทำความสะอาดง่าย ฟิล์มสีสวนทนนาน', 495, 'https://cdn.homepro.co.th/ART_IMAGE/02/702/270234/160x160/10072021_270234$Imagec1.jpg'),
(24, 'สีน้ำทาภายนอก TOA SUPERSHIELD ADVANCE BASE B เนียน 1/4 แกลลอน', 'สะท้อนความร้อนได้มากกว่า 90% อายุการใช้งานนานกว่า 15 ปี\r\nป้องกันเชื้อรา ตะไคร่น้ำ รอยด่างจากคราบเกลือและจากปูน', 345, 'https://cdn.homepro.co.th/ART_IMAGE/01/498/149820/160x160/10072021_149820$Imagec1.jpg'),
(25, 'สีน้ำทาภายนอก NIPPON PAINT WEATHERBONDSHEEN BASE A 1GL', 'เทคโนโลยี Nippon Cross Link Technology ช่วยยึดเกาะประสานสีทับหน้าได้ดียิ่งขึ้น\r\nสามารถปกปิดรอยร้าว รอยแตกลายงา ป้องกันการเกิดเชื้อรา และตะไคร่น้ำได้ดี', 940, 'https://cdn.homepro.co.th/ART_IMAGE/11/700/1170020/160x160/10072021_1170020$Imagec1.jpg'),
(26, 'สีน้ำทาภายนอก TOA SUPERMATEX ADVANCE BASE D สีขาว กึ่งเงา 1 แกลลอน', 'ฟิล์มสีสะท้อนความร้อน บ้านเย็น ประหยัดพลังงาน\r\nเทคโนโลยีฟิล์มสี ULTRA HIDING กลบมิดพื้นผิวได้ดี', 435, 'https://cdn.homepro.co.th/ART_IMAGE/11/121/1112175/160x160/09032022_1112175$Imagec1.jpg'),
(27, 'สีน้ำทาภายนอก JBP SMART COAT BASE C ด้าน 2.5 แกลลอน', 'สีคุณภาพสามารถสะท้อนความร้อนได้มากกว่า 95%\r\nเนื้อสีมาก ปกปิดพื้นผิวได้ดี ยึดเกาะแน่น ไม่ลอกล่อน', 1129, 'https://cdn.homepro.co.th/ART_IMAGE/10/476/1047628/160x160/25022022_1047628$Imagec1.jpg'),
(28, 'สีน้ำทาภายนอก JOTUN TOUGH SHIELD MAX BASE C สีขาว กึ่งเงา 3.6 ลิตร', 'ผลิตจากอะคริลิกคุณภาพ ทาง่ายได้พื้นที่มาก เนื้อสียึดติดทน กลบมิดเรียบเนียน\r\nป้องกันรังสี UV ฟิล์มสีทนทานต่อสภาวะอากาศ ลดปัญหาสีลอก สีพอง หรือหลุดล่อน', 590, 'https://cdn.homepro.co.th/ART_IMAGE/11/951/1195122/160x160/04042022_1195122$Imagec1.jpg'),
(29, 'สีน้ำทาภายนอก BEGER COOL DIAMONDSHIELD 15 BASE D ด้าน 2.5 แกลลอน', 'ทำความสะอาดได้ ทนต่อการเช็ดล้างขัดถู\r\nป้องกันคราบด่าง และคราบเกลือ สีโป่งพอง', 1850, 'https://cdn.homepro.co.th/ART_IMAGE/10/501/1050195/160x160/30092022_1050195$Imagec1.jpg'),
(30, 'สีน้ำทาภายนอก BEGER COOL DIAMONDSHIELD 15 BASE A กึ่งเงา 1 แกลลอน', 'ทำความสะอาดได้ ทนต่อการเช็ดล้างขัดถู\r\nป้องกันคราบด่าง และคราบเกลือ สีโป่งพอง', 1070, 'https://cdn.homepro.co.th/ART_IMAGE/10/501/1050144/160x160/30092022_1050144$Imagec1.jpg'),
(31, 'สีน้ำทาภายนอก NIPPON PAINT VINILEX BASE D SG 1GL', 'สูตรน้ำ กลิ่นอ่อน เป็นมิตรต่อสิ่งแวดล้อม ปลอดภัยต่อสุขภาพ\r\nใช้งานง่าย มีเนื้อสีมาก ปกปิดพื้นผิวได้ดี ป้องกันการลอกล่อน', 540, 'https://cdn.homepro.co.th/ART_IMAGE/10/980/1098003/160x160/31082021_1098003$Imagec1.jpg'),
(32, 'สีน้ำทาภายนอก NIPPON PAINT VINILEX BASE B SG 1GL', 'สูตรน้ำ กลิ่นอ่อน เป็นมิตรต่อสิ่งแวดล้อม ปลอดภัยต่อสุขภาพ\r\nใช้งานง่าย มีเนื้อสีมาก ปกปิดพื้นผิวได้ดี ป้องกันการลอกล่อน', 690, 'https://cdn.homepro.co.th/ART_IMAGE/10/979/1097928/160x160/31082021_1097928$Imagec1.jpg'),
(33, 'สีน้ำทาภายนอก JOTUN TOUGH SHIELD BASE AA สีขาว ด้าน 9 ลิตร', 'ผลิตจากอะคริลิกคุณภาพ ทาง่ายได้พื้นที่มาก เนื้อสียึดติดทน กลบมิดเรียบเนียน\r\nฟิล์มสีทนทานต่อสภาวะอากาศ ลดปัญหาสีลอก สีพอง หรือหลุดล่อน', 1500, 'https://cdn.homepro.co.th/ART_IMAGE/11/951/1195113/160x160/01042022_1195113$Imagec1.jpg'),
(34, 'สีน้ำทาภายนอก TOA 4 SEASONS ADVANCE BASE D ด้าน 2.5 แกลลอน', 'สีน้ำอะคริลิก ฟิล์มสียึดเกาะแน่น ป้องกันการเกิดเชื้อราและตะไคร่น้ำ\r\nเช็ดล้างทำความสะอาดง่ายด้วยนวัตกรรมจากประเทศสหรัฐอเมริกา', 840, 'https://cdn.homepro.co.th/ART_IMAGE/01/498/149859/160x160/17082022_149859$Imagec1.jpg'),
(35, 'สีน้ำทาภายนอก DELTA MATT BASE C ด้าน 2.5 แกลลอน', 'สีน้ำอะคริลิก 100% พร้อมทา ให้ความทนทานต่อสภาพอากาศ ทั้งฝนและแสงแดด\r\nมีสาร UV Protection สีไม่ซีดจาง พร้อมให้ประสิทธิภาพในการยึดเกาะสูงถึง 3 เท่า ฟิล์มสีไม่ลอกล่อน', 1090, 'https://cdn.homepro.co.th/ART_IMAGE/02/604/260427/160x160/10072021_260427$Imagec1.jpg'),
(36, 'สีน้ำทาภายนอก TOA SUPERMATEX BASE B กึ่งเงา 2.5GL', 'ฟิล์มสีสะท้อนความร้อน บ้านเย็น ประหยัดพลังงาน\r\nเทคโนโลยีฟิล์มสี ULTRA HIDING กลบมิดพื้นผิวได้ดี', 1240, 'https://cdn.homepro.co.th/ART_IMAGE/11/121/1112137/160x160/10072021_1112137$Imagec1.jpg'),
(37, 'สีน้ำทาภายนอก DELTA NATIONAL SHIELD BASE C กึ่งเงา 2.5 แกลลอน', 'สีน้ำอะคริลิกชนิดกึ่งเงา สำหรับภายนอก และภายใน เกรด 10 ปี\r\nเนื้อสีมาก ทาได้พื้นที่เยอะ เรียบเนียนสวยงาม', 1139, 'https://cdn.homepro.co.th/ART_IMAGE/10/997/1099769/160x160/03102022_1099769$Imagec1.jpg'),
(38, 'สีน้ำทาภายนอก NIPPON PAINT COLORSHIELD BASE A SG 2.5GL', 'สะท้อนรังสีความร้อนได้ดี ลดอุณหภูมิภายในบ้าน ช่วยประหยัดไฟ\r\nฟิล์มสีไม่ซีดจาง ไม่เสื่อมสภาพเป็นฝุ่นผง ยึดเกาะแน่นไม่หลุดล่อน', 2680, 'https://cdn.homepro.co.th/ART_IMAGE/02/176/217653/160x160/10072021_217653$Imagec1.jpg'),
(39, 'สีน้ำทาภายนอก NIPPON PAINT HYBRIDSHIELD BASE D 2.5GL', 'สีน้ำอะคริลิกแท้ พร้อมเทคโนโลยีอณูเม็ดสีละเอียดจากประเทศญี่ปุ่น\r\nยึดเกาะ และแทรกซึมลึกลงถึงเนื้อปูนชั้นใน ให้ความสวยยาวนานเสมอ', 1330, 'https://cdn.homepro.co.th/ART_IMAGE/11/424/1142412/160x160/31082021_1142412$Imagec1.jpg'),
(40, 'สีน้ำทาภายนอก NIPPON PAINT WEATHERBONDSHEEN BASE A 1GL', 'เทคโนโลยี Nippon Cross Link Technology ช่วยยึดเกาะประสานสีทับหน้าได้ดียิ่งขึ้น\r\nสามารถปกปิดรอยร้าว รอยแตกลายงา ป้องกันการเกิดเชื้อรา และตะไคร่น้ำได้ดี', 940, 'https://cdn.homepro.co.th/ART_IMAGE/11/700/1170020/160x160/10072021_1170020$Imagec1.jpg'),
(41, 'แปรงทาสี POLYESTER KINGORIGIN FD05555', 'ขนแปรงไม่หลุดร่วงขณะทาสี\r\nอุ้มสีได้ดี ทาได้พื้นที่มาก และเรียบเนียน', 45, 'https://cdn.homepro.co.th/ART_IMAGE/02/242/224258/160x160/10072021_224258$Imagec1.jpg'),
(42, 'ลูกกลิ้งทาสี MATALL 10 นิ้ว', 'ผลิตจากใยสังเคราะห์คุณภาพดี แข็งแรง ทนทานต่อการใช้งาน\r\nใยขนยากต่อการหลุดร่วงขณะใช้งาน ให้การทาสีที่เรียบเนียน', 75, 'https://cdn.homepro.co.th/ART_IMAGE/11/813/1181393/160x160/15032022_1181393$Imagec1.jpg'),
(43, 'แปรงทาสีขนหมู KINGORIGIN PB037 2 นิ้ว', 'ขนแปรงหนาไม่หลุดร่วงง่าย\r\nอุ้มสีได้ดี ประหยัดเวลาการทำงาน', 35, 'https://cdn.homepro.co.th/ART_IMAGE/02/242/224249/160x160/08092021_224249$Imagec1.jpg'),
(44, 'แปรงทาสี ขนหมู #PB037 4 นิ้ว', 'ขนแปรงหนาไม่หลุดร่วงง่าย\r\nอุ้มสีได้ดี ประหยัดเวลาการทำงาน', 55, 'https://cdn.homepro.co.th/ART_IMAGE/02/242/224254/160x160/10072021_224254$Imagec1.jpg'),
(45, 'แปรงทาสี POLYESTER #FD05555 4 นิ้ว', 'ขนแปรงหนาไม่หลุดร่วงง่าย\r\nอุ้มสีได้ดี ประหยัดเวลาการทำงาน', 55, 'https://cdn.homepro.co.th/ART_IMAGE/02/242/224259/160x160/10072021_224259$Imagec1.jpg'),
(46, 'ชุดแปรงทาสี FITT #NA3PK 1, 2, 3 นิ้ว', 'ผลิตจากขนสัตว์คุณภาพดี แข็งแรง ทนทานต่อการใช้งาน\r\nขนแปรงอุ้มสีได้ดี ยากต่อการหลุดร่วง ให้การทาสีที่เรียบเนียน', 99, 'https://cdn.homepro.co.th/ART_IMAGE/10/832/1083239/160x160/10072021_1083239$Imagec1.jpg'),
(47, 'แปรงทาสีด้ามไม้ขนสังเคราะห์ดำ MATALL 4 นิ้ว', 'ขนแปรงผลิตจากขนสัตว์ผสมสังเคราะห์ อุ้มสีได้ดี ทาได้พื้นที่มากและเรียบเนียน\r\nด้ามจับไม้น้ำหนักเบา พกพาได้ง่าย หยิบจับได้พอดีกับฝ่ามือ', 69, 'https://cdn.homepro.co.th/ART_IMAGE/11/718/1171849/160x160/06012022_1171849$Imagec1.jpg'),
(48, 'ลูกกลิ้งทาสี EPOXY ขนสั้น SOMIC 4 นิ้ว', 'ขนสังเคราะห์พิเศษ เหมาะสำหรับทาสี EPOXY\r\nเหมาะสำหรับทาบนพื้นผิวที่ต้องการความเรียบเนียนสูง', 135, 'https://cdn.homepro.co.th/ART_IMAGE/10/874/1087477/160x160/10072021_1087477$Imagec1.jpg'),
(49, 'ลูกกลิ้งเคมีขนแกะ SOMIC 4 นิ้ว', 'ด้ามจับกระชับมือ น้ำหนักเบา ใช้งานได้คล่องตัว\r\nอุ้มสีได้ดี ทาได้พื้นที่มาก และเรียบเนียน', 145, 'https://cdn.homepro.co.th/ART_IMAGE/00/653/65377/160x160/10072021_65377$Imagec1.jpg'),
(50, 'แปรงทาสีขนสังเคราะห์ด้ามส้ม FITT 1.5 นิ้ว', 'ขนาดกะทัดรัด น้ำหนักเบา พกพาได้ง่าย หยิบจับได้พอดีกับฝ่ามือ\r\nขนใยสังเคราะห์มีความแข็งแรง หลุดร่วงได้ยาก ทาได้เรียบเนียน', 40, 'https://cdn.homepro.co.th/ART_IMAGE/11/135/1113589/160x160/10072021_1113589$Imagec1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
