-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.30-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema 1811012008
--

CREATE DATABASE IF NOT EXISTS 1811012008;
USE 1811012008;

--
-- Definition of table `ürünler`
--

DROP TABLE IF EXISTS `ürünler`;
CREATE TABLE `ürünler` (
  `ürün_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ürün_adı` varchar(45) CHARACTER SET latin1 NOT NULL,
  `stok` int(10) unsigned NOT NULL,
  `marka` varchar(45) CHARACTER SET latin1 NOT NULL,
  `fiyat` float NOT NULL,
  PRIMARY KEY (`ürün_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `ürünler`
--

/*!40000 ALTER TABLE `ürünler` DISABLE KEYS */;
INSERT INTO `ürünler` (`ürün_no`,`ürün_adı`,`stok`,`marka`,`fiyat`) VALUES 
 (1,'Kalem',30,'Mars',10),
 (2,'Kalem',50,'Lazer Ketil',5),
 (3,'Kalem',100,'Tarik',3),
 (4,'Silgi',50,'Mars',8),
 (5,'Silgi',60,'Lazer Ketil',6),
 (6,'Silgi',100,'Tarik',4),
 (7,'Lamba',18,'Mars',25),
 (8,'Lamba',50,'Ak',64),
 (9,'Defter',100,'Mars',21),
 (10,'Defter',87,'Tarik',18),
 (11,'Defter',100,'Tartal',15),
 (12,'Kalem Ucu',200,'Mars',6),
 (13,'Kalem Ucu',150,'Tarik',5),
 (14,'Kalem Ucu',150,'Tartal',8),
 (15,'Yapboz',15,'Mars',20),
 (16,'Yapboz',20,'Ak',48),
 (17,'Boya Kalemleri',30,'Mars',12),
 (18,'Boya Kalemleri',30,'Tarik',10),
 (19,'Resim Defteri',50,'Mars',15),
 (20,'Resim Defteri',100,'Tarik',12);
/*!40000 ALTER TABLE `ürünler` ENABLE KEYS */;


--
-- Definition of table `kargo şirketleri`
--

DROP TABLE IF EXISTS `kargo şirketleri`;
CREATE TABLE `kargo şirketleri` (
  `Şirket_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Şirket_ismi` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Tahmini_iletim_günü` int(10) unsigned NOT NULL,
  `Şirket_puanı` int(10) unsigned NOT NULL,
  `Mağaza_ile_ücretsiz_kargo_anlaşması` varchar(15) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`Şirket_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `kargo şirketleri`
--

/*!40000 ALTER TABLE `kargo şirketleri` DISABLE KEYS */;
INSERT INTO `kargo şirketleri` (`Şirket_no`,`Şirket_ismi`,`Tahmini_iletim_günü`,`Şirket_puanı`,`Mağaza_ile_ücretsiz_kargo_anlaşması`) VALUES 
 (1,'YarisKargo',1,8,'Var'),
 (2,'A Kargo',2,7,'Yok'),
 (3,'B Kargo',2,7,'Var'),
 (4,'C Kargo',1,9,'Yok'),
 (5,'D Kargo',0,10,'Var'),
 (6,'Mars Kargo',0,10,'Var'),
 (7,'Kargo T',3,6,'Yok'),
 (8,'E Kargo',1,8,'Var'),
 (9,'F Kargo',2,7,'Yok'),
 (10,'4 Kargo',1,8,'Var'),
 (11,'Jackson Kargo',1,9,'Var'),
 (12,'Koala Kargo',0,10,'Yok'),
 (13,'Kargo Koni',2,8,'Yok'),
 (14,'Yuksek Kargo',3,5,'Yok'),
 (15,'Alemdar Kargo',1,7,'Yok'),
 (16,'Tepe Kargo',2,8,'Var'),
 (17,'Test Kargo',4,4,'Yok'),
 (18,'Bilge Kargo',4,8,'Var'),
 (19,'Savas Kargo',1,7,'Yok'),
 (20,'Duman Kargo',0,10,'Var');
/*!40000 ALTER TABLE `kargo şirketleri` ENABLE KEYS */;


--
-- Definition of table `müşteriler`
--

DROP TABLE IF EXISTS `müşteriler`;
CREATE TABLE `müşteriler` (
  `müşteri_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `müşteri_adı` varchar(45) CHARACTER SET latin1 NOT NULL,
  `müşteri_soyadı` varchar(45) CHARACTER SET latin1 NOT NULL,
  `tel_no` varchar(45) CHARACTER SET latin1 NOT NULL,
  `adres` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`müşteri_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `müşteriler`
--

/*!40000 ALTER TABLE `müşteriler` DISABLE KEYS */;
INSERT INTO `müşteriler` (`müşteri_no`,`müşteri_adı`,`müşteri_soyadı`,`tel_no`,`adres`) VALUES 
 (1,'Ayla','Yakut','04516258789','Turp mah. 1542.cad no:2 D:12 Bursa'),
 (2,'Melih','Güngör','05421635452','Yayla mah. 1543.cad no:4 D:13 Eskisehir'),
 (3,'Ali ','Kilic','01546245846','Kazanova mah. 7445. cad. no:56 D:1 Isparta'),
 (4,'Veli','Kalkan','10542644987','Yunus mah. 7542.cad. no:14 D:5 Ankara'),
 (5,'Yavuz','Yasemin','00215265488','Tarik mah. 7541.cad no:51 D:14 Yalova'),
 (6,'Berat','Uguran','05465126887','Yavuz mah. 7854.cad no:17 D:5 Rize'),
 (7,'Yagmur','Ozturk','01851655618','Ileri mah. 7963.cad no:55 D:5 Izmir'),
 (8,'Eren','Alemdar','05314495447','Alemdar mah. 4861.cad. no:31 D:3 Bursa'),
 (9,'Talat','Kelamci','05562364616','Gozler mah. 8465.cad. no:51 D:1 Trabzon'),
 (10,'Aydin','Yakin','06541651684','Sevmek mah. 8415.cad. no:14 D:5 Rize'),
 (11,'Emine ','Tekil','05641651846','Izler mah. 7871.cad. no:51 D:16 Sanliurfa'),
 (12,'Inci','Izmir','05621654548','Ders mah. 1368. cad. no:15 D:2 Izmir'),
 (13,'Kemal','Berber','02165165489','Muzik mah. 8846. cad. no:20 D:6 Balikesir'),
 (14,'Sila','Kirmizi','05616519874','Kocabas mah. 7491.cad no:62 D:4 Kocaeli'),
 (15,'Ada','Akinci','56464116496','Istiklal mah. 4846.cad no:51 D:16 Isparta'),
 (16,'Mehmet','Vatan','19846518499','Yasin mah. 1876.cad no:72 D:21 Istanbul'),
 (17,'Yusuf','Kalem','48465319186','Yedi mah. 5486.cad. no:56 D:5 Adana'),
 (18,'Burak','Yazici','59865126164','Ordu mah. 4933.cad no:91 D:8 Ordu'),
 (19,'Caner','Polat','19684161844','Vesselam mah. 5494.cad no:15 D:10 Ardahan'),
 (20,'Bilgin','Dilek','41916161489','Uzgun mah. 1894.cad. no:71 D:4 Sivas');
/*!40000 ALTER TABLE `müşteriler` ENABLE KEYS */;


--
-- Definition of table `mağazalar`
--

DROP TABLE IF EXISTS `mağazalar`;
CREATE TABLE `mağazalar` (
  `Mağaza_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Mağaza_adı` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Bulunduğu_Şehir` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Kargo_şirketi_no` int(10) unsigned NOT NULL,
  `Mağaza_puanı` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Mağaza_no`),
  KEY `FK_mağazalar_1` (`Kargo_şirketi_no`),
  CONSTRAINT `FK_mağazalar_1` FOREIGN KEY (`Kargo_şirketi_no`) REFERENCES `kargo şirketleri` (`Şirket_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `mağazalar`
--

/*!40000 ALTER TABLE `mağazalar` DISABLE KEYS */;
INSERT INTO `mağazalar` (`Mağaza_no`,`Mağaza_adı`,`Bulunduğu_Şehir`,`Kargo_şirketi_no`,`Mağaza_puanı`) VALUES 
 (1,'Mars Kirtasiye ve Ofis','Isparta',6,10),
 (2,'Magaza A','Adana',12,7),
 (3,'B Magazasi','Trabzon',15,7),
 (4,'Magaza C','Rize',3,7),
 (5,'Magaza D','Istanbul',1,9),
 (6,'Sari Ofis','Edirne',17,8),
 (7,'Magaza F','Yozgat',19,8),
 (8,'G magazasi','Giresun',20,9),
 (9,'Magaza Yerli','Tokat',4,6),
 (10,'Magaza Koy','Sivas',14,8),
 (11,'Retis Ofiscilik','Antalya',7,10),
 (12,'Talip Kirtasiye','Yozgat',18,9),
 (13,'Yokyok Ofis','Kayseri',2,9),
 (14,'Portakal Kirtasiye','Kahramanmaras',6,10),
 (15,'Tarik Ofis','Hatay',16,8),
 (16,'Yapici Magaza','Antalya',8,10),
 (17,'Alban Ofis','Afyonkarahisar',13,10),
 (18,'Pilot Kalemcilik','Izmir',6,9),
 (19,'Notrema','Bursa',7,7),
 (20,'Alemdar Ofiscilik','Bursa',6,10);
/*!40000 ALTER TABLE `mağazalar` ENABLE KEYS */;


--
-- Definition of table `siparişler`
--

DROP TABLE IF EXISTS `siparişler`;
CREATE TABLE `siparişler` (
  `Sipariş_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Müşteri_no` int(10) unsigned NOT NULL,
  `Ürün_no` int(10) unsigned NOT NULL,
  `Mağaza_no` int(10) unsigned NOT NULL,
  `Ürün_adedi` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Sipariş_no`),
  KEY `FK_siparişler_1` (`Müşteri_no`),
  KEY `FK_siparişler_2` (`Ürün_no`),
  KEY `FK_siparişler_3` (`Mağaza_no`),
  CONSTRAINT `FK_siparişler_1` FOREIGN KEY (`Müşteri_no`) REFERENCES `müşteriler` (`müşteri_no`),
  CONSTRAINT `FK_siparişler_2` FOREIGN KEY (`Ürün_no`) REFERENCES `ürünler` (`ürün_no`),
  CONSTRAINT `FK_siparişler_3` FOREIGN KEY (`Mağaza_no`) REFERENCES `mağazalar` (`Mağaza_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `siparişler`
--

/*!40000 ALTER TABLE `siparişler` DISABLE KEYS */;
INSERT INTO `siparişler` (`Sipariş_no`,`Müşteri_no`,`Ürün_no`,`Mağaza_no`,`Ürün_adedi`) VALUES 
 (1,4,7,3,2),
 (2,6,6,9,1),
 (3,5,4,7,9),
 (4,1,2,8,9),
 (5,4,8,4,8),
 (6,15,8,20,8),
 (7,8,4,6,2),
 (8,3,6,4,7),
 (9,6,3,3,1),
 (10,8,4,1,6),
 (11,8,6,9,7),
 (12,19,19,10,9),
 (13,6,1,8,9),
 (14,6,1,1,19),
 (15,15,5,6,50),
 (16,6,18,20,15),
 (17,18,9,17,16),
 (18,11,12,16,17),
 (19,18,1,13,6),
 (20,1,1,1,1);
/*!40000 ALTER TABLE `siparişler` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
