/*
MySQL Data Transfer
Source Host: localhost
Source Database: btfans
Target Host: localhost
Target Database: btfans
Date: 2019/1/21 14:10:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `id` varchar(20) NOT NULL,
  `loginname` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '录密码登',
  `email` varchar(200) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL COMMENT '头像',
  `signature` varchar(255) DEFAULT NULL COMMENT '个人签名',
  `ifmember` varchar(2) DEFAULT NULL COMMENT '是否会员',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
