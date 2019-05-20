/*
Navicat MySQL Data Transfer

Source Server         : yf19
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : yf19

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-20 09:07:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for reg
-- ----------------------------
DROP TABLE IF EXISTS `reg`;
CREATE TABLE `reg` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reg
-- ----------------------------
INSERT INTO `reg` VALUES ('1', 'admin', 'admin');
INSERT INTO `reg` VALUES ('2', '15879159894', '11111111');
INSERT INTO `reg` VALUES ('3', '13111111111', '11111111');
INSERT INTO `reg` VALUES ('4', '13111111111', '11111111');
INSERT INTO `reg` VALUES ('5', '13111111111', '11111111');
INSERT INTO `reg` VALUES ('6', '13311111111', '11111111');
INSERT INTO `reg` VALUES ('8', '15811111111', '11111111');
SET FOREIGN_KEY_CHECKS=1;
