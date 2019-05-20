/*
Navicat MySQL Data Transfer

Source Server         : yf19
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : yf19

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-20 09:07:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `listImg` varchar(255) NOT NULL,
  `detailsBigImg` varchar(255) DEFAULT NULL,
  `saleNum` int(8) NOT NULL,
  `goodsNum` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('199', '53°金质习酒500ml+酒器', '../img/listgood1.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '20', 'tz009439', '999.00');
INSERT INTO `list` VALUES ('200', '43°茅台飞天500ml', '../img/listgood2.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '40', 'tz009440', '108.00');
INSERT INTO `list` VALUES ('201', '51°茅台汉酱铂金蓝500ml', '../img/listgood3.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '60', 'tz009441', '598.00');
INSERT INTO `list` VALUES ('202', '53°习酒喜万家500ml+酒器', '../img/listgood4.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '80', 'tz009442', '199.00');
INSERT INTO `list` VALUES ('203', '53°银质习酒500ml+酒器', '../img/listgood5.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '100', 'tz009443', '1039.00');
INSERT INTO `list` VALUES ('204', '53°金质习酒501ml+酒器', '../img/listgood1.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '120', 'tz009444', '999.00');
INSERT INTO `list` VALUES ('205', '43°茅台飞天501ml', '../img/listgood2.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '140', 'tz009445', '108.00');
INSERT INTO `list` VALUES ('206', '51°茅台汉酱铂金蓝501ml', '../img/listgood3.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '160', 'tz009446', '598.00');
INSERT INTO `list` VALUES ('207', '53°习酒喜万家501ml+酒器', '../img/listgood4.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '180', 'tz009447', '199.00');
INSERT INTO `list` VALUES ('208', '53°银质习酒501ml+酒器', '../img/listgood5.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '200', 'tz009448', '1039.00');
INSERT INTO `list` VALUES ('209', '53°金质习酒502ml+酒器', '../img/listgood1.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '220', 'tz009449', '999.00');
INSERT INTO `list` VALUES ('210', '43°茅台飞天502ml', '../img/listgood2.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '240', 'tz009450', '108.00');
INSERT INTO `list` VALUES ('211', '51°茅台汉酱铂金蓝502ml', '../img/listgood3.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '260', 'tz009451', '598.00');
INSERT INTO `list` VALUES ('212', '53°习酒喜万家502ml+酒器', '../img/listgood4.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '280', 'tz009452', '199.00');
INSERT INTO `list` VALUES ('213', '53°银质习酒502ml+酒器', '../img/listgood5.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '300', 'tz009453', '1039.00');
INSERT INTO `list` VALUES ('214', '53°金质习酒503ml+酒器', '../img/listgood1.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '320', 'tz009454', '999.00');
INSERT INTO `list` VALUES ('215', '43°茅台飞天503ml', '../img/listgood2.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '340', 'tz009455', '108.00');
INSERT INTO `list` VALUES ('216', '51°茅台汉酱铂金蓝503ml', '../img/listgood3.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '360', 'tz009456', '598.00');
INSERT INTO `list` VALUES ('217', '53°习酒喜万家503ml+酒器', '../img/listgood4.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '380', 'tz009457', '199.00');
INSERT INTO `list` VALUES ('218', '53°银质习酒503ml+酒器', '../img/listgood5.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '400', 'tz009458', '1039.00');
INSERT INTO `list` VALUES ('219', '53°金质习酒504ml+酒器', '../img/listgood1.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '420', 'tz009459', '999.00');
INSERT INTO `list` VALUES ('220', '43°茅台飞天504ml', '../img/listgood2.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '440', 'tz009460', '108.00');
INSERT INTO `list` VALUES ('221', '51°茅台汉酱铂金蓝504ml', '../img/listgood3.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '460', 'tz009461', '598.00');
INSERT INTO `list` VALUES ('222', '53°习酒喜万家504ml+酒器', '../img/listgood4.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '480', 'tz009462', '199.00');
INSERT INTO `list` VALUES ('223', '53°银质习酒504ml+酒器', '../img/listgood5.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '500', 'tz009463', '1039.00');
INSERT INTO `list` VALUES ('224', '53°金质习酒505ml+酒器', '../img/listgood1.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '520', 'tz009464', '999.00');
INSERT INTO `list` VALUES ('225', '43°茅台飞天505ml', '../img/listgood2.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '540', 'tz009465', '108.00');
INSERT INTO `list` VALUES ('226', '51°茅台汉酱铂金蓝505ml', '../img/listgood3.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '560', 'tz009466', '598.00');
INSERT INTO `list` VALUES ('227', '53°习酒喜万家505ml+酒器', '../img/listgood4.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '580', 'tz009467', '199.00');
INSERT INTO `list` VALUES ('228', '53°银质习酒505ml+酒器', '../img/listgood5.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '600', 'tz009468', '1039.00');
INSERT INTO `list` VALUES ('229', '53°金质习酒506ml+酒器', '../img/listgood1.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '620', 'tz009469', '999.00');
INSERT INTO `list` VALUES ('230', '43°茅台飞天506ml', '../img/listgood2.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '640', 'tz009470', '108.00');
INSERT INTO `list` VALUES ('231', '51°茅台汉酱铂金蓝506ml', '../img/listgood3.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '660', 'tz009471', '598.00');
INSERT INTO `list` VALUES ('232', '53°习酒喜万家506ml+酒器', '../img/listgood4.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '680', 'tz009472', '199.00');
INSERT INTO `list` VALUES ('233', '53°银质习酒506ml+酒器', '../img/listgood5.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '700', 'tz009473', '1039.00');
INSERT INTO `list` VALUES ('234', '53°金质习酒507ml+酒器', '../img/listgood1.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '720', 'tz009474', '999.00');
INSERT INTO `list` VALUES ('235', '43°茅台飞天507ml', '../img/listgood2.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '740', 'tz009475', '108.00');
INSERT INTO `list` VALUES ('236', '51°茅台汉酱铂金蓝507ml', '../img/listgood3.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '760', 'tz009476', '598.00');
INSERT INTO `list` VALUES ('237', '53°习酒喜万家507ml+酒器', '../img/listgood4.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '780', 'tz009477', '199.00');
INSERT INTO `list` VALUES ('238', '53°银质习酒507ml+酒器', '../img/listgood5.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '800', 'tz009478', '1039.00');
INSERT INTO `list` VALUES ('239', '53°金质习酒508ml+酒器', '../img/listgood1.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '820', 'tz009479', '999.00');
INSERT INTO `list` VALUES ('240', '43°茅台飞天508ml', '../img/listgood2.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '840', 'tz009480', '108.00');
INSERT INTO `list` VALUES ('241', '51°茅台汉酱铂金蓝508ml', '../img/listgood3.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '860', 'tz009481', '598.00');
INSERT INTO `list` VALUES ('242', '53°习酒喜万家508ml+酒器', '../img/listgood4.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '880', 'tz009482', '199.00');
INSERT INTO `list` VALUES ('243', '53°银质习酒508ml+酒器', '../img/listgood5.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '900', 'tz009483', '1039.00');
INSERT INTO `list` VALUES ('244', '53°金质习酒509ml+酒器', '../img/listgood1.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '920', 'tz009484', '999.00');
INSERT INTO `list` VALUES ('245', '43°茅台飞天509ml', '../img/listgood2.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '940', 'tz009485', '108.00');
INSERT INTO `list` VALUES ('246', '51°茅台汉酱铂金蓝509ml', '../img/listgood3.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '960', 'tz009486', '598.00');
INSERT INTO `list` VALUES ('247', '53°习酒喜万家509ml+酒器', '../img/listgood4.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '980', 'tz009487', '199.00');
INSERT INTO `list` VALUES ('248', '53°银质习酒509ml+酒器', '../img/listgood5.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1000', 'tz009488', '1039.00');
INSERT INTO `list` VALUES ('249', '53°金质习酒510ml+酒器', '../img/listgood1.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1020', 'tz009489', '999.00');
INSERT INTO `list` VALUES ('250', '43°茅台飞天510ml', '../img/listgood2.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1040', 'tz009490', '108.00');
INSERT INTO `list` VALUES ('251', '51°茅台汉酱铂金蓝510ml', '../img/listgood3.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1060', 'tz009491', '598.00');
INSERT INTO `list` VALUES ('252', '53°习酒喜万家510ml+酒器', '../img/listgood4.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1080', 'tz009492', '199.00');
INSERT INTO `list` VALUES ('253', '53°银质习酒510ml+酒器', '../img/listgood5.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1100', 'tz009493', '1039.00');
INSERT INTO `list` VALUES ('254', '53°金质习酒511ml+酒器', '../img/listgood1.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1120', 'tz009494', '999.00');
INSERT INTO `list` VALUES ('255', '43°茅台飞天511ml', '../img/listgood2.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1140', 'tz009495', '108.00');
INSERT INTO `list` VALUES ('256', '51°茅台汉酱铂金蓝511ml', '../img/listgood3.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1160', 'tz009496', '598.00');
INSERT INTO `list` VALUES ('257', '53°习酒喜万家511ml+酒器', '../img/listgood4.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1180', 'tz009497', '199.00');
INSERT INTO `list` VALUES ('258', '53°银质习酒511ml+酒器', '../img/listgood5.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1200', 'tz009498', '1039.00');
INSERT INTO `list` VALUES ('259', '53°金质习酒512ml+酒器', '../img/listgood1.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1220', 'tz009499', '999.00');
INSERT INTO `list` VALUES ('260', '43°茅台飞天512ml', '../img/listgood2.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1240', 'tz009500', '108.00');
INSERT INTO `list` VALUES ('261', '51°茅台汉酱铂金蓝512ml', '../img/listgood3.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1260', 'tz009501', '598.00');
INSERT INTO `list` VALUES ('262', '53°习酒喜万家512ml+酒器', '../img/listgood4.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1280', 'tz009502', '199.00');
INSERT INTO `list` VALUES ('263', '53°银质习酒512ml+酒器', '../img/listgood5.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1300', 'tz009503', '1039.00');
INSERT INTO `list` VALUES ('264', '53°金质习酒513ml+酒器', '../img/listgood1.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1320', 'tz009504', '999.00');
INSERT INTO `list` VALUES ('265', '43°茅台飞天513ml', '../img/listgood2.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1340', 'tz009505', '108.00');
INSERT INTO `list` VALUES ('266', '51°茅台汉酱铂金蓝513ml', '../img/listgood3.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1360', 'tz009506', '598.00');
INSERT INTO `list` VALUES ('267', '53°习酒喜万家513ml+酒器', '../img/listgood4.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1380', 'tz009507', '199.00');
INSERT INTO `list` VALUES ('268', '53°银质习酒513ml+酒器', '../img/listgood5.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1400', 'tz009508', '1039.00');
INSERT INTO `list` VALUES ('269', '53°金质习酒514ml+酒器', '../img/listgood1.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1420', 'tz009509', '999.00');
INSERT INTO `list` VALUES ('270', '43°茅台飞天514ml', '../img/listgood2.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1440', 'tz009510', '108.00');
INSERT INTO `list` VALUES ('271', '51°茅台汉酱铂金蓝514ml', '../img/listgood3.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1460', 'tz009511', '598.00');
INSERT INTO `list` VALUES ('272', '53°习酒喜万家514ml+酒器', '../img/listgood4.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1480', 'tz009512', '199.00');
INSERT INTO `list` VALUES ('273', '53°银质习酒514ml+酒器', '../img/listgood5.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1500', 'tz009513', '1039.00');
INSERT INTO `list` VALUES ('274', '53°金质习酒515ml+酒器', '../img/listgood1.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1520', 'tz009514', '999.00');
INSERT INTO `list` VALUES ('275', '43°茅台飞天515ml', '../img/listgood2.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1540', 'tz009515', '108.00');
INSERT INTO `list` VALUES ('276', '51°茅台汉酱铂金蓝515ml', '../img/listgood3.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1560', 'tz009516', '598.00');
INSERT INTO `list` VALUES ('277', '53°习酒喜万家515ml+酒器', '../img/listgood4.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1580', 'tz009517', '199.00');
INSERT INTO `list` VALUES ('278', '53°银质习酒515ml+酒器', '../img/listgood5.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1600', 'tz009518', '1039.00');
INSERT INTO `list` VALUES ('279', '53°金质习酒516ml+酒器', '../img/listgood1.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1620', 'tz009519', '999.00');
INSERT INTO `list` VALUES ('280', '43°茅台飞天516ml', '../img/listgood2.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1640', 'tz009520', '108.00');
INSERT INTO `list` VALUES ('281', '51°茅台汉酱铂金蓝516ml', '../img/listgood3.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1660', 'tz009521', '598.00');
INSERT INTO `list` VALUES ('282', '53°习酒喜万家516ml+酒器', '../img/listgood4.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1680', 'tz009522', '199.00');
INSERT INTO `list` VALUES ('283', '53°银质习酒516ml+酒器', '../img/listgood5.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1700', 'tz009523', '1039.00');
INSERT INTO `list` VALUES ('284', '53°金质习酒517ml+酒器', '../img/listgood1.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1720', 'tz009524', '999.00');
INSERT INTO `list` VALUES ('285', '43°茅台飞天517ml', '../img/listgood2.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1740', 'tz009525', '108.00');
INSERT INTO `list` VALUES ('286', '51°茅台汉酱铂金蓝517ml', '../img/listgood3.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1760', 'tz009526', '598.00');
INSERT INTO `list` VALUES ('287', '53°习酒喜万家517ml+酒器', '../img/listgood4.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1780', 'tz009527', '199.00');
INSERT INTO `list` VALUES ('288', '53°银质习酒517ml+酒器', '../img/listgood5.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1800', 'tz009528', '1039.00');
INSERT INTO `list` VALUES ('289', '53°金质习酒518ml+酒器', '../img/listgood1.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1820', 'tz009529', '999.00');
INSERT INTO `list` VALUES ('290', '43°茅台飞天518ml', '../img/listgood2.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1840', 'tz009530', '108.00');
INSERT INTO `list` VALUES ('291', '51°茅台汉酱铂金蓝518ml', '../img/listgood3.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1860', 'tz009531', '598.00');
INSERT INTO `list` VALUES ('292', '53°习酒喜万家518ml+酒器', '../img/listgood4.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1880', 'tz009532', '199.00');
INSERT INTO `list` VALUES ('293', '53°银质习酒518ml+酒器', '../img/listgood5.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1900', 'tz009533', '1039.00');
INSERT INTO `list` VALUES ('294', '53°金质习酒519ml+酒器', '../img/listgood1.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1920', 'tz009534', '999.00');
INSERT INTO `list` VALUES ('295', '43°茅台飞天519ml', '../img/listgood2.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1940', 'tz009535', '108.00');
INSERT INTO `list` VALUES ('296', '51°茅台汉酱铂金蓝519ml', '../img/listgood3.jpg', '../img/detailBImgB_1.jpg&../img/detailBImgB_2.jpg&../img/detailBImgB_3.jpg&../img/detailBImgB_4.jpg&../img/detailBImgB_5.jpg', '1960', 'tz009536', '598.00');
INSERT INTO `list` VALUES ('297', '53°习酒喜万家519ml+酒器', '../img/listgood4.jpg', '../img/detailBImgA_1.jpg&../img/detailBImgA_2.jpg&../img/detailBImgA_3.jpg&../img/detailBImgA_4.jpg&../img/detailBImgB_6.jpg', '1980', 'tz009537', '199.00');
SET FOREIGN_KEY_CHECKS=1;
