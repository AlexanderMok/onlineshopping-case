/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : onlineshopping

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2016-01-19 19:47:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_item`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_item`;
CREATE TABLE `tbl_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `itemtype` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `itempic` varchar(255) DEFAULT NULL,
  `itemdesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_item
-- ----------------------------
INSERT INTO `tbl_item` VALUES ('1', 'TV', '3', '2', '1000', 'upload/nopic.jpg', null);
INSERT INTO `tbl_item` VALUES ('2', 'aaa', '5', '1', '1000', 'upload/nopic.jpg', 'IBM台式机');
INSERT INTO `tbl_item` VALUES ('3', '风衣', '3', '1', '99', 'upload/nopic.jpg', 'IBM台式机');
INSERT INTO `tbl_item` VALUES ('4', '苹果电脑', '4', '1', '10000', 'upload/nopic.jpg', 'IBM台式机');
INSERT INTO `tbl_item` VALUES ('6', 'IBM台式机', '4', '1', '10000', 'upload/nopic.jpg', 'IBM台式机');
INSERT INTO `tbl_item` VALUES ('7', 'IBM台式机', '4', '1', '10000', 'upload/nopic.jpg', 'IBM台式机');
INSERT INTO `tbl_item` VALUES ('8', '中文', '4', '1', '10000', 'upload/nopic.jpg', 'IBM台式机');
INSERT INTO `tbl_item` VALUES ('9', '纽曼D618老人手机手写触屏直板按键大屏大声老年手机', '4', '1', '108', 'upload/nopic.jpg', null);
INSERT INTO `tbl_item` VALUES ('10', 'HP/惠普 ENVY15-AE125TX I7-6500U IPS屏 全金属游戏笔记本 正品 ', '4', '1', '108', 'upload/nopic.jpg', '本店出售的均全新未开封正品行货，享受国家三包，全国联保。我们公司有天猫，淘宝，国美等网上店铺和上海实体店铺。我们以低廉的价格，优质的服务，完美的售后给您带来极致的购物体验。我们承诺绝不出售样机、翻新机、二手机。欢迎大家选购。');
INSERT INTO `tbl_item` VALUES ('11', 'kkk', '3', '8', '405', 'upload/nopic.jpg', 'kkkkkkkkk');
INSERT INTO `tbl_item` VALUES ('12', 'kkk', '3', '666', '666', ',upload/itemPic/200x200.jpg', '<p>6666</p>\r\n');
INSERT INTO `tbl_item` VALUES ('13', '男士衬衫', '1', '999', '999', ',upload/itemPic/120x600.jpg,upload/itemPic/120x270.jpg', '<p>999</p>\r\n');

-- ----------------------------
-- Table structure for `tbl_item_cart`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_item_cart`;
CREATE TABLE `tbl_item_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `buytime` varchar(50) NOT NULL,
  `buytotal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_item_cart
-- ----------------------------
INSERT INTO `tbl_item_cart` VALUES ('3', '2', '4', '苹果电脑', '2015-11-30 08:57:43', '1');
INSERT INTO `tbl_item_cart` VALUES ('4', '2', '9', '纽曼D618老人手机手写触屏直板按键大屏大声老年手机', '2015-11-30 13:50:58', '1');
INSERT INTO `tbl_item_cart` VALUES ('11', '4', '4', '苹果电脑', '2015-11-30 15:06:47', '1');
INSERT INTO `tbl_item_cart` VALUES ('12', '4', '8', '中文', '2015-11-30 15:14:16', '1');

-- ----------------------------
-- Table structure for `tbl_item_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_item_type`;
CREATE TABLE `tbl_item_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `typename` varchar(30) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_item_type
-- ----------------------------
INSERT INTO `tbl_item_type` VALUES ('1', '0', '服装类', null);
INSERT INTO `tbl_item_type` VALUES ('2', '0', '电子类', null);
INSERT INTO `tbl_item_type` VALUES ('3', '1', '男装', null);
INSERT INTO `tbl_item_type` VALUES ('4', '2', '计算机', null);
INSERT INTO `tbl_item_type` VALUES ('5', '4', '笔记本电脑', null);
INSERT INTO `tbl_item_type` VALUES ('6', '3', '男士上衣', null);
INSERT INTO `tbl_item_type` VALUES ('7', '0', '家具类', null);
INSERT INTO `tbl_item_type` VALUES ('8', '7', '书架', null);
INSERT INTO `tbl_item_type` VALUES ('9', '4', '平板电脑', null);
INSERT INTO `tbl_item_type` VALUES ('10', '0', 'ddd', null);
INSERT INTO `tbl_item_type` VALUES ('12', '2', '华硕PC', '华硕PC');
INSERT INTO `tbl_item_type` VALUES ('13', '2', '宏基电脑', '宏基电脑');
INSERT INTO `tbl_item_type` VALUES ('14', '1', '女装', '女装');

-- ----------------------------
-- Table structure for `tbl_order`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `buytime` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('3', '1', '8', '2015-11-30 09:47:27', '1', '1');
INSERT INTO `tbl_order` VALUES ('4', '1', '4', '2015-11-30 09:47:27', '1', '1');
INSERT INTO `tbl_order` VALUES ('5', '1', '8', '2015-11-30 10:54:57', '1', '0');
INSERT INTO `tbl_order` VALUES ('6', '1', '4', '2015-11-30 10:54:57', '1', '0');
INSERT INTO `tbl_order` VALUES ('7', '2', '4', '2015-11-30 01:51:17', '1', '1');
INSERT INTO `tbl_order` VALUES ('8', '2', '9', '2015-11-30 01:51:17', '1', '1');
INSERT INTO `tbl_order` VALUES ('9', '1', '8', '2015-11-30 02:47:28', '1', '0');
INSERT INTO `tbl_order` VALUES ('10', '1', '4', '2015-11-30 03:09:36', '1', '0');
INSERT INTO `tbl_order` VALUES ('11', '1', '4', '2015-11-30 03:10:29', '1', '0');
INSERT INTO `tbl_order` VALUES ('12', null, null, '2016-01-19 15:54:51', null, '0');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'admin', 'admin', '3', '超级管理员', null, null, '南通科教城x-x-x');
INSERT INTO `tbl_user` VALUES ('2', 'James', '1234', '2', '普通会员', null, null, '南通科教城x-x-x');
INSERT INTO `tbl_user` VALUES ('3', 'Tom', '1234', '1', '普通管理员', null, null, null);
INSERT INTO `tbl_user` VALUES ('4', 'Jay', '1234', '2', '普通会员', null, null, null);
INSERT INTO `tbl_user` VALUES ('5', 'Kate', '1234', '2', '普通会员', null, null, null);
INSERT INTO `tbl_user` VALUES ('6', 'Pike', '1234', '1', '普通管理员', null, null, null);
INSERT INTO `tbl_user` VALUES ('7', 'Mike', '1234', '1', '普通会员', '1234', '123@12.com', '1234');
INSERT INTO `tbl_user` VALUES ('12', 'Luke', '1234', '2', '普通会员', '1234', '123@dsc.com', '1234');

-- ----------------------------
-- Table structure for `tbl_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES ('1', '普通管理员');
INSERT INTO `tbl_user_role` VALUES ('2', '普通会员');
INSERT INTO `tbl_user_role` VALUES ('3', '超级管理员');
