-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `city_data`
--

DROP TABLE IF EXISTS `city_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_data` (
  `city_id` int NOT NULL,
  `city_name` varchar(9) NOT NULL,
  `state_id` varchar(2) NOT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_id_UNIQUE` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_data`
--

LOCK TABLES `city_data` WRITE;
/*!40000 ALTER TABLE `city_data` DISABLE KEYS */;
INSERT INTO `city_data` VALUES (110001,'new_delhi','DL'),(230532,'mumbai','MH'),(283203,'Firozabad','DL'),(380001,'ahmedabad','GJ'),(411002,'Pune','MH'),(500005,'Hyderabad','TS'),(560004,'Bangalore','KA'),(600002,'Chennai','TN'),(700005,'Kolkata','WB');
/*!40000 ALTER TABLE `city_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `city_data_BEFORE_INSERT` BEFORE INSERT ON `city_data` FOR EACH ROW BEGIN
if new.city_id is null then
set new.city_id = 'city_id mandetory';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `hotel_data`
--

DROP TABLE IF EXISTS `hotel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_data` (
  `hotelid` int NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(54) NOT NULL,
  `hotel_address` varchar(122) DEFAULT NULL,
  `star` int NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `cost_per_night` int NOT NULL,
  `city_id` int DEFAULT NULL,
  PRIMARY KEY (`hotelid`),
  UNIQUE KEY `hotelid_UNIQUE` (`hotelid`),
  KEY `hotel___` (`hotelid` DESC,`hotel_name` DESC,`hotel_address` DESC,`star` DESC,`rating` DESC,`cost_per_night` DESC,`city_id` DESC)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_data`
--

LOCK TABLES `hotel_data` WRITE;
/*!40000 ALTER TABLE `hotel_data` DISABLE KEYS */;
INSERT INTO `hotel_data` VALUES (208,'Hotel Sitara Paradise','Ameerpet',3,4.2,2509,500005),(207,'Anmol Continental','Saifabad',3,3.7,3042,500005),(206,'Mandava Suites','West Hyderabad',3,3.8,2562,500005),(205,'KRS Nest','Banjara Hills',3,4.5,3090,500005),(204,'At Home Service Apartment','Hi Trch City Kondapur',3,4.2,3400,500005),(203,'Falcons Nest- Banjara Hills','Central Hyderabad',3,3.7,3489,500005),(202,'Country Club Medchal','Andhra Pradesh',4,3.1,4053,500005),(201,'Swagath De Royal Hotel','Kondapur',4,4.2,3735,500005),(200,'Saptagiri Hotel','St Marys Road',4,3.6,4242,500005),(199,'Royal Reves','Secundrabad',4,4.5,3728,500005),(198,'Swagath Grand-Vanasthalipuram','Vanasthalipuram',4,4.3,3852,500005),(197,'Paradise Riverland Houseboat','Moinabad Mandal',4,4.3,4250,500005),(196,'The Central Court Hotel','Lakdi Ka Pul',4,4.1,4074,500005),(195,'Hotel Riya Grand','Banjara Hills',4,3.8,4231,500005),(194,'Falcons Nest Imperia Suites','Jubilee Hills',4,3.2,4094,500005),(193,'Novotel Hyderabad Airport','Shamshabad',5,4.3,5195,500005),(192,'The Park Hyderabad','Somajiguda',5,4.2,4989,500005),(191,'Celestia Suites At Leonia','Shameerpet Ranga Reddy District',5,4.4,4618,500005),(190,'Nandhana Grand','Koramangala',3,4.3,4878,560004),(189,'Hotel Nandhini - R T Nagar','Bangalore Airport Road,Palace Road,RT Nagar Main Road',3,3.7,4205,560004),(188,'The Waves Service Apartment','Marathahalli Outer Ring Road',3,4.0,4514,560004),(187,'High Gates Hotel','M G Road,Brigade Road,Church Street,Central Bangalore,Brigade Rd',3,4.0,3634,560004),(186,'Akshaya Aura','Majestic,K G Road,Gandhinagar',3,4.7,4306,560004),(185,'Purple Lotus Boutique Suites','City Center,Lavelle Road,Central Bangalore',3,4.3,3582,560004),(184,'Rio Hotel','Sahakarnagar',3,4.9,3583,560004),(183,'Hotel Bharani Residency','Electronic City,Hosur Road',3,4.5,4967,560004),(182,'Marks Grandeur','Yeshwantpur,Opposite-MEI Factory,RNS motors',3,2.9,4416,560004),(181,'Treebo Edge','Lavelle Road,St Marks Road,Vittal Mallya Rd',3,4.2,4671,560004),(180,'Hotel Paraag','City Center,Race Course Road,Central Bangalore',3,4.0,4920,560004),(179,'Hotel Ekaa','Electronic City,Hosur Road,Kudlu Gate',3,4.2,4079,560004),(178,'Canary Sapphire','City Center,Gandhi Nagar,Central Bangalore,Gandhinagar',3,3.8,3763,560004),(177,'Hotel Ramanashree Richmond','Near Corporation Circle,Richmond,Central Bangalore',3,3.5,4704,560004),(176,'Manipal County Resort And Spa','Electronic City,Hosur Road,Southeast Bangalore',3,4.4,4528,560004),(175,'Adiga Residency','Majestic,Gandhi Nagar,Central Bangalore',3,3.6,3539,560004),(174,'The Orange Hotel','Marathahalli,Outer Ring Road,West Bangalore',3,3.3,4264,560004),(173,'Melange Luxury Service Apartment','Central Bangalore,Vittal Mallya Rd',3,4.4,4269,560004),(172,'The Elite Royale','Hosur Road,HSR Layout',3,3.7,3831,560004),(171,'Casa Cottage','Richmond,Central Bangalore',3,4.0,4038,560004),(170,'St. Mark\'s Hotel','City Center,Residency,Central Bangalore',4,4.5,5654,560004),(169,'The Chancery','M G Road,City Center,MG Road Bangalore,Central Bangalore',4,4.1,5585,560004),(168,'Jayamahal Palace Hotel','High Grounds,Palace Road,Central Bangalore',4,3.5,4888,560004),(167,'Escape Hotel & Spa','Indira Nagar,Central Bangalore,Indiranagar',4,4.4,5235,560004),(166,'juSTa MG Road','M G Road,Central Bangalore',4,4.4,5956,560004),(165,'Fortune Select Trinity','Whitefield,East Bangalore',4,4.4,6303,560004),(164,'Fortune Park JP Celestial','Majestic,City Center,Central Bangalore',4,4.0,4942,560004),(163,'Best Western Plus Jagadish','Jayanagar,4th Block,South Bangalore',4,3.7,5959,560004),(162,'Citrus Cunningham Road - Bangalore','City Center,Central Bangalore,Cunningham Road',4,4.6,4580,560004),(161,'Starlit Suites','Electronic City,Hosur Road,South Bangalore',4,4.8,4569,560004),(160,'Crowne Plaza Bengaluru Electronics City','Electronic City,Hosur Road,South Bangalore,Southeast Bangalore',5,4.4,7612,560004),(159,'Shangri-La Hotel, Bengaluru','Bangalore Airport Road,Palace Road,Vasanthnagar',5,4.9,6194,560004),(158,'Taj Bangalore','Bangalore Airport Road,Bangalore Airport,Kempe Gowda Road',5,4.8,7303,560004),(157,'Hyatt Bangalore MG Road','M G Road,City Center,Ulsoor,MG Road Bangalore',5,4.5,7632,560004),(156,'Holiday Inn Hotel and Suites Bengaluru Whitefield','Sidda,Ramagondanahalli',5,5.0,5303,560004),(155,'DoubleTree Suites by Hilton','Koramangala,Marathahalli,HSR Layout',5,4.5,7544,560004),(154,'Hotel Royal Garden','Park Street and Vicinity,Eden Gardens',3,3.0,2751,700005),(153,'Hotel Metropolis Inn','EM Bypass',3,3.0,2890,700005),(152,'Kenilworth Hotel','Central Kolkata,Little Russel Street',3,4.4,3453,700005),(151,'Check In Check Out','Alipore,South Kolkata,Eden Gardens',3,3.7,2154,700005),(150,'Mayur Residency','Janbazar',3,4.6,2946,700005),(149,'Hotel Housez 43','Park Street area',3,3.8,2299,700005),(148,'Hotel Casa Fortuna','Park Street and Vicinity',3,4.3,2208,700005),(147,'Pipal Tree Hotel','Airport Area',3,4.3,2484,700005),(146,'The Samilton','Ballygunge',3,3.7,2434,700005),(145,'Simi International The Imperial','Salt Lake',4,4.8,3058,700005),(144,'Novotel Kolkata Hotel and Residences','Rajarhat',5,4.3,4722,700005),(143,'The Gateway Hotel EM Bypass','Kolkata',5,4.7,4694,700005),(142,'JM Four Hotel','Shivaji Nagar,Deccan Gymkhana,Jangali Maharaj Road',3,4.4,3098,411002),(141,'Aerith Studios and Service Apartments','Pandhari Nagar',3,4.6,2318,411002),(140,'Hotel Royal Park','Kasarwadi,Mumbai Pune Highway',3,3.8,2090,411002),(139,'Hotel Royal Park- By Spree','Kasarwadi',3,4.2,2733,411002),(138,'Hotel Sahara','Shivaji Nagar',3,3.8,3232,411002),(137,'Kalpatharuvu Service Apartments','Viman Nagar,Kharadi,Magarpatta',3,3.8,2402,411002),(136,'Hotel Mint','Dhole Patil Road,Sangamvadi',3,4.2,2236,411002),(135,'Candy Shrutis Stonarc By Peppermint','Chakan',3,4.8,2981,411002),(134,'Hotel Kalasagar','Pimpri,Mumbai Pune Highway,Pimpri-Chinchwad',3,4.4,2010,411002),(133,'The Star Residency Pune','Koregaon Park',3,3.9,2821,411002),(132,'Hotel Supreme Heritage','Koregaon Park,Pune Railway Station,Kalyani Nagar',4,3.8,3904,411002),(131,'Hotel Mapple Adhwryou','Pune Railway Station,Pune, Airport,Central Pune',4,3.9,4340,411002),(130,'Citrus Hotel','Pimpri Chinchwad,MIDC Pimpri,Pimpri,Wakad,Pimpri-Chinchwad',4,4.1,4701,411002),(129,'Fortune Inn Jukaso','Viman Nagar,Nagar Road',4,4.0,3939,411002),(128,'Deccan Rendezvous','Shivaji Nagar,Deccan Gymkhana,Fergusson College Road,Jangali Maharaj Road',4,4.4,3593,411002),(126,'Spree - Shivai Hotel','Pimpri Chinchwad,Kalewadi Phada,MIDC Pimpri',4,4.2,4512,411002),(125,'Hotel Sagar Plaza','Bund Garden Road',4,4.3,3517,411002),(124,'Conrad Pune','Bund Garden Road,Koregaon Park,Pune Railway Station,Nagar Road',5,4.3,6379,411002),(123,'The Pride - Pune','Bund Garden Road,Pune Railway Station,Jangali Maharaj Road',5,4.1,5658,411002),(121,'Le Meridien Pune','Raja Bahadur Mill Rd,Sangamvadi',5,4.2,5192,411002),(120,'The Spring','No11, Kodambakkam High Road, Nungambakkam US Consulate/ Kodambakkam',3,3.9,2920,600002),(119,'Hanu Reddy Residences - Wallace Garden','6a/24 3rd street Wallace Garden, Nungambakkam , Nungambakkam',3,4.6,2313,600002),(118,'The Legends','No17 , North Boag Road , , T Nagar , Chennai',3,4.6,3001,600002),(117,'The Pride - Chennai','216, EVR Periyar Salai, Kilpauk, Poonamalle High Road, Killpauk, Chennai , Poonamalle High Road',3,3.6,2259,600002),(116,'La Woods Hotel','No 1 woods road, off Annasalai near LIC , Mount Road/US Consulate',3,4.5,2647,600002),(115,'Balaji Resorts','No 110Sivanthangal Road sriperumbudur , sriperumbudur',3,2.4,2398,600002),(114,'Raj Palace','12/1 Thanikachalam Road T Nagar , T Nagar',3,4.2,3206,600002),(113,'Hotel Shan Royal','85, Poonamalle High Road, Ponnamalle , Koyambedu',3,3.3,3204,600002),(112,'Tri Sea Residency','34 WALLAJA ROAD ( OPP TO MLA HOSTEL ) , Chepauk, Near Central Railway Station',3,3.7,2375,600002),(111,'Dream Inn Serviced Apartment Sholinganallur','29 , III Street , Narayanasamy Naicker Nagar , Behind Infosys , Sholinganallur , Chennai',3,2.3,2297,600002),(110,'Ibis Chennai City Centre','689-Anna Salai, 1 Km to US Consulate. , Mount Road, Chennai',3,2.9,2281,600002),(109,'Saaral Residency','1/685, Valayapathy Street , Mugappair East, Chennai',3,4.0,2564,600002),(108,'Radha Regent - A Sarovar Hotel','171, Jawahar Lal Nehru Salai, Inner Ring Road,Arumbakkam Inner Ring Road,Arumbakkam',4,4.5,4600,600002),(107,'Courtyard by Marriott - Chennai','564,Teynampet Annasalai',4,3.8,3531,600002),(106,'E Hotel','Express Avenue Mall, Ground Floor, Gate No 1, Patullos Road, Chennai, Tamil Nadu 600002 Express Avenue Mall, Mount Road',4,4.4,4598,600002),(105,'Grand by GRT hotels','120,Sir Thyagaraya Road,T. Nagar, Chennai , T Nagar',4,4.4,4956,600002),(104,'Hotel Raj Park','180, T.T.K. Road, Alwarpet , City Center, Near U S Consulate',4,4.0,3633,600002),(103,'Aloft Chennai','102 Rajiv Gandhi Road, Sholinganallur , Sholinganallur',4,4.4,4773,600002),(102,'Citrus','CITRUS Hotel, Citrus Resorts Pvt Ltd, Near Sunguvarchatram, Velankani Technology Park , Sriperumbudur',4,3.3,4210,600002),(101,'Lemon Tree Hotel, Shimona, Chennai','31/3, Mount Poonamalle High Road, Manapakkam , Manapakkam',4,4.3,4418,600002),(100,'Clarion hotel','Dr radha krishnan salai.krishnapuram',4,3.8,4987,600002),(99,'Holiday Inn Express Chennai Mahindra World City','Mahindra World City, , Near Main Entrance,',4,4.5,4539,600002),(98,'My Fortune','10,Cathedral Road,Gopalapuram , City Center',5,4.4,5737,600002),(97,'Taj Coromandel','37 Mahatma Gandhi Road Nungambakkam Mahatma Gandhi Road',5,4.5,5036,600002),(96,'Hablis Chennai','19 G S T Road,Guindy,Chennai Guindy / Airport Zone / Chennai Trade Centre',5,4.4,5374,600002),(95,'The Accord Metropolitan','37, G.N. Chetty Road, T.Nagar,',5,4.3,5805,600002),(94,'Vivanta By Taj - Fisherman\'s Cove, Chennai','Covelong Beach, Kanchipuram District Covelong Beach',5,4.7,5387,600002),(93,'The Residency Towers','115 Sir Thyagaraya Road T Nagar',5,4.4,5463,600002),(92,'The Raintree, Anna Salai','636,Anna Salai, Teynampet Teynampet',5,4.6,5150,600002),(91,'Fortune Select Grand Chennai','No 1, GST Road Singaperumal koil',5,4.4,5001,600002),(90,'Panvel','Oasis Spa & Business Resort ,Next to Karnala Bird Sanctuary ,Mumbai Goa Rd, Kalhe Gaon, Dist. Raigad Karnala,Panvel',3,4.3,4911,230532),(89,'Hotel Executive Enclave','331, Dr Ambedkar Road,Khar West, Near Pali Hill Bandra',3,4.0,3191,230532),(88,'Avion Hotel','Domestic Terminal 1A, Vile Parle East,Near Chhatrapati Shivaji Intl airport, Near Domestic Airport Mumbai Domestic Airport',3,4.0,4913,230532),(87,'Hotel Parle International','B.N. Agarwal Market, 27 Tejpal Road, Vile Parle, Near Domestic Airport, , Mumbai Domestic Airport',3,4.0,3426,230532),(86,'Jewel of Chembur','1st Road, Opp BMC office, Near Natraj Cinema, Chembur East, , Chembur',3,3.6,3052,230532),(85,'Ibis Mumbai Airport','Junction of Nehru Road, Vile Parle , Near Domestic Airport , Domestic Airport',3,3.9,4183,230532),(84,'Dreamhome Service Apartment Malad East','Nidhivan Society, Opposite Axis Bank, , Upper Govind Nagar, Malad East,',3,2.8,3766,230532),(83,'Le Sutra - The Indian Art Hotel','14 Union Park, Khar (W), Mumbai, Maharashtra Pali Hill',4,4.7,4042,230532),(82,'Four Points By Sheraton Navi Mumbai','Plot No. 39/1,6 to 15, Sector 30A, Vashi, Near Vashi Railway Station, , Vashi',4,4.5,4146,230532),(81,'Hotel Yogi Executive','Plot No.31-A, Sector 24, Opp to Mafco Market, Vashi, Navi Mumbai , Vashi, Navi Mumbai',4,3.9,4193,230532),(80,'Krishna Palace Hotel','96/98, Sleater Rd, Nana Chowk, Near Grant Road Stn , South Mumbai',4,4.1,4782,230532),(79,'Hotel The Residence','Saki Vihar Road, Near L&T Gate No.1, Before NITIE,Powai, Near Vihar Lake, , Powai Near Hiranandani Hospital',4,3.8,5961,230532),(78,'Fortune Park Lake City Thane','Eastern Express Highway in the premises of premises of Jupier Hospital Cadbury Junction,Thane West',4,4.4,5536,230532),(77,'Vijay Palace','Hotel Vijay Palace near vajreshwari mandir opp syndicate bank',4,3.9,4592,230532),(76,'Hotel Majestic Court Sarovar Portico','X-5/2 TTC Industrial Area Mahape',4,4.3,5219,230532),(75,'Ramee Guestline Dadar','Near Dadar Railway Station Dadar East Dadar',4,4.0,5599,230532),(74,'Midtown Pritam','Pritam Estates, Dadar T.T, Near Dadar Rly Stn, , Dadar',4,3.6,5382,230532),(73,'The Shalimar','Near August Kranti Marg, , Kemps Corner',4,3.8,5152,230532),(72,'Royal Orchid Central Grazia','Plot No. 67 L-3, Sector-19, Palm Beach Road,Vashi , Vashi',4,4.4,4829,230532),(71,'The Fern Residency','411/B, Hemu Kalani Marg, Chembur East,Mumbai , Hemu Kalani Marg, Chembur',4,4.2,5079,230532),(70,'The Leela','Andheri East,West Suburb International Airport',5,4.5,5491,230532),(69,'Z Luxury Residences','29/1, J. R Mhatre Road, Opposite Iris Park,Juhu Juhu',5,4.6,4553,230532),(68,'ITC Maratha - A Luxury Collection Hotel','Sahar Andheri (E) , Andheri (E)',5,4.7,4585,230532),(67,'Renaissance Convention Centre Hotel','#2 and 3 B, Near Chinmayanand Ashram, Powai , Powai',5,4.2,7164,230532),(66,'Sofitel Mumbai - BKC','C-57, Bandra Kurla Complex,Bandra East',5,4.9,6680,230532),(65,'The Westin Mumbai Garden City','International Business Park, Oberoi Garden City, Goregaon',5,4.8,4217,230532),(64,'Trident Nariman Point','Nariman Point , Nariman Point',5,4.7,5117,230532),(63,'The Orchid','70-C,Nehru Road, Adjacent to Domestic Airport, Vile Parle East , Domestic Airport',5,4.1,7402,230532),(62,'The Taj Mahal Palace','Apollo Bunder, Near Gateway Of India, , Colaba',5,4.8,7817,230532),(61,'The Lalit Mumbai','Sahar Airport Road, , International Airport',5,4.4,5801,230532),(60,'Hotel Ambassador-A Boutique Hotel','Near Nehru Bridge , Near Nehru Bridge',3,4.2,2484,380001),(59,'The Grand Bhagwati Express','Near Balwatika, Kankaria, Gate No. 5, Maninagar , Maninagar',3,3.9,2665,380001),(58,'The President - A Boutique Hotel','OPP MUNICIPAL MARKET, OFF CG ROAD, NAVRANGPURA , Off C G Road, Navrangpura',3,4.0,2401,380001),(57,'Comfort Inn Sunset','Airport Circle, Ahmedabad , Airport Circle',3,4.1,2811,380001),(56,'Nami Residency','Opp V S Hospital , Ellisbridge Ashram Road',3,4.6,2182,380001),(55,'Ritz Inn','Nr Moti Mahal Restaurant, Kapasiya Bazaar , Opp Kalupur Railway Station',3,4.0,2073,380001),(54,'Tune Hotel - Ahmedabad, Gujarat','4 D Square, Opposite Bombay Engineering College, Nr D Mart, Motera , Nr D Mart, Motera',3,4.9,2572,380001),(53,'Naeeka Hotel','Shaibaugh, Opp Nagpal Hospital , Shahibaug Under Bridge Road',3,3.5,2446,380001),(52,'Airport Residency','Near Airport Circle, , Airport Circle',3,3.4,2736,380001),(51,'Hotel EL Dorado','Opp Shree Krishna complex, Across Cross World, Mithakhali Six Roads, Navrangpura , Navrangpura',3,4.8,2254,380001),(50,'Ginger Hotel - Ahmedabad','Behind Himalaya Mall,Drive-In road , Behind Himalaya Mall',3,3.9,2391,380001),(49,'Hotel Palm Greens Club','National Highway No 8 , Between Bareja Kheda, Goblej',3,3.1,2653,380001),(48,'The Westend','Gujarat Collage Road, Ellisbridge , Ellisbridge, Opposite Inder Residency',3,3.9,3340,380001),(47,'Sarovar Portico - Ahmedabad','Bhawan\'s College Road, Ahmedabad , Bhawan\'s College Road,',3,3.9,3060,380001),(46,'Parker Lords Eco Inn','10, Vasant Baug Society, Opp. IDBI Bank, Gulbai Tekra Road Gulbai Tekra Road',3,4.4,2980,380001),(45,'Hotel Sahaj Palace Ahmedabad','Opp Terapanth Hall, B/H Dinesh Hall, Nr Torrent House, B/H Sales India Income Tax, Ahmedabad',3,4.8,3105,380001),(44,'Fairfield by Marriott','Ashram road usmanpura',4,4.4,3769,380001),(43,'The Metropole Hotel','Near R T O Circle , Subhash Bridge Corner, Subhash Bridge, Opp RTO , Subhash bridge, Opp RTO',4,4.2,3481,380001),(42,'Club Kensville Golf Resort (45 KM Away From Ahmedabad)','Nr Devdholera Village, Nr. Baldana Village, Opp. Lane of Sahyog Restaurant , Kerala GIDC, Bavla-Rajkot Highway',4,3.7,3770,380001),(41,'Fortune Park Ahmedabad','Opposite Gujarat College , Ellis Bridge',4,4.4,3429,380001),(40,'Anmol Ruturaj Club','Ahmedabad- Mehmadabad Highway , Raska Village, Ahmedabad',4,4.6,3530,380001),(39,'Aarohi Starz Club','Aarohi Starz Club Pvt Ltd,Sanand Kadi road , Chekhla, Sanand',4,3.8,3353,380001),(38,'Country Inn and Suites By Carlson','Sudhara Circle , Adjacent Saal Hospital and Sai Temple',4,4.2,3227,380001),(37,'Cama Hotel','Khanpur Road, Near River Front Khanpur',4,4.1,3729,380001),(36,'Hotel Host Inn','Nehru Brige Corner, Opp. Lemon Tree Hotel, Khanpur, Ahmedabad -380001, Gujarat, India. Khanapur',4,3.4,3046,380001),(35,'Lemon Tree Premier The Atrium Ahmedabad','Off Nehru Bridge, , Sabarmati River Front, ,',4,3.2,3239,380001),(34,'Pride Plaza Hotel','Judges Bungalow Road, Off S.G. Road, Ahmedabad , Near SG Highway ,',5,4.2,4311,380001),(33,'The Ummed Ahmedabad','International Airport Circle , Next to Army Cantonment Hansol',5,4.9,4540,380001),(32,'HYATT REGENCY AHMEDABAD','17A, Ashram Road, Usmanpura , Ashram Road',5,4.7,4711,380001),(31,'Aloft Ahmedabad','147/1 Opp.Bhagwat Vidyapeeth , Sola',5,4.5,3634,380001),(30,'Deluxe Otani Hotel Inn','6/85, WEA Padam Singh Road, Karol Bagh Near Pizza Hut',3,5.0,3576,110001),(29,'Hotel Sunshine Inn','Plot No 7-8 Sector 14 Kaushambi Kaushambi',3,4.2,3184,110001),(28,'Hotel Sai International','7864, Arakashan Road, Paharganj, New Delhi Pahar Ganj, New Delhi Railway Station',3,2.9,3866,110001),(27,'Hotel Maharaja Residency','B-20,21 Laxmi Nagar Laxmi Nagar, East Delhi',3,4.2,4131,110001),(26,'Hotel Dayal Regency','B- 718 Sushant Lok - I Sushant Lok 1,Gurgaon',3,3.3,3312,110001),(25,'Lavanya Motel','GT Karnal Road, Palla Bakhtawarpur Alipur North Delhi',3,3.6,3328,110001),(24,'Hotel Conclave Executive','R-30 Nehru enclave, Kalkaji Nehru enclave, Kalkaji',3,3.0,3291,110001),(23,'Grand Park Inn','1041/17, Abdul Rahaman Road, Naiwalan, (Walkable from Jhandewalan Metro Station), Karol Bagh. Karol Bagh',3,4.1,3605,110001),(22,'Hotel Singh International','4/64 PADAM SINGH ROAD KAROL BAGH NEW DELHI Karol Bagh',3,4.1,3045,110001),(21,'Hotel Pallvi Palace','8572, Arakshan Road, Paharganj,Near New Delhi Paharganj, New Delhi Railway Station',3,3.9,3562,110001),(20,'Hotel Benz International','10175/1, Behind Bikanerwala, near Gurudwara Rd Gurudwara Temple Karol Bagh',3,3.8,4069,110001),(19,'The Solace','E-2, East of Kailash, Opposite Metro Pillar no.71, Main Road Lala lajpat Rai Marg East Of Kailash, South Delhi',3,3.3,3404,110001),(18,'Haut Monde by PI Hotels','Sector 15, Part 1 Kirti Nagar, Jharsa Road, Exit No 9 Gurgaon',4,4.2,3934,110001),(17,'Savoy Suites','A-79 A, Sector 16, Sector 16 , Noida',4,4.3,4611,110001),(16,'Grand Heritage Resort','R - 4, Sec 20, Near City Park Near City Park, Greater Noida',4,3.6,4512,110001),(15,'Neemrana Fort Palace','122 nd Milestone, Delhi-Jaipur Highway Village Neemrana',4,4.3,3057,110001),(14,'Lemon Tree Premier City Center Gurgaon','287, Millennium City Center,287, City Center  Gurgaon',4,4.7,4285,110001),(13,'Pi Suites Delhi','BB-17, Greater Kailash Enclave Masjid moth',4,4.7,4869,110001),(12,'Hotel Palm Springs','60, CC, Naraina Phase - 1, Near PVR Near PVR',4,3.9,4010,110001),(11,'Fortune Inn Grazia, Ghaziabad','Plot No 1, Sanjay Nagar, Dist Center Ghaziabad',4,4.3,3494,110001),(10,'Fortune Select Excalibur','Main Sohna Road, Sector 49, Gurgaon',4,4.1,3746,110001),(9,'Optus Sarovar Premiere','43-47, Sector 29, City Center Sector - 29, Gurgaon',4,4.4,3352,110001),(8,'Best Western Resort Country Club','Pachgaon - Mohammadpur Road, Near Manesar Panchgaon',4,3.9,3409,110001),(7,'Taurus Hotel & Conventions','IGI Airport Road, N.H-08, Mahipalpur Extension Mahipalpur',4,3.7,3403,110001),(6,'Fortune Select Global, Gurgaon','Global Arcade, Mehrauli Gurgaon Road, MG Road, Gurgaon',4,4.2,3064,110001),(5,'Pride Plaza Hotel Aerocity New Delhi','Aseet 5 A,Hospitality District,Delhi Aerocity,IGI Airport',5,4.7,5635,110001),(4,'Crowne Plaza Gurgaon','Sector 29 National Highway 8 Gurgaon',5,4.8,5214,110001),(3,'The Lodhi','Lodhi Road Lodhi Road',5,4.2,6898,110001),(2,'Park Plaza - Faridabad','Plot Number 1, Sector 21C, Faridabad Faridabad',5,4.5,4082,110001),(1,'Crowne Plaza Okhla','Plot No,1, Community Centre Okhla Phase-1,South Delhi',5,4.7,6384,110001);
/*!40000 ALTER TABLE `hotel_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `hotel_data_BEFORE_INSERT` BEFORE INSERT ON `hotel_data` FOR EACH ROW BEGIN
if new.hotelid is null then
set new.hotelid = 'hotel id mandetory';
END if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `materelized_view`
--

DROP TABLE IF EXISTS `materelized_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materelized_view` (
  `hotelid` int DEFAULT NULL,
  `hotel_name` varchar(54) DEFAULT NULL,
  `cost_per_night` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materelized_view`
--

LOCK TABLES `materelized_view` WRITE;
/*!40000 ALTER TABLE `materelized_view` DISABLE KEYS */;
INSERT INTO `materelized_view` VALUES (208,'Hotel Sitara Paradise',2509),(207,'Anmol Continental',3042),(206,'Mandava Suites',2562),(205,'KRS Nest',3090),(204,'At Home Service Apartment',3400),(203,'Falcons Nest- Banjara Hills',3489),(202,'Country Club Medchal',4053),(201,'Swagath De Royal Hotel',3735),(200,'Saptagiri Hotel',4242),(199,'Royal Reves',3728),(198,'Swagath Grand-Vanasthalipuram',3852),(197,'Paradise Riverland Houseboat',4250),(196,'The Central Court Hotel',4074),(195,'Hotel Riya Grand',4231),(194,'Falcons Nest Imperia Suites',4094),(193,'Novotel Hyderabad Airport',5195),(192,'The Park Hyderabad',4989),(191,'Celestia Suites At Leonia',4618),(190,'Nandhana Grand',4878),(189,'Hotel Nandhini - R T Nagar',4205),(188,'The Waves Service Apartment',4514),(187,'High Gates Hotel',3634),(186,'Akshaya Aura',4306),(185,'Purple Lotus Boutique Suites',3582),(184,'Rio Hotel',3583),(183,'Hotel Bharani Residency',4967),(182,'Marks Grandeur',4416),(181,'Treebo Edge',4671),(180,'Hotel Paraag',4920),(179,'Hotel Ekaa',4079),(178,'Canary Sapphire',3763),(177,'Hotel Ramanashree Richmond',4704),(176,'Manipal County Resort And Spa',4528),(175,'Adiga Residency',3539),(174,'The Orange Hotel',4264),(173,'Melange Luxury Service Apartment',4269),(172,'The Elite Royale',3831),(171,'Casa Cottage',4038),(170,'St. Mark\'s Hotel',5654),(169,'The Chancery',5585),(168,'Jayamahal Palace Hotel',4888),(167,'Escape Hotel & Spa',5235),(166,'juSTa MG Road',5956),(165,'Fortune Select Trinity',6303),(164,'Fortune Park JP Celestial',4942),(163,'Best Western Plus Jagadish',5959),(162,'Citrus Cunningham Road - Bangalore',4580),(161,'Starlit Suites',4569),(160,'Crowne Plaza Bengaluru Electronics City',7612),(159,'Shangri-La Hotel, Bengaluru',6194),(158,'Taj Bangalore',7303),(157,'Hyatt Bangalore MG Road',7632),(156,'Holiday Inn Hotel and Suites Bengaluru Whitefield',5303),(155,'DoubleTree Suites by Hilton',7544),(154,'Hotel Royal Garden',2751),(153,'Hotel Metropolis Inn',2890),(152,'Kenilworth Hotel',3453),(151,'Check In Check Out',2154),(150,'Mayur Residency',2946),(149,'Hotel Housez 43',2299),(148,'Hotel Casa Fortuna',2208),(147,'Pipal Tree Hotel',2484),(146,'The Samilton',2434),(145,'Simi International The Imperial',3058),(144,'Novotel Kolkata Hotel and Residences',4722),(143,'The Gateway Hotel EM Bypass',4694),(142,'JM Four Hotel',3098),(141,'Aerith Studios and Service Apartments',2318),(140,'Hotel Royal Park',2090),(139,'Hotel Royal Park- By Spree',2733),(138,'Hotel Sahara',3232),(137,'Kalpatharuvu Service Apartments',2402),(136,'Hotel Mint',2236),(135,'Candy Shrutis Stonarc By Peppermint',2981),(134,'Hotel Kalasagar',2010),(133,'The Star Residency Pune',2821),(132,'Hotel Supreme Heritage',3904),(131,'Hotel Mapple Adhwryou',4340),(130,'Citrus Hotel',4701),(129,'Fortune Inn Jukaso',3939),(128,'Deccan Rendezvous',3593),(126,'Spree - Shivai Hotel',4512),(125,'Hotel Sagar Plaza',3517),(124,'Conrad Pune',6379),(123,'The Pride - Pune',5658),(121,'Le Meridien Pune',5192),(120,'The Spring',2920),(119,'Hanu Reddy Residences - Wallace Garden',2313),(118,'The Legends',3001),(117,'The Pride - Chennai',2259),(116,'La Woods Hotel',2647),(115,'Balaji Resorts',2398),(114,'Raj Palace',3206),(113,'Hotel Shan Royal',3204),(112,'Tri Sea Residency',2375),(111,'Dream Inn Serviced Apartment Sholinganallur',2297),(110,'Ibis Chennai City Centre',2281),(109,'Saaral Residency',2564),(108,'Radha Regent - A Sarovar Hotel',4600),(107,'Courtyard by Marriott - Chennai',3531),(106,'E Hotel',4598),(105,'Grand by GRT hotels',4956),(104,'Hotel Raj Park',3633),(103,'Aloft Chennai',4773),(102,'Citrus',4210),(101,'Lemon Tree Hotel, Shimona, Chennai',4418),(100,'Clarion hotel',4987),(99,'Holiday Inn Express Chennai Mahindra World City',4539),(98,'My Fortune',5737),(97,'Taj Coromandel',5036),(96,'Hablis Chennai',5374),(95,'The Accord Metropolitan',5805),(94,'Vivanta By Taj - Fisherman\'s Cove, Chennai',5387),(93,'The Residency Towers',5463),(92,'The Raintree, Anna Salai',5150),(91,'Fortune Select Grand Chennai',5001),(90,'Panvel',4911),(89,'Hotel Executive Enclave',3191),(88,'Avion Hotel',4913),(87,'Hotel Parle International',3426),(86,'Jewel of Chembur',3052),(85,'Ibis Mumbai Airport',4183),(84,'Dreamhome Service Apartment Malad East',3766),(83,'Le Sutra - The Indian Art Hotel',4042),(82,'Four Points By Sheraton Navi Mumbai',4146),(81,'Hotel Yogi Executive',4193),(80,'Krishna Palace Hotel',4782),(79,'Hotel The Residence',5961),(78,'Fortune Park Lake City Thane',5536),(77,'Vijay Palace',4592),(76,'Hotel Majestic Court Sarovar Portico',5219),(75,'Ramee Guestline Dadar',5599),(74,'Midtown Pritam',5382),(73,'The Shalimar',5152),(72,'Royal Orchid Central Grazia',4829),(71,'The Fern Residency',5079),(70,'The Leela',5491),(69,'Z Luxury Residences',4553),(68,'ITC Maratha - A Luxury Collection Hotel',4585),(67,'Renaissance Convention Centre Hotel',7164),(66,'Sofitel Mumbai - BKC',6680),(65,'The Westin Mumbai Garden City',4217),(64,'Trident Nariman Point',5117),(63,'The Orchid',7402),(62,'The Taj Mahal Palace',7817),(61,'The Lalit Mumbai',5801),(60,'Hotel Ambassador-A Boutique Hotel',2484),(59,'The Grand Bhagwati Express',2665),(58,'The President - A Boutique Hotel',2401),(57,'Comfort Inn Sunset',2811),(56,'Nami Residency',2182),(55,'Ritz Inn',2073),(54,'Tune Hotel - Ahmedabad, Gujarat',2572),(53,'Naeeka Hotel',2446),(52,'Airport Residency',2736),(51,'Hotel EL Dorado',2254),(50,'Ginger Hotel - Ahmedabad',2391),(49,'Hotel Palm Greens Club',2653),(48,'The Westend',3340),(47,'Sarovar Portico - Ahmedabad',3060),(46,'Parker Lords Eco Inn',2980),(45,'Hotel Sahaj Palace Ahmedabad',3105),(44,'Fairfield by Marriott',3769),(43,'The Metropole Hotel',3481),(42,'Club Kensville Golf Resort (45 KM Away From Ahmedabad)',3770),(41,'Fortune Park Ahmedabad',3429),(40,'Anmol Ruturaj Club',3530),(39,'Aarohi Starz Club',3353),(38,'Country Inn and Suites By Carlson',3227),(37,'Cama Hotel',3729),(36,'Hotel Host Inn',3046),(35,'Lemon Tree Premier The Atrium Ahmedabad',3239),(34,'Pride Plaza Hotel',4311),(33,'The Ummed Ahmedabad',4540),(32,'HYATT REGENCY AHMEDABAD',4711),(31,'Aloft Ahmedabad',3634),(30,'Deluxe Otani Hotel Inn',3576),(29,'Hotel Sunshine Inn',3184),(28,'Hotel Sai International',3866),(27,'Hotel Maharaja Residency',4131),(26,'Hotel Dayal Regency',3312),(25,'Lavanya Motel',3328),(24,'Hotel Conclave Executive',3291),(23,'Grand Park Inn',3605),(22,'Hotel Singh International',3045),(21,'Hotel Pallvi Palace',3562),(20,'Hotel Benz International',4069),(19,'The Solace',3404),(18,'Haut Monde by PI Hotels',3934),(17,'Savoy Suites',4611),(16,'Grand Heritage Resort',4512),(15,'Neemrana Fort Palace',3057),(14,'Lemon Tree Premier City Center Gurgaon',4285),(13,'Pi Suites Delhi',4869),(12,'Hotel Palm Springs',4010),(11,'Fortune Inn Grazia, Ghaziabad',3494),(10,'Fortune Select Excalibur',3746),(9,'Optus Sarovar Premiere',3352),(8,'Best Western Resort Country Club',3409),(7,'Taurus Hotel & Conventions',3403),(6,'Fortune Select Global, Gurgaon',3064),(5,'Pride Plaza Hotel Aerocity New Delhi',5635),(4,'Crowne Plaza Gurgaon',5214),(3,'The Lodhi',6898),(2,'Park Plaza - Faridabad',4082),(1,'Crowne Plaza Okhla',6384);
/*!40000 ALTER TABLE `materelized_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pune_hotel`
--

DROP TABLE IF EXISTS `pune_hotel`;
/*!50001 DROP VIEW IF EXISTS `pune_hotel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pune_hotel` AS SELECT 
 1 AS `hotelid`,
 1 AS `star`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `state_code`
--

DROP TABLE IF EXISTS `state_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_code` (
  `State_name` varchar(19) NOT NULL,
  `State_id` varchar(2) NOT NULL,
  PRIMARY KEY (`State_id`),
  UNIQUE KEY `State_id_UNIQUE` (`State_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_code`
--

LOCK TABLES `state_code` WRITE;
/*!40000 ALTER TABLE `state_code` DISABLE KEYS */;
INSERT INTO `state_code` VALUES ('Andhra Pradesh','AD'),('Arunachal Pradesh','AR'),('Assam','AS'),('Bihar','BR'),('Chattisgarh','CG'),('Chandigarh','CH'),('Delhi','DL'),('Goa','GA'),('Gujarat','GJ'),('Himachal Pradesh','HP'),('Haryana','HR'),('Jharkhand','JH'),('Jammu and Kashmir','JK'),('Karnataka','KA'),('Kerala','KL'),('Ladakh','LA'),('Lakshadweep Islands','LD'),('Maharashtra','MH'),('Meghalaya','ML'),('Manipur','MN'),('Madhya Pradesh','MP'),('Mizoram','MZ'),('Nagaland','NL'),('Odisha','OD'),('Punjab','PB'),('Pondicherry','PY'),('Rajasthan','RJ'),('Sikkim','SK'),('Tamil Nadu','TN'),('Tripura','TR'),('Telangana','TS'),('Uttarakhand','UK'),('Uttar Pradesh','UP'),('West Bengal','WB');
/*!40000 ALTER TABLE `state_code` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `state_BEFORE_INSERT` BEFORE INSERT ON `state_code` FOR EACH ROW BEGIN
if new.state_id is null then
set new.state_id = 'id mandetory';
end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `total_hotel`
--

DROP TABLE IF EXISTS `total_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_hotel` (
  `hotelid` int NOT NULL,
  `hotel_name` varchar(54) NOT NULL,
  `star` int NOT NULL,
  `state_id` varchar(2) NOT NULL,
  `city_id` int DEFAULT NULL,
  `city_name` varchar(9) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `hotel_address` varchar(122) NOT NULL,
  `transport_id` int NOT NULL,
  `cost_per_night` int NOT NULL,
  PRIMARY KEY (`hotelid`),
  UNIQUE KEY `hotelid_UNIQUE` (`hotelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_hotel`
--

LOCK TABLES `total_hotel` WRITE;
/*!40000 ALTER TABLE `total_hotel` DISABLE KEYS */;
INSERT INTO `total_hotel` VALUES (1,'Crowne Plaza Okhla',5,'DL',110001,'new_delhi',4.7,'Plot No,1, Community Centre Okhla Phase-1,South Delhi',1001001,4802),(2,'Park Plaza - Faridabad',5,'DL',110001,'new_delhi',4.5,'Plot Number 1, Sector 21C, Faridabad Faridabad',1001003,5047),(3,'The Lodhi',5,'DL',110001,'new_delhi',4.2,'Lodhi Road Lodhi Road',1001003,5611),(4,'Crowne Plaza Gurgaon',5,'DL',110001,'new_delhi',4.8,'Sector 29 National Highway 8 Gurgaon',1001003,6239),(5,'Pride Plaza Hotel Aerocity New Delhi',5,'DL',110001,'new_delhi',4.7,'Aseet 5 A,Hospitality District,Delhi Aerocity,IGI Airport',1001002,5055),(6,'Fortune Select Global, Gurgaon',4,'DL',110001,'new_delhi',4.2,'Global Arcade, Mehrauli Gurgaon Road, MG Road, Gurgaon',1001002,3716),(7,'Taurus Hotel & Conventions',4,'DL',110001,'new_delhi',3.7,'IGI Airport Road, N.H-08, Mahipalpur Extension Mahipalpur',1001003,3232),(8,'Best Western Resort Country Club',4,'DL',110001,'new_delhi',3.9,'Pachgaon - Mohammadpur Road, Near Manesar Panchgaon',1001001,3038),(9,'Optus Sarovar Premiere',4,'DL',110001,'new_delhi',4.4,'43-47, Sector 29, City Center Sector - 29, Gurgaon',1001001,3014),(10,'Fortune Select Excalibur',4,'DL',110001,'new_delhi',4.1,'Main Sohna Road, Sector 49, Gurgaon',1001002,4812),(11,'Fortune Inn Grazia, Ghaziabad',4,'DL',110001,'new_delhi',4.3,'Plot No 1, Sanjay Nagar, Dist Center Ghaziabad',1001002,4939),(12,'Hotel Palm Springs',4,'DL',110001,'new_delhi',3.9,'60, CC, Naraina Phase - 1, Near PVR Near PVR',1001003,3264),(13,'Pi Suites Delhi',4,'DL',110001,'new_delhi',4.7,'BB-17, Greater Kailash Enclave Masjid moth',1001003,4677),(14,'Lemon Tree Premier City Center Gurgaon',4,'DL',110001,'new_delhi',4.7,'287, Millennium City Center,287, City Center  Gurgaon',1001002,3622),(15,'Neemrana Fort Palace',4,'DL',110001,'new_delhi',4.3,'122 nd Milestone, Delhi-Jaipur Highway Village Neemrana',1001003,4739),(16,'Grand Heritage Resort',4,'DL',110001,'new_delhi',3.6,'R - 4, Sec 20, Near City Park Near City Park, Greater Noida',1001003,4676),(17,'Savoy Suites',4,'DL',110001,'new_delhi',4.3,'A-79 A, Sector 16, Sector 16 , Noida',1001003,4935),(18,'Haut Monde by PI Hotels',4,'DL',110001,'new_delhi',4.2,'Sector 15, Part 1 Kirti Nagar, Jharsa Road, Exit No 9 Gurgaon',1001001,4670),(19,'The Solace',3,'DL',110001,'new_delhi',3.3,'E-2, East of Kailash, Opposite Metro Pillar no.71, Main Road Lala lajpat Rai Marg East Of Kailash, South Delhi',1001001,4152),(20,'Hotel Benz International',3,'DL',110001,'new_delhi',3.8,'10175/1, Behind Bikanerwala, near Gurudwara Rd Gurudwara Temple Karol Bagh',1001002,3694),(21,'Hotel Pallvi Palace',3,'DL',110001,'new_delhi',3.9,'8572, Arakshan Road, Paharganj,Near New Delhi Paharganj, New Delhi Railway Station',1001002,3793),(22,'Hotel Singh International',3,'DL',110001,'new_delhi',4.1,'4/64 PADAM SINGH ROAD KAROL BAGH NEW DELHI Karol Bagh',1001002,4431),(23,'Grand Park Inn',3,'DL',110001,'new_delhi',4.1,'1041/17, Abdul Rahaman Road, Naiwalan, (Walkable from Jhandewalan Metro Station), Karol Bagh. Karol Bagh',1001001,3033),(24,'Hotel Conclave Executive',3,'DL',110001,'new_delhi',3.0,'R-30 Nehru enclave, Kalkaji Nehru enclave, Kalkaji',1001001,3118),(25,'Lavanya Motel',3,'DL',110001,'new_delhi',3.6,'GT Karnal Road, Palla Bakhtawarpur Alipur North Delhi',1001002,3568),(26,'Hotel Dayal Regency',3,'DL',110001,'new_delhi',3.3,'B- 718 Sushant Lok - I Sushant Lok 1,Gurgaon',1001003,3278),(27,'Hotel Maharaja Residency',3,'DL',110001,'new_delhi',4.2,'B-20,21 Laxmi Nagar Laxmi Nagar, East Delhi',1001001,4360),(28,'Hotel Sai International',3,'DL',110001,'new_delhi',2.9,'7864, Arakashan Road, Paharganj, New Delhi Pahar Ganj, New Delhi Railway Station',1001003,3956),(29,'Hotel Sunshine Inn',3,'DL',110001,'new_delhi',4.2,'Plot No 7-8 Sector 14 Kaushambi Kaushambi',1001002,3968),(30,'Deluxe Otani Hotel Inn',3,'DL',110001,'new_delhi',5.0,'6/85, WEA Padam Singh Road, Karol Bagh Near Pizza Hut',1001001,3838),(31,'Aloft Ahmedabad',5,'GJ',380001,'ahmedabad',4.5,'147/1 Opp.Bhagwat Vidyapeeth , Sola',1001003,4322),(32,'HYATT REGENCY AHMEDABAD',5,'GJ',380001,'ahmedabad',4.7,'17A, Ashram Road, Usmanpura , Ashram Road',1001002,4601),(33,'The Ummed Ahmedabad',5,'GJ',380001,'ahmedabad',4.9,'International Airport Circle , Next to Army Cantonment Hansol',1001001,4346),(34,'Pride Plaza Hotel',5,'GJ',380001,'ahmedabad',4.2,'Judges Bungalow Road, Off S.G. Road, Ahmedabad , Near SG Highway ,',1001002,4706),(35,'Lemon Tree Premier The Atrium Ahmedabad',4,'GJ',380001,'ahmedabad',3.2,'Off Nehru Bridge, , Sabarmati River Front, ,',1001001,3838),(36,'Hotel Host Inn',4,'GJ',380001,'ahmedabad',3.4,'Nehru Brige Corner, Opp. Lemon Tree Hotel, Khanpur, Ahmedabad -380001, Gujarat, India. Khanapur',1001001,3306),(37,'Cama Hotel',4,'GJ',380001,'ahmedabad',4.1,'Khanpur Road, Near River Front Khanpur',1001001,3694),(38,'Country Inn and Suites By Carlson',4,'GJ',380001,'ahmedabad',4.2,'Sudhara Circle , Adjacent Saal Hospital and Sai Temple',1001002,3396),(39,'Aarohi Starz Club',4,'GJ',380001,'ahmedabad',3.8,'Aarohi Starz Club Pvt Ltd,Sanand Kadi road , Chekhla, Sanand',1001002,3360),(40,'Anmol Ruturaj Club',4,'GJ',380001,'ahmedabad',4.6,'Ahmedabad- Mehmadabad Highway , Raska Village, Ahmedabad',1001003,3982),(41,'Fortune Park Ahmedabad',4,'GJ',380001,'ahmedabad',4.4,'Opposite Gujarat College , Ellis Bridge',1001002,3377),(42,'Club Kensville Golf Resort (45 KM Away From Ahmedabad)',4,'GJ',380001,'ahmedabad',3.7,'Nr Devdholera Village, Nr. Baldana Village, Opp. Lane of Sahyog Restaurant , Kerala GIDC, Bavla-Rajkot Highway',1001001,3271),(43,'The Metropole Hotel',4,'GJ',380001,'ahmedabad',4.2,'Near R T O Circle , Subhash Bridge Corner, Subhash Bridge, Opp RTO , Subhash bridge, Opp RTO',1001003,3240),(44,'Fairfield by Marriott',4,'GJ',380001,'ahmedabad',4.4,'Ashram road usmanpura',1001002,3090),(45,'Hotel Sahaj Palace Ahmedabad',3,'GJ',380001,'ahmedabad',4.8,'Opp Terapanth Hall, B/H Dinesh Hall, Nr Torrent House, B/H Sales India Income Tax, Ahmedabad',1001001,2920),(46,'Parker Lords Eco Inn',3,'GJ',380001,'ahmedabad',4.4,'10, Vasant Baug Society, Opp. IDBI Bank, Gulbai Tekra Road Gulbai Tekra Road',1001002,3218),(47,'Sarovar Portico - Ahmedabad',3,'GJ',380001,'ahmedabad',3.9,'Bhawan\'s College Road, Ahmedabad , Bhawan\'s College Road,',1001002,3194),(48,'The Westend',3,'GJ',380001,'ahmedabad',3.9,'Gujarat Collage Road, Ellisbridge , Ellisbridge, Opposite Inder Residency',1001003,2546),(49,'Hotel Palm Greens Club',3,'GJ',380001,'ahmedabad',3.1,'National Highway No 8 , Between Bareja Kheda, Goblej',1001002,3310),(50,'Ginger Hotel - Ahmedabad',3,'GJ',380001,'ahmedabad',3.9,'Behind Himalaya Mall,Drive-In road , Behind Himalaya Mall',1001001,2825),(51,'Hotel EL Dorado',3,'GJ',380001,'ahmedabad',4.8,'Opp Shree Krishna complex, Across Cross World, Mithakhali Six Roads, Navrangpura , Navrangpura',1001003,3268),(52,'Airport Residency',3,'GJ',380001,'ahmedabad',3.4,'Near Airport Circle, , Airport Circle',1001003,3442),(53,'Naeeka Hotel',3,'GJ',380001,'ahmedabad',3.5,'Shaibaugh, Opp Nagpal Hospital , Shahibaug Under Bridge Road',1001002,3126),(54,'Tune Hotel - Ahmedabad, Gujarat',3,'GJ',380001,'ahmedabad',4.9,'4 D Square, Opposite Bombay Engineering College, Nr D Mart, Motera , Nr D Mart, Motera',1001003,2970),(55,'Ritz Inn',3,'GJ',380001,'ahmedabad',4.0,'Nr Moti Mahal Restaurant, Kapasiya Bazaar , Opp Kalupur Railway Station',1001001,2378),(56,'Nami Residency',3,'GJ',380001,'ahmedabad',4.6,'Opp V S Hospital , Ellisbridge Ashram Road',1001002,2064),(57,'Comfort Inn Sunset',3,'GJ',380001,'ahmedabad',4.1,'Airport Circle, Ahmedabad , Airport Circle',1001001,3460),(58,'The President - A Boutique Hotel',3,'GJ',380001,'ahmedabad',4.0,'OPP MUNICIPAL MARKET, OFF CG ROAD, NAVRANGPURA , Off C G Road, Navrangpura',1001003,2948),(59,'The Grand Bhagwati Express',3,'GJ',380001,'ahmedabad',3.9,'Near Balwatika, Kankaria, Gate No. 5, Maninagar , Maninagar',1001003,2193),(60,'Hotel Ambassador-A Boutique Hotel',3,'GJ',380001,'ahmedabad',4.2,'Near Nehru Bridge , Near Nehru Bridge',1001001,2815),(61,'The Lalit Mumbai',5,'MH',230532,'mumbai',4.4,'Sahar Airport Road, , International Airport',1001003,5050),(62,'The Taj Mahal Palace',5,'MH',230532,'mumbai',4.8,'Apollo Bunder, Near Gateway Of India, , Colaba',1001002,4962),(63,'The Orchid',5,'MH',230532,'mumbai',4.1,'70-C,Nehru Road, Adjacent to Domestic Airport, Vile Parle East , Domestic Airport',1001001,4806),(64,'Trident Nariman Point',5,'MH',230532,'mumbai',4.7,'Nariman Point , Nariman Point',1001001,5323),(65,'The Westin Mumbai Garden City',5,'MH',230532,'mumbai',4.8,'International Business Park, Oberoi Garden City, Goregaon',1001003,4828),(66,'Sofitel Mumbai - BKC',5,'MH',230532,'mumbai',4.9,'C-57, Bandra Kurla Complex,Bandra East',1001002,6533),(67,'Renaissance Convention Centre Hotel',5,'MH',230532,'mumbai',4.2,'#2 and 3 B, Near Chinmayanand Ashram, Powai , Powai',1001001,7885),(68,'ITC Maratha - A Luxury Collection Hotel',5,'MH',230532,'mumbai',4.7,'Sahar Andheri (E) , Andheri (E)',1001003,4590),(69,'Z Luxury Residences',5,'MH',230532,'mumbai',4.6,'29/1, J. R Mhatre Road, Opposite Iris Park,Juhu Juhu',1001001,7294),(70,'The Leela',5,'MH',230532,'mumbai',4.5,'Andheri East,West Suburb International Airport',1001001,5740),(71,'The Fern Residency',4,'MH',230532,'mumbai',4.2,'411/B, Hemu Kalani Marg, Chembur East,Mumbai , Hemu Kalani Marg, Chembur',1001001,4388),(72,'Royal Orchid Central Grazia',4,'MH',230532,'mumbai',4.4,'Plot No. 67 L-3, Sector-19, Palm Beach Road,Vashi , Vashi',1001001,5411),(73,'The Shalimar',4,'MH',230532,'mumbai',3.8,'Near August Kranti Marg, , Kemps Corner',1001002,4780),(74,'Midtown Pritam',4,'MH',230532,'mumbai',3.6,'Pritam Estates, Dadar T.T, Near Dadar Rly Stn, , Dadar',1001003,5819),(75,'Ramee Guestline Dadar',4,'MH',230532,'mumbai',4.0,'Near Dadar Railway Station Dadar East Dadar',1001002,4134),(76,'Hotel Majestic Court Sarovar Portico',4,'MH',230532,'mumbai',4.3,'X-5/2 TTC Industrial Area Mahape',1001002,5942),(77,'Vijay Palace',4,'MH',230532,'mumbai',3.9,'Hotel Vijay Palace near vajreshwari mandir opp syndicate bank',1001001,4839),(78,'Fortune Park Lake City Thane',4,'MH',230532,'mumbai',4.4,'Eastern Express Highway in the premises of premises of Jupier Hospital Cadbury Junction,Thane West',1001001,5794),(79,'Hotel The Residence',4,'MH',230532,'mumbai',3.8,'Saki Vihar Road, Near L&T Gate No.1, Before NITIE,Powai, Near Vihar Lake, , Powai Near Hiranandani Hospital',1001001,5266),(80,'Krishna Palace Hotel',4,'MH',230532,'mumbai',4.1,'96/98, Sleater Rd, Nana Chowk, Near Grant Road Stn , South Mumbai',1001002,4368),(81,'Hotel Yogi Executive',4,'MH',230532,'mumbai',3.9,'Plot No.31-A, Sector 24, Opp to Mafco Market, Vashi, Navi Mumbai , Vashi, Navi Mumbai',1001001,4679),(82,'Four Points By Sheraton Navi Mumbai',4,'MH',230532,'mumbai',4.5,'Plot No. 39/1,6 to 15, Sector 30A, Vashi, Near Vashi Railway Station, , Vashi',1001002,5441),(83,'Le Sutra - The Indian Art Hotel',4,'MH',230532,'mumbai',4.7,'14 Union Park, Khar (W), Mumbai, Maharashtra Pali Hill',1001002,4767),(84,'Dreamhome Service Apartment Malad East',3,'MH',230532,'mumbai',2.8,'Nidhivan Society, Opposite Axis Bank, , Upper Govind Nagar, Malad East,',1001002,3381),(85,'Ibis Mumbai Airport',3,'MH',230532,'mumbai',3.9,'Junction of Nehru Road, Vile Parle , Near Domestic Airport , Domestic Airport',1001002,3201),(86,'Jewel of Chembur',3,'MH',230532,'mumbai',3.6,'1st Road, Opp BMC office, Near Natraj Cinema, Chembur East, , Chembur',1001003,3906),(87,'Hotel Parle International',3,'MH',230532,'mumbai',4.0,'B.N. Agarwal Market, 27 Tejpal Road, Vile Parle, Near Domestic Airport, , Mumbai Domestic Airport',1001003,3390),(88,'Avion Hotel',3,'MH',230532,'mumbai',4.0,'Domestic Terminal 1A, Vile Parle East,Near Chhatrapati Shivaji Intl airport, Near Domestic Airport Mumbai Domestic Airport',1001001,3200),(89,'Hotel Executive Enclave',3,'MH',230532,'mumbai',4.0,'331, Dr Ambedkar Road,Khar West, Near Pali Hill Bandra',1001002,3870),(90,'Panvel',3,'MH',230532,'mumbai',4.3,'Oasis Spa & Business Resort ,Next to Karnala Bird Sanctuary ,Mumbai Goa Rd, Kalhe Gaon, Dist. Raigad Karnala,Panvel',1001003,3562),(91,'Fortune Select Grand Chennai',5,'TN',600002,'chennai',4.4,'No 1, GST Road Singaperumal koil',1001001,5841),(92,'The Raintree, Anna Salai',5,'TN',600002,'chennai',4.6,'636,Anna Salai, Teynampet Teynampet',1001001,5281),(93,'The Residency Towers',5,'TN',600002,'chennai',4.4,'115 Sir Thyagaraya Road T Nagar',1001001,5995),(94,'Vivanta By Taj - Fisherman\'s Cove, Chennai',5,'TN',600002,'chennai',4.7,'Covelong Beach, Kanchipuram District Covelong Beach',1001002,5444),(95,'The Accord Metropolitan',5,'TN',600002,'chennai',4.3,'37, G.N. Chetty Road, T.Nagar,',1001001,5563),(96,'Hablis Chennai',5,'TN',600002,'chennai',4.4,'19 G S T Road,Guindy,Chennai Guindy / Airport Zone / Chennai Trade Centre',1001002,5401),(97,'Taj Coromandel',5,'TN',600002,'chennai',4.5,'37 Mahatma Gandhi Road Nungambakkam Mahatma Gandhi Road',1001001,5301),(98,'My Fortune',5,'TN',600002,'chennai',4.4,'10,Cathedral Road,Gopalapuram , City Center',1001001,5134),(99,'Holiday Inn Express Chennai Mahindra World City',4,'TN',600002,'chennai',4.5,'Mahindra World City, , Near Main Entrance,',1001001,4169),(100,'Clarion hotel',4,'TN',600002,'chennai',3.8,'Dr radha krishnan salai.krishnapuram',1001002,4975),(101,'Lemon Tree Hotel, Shimona, Chennai',4,'TN',600002,'chennai',4.3,'31/3, Mount Poonamalle High Road, Manapakkam , Manapakkam',1001001,4417),(102,'Citrus',4,'TN',600002,'chennai',3.3,'CITRUS Hotel, Citrus Resorts Pvt Ltd, Near Sunguvarchatram, Velankani Technology Park , Sriperumbudur',1001002,3705),(103,'Aloft Chennai',4,'TN',600002,'chennai',4.4,'102 Rajiv Gandhi Road, Sholinganallur , Sholinganallur',1001003,4906),(104,'Hotel Raj Park',4,'TN',600002,'chennai',4.0,'180, T.T.K. Road, Alwarpet , City Center, Near U S Consulate',1001002,4521),(105,'Grand by GRT hotels',4,'TN',600002,'chennai',4.4,'120,Sir Thyagaraya Road,T. Nagar, Chennai , T Nagar',1001003,4531),(106,'E Hotel',4,'TN',600002,'chennai',4.4,'Express Avenue Mall, Ground Floor, Gate No 1, Patullos Road, Chennai, Tamil Nadu 600002 Express Avenue Mall, Mount Road',1001002,4073),(107,'Courtyard by Marriott - Chennai',4,'TN',600002,'chennai',3.8,'564,Teynampet Annasalai',1001003,4751),(108,'Radha Regent - A Sarovar Hotel',4,'TN',600002,'chennai',4.5,'171, Jawahar Lal Nehru Salai, Inner Ring Road,Arumbakkam Inner Ring Road,Arumbakkam',1001003,3723),(109,'Saaral Residency',3,'TN',600002,'chennai',4.0,'1/685, Valayapathy Street , Mugappair East, Chennai',1001003,2399),(110,'Ibis Chennai City Centre',3,'TN',600002,'chennai',2.9,'689-Anna Salai, 1 Km to US Consulate. , Mount Road, Chennai',1001003,2804),(111,'Dream Inn Serviced Apartment Sholinganallur',3,'TN',600002,'chennai',2.3,'29 , III Street , Narayanasamy Naicker Nagar , Behind Infosys , Sholinganallur , Chennai',1001002,2195),(112,'Tri Sea Residency',3,'TN',600002,'chennai',3.7,'34 WALLAJA ROAD ( OPP TO MLA HOSTEL ) , Chepauk, Near Central Railway Station',1001003,2158),(113,'Hotel Shan Royal',3,'TN',600002,'chennai',3.3,'85, Poonamalle High Road, Ponnamalle , Koyambedu',1001003,2819),(114,'Raj Palace',3,'TN',600002,'chennai',4.2,'12/1 Thanikachalam Road T Nagar , T Nagar',1001003,2995),(115,'Balaji Resorts',3,'TN',600002,'chennai',2.4,'No 110Sivanthangal Road sriperumbudur , sriperumbudur',1001001,3267),(116,'La Woods Hotel',3,'TN',600002,'chennai',4.5,'No 1 woods road, off Annasalai near LIC , Mount Road/US Consulate',1001001,2850),(117,'The Pride - Chennai',3,'TN',600002,'chennai',3.6,'216, EVR Periyar Salai, Kilpauk, Poonamalle High Road, Killpauk, Chennai , Poonamalle High Road',1001002,2147),(118,'The Legends',3,'TN',600002,'chennai',4.6,'No17 , North Boag Road , , T Nagar , Chennai',1001002,3077),(119,'Hanu Reddy Residences - Wallace Garden',3,'TN',600002,'chennai',4.6,'6a/24 3rd street Wallace Garden, Nungambakkam , Nungambakkam',1001002,3307),(120,'The Spring',3,'TN',600002,'chennai',3.9,'No11, Kodambakkam High Road, Nungambakkam US Consulate/ Kodambakkam',1001001,2782),(121,'Le Meridien Pune',5,'MH',411002,'Pune',4.2,'Raja Bahadur Mill Rd,Sangamvadi',1001001,5961),(123,'The Pride - Pune',5,'MH',411002,'Pune',4.1,'Bund Garden Road,Pune Railway Station,Jangali Maharaj Road',1001003,6993),(124,'Conrad Pune',5,'MH',411002,'Pune',4.3,'Bund Garden Road,Koregaon Park,Pune Railway Station,Nagar Road',1001003,5396),(125,'Hotel Sagar Plaza',4,'MH',411002,'Pune',4.3,'Bund Garden Road',1001002,4749),(126,'Spree - Shivai Hotel',4,'MH',411002,'Pune',4.2,'Pimpri Chinchwad,Kalewadi Phada,MIDC Pimpri',1001002,3568),(128,'Deccan Rendezvous',4,'MH',411002,'Pune',4.4,'Shivaji Nagar,Deccan Gymkhana,Fergusson College Road,Jangali Maharaj Road',1001003,3579),(129,'Fortune Inn Jukaso',4,'MH',411002,'Pune',4.0,'Viman Nagar,Nagar Road',1001001,3527),(130,'Citrus Hotel',4,'MH',411002,'Pune',4.1,'Pimpri Chinchwad,MIDC Pimpri,Pimpri,Wakad,Pimpri-Chinchwad',1001002,3953),(131,'Hotel Mapple Adhwryou',4,'MH',411002,'Pune',3.9,'Pune Railway Station,Pune, Airport,Central Pune',1001002,4380),(132,'Hotel Supreme Heritage',4,'MH',411002,'Pune',3.8,'Koregaon Park,Pune Railway Station,Kalyani Nagar',1001001,4135),(133,'The Star Residency Pune',3,'MH',411002,'Pune',3.9,'Koregaon Park',1001003,3381),(134,'Hotel Kalasagar',3,'MH',411002,'Pune',4.4,'Pimpri,Mumbai Pune Highway,Pimpri-Chinchwad',1001003,2041),(135,'Candy Shrutis Stonarc By Peppermint',3,'MH',411002,'Pune',4.8,'Chakan',1001002,3251),(136,'Hotel Mint',3,'MH',411002,'Pune',4.2,'Dhole Patil Road,Sangamvadi',1001002,2579),(137,'Kalpatharuvu Service Apartments',3,'MH',411002,'Pune',3.8,'Viman Nagar,Kharadi,Magarpatta',1001001,3230),(138,'Hotel Sahara',3,'MH',411002,'Pune',3.8,'Shivaji Nagar',1001002,3289),(139,'Hotel Royal Park- By Spree',3,'MH',411002,'Pune',4.2,'Kasarwadi',1001002,3230),(140,'Hotel Royal Park',3,'MH',411002,'Pune',3.8,'Kasarwadi,Mumbai Pune Highway',1001002,2274),(141,'Aerith Studios and Service Apartments',3,'MH',411002,'Pune',4.6,'Pandhari Nagar',1001003,3378),(142,'JM Four Hotel',3,'MH',411002,'Pune',4.4,'Shivaji Nagar,Deccan Gymkhana,Jangali Maharaj Road',1001003,3080),(143,'The Gateway Hotel EM Bypass',5,'WB',700005,'Kolkata',4.7,'Kolkata',1001003,4489),(144,'Novotel Kolkata Hotel and Residences',5,'WB',700005,'Kolkata',4.3,'Rajarhat',1001003,4495),(145,'Simi International The Imperial',4,'WB',700005,'Kolkata',4.8,'Salt Lake',1001001,4074),(146,'The Samilton',3,'WB',700005,'Kolkata',3.7,'Ballygunge',1001003,2120),(147,'Pipal Tree Hotel',3,'WB',700005,'Kolkata',4.3,'Airport Area',1001002,2808),(148,'Hotel Casa Fortuna',3,'WB',700005,'Kolkata',4.3,'Park Street and Vicinity',1001003,2467),(149,'Hotel Housez 43',3,'WB',700005,'Kolkata',3.8,'Park Street area',1001001,2257),(150,'Mayur Residency',3,'WB',700005,'Kolkata',4.6,'Janbazar',1001002,2180),(151,'Check In Check Out',3,'WB',700005,'Kolkata',3.7,'Alipore,South Kolkata,Eden Gardens',1001001,2816),(152,'Kenilworth Hotel',3,'WB',700005,'Kolkata',4.4,'Central Kolkata,Little Russel Street',1001001,2978),(153,'Hotel Metropolis Inn',3,'WB',700005,'Kolkata',3.0,'EM Bypass',1001003,2735),(154,'Hotel Royal Garden',3,'WB',700005,'Kolkata',3.0,'Park Street and Vicinity,Eden Gardens',1001003,3077),(155,'DoubleTree Suites by Hilton',5,'KA',560004,'Bangalore',4.5,'Koramangala,Marathahalli,HSR Layout',1001003,7240),(156,'Holiday Inn Hotel and Suites Bengaluru Whitefield',5,'KA',560004,'Bangalore',5.0,'Sidda,Ramagondanahalli',1001001,7887),(157,'Hyatt Bangalore MG Road',5,'KA',560004,'Bangalore',4.5,'M G Road,City Center,Ulsoor,MG Road Bangalore',1001001,5149),(158,'Taj Bangalore',5,'KA',560004,'Bangalore',4.8,'Bangalore Airport Road,Bangalore Airport,Kempe Gowda Road',1001001,7165),(159,'Shangri-La Hotel, Bengaluru',5,'KA',560004,'Bangalore',4.9,'Bangalore Airport Road,Palace Road,Vasanthnagar',1001003,6735),(160,'Crowne Plaza Bengaluru Electronics City',5,'KA',560004,'Bangalore',4.4,'Electronic City,Hosur Road,South Bangalore,Southeast Bangalore',1001002,5285),(161,'Starlit Suites',4,'KA',560004,'Bangalore',4.8,'Electronic City,Hosur Road,South Bangalore',1001001,4932),(162,'Citrus Cunningham Road - Bangalore',4,'KA',560004,'Bangalore',4.6,'City Center,Central Bangalore,Cunningham Road',1001001,5193),(163,'Best Western Plus Jagadish',4,'KA',560004,'Bangalore',3.7,'Jayanagar,4th Block,South Bangalore',1001003,6297),(164,'Fortune Park JP Celestial',4,'KA',560004,'Bangalore',4.0,'Majestic,City Center,Central Bangalore',1001003,4828),(165,'Fortune Select Trinity',4,'KA',560004,'Bangalore',4.4,'Whitefield,East Bangalore',1001001,6224),(166,'juSTa MG Road',4,'KA',560004,'Bangalore',4.4,'M G Road,Central Bangalore',1001001,6487),(167,'Escape Hotel & Spa',4,'KA',560004,'Bangalore',4.4,'Indira Nagar,Central Bangalore,Indiranagar',1001001,5011),(168,'Jayamahal Palace Hotel',4,'KA',560004,'Bangalore',3.5,'High Grounds,Palace Road,Central Bangalore',1001003,6474),(169,'The Chancery',4,'KA',560004,'Bangalore',4.1,'M G Road,City Center,MG Road Bangalore,Central Bangalore',1001001,6123),(170,'St. Mark\'s Hotel',4,'KA',560004,'Bangalore',4.5,'City Center,Residency,Central Bangalore',1001001,5212),(171,'Casa Cottage',3,'KA',560004,'Bangalore',4.0,'Richmond,Central Bangalore',1001003,4606),(172,'The Elite Royale',3,'KA',560004,'Bangalore',3.7,'Hosur Road,HSR Layout',1001002,3959),(173,'Melange Luxury Service Apartment',3,'KA',560004,'Bangalore',4.4,'Central Bangalore,Vittal Mallya Rd',1001002,4406),(174,'The Orange Hotel',3,'KA',560004,'Bangalore',3.3,'Marathahalli,Outer Ring Road,West Bangalore',1001003,3973),(175,'Adiga Residency',3,'KA',560004,'Bangalore',3.6,'Majestic,Gandhi Nagar,Central Bangalore',1001002,3556),(176,'Manipal County Resort And Spa',3,'KA',560004,'Bangalore',4.4,'Electronic City,Hosur Road,Southeast Bangalore',1001001,3848),(177,'Hotel Ramanashree Richmond',3,'KA',560004,'Bangalore',3.5,'Near Corporation Circle,Richmond,Central Bangalore',1001001,3950),(178,'Canary Sapphire',3,'KA',560004,'Bangalore',3.8,'City Center,Gandhi Nagar,Central Bangalore,Gandhinagar',1001003,3554),(179,'Hotel Ekaa',3,'KA',560004,'Bangalore',4.2,'Electronic City,Hosur Road,Kudlu Gate',1001003,4894),(180,'Hotel Paraag',3,'KA',560004,'Bangalore',4.0,'City Center,Race Course Road,Central Bangalore',1001003,4126),(181,'Treebo Edge',3,'KA',560004,'Bangalore',4.2,'Lavelle Road,St Marks Road,Vittal Mallya Rd',1001002,4614),(182,'Marks Grandeur',3,'KA',560004,'Bangalore',2.9,'Yeshwantpur,Opposite-MEI Factory,RNS motors',1001002,4164),(183,'Hotel Bharani Residency',3,'KA',560004,'Bangalore',4.5,'Electronic City,Hosur Road',1001001,4670),(184,'Rio Hotel',3,'KA',560004,'Bangalore',4.9,'Sahakarnagar',1001003,4503),(185,'Purple Lotus Boutique Suites',3,'KA',560004,'Bangalore',4.3,'City Center,Lavelle Road,Central Bangalore',1001003,4936),(186,'Akshaya Aura',3,'KA',560004,'Bangalore',4.7,'Majestic,K G Road,Gandhinagar',1001001,4661),(187,'High Gates Hotel',3,'KA',560004,'Bangalore',4.0,'M G Road,Brigade Road,Church Street,Central Bangalore,Brigade Rd',1001002,3605),(188,'The Waves Service Apartment',3,'KA',560004,'Bangalore',4.0,'Marathahalli Outer Ring Road',1001003,3756),(189,'Hotel Nandhini - R T Nagar',3,'KA',560004,'Bangalore',3.7,'Bangalore Airport Road,Palace Road,RT Nagar Main Road',1001003,4026),(190,'Nandhana Grand',3,'KA',560004,'Bangalore',4.3,'Koramangala',1001002,4457),(191,'Celestia Suites At Leonia',5,'TS',500005,'Hyderabad',4.4,'Shameerpet Ranga Reddy District',1001003,5247),(192,'The Park Hyderabad',5,'TS',500005,'Hyderabad',4.2,'Somajiguda',1001002,5264),(193,'Novotel Hyderabad Airport',5,'TS',500005,'Hyderabad',4.3,'Shamshabad',1001002,4893),(194,'Falcons Nest Imperia Suites',4,'TS',500005,'Hyderabad',3.2,'Jubilee Hills',1001002,3556),(195,'Hotel Riya Grand',4,'TS',500005,'Hyderabad',3.8,'Banjara Hills',1001001,3533),(196,'The Central Court Hotel',4,'TS',500005,'Hyderabad',4.1,'Lakdi Ka Pul',1001003,3615),(197,'Paradise Riverland Houseboat',4,'TS',500005,'Hyderabad',4.3,'Moinabad Mandal',1001003,4146),(198,'Swagath Grand-Vanasthalipuram',4,'TS',500005,'Hyderabad',4.3,'Vanasthalipuram',1001002,4373),(199,'Royal Reves',4,'TS',500005,'Hyderabad',4.5,'Secundrabad',1001002,3977),(200,'Saptagiri Hotel',4,'TS',500005,'Hyderabad',3.6,'St Marys Road',1001003,3511),(201,'Swagath De Royal Hotel',4,'TS',500005,'Hyderabad',4.2,'Kondapur',1001003,4360),(202,'Country Club Medchal',4,'TS',500005,'Hyderabad',3.1,'Andhra Pradesh',1001002,4259),(203,'Falcons Nest- Banjara Hills',3,'TS',500005,'Hyderabad',3.7,'Central Hyderabad',1001001,2559),(204,'At Home Service Apartment',3,'TS',500005,'Hyderabad',4.2,'Hi Trch City Kondapur',1001002,3447),(205,'KRS Nest',3,'TS',500005,'Hyderabad',4.5,'Banjara Hills',1001003,2370),(206,'Mandava Suites',3,'TS',500005,'Hyderabad',3.8,'West Hyderabad',1001002,2112),(207,'Anmol Continental',3,'TS',500005,'Hyderabad',3.7,'Saifabad',1001003,2758),(208,'Hotel Sitara Paradise',3,'TS',500005,'Hyderabad',4.2,'Ameerpet',1001003,2397);
/*!40000 ALTER TABLE `total_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport` (
  `transportmode_id` int NOT NULL,
  `transport_mode_name` varchar(4) NOT NULL,
  PRIMARY KEY (`transportmode_id`),
  UNIQUE KEY `transportmode_id_UNIQUE` (`transportmode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport`
--

LOCK TABLES `transport` WRITE;
/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
INSERT INTO `transport` VALUES (1001001,'Car'),(1001002,'bus'),(1001003,'auto');
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transport_data_BEFORE_INSERT` BEFORE INSERT ON `transport` FOR EACH ROW BEGIN
if new.transportmode_id is null then
set new.transportmode_id = 'id mandetory';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'hotel'
--

--
-- Dumping routines for database 'hotel'
--
/*!50003 DROP PROCEDURE IF EXISTS `4_star_hotel_banglore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `4_star_hotel_banglore`()
BEGIN
select * from hotel_data
where city_id=560004;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `5_star_hotel_above_5000_cost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `5_star_hotel_above_5000_cost`()
BEGIN
select * from hotel_data
where cost_per_night>5000;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `5_star_hotel_highest_rating_among_metrocities` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `5_star_hotel_highest_rating_among_metrocities`()
BEGIN
select * from hotel_data
where star=5
order by rating
desc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `5_star_hotel_pune` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `5_star_hotel_pune`()
BEGIN
select * from hotel_data
where city_id=411002
and star=5;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `costliest_hotel_over_metro_cities_with_rating_below_3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `costliest_hotel_over_metro_cities_with_rating_below_3`()
BEGIN
select * from hotel_data
where rating<3
order by cost_per_night
desc;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `high_rated_hote_with_less_cost` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `high_rated_hote_with_less_cost`()
BEGIN
select * from hotel_data
where rating>4
order by cost_per_night
asc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hotels_in_pune` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hotels_in_pune`()
BEGIN
select * from hotel_data
where city_id=411002;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hotel_in_mumbai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hotel_in_mumbai`()
BEGIN
select * from hotel_data
where city_id=230532;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `top_rated_hotel_in_india` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `top_rated_hotel_in_india`()
BEGIN

select * from hotel_data
where rating>4.5
order by star
desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `pune_hotel`
--

/*!50001 DROP VIEW IF EXISTS `pune_hotel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pune_hotel` AS select `hotel_data`.`hotelid` AS `hotelid`,`hotel_data`.`star` AS `star`,`hotel_data`.`rating` AS `rating` from `hotel_data` where (`hotel_data`.`city_id` = 411002) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-03 22:55:13
