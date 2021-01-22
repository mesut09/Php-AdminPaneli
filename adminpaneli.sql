-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 22 Oca 2021, 19:39:03
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `adminpaneli`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

DROP TABLE IF EXISTS `ayarlar`;
CREATE TABLE IF NOT EXISTS `ayarlar` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(160) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8_turkish_ci DEFAULT NULL,
  `calismasaatleri` varchar(350) COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` varchar(350) COLLATE utf8_turkish_ci NOT NULL,
  `instagram` varchar(350) COLLATE utf8_turkish_ci NOT NULL,
  `linkedin` int(11) NOT NULL,
  `google` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`ID`, `baslik`, `anahtar`, `aciklama`, `telefon`, `mail`, `adres`, `fax`, `url`, `calismasaatleri`, `facebook`, `instagram`, `linkedin`, `google`) VALUES
(1, 'Bilge Elektronik', 'Admin Paneli, Php ile Admin Paneli', 'Panel', '5555555555', 'örnek@hotmail.com', 'Nazilli/AYDIN', '5555555555', 'http://localhost/adminpaneli/', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calismasaatleri`
--

DROP TABLE IF EXISTS `calismasaatleri`;
CREATE TABLE IF NOT EXISTS `calismasaatleri` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `metin` text COLLATE utf8_turkish_ci,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `sirano` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `calismasaatleri`
--

INSERT INTO `calismasaatleri` (`ID`, `baslik`, `seflink`, `kategori`, `metin`, `resim`, `anahtar`, `description`, `durum`, `sirano`, `tarih`) VALUES
(1, 'Çalışma Saatleri', 'calisma-saatleri', 9, '<p>PZT -CMT : 08:00- 20:00</p>', '16009f55e67ae2.png', 'Saat', NULL, 1, NULL, '2021-01-21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `giderler`
--

DROP TABLE IF EXISTS `giderler`;
CREATE TABLE IF NOT EXISTS `giderler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `metin` text COLLATE utf8_turkish_ci,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `sirano` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetler`
--

DROP TABLE IF EXISTS `hizmetler`;
CREATE TABLE IF NOT EXISTS `hizmetler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `metin` text COLLATE utf8_turkish_ci,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `sirano` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

DROP TABLE IF EXISTS `kategoriler`;
CREATE TABLE IF NOT EXISTS `kategoriler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tablo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `sirano` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`ID`, `baslik`, `seflink`, `tablo`, `anahtar`, `description`, `durum`, `sirano`, `tarih`) VALUES
(1, 'Kurumsal', 'kurumsal', 'modul', NULL, NULL, 1, NULL, '2020-01-04'),
(2, 'Ürünler', 'urunler', 'modul', NULL, NULL, 1, NULL, '2020-01-14'),
(3, 'Hizmetler', 'hizmetler', 'modul', NULL, NULL, 1, NULL, '2020-01-14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

DROP TABLE IF EXISTS `kullanicilar`;
CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(120) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` varchar(120) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`ID`, `adsoyad`, `kullanici`, `sifre`, `mail`, `tarih`) VALUES
(1, 'Yunus BİLGE', 'root', '63a9f0ea7bb98050796b649e85481845', 'örnek@hotmail.com', '2020-02-02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kurumsal`
--

DROP TABLE IF EXISTS `kurumsal`;
CREATE TABLE IF NOT EXISTS `kurumsal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `metin` text COLLATE utf8_turkish_ci,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `moduller`
--

DROP TABLE IF EXISTS `moduller`;
CREATE TABLE IF NOT EXISTS `moduller` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tablo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `moduller`
--

INSERT INTO `moduller` (`ID`, `baslik`, `tablo`, `durum`, `tarih`) VALUES
(1, 'Kurumsal', 'kurumsal', 1, '2020-01-04'),
(2, 'Ürünler', 'urunler', 1, '2020-01-14'),
(3, 'Hizmetler', 'hizmetler', 1, '2020-01-14'),
(9, 'Çalışma Saatleri', 'calismasaatleri', 1, '2021-01-21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

DROP TABLE IF EXISTS `urunler`;
CREATE TABLE IF NOT EXISTS `urunler` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seflink` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `metin` text COLLATE utf8_turkish_ci,
  `resim` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `anahtar` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(5) DEFAULT NULL,
  `sirano` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`ID`, `baslik`, `seflink`, `kategori`, `metin`, `resim`, `anahtar`, `description`, `durum`, `sirano`, `tarih`) VALUES
(1, 'asdf', 'asdf', 2, '<p>asdf</p>', '1600b068a7cc7d.png', 'asdf', NULL, 1, NULL, '2021-01-22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ziyaretciler`
--

DROP TABLE IF EXISTS `ziyaretciler`;
CREATE TABLE IF NOT EXISTS `ziyaretciler` (
  `ID` double NOT NULL AUTO_INCREMENT,
  `IP` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tekil` int(11) DEFAULT NULL,
  `cogul` int(11) DEFAULT NULL,
  `tarayici` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `xr` int(11) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ziyarettarayici`
--

DROP TABLE IF EXISTS `ziyarettarayici`;
CREATE TABLE IF NOT EXISTS `ziyarettarayici` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tarayici` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ziyaret` double NOT NULL,
  `hiz` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ziyarettarayici`
--

INSERT INTO `ziyarettarayici` (`ID`, `tarayici`, `ziyaret`, `hiz`) VALUES
(1, 'chrome', 1, NULL),
(2, 'explorer', 1, NULL),
(3, 'firefox', 1, NULL),
(4, 'diger', 1, NULL),
(5, 'sayfahizi', 4, '2.86');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
