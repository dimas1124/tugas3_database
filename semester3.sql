-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.6-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- membuang struktur untuk table semester3.barang
CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(10) NOT NULL AUTO_INCREMENT,
  `merek` varchar(30) NOT NULL,
  `harga` int(8) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel semester3.barang: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` (`id_barang`, `merek`, `harga`) VALUES
	(1, 'oppo', 2000000),
	(2, 'oppo', 3123424),
	(3, '', 0),
	(4, 'samsung1', 45354),
	(5, 'oppo', 7777);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;

-- membuang struktur untuk table semester3.input_pembayaran
CREATE TABLE IF NOT EXISTS `input_pembayaran` (
  `barang_id` int(11) NOT NULL AUTO_INCREMENT,
  `Qty` int(20) NOT NULL,
  `harga` int(10) NOT NULL,
  PRIMARY KEY (`barang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel semester3.input_pembayaran: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `input_pembayaran` DISABLE KEYS */;
INSERT INTO `input_pembayaran` (`barang_id`, `Qty`, `harga`) VALUES
	(1, 1, 123),
	(2, 3, 300000);
/*!40000 ALTER TABLE `input_pembayaran` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
