-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: db_sinthajcwm15
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `hp` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `zip_code` int NOT NULL,
  `credit` int NOT NULL,
  `id_sales` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_sales_idx` (`id_sales`),
  CONSTRAINT `id_sales` FOREIGN KEY (`id_sales`) REFERENCES `sales` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Rogan','+62-643-3067-2558','JT',43489,1255,6),(2,'Gabriel','+62-807-1546-3001','SU',89825,1885,18),(3,'Hanae','+62-588-2043-0642','JT',28455,3500,25),(4,'Athena','+62-276-4053-4805','Special Region of Yogyakarta',72095,9286,37),(5,'Gwendolyn','+62-831-8879-5455','JB',33827,4893,18),(6,'Daryl','+62-905-2299-4161','JK',50769,9004,6),(7,'Isadora','+62-705-8228-4001','Central Java',49952,8372,26),(8,'Cadman','+62-259-6148-2076','BT',81839,3342,32),(9,'Ira','+62-867-3027-8420','East Java',11944,9999,25),(10,'Steel','+62-547-2564-8134','SS',94261,8928,18),(11,'Cassady','+62-848-7222-8592','PA',17649,4730,10),(12,'Hollee','+62-461-9593-8498','Central Java',10023,8603,11),(13,'Ora','+62-972-6916-8405','Central Java',64339,8972,16),(14,'Linda','+62-525-8045-0028','JB',26301,9411,35),(15,'Stephen','+62-393-7701-6314','Lampung',27598,8746,19),(16,'Seth','+62-291-9408-3602','JT',60544,6313,13),(17,'Leandra','+62-668-5610-7488','JT',87545,2697,16),(18,'Alice','+62-786-5563-0007','ST',20473,6645,14),(19,'Laurel','+62-256-4821-4569','East Java',61391,4292,31),(20,'Hadassah','+62-596-7826-3536','East Java',18435,1877,18),(21,'Uta','+62-529-1951-0555','East Java',77221,6858,16),(22,'Conan','+62-372-4423-7790','Central Sulawesi',94617,8554,20),(23,'Damon','+62-466-4836-8585','Central Java',72969,7340,25),(24,'Indigo','+62-722-1037-9689','East Java',91871,3120,10),(25,'Hiram','+62-304-4821-3668','JB',45640,9536,20),(26,'Palmer','+62-580-6346-9858','JT',96036,7577,26),(27,'Wade','+62-813-6691-3096','SS',40314,6259,40),(28,'Allen','+62-134-1358-5380','AC',88259,2762,28),(29,'Akeem','+62-129-7272-6455','Central Java',49321,8384,37),(30,'Evelyn','+62-570-9404-5032','East Java',30031,9694,11),(31,'Brenden','+62-191-3923-1532','JI',53202,1862,20),(32,'Baker','+62-158-3428-1529','North Sumatra',68377,1422,39),(33,'Kameko','+62-927-9329-2196','SU',13584,4630,27),(34,'Cedric','+62-785-3921-1339','BA',37555,7079,32),(35,'Winter','+62-574-6483-2709','JT',60808,5093,21),(36,'Yael','+62-944-4019-3226','Banten',76286,2544,23),(37,'Harper','+62-435-7598-6543','East Java',19179,1231,22),(38,'Angelica','+62-269-8023-2022','East Java',19558,1489,32),(39,'Renee','+62-932-1583-3521','JB',76666,4030,12),(40,'Nichole','+62-268-1652-2912','West Java',68170,7016,33),(41,'Hillary','+62-414-8614-5967','LA',34145,3501,35),(42,'Paki','+62-321-2353-5577','SR',31402,6096,10),(43,'Jael','+62-430-3637-1133','BT',44909,8785,10),(44,'Ray','+62-894-9399-1856','BT',73580,8304,38),(45,'Michelle','+62-212-3541-4355','East Nusa Tenggara',41779,7005,40),(46,'Allistair','+62-430-3143-9980','West Java',24189,9468,19),(47,'Walter','+62-465-1763-8861','JI',59554,2182,26),(48,'Bernard','+62-936-3346-4611','Central Java',23509,9205,27),(49,'Ashton','+62-387-9068-8061','JT',85946,8990,24),(50,'Yael','+62-400-5341-3917','Special Region of Yogyakarta',80718,7553,16),(51,'Cameran','+62-709-7284-6832','BT',69579,2470,21),(52,'Brynn','+62-944-5750-1181','JT',17532,1909,34),(53,'Keane','+62-650-9475-4314','Central Java',47171,6170,24),(54,'Karly','+62-384-7887-9333','YO',15535,8300,17),(55,'Kaitlin','+62-773-9313-6235','JB',14729,6101,22),(56,'Morgan','+62-964-9436-5335','West Java',53457,7830,20),(57,'Bradley','+62-659-4134-1590','Aceh',96268,4100,8),(58,'Trevor','+62-821-7505-4011','Papua',82827,6308,29),(59,'Conan','+62-526-2927-7298','East Java',78590,3549,8),(60,'Ariana','+62-399-5933-1215','BT',85098,3960,40),(61,'Hiram','+62-635-7954-0025','Lampung',43400,9015,13),(62,'Jack','+62-936-2655-8026','North Sulawesi',20370,2258,18),(63,'Destiny','+62-486-1067-5431','West Java',54300,4350,40),(64,'Eden','+62-789-6666-5367','SU',74955,1555,35),(65,'Tarik','+62-972-6616-4561','SS',13434,2039,17),(66,'Jameson','+62-800-4064-1005','East Nusa Tenggara',44653,8019,38),(67,'Carson','+62-772-7658-2231','East Java',29670,1451,33),(68,'Raja','+62-281-6873-5697','JI',53539,5074,30),(69,'Kylynn','+62-976-9148-3049','BA',44871,1813,24),(70,'Sage','+62-893-8615-5465','West Java',32566,2346,24),(71,'Alisa','+62-627-4345-8739','JA',41284,5631,21),(72,'Jocelyn','+62-315-4580-1110','JB',29489,8089,9),(73,'Aladdin','+62-610-8763-6107','West Kalimantan',23567,2835,31),(74,'Ulla','+62-375-9849-1245','PA',35369,3762,18),(75,'Wynter','+62-399-4831-0929','Banten',10851,9791,39),(76,'Timon','+62-480-5326-4494','Central Java',25294,1268,26),(77,'Althea','+62-469-5333-1379','JT',17702,9705,29),(78,'Theodore','+62-261-3468-8562','JI',48339,6478,13),(79,'Brielle','+62-207-6796-8352','Central Java',40855,5386,22),(80,'Zeus','+62-723-7695-9482','East Nusa Tenggara',69885,7814,22),(81,'Giselle','+62-304-6507-8294','West Java',26998,5571,13),(82,'Plato','+62-768-3152-3978','North Sulawesi',85055,8275,40),(83,'Beck','+62-515-4411-3351','SB',46357,6885,35),(84,'TaShya','+62-296-1659-9697','JB',80848,2501,9),(85,'Josiah','+62-780-1521-3273','SG',12830,4761,15),(86,'Simone','+62-779-7300-4898','East Java',11015,6462,40),(87,'Vernon','+62-529-7414-7362','BE',59865,6745,26),(88,'Theodore','+62-205-6854-4910','ST',32229,6221,33),(89,'Anastasia','+62-244-9858-2067','East Kalimantan',17403,9147,9),(90,'Brynne','+62-566-2261-8985','West Java',59766,5606,12),(91,'Meredith','+62-780-2466-7104','North Sumatra',40060,1754,38),(92,'Allen','+62-533-7326-2662','East Nusa Tenggara',79755,4321,21),(93,'Kennedy','+62-362-9873-7235','SB',27328,5507,9),(94,'Karyn','+62-257-2906-6216','JI',27282,6402,25),(95,'Garrison','+62-264-4476-1633','Special Capital Region of Jakarta',56306,5412,39),(96,'Beck','+62-877-1689-1916','JI',65502,7048,25),(97,'Venus','+62-506-5606-9284','East Java',84530,9864,36),(98,'Jessica','+62-578-8863-3621','JB',68886,9456,25),(99,'Leslie','+62-974-2385-6889','Banten',38414,7195,25),(103,'Susilo','+6287657706666','Bandung',87567,4900,10);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hirarki`
--

DROP TABLE IF EXISTS `hirarki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hirarki` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_atasan` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_atasan_idx` (`id_atasan`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hirarki`
--

LOCK TABLES `hirarki` WRITE;
/*!40000 ALTER TABLE `hirarki` DISABLE KEYS */;
INSERT INTO `hirarki` VALUES (1,0),(2,1),(3,2),(4,2),(5,2),(6,3),(7,4),(8,5),(9,6),(10,7),(11,8);
/*!40000 ALTER TABLE `hirarki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jabatan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jabatan`
--

LOCK TABLES `jabatan` WRITE;
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` VALUES (1,'Presiden Direktur'),(2,'Direktur Penjualan'),(3,'Manager BSD'),(4,'Manager JKT'),(5,'Manager BDG'),(6,'Sales Leader BSD'),(7,'Sales Leader JKT'),(8,'Sales Leader BDG'),(9,'Sales RP BSD'),(10,'Sales RP JKT'),(11,'Sales RP BDG');
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `hp` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `zip_code` int NOT NULL,
  `id_jabatan` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`id_jabatan`),
  CONSTRAINT `id` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'Dennis','+62-831-8993-7710','East Java',37752,1),(2,'Sarah','+62-567-7010-6971','West Java',25443,2),(3,'Madonna','+62-448-6423-4135','Papua',55744,3),(4,'Yoko','+62-761-5047-0682','East Nusa Tenggara',47510,4),(5,'Zahir','+62-820-2132-0507','Banten',73217,5),(6,'Yen','+62-906-2933-2725','West Java',96844,6),(7,'Quintessa','+62-173-9954-1484','Special Capital Region of Jakarta',62811,7),(8,'Melinda','+62-143-1777-5032','West Java',71734,8),(9,'Ori','+62-468-6595-3966','West Kalimantan',34951,11),(10,'August','+62-923-6974-7085','Bali',28805,10),(11,'April','+62-420-8347-5331','Central Java',16989,9),(12,'Leonard','+62-483-6514-3095','East Nusa Tenggara',82872,9),(13,'Hector','+62-342-2871-7809','East Java',25948,9),(14,'Lucian','+62-816-8477-3540','West Java',49573,9),(15,'Deacon','+62-456-4004-6024','South Sulawesi',44534,9),(16,'Martina','+62-991-6452-5897','Special Capital Region of Jakarta',35942,11),(17,'Jana','+62-597-2366-1942','Lampung',85829,11),(18,'Lysandra','+62-809-1236-4108','Banten',85387,11),(19,'Cecilia','+62-345-2761-1315','Special Capital Region of Jakarta',30674,11),(20,'Stephen','+62-700-7210-1497','East Nusa Tenggara',53947,10),(21,'Hannah','+62-903-3736-7890','East Java',86305,10),(22,'Ocean','+62-455-6189-1648','Central Java',44447,9),(23,'India','+62-467-9874-9776','Maluku',66448,9),(24,'Dakota','+62-103-5254-9033','West Java',97107,10),(25,'Shelley','+62-385-4107-2820','Southeast Sulawesi',64849,9),(26,'Lee','+62-311-7384-3136','Special Region of Yogyakarta',18896,11),(27,'Kirsten','+62-741-1783-2694','West Sulawesi',81476,9),(28,'Debra','+62-755-4465-0120','Bali',47823,10),(29,'Finn','+62-170-4968-6218','North Sumatra',20721,11),(30,'Merritt','+62-141-2795-3845','Central Java',97904,10),(31,'Lacota','+62-727-6249-4221','Special Capital Region of Jakarta',17883,10),(32,'Jana','+62-326-8348-5148','Central Java',31997,9),(33,'Geoffrey','+62-115-8148-5879','Aceh',74746,9),(34,'Marsden','+62-525-1097-5528','West Nusa Tenggara',21229,11),(35,'Keefe','+62-121-9545-9608','East Java',62091,9),(36,'Debra','+62-387-9968-5016','East Java',55227,11),(37,'Colin','+62-769-1884-5103','Central Java',69537,11),(38,'Breanna','+62-476-4937-3946','West Java',19715,9),(39,'Sloane','+62-269-7856-2225','South Kalimantan',86468,10),(40,'Lester','+62-402-9513-7866','Central Java',83965,11);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-24 16:29:13
