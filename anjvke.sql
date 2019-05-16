/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 16/05/2019 15:58:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for anjvke_changbei
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_changbei`;
CREATE TABLE `anjvke_changbei`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2408 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_donghu
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_donghu`;
CREATE TABLE `anjvke_donghu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23979 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_gaoxinqu
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_gaoxinqu`;
CREATE TABLE `anjvke_gaoxinqu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29632 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_honggutan
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_honggutan`;
CREATE TABLE `anjvke_honggutan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26055 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_jingkaiqu
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_jingkaiqu`;
CREATE TABLE `anjvke_jingkaiqu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19200 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_jinxian
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_jinxian`;
CREATE TABLE `anjvke_jinxian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4846 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_qingshanhu
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_qingshanhu`;
CREATE TABLE `anjvke_qingshanhu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29416 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_qingyunpu
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_qingyunpu`;
CREATE TABLE `anjvke_qingyunpu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24590 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_query
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_query`;
CREATE TABLE `anjvke_query`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sql` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `function` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_wanli
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_wanli`;
CREATE TABLE `anjvke_wanli`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20566 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_xihu
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_xihu`;
CREATE TABLE `anjvke_xihu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24540 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anjvke_xinjian
-- ----------------------------
DROP TABLE IF EXISTS `anjvke_xinjian`;
CREATE TABLE `anjvke_xinjian`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `houseType` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '户型',
  `size` int(10) DEFAULT NULL COMMENT '大小 单位：m²',
  `height` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼高',
  `buildYear` year DEFAULT NULL COMMENT '建筑年代',
  `totalPrice` decimal(10, 2) DEFAULT NULL COMMENT '总价 单位：万',
  `price` int(10) DEFAULT NULL COMMENT '单价 单位：元/m²',
  `createTime` date DEFAULT NULL COMMENT '存储时间',
  `heightNumber` tinyint(2) DEFAULT NULL COMMENT '楼层高度',
  `village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小区',
  `streetName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '街道名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `size`(`size`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `village`(`village`) USING BTREE,
  INDEX `housetype`(`houseType`) USING BTREE,
  INDEX `buildyear`(`buildYear`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24591 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
