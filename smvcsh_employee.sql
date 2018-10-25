/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : smvcsh_employee

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-02-04 09:22:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` varchar(32) NOT NULL,
  `name` varchar(99) DEFAULT NULL,
  `idCard` varchar(99) DEFAULT NULL,
  `phone` varchar(99) DEFAULT NULL,
  `address` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', 'sam', '640', '1820', '黄河');
INSERT INTO `person` VALUES ('40288227593f824c01593f82a2b50000', '我的', '水电费', '是', '第三方第三方');
