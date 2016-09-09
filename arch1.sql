/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : arch1

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-09-09 16:09:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_cart
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE `tbl_cart` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `customerUuid` int(11) DEFAULT NULL,
  `goodsUuid` int(11) DEFAULT NULL,
  `buyNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cart
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `showName` varchar(100) DEFAULT NULL,
  `trueName` varchar(100) DEFAULT NULL,
  `registerTime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES ('1', 'c1', '1', 'c1s', 'c1t', '11');

-- ----------------------------
-- Table structure for tbl_file
-- ----------------------------
DROP TABLE IF EXISTS `tbl_file`;
CREATE TABLE `tbl_file` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(1000) DEFAULT NULL,
  `remotePaths` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_file
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_goods
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods`;
CREATE TABLE `tbl_goods` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `imgPath` varchar(500) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `customerUuid` int(11) DEFAULT NULL,
  `orderTime` varchar(100) DEFAULT NULL,
  `totalMoney` float DEFAULT NULL,
  `saveMoney` float DEFAULT NULL,
  `state` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('1', '1', '1', '1', null, '1');

-- ----------------------------
-- Table structure for tbl_orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_orderdetail`;
CREATE TABLE `tbl_orderdetail` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `orderUuid` int(11) DEFAULT NULL,
  `goodsUuid` int(11) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `money` float DEFAULT NULL,
  `saveMoney` float DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_orderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_store
-- ----------------------------
DROP TABLE IF EXISTS `tbl_store`;
CREATE TABLE `tbl_store` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsUuid` int(11) DEFAULT NULL,
  `storeNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_store
-- ----------------------------
INSERT INTO `tbl_store` VALUES ('1', '11111', '10');
