/*
 Navicat Premium Data Transfer

 Source Server         : lokal
 Source Server Type    : MySQL
 Source Server Version : 50620 (5.6.20)
 Source Host           : localhost:3306
 Source Schema         : toko_db

 Target Server Type    : MySQL
 Target Server Version : 50620 (5.6.20)
 File Encoding         : 65001

 Date: 20/05/2025 15:14:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pembelian
-- ----------------------------
DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE `pembelian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) NULL DEFAULT NULL,
  `jumlah` int(11) NULL DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `produk_id`(`produk_id`) USING BTREE,
  CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pembelian
-- ----------------------------

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES (1, 'Meja Kerja');
INSERT INTO `produk` VALUES (2, 'Kursi Kerja');
INSERT INTO `produk` VALUES (3, 'Sofa');
INSERT INTO `produk` VALUES (4, 'Kasur A');
INSERT INTO `produk` VALUES (5, 'Kasur B');
INSERT INTO `produk` VALUES (6, 'Kipas Angin');
INSERT INTO `produk` VALUES (7, 'Kulkas');
INSERT INTO `produk` VALUES (8, 'Android TV');
INSERT INTO `produk` VALUES (9, 'Mesin Cuci');
INSERT INTO `produk` VALUES (10, 'Meja Rias');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) NULL DEFAULT NULL,
  `jumlah` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `produk_id`(`produk_id`) USING BTREE,
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES (1, 1, 100);
INSERT INTO `stock` VALUES (2, 2, 100);
INSERT INTO `stock` VALUES (3, 3, 100);
INSERT INTO `stock` VALUES (4, 4, 100);
INSERT INTO `stock` VALUES (5, 5, 100);
INSERT INTO `stock` VALUES (6, 6, 100);
INSERT INTO `stock` VALUES (7, 7, 100);
INSERT INTO `stock` VALUES (8, 8, 100);
INSERT INTO `stock` VALUES (9, 9, 100);
INSERT INTO `stock` VALUES (10, 10, 100);

SET FOREIGN_KEY_CHECKS = 1;
