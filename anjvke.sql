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

 Date: 30/03/2019 12:15:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for anjvke
-- ----------------------------
DROP TABLE IF EXISTS `anjvke`;
CREATE TABLE `anjvke`  (
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
  INDEX `village`(`village`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
