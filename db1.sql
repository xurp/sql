/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : db1

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-05-17 14:53:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accesstime
-- ----------------------------
DROP TABLE IF EXISTS `accesstime`;
CREATE TABLE `accesstime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accesstime
-- ----------------------------

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sharding_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'leader us', '10000');

-- ----------------------------
-- Table structure for travelrecord
-- ----------------------------
DROP TABLE IF EXISTS `travelrecord`;
CREATE TABLE `travelrecord` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travelrecord
-- ----------------------------
INSERT INTO `travelrecord` VALUES ('1', 'hp');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'jack');
