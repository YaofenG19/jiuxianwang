/*
Navicat MySQL Data Transfer

Source Server         : yf19
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : yf19

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-20 09:07:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `uid` varchar(255) DEFAULT NULL,
  `gid` int(6) NOT NULL,
  `listImg` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `num` int(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `zid` int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`zid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('15811111111', '200', null, null, '1', null, '28');
INSERT INTO `car` VALUES ('13111111111', '210', null, null, '3', null, '2');
INSERT INTO `car` VALUES ('admin', '300', null, null, '35', null, '3');
INSERT INTO `car` VALUES ('admin', '206', null, null, '14', null, '4');
INSERT INTO `car` VALUES ('admin', '204', null, null, '2', null, '5');
INSERT INTO `car` VALUES ('15811111111', '201', null, null, '1', null, '27');
SET FOREIGN_KEY_CHECKS=1;
