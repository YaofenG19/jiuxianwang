/*
Navicat MySQL Data Transfer

Source Server         : yf19
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : yf19

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-20 09:07:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sylist
-- ----------------------------
DROP TABLE IF EXISTS `sylist`;
CREATE TABLE `sylist` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `price` float(10,0) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sylist
-- ----------------------------
INSERT INTO `sylist` VALUES ('1', '法国拉菲传奇2016波尔多法定产区红葡萄酒750ml（6瓶装）', 'img/spiritListPic1.jpg', '379');
INSERT INTO `sylist` VALUES ('2', '法国(原瓶进口)法圣古堡圣威骑士干红葡萄酒750ml(6瓶装)', 'img/spiritListPic2.jpg', '99');
INSERT INTO `sylist` VALUES ('3', '西班牙诺爱德金标干红葡萄酒750ml *4+西班牙诺爱德紫标干红葡萄酒750ml *2', 'img/spiritListPic3.jpg', '199');
INSERT INTO `sylist` VALUES ('4', '澳大利亚杰卡斯经典系列西拉·加本纳干红葡萄酒750ml（双瓶装） +出游大礼包+小酒187ml', 'img/spiritListPic4.jpg', '158');
INSERT INTO `sylist` VALUES ('5', '澳大利亚奔富BIN2西拉马塔罗干红葡萄酒750ml', 'img/spiritListPic5.jpg', '199');
INSERT INTO `sylist` VALUES ('6', '西班牙安徒生·小天鹅干红葡萄酒750ml（6瓶装）', 'img/spiritListPic6.jpg', '99');
INSERT INTO `sylist` VALUES ('7', '澳大利亚杰卡斯经典系列霞多丽干白葡萄酒750ml（双瓶装）', 'img/spiritListPic7.jpg', '139');
INSERT INTO `sylist` VALUES ('8', '澳大利亚小海龟西拉红葡萄酒750ml（6瓶装）', 'img/spiritListPic8.jpg', '499');
INSERT INTO `sylist` VALUES ('9', '拉斐庄园2009珍酿原酒进口红酒珍藏干红葡萄酒红酒整箱木箱装红酒礼盒750ml*6', 'img/spiritListPic9.jpg', '298');
INSERT INTO `sylist` VALUES ('10', '六国联盟葡萄酒套装（法国、意大利、智利、西班牙、澳大利亚、中国）', 'img/spiritListPic10.jpg', '219');
INSERT INTO `sylist` VALUES ('11', '53°国台·品鉴15 500ml', 'img/spiritListPic11.jpg', '796');
INSERT INTO `sylist` VALUES ('12', '53°黄盖玻瓶汾酒475ml 3瓶装', 'img/spiritListPic12.jpg', '119');
INSERT INTO `sylist` VALUES ('13', '53°汾酒集团青瓷一坛香1500ml（双瓶装）', 'img/spiritListPic13.jpg', '276');
INSERT INTO `sylist` VALUES ('14', '53°茅台王子酒 酱色王子 酱品 礼盒 整箱装白酒500ml*6瓶', 'img/spiritListPic14.jpg', '1608');
INSERT INTO `sylist` VALUES ('15', '（限时立减）53°汾酒（出口汾酒）瓷瓶 杏花村白酒 500ml（12瓶装）', 'img/spiritListPic15.jpg', '728');
INSERT INTO `sylist` VALUES ('16', '52°洋河特曲（珠光金）500ml（双瓶装）+景德镇青瓷酒具', 'img/spiritListPic16.jpg', '279');
INSERT INTO `sylist` VALUES ('17', '52°五粮液股份公司富贵天下金装500ml*2', 'img/spiritListPic17.jpg', '148');
INSERT INTO `sylist` VALUES ('18', '54°老贵董酒500ml（6瓶装）+董酒烟灰缸（乐享）', 'img/spiritListPic18.jpg', '369');
INSERT INTO `sylist` VALUES ('19', '53°茅台猪年纪念酒500ml', 'img/spiritListPic19.jpg', '2999');
INSERT INTO `sylist` VALUES ('20', '52度西凤酒 窖酒壹号 浓香型白酒送礼 婚宴酒 整箱500ml（6瓶）', 'img/spiritListPic20.jpg', '388');
SET FOREIGN_KEY_CHECKS=1;
