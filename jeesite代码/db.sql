/*
MySQL Data Transfer
Source Host: localhost
Source Database: btfans
Target Host: localhost
Target Database: btfans
Date: 2019/1/22 21:09:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for fans_class_article
-- ----------------------------
CREATE TABLE `fans_class_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `aname` char(64) DEFAULT NULL COMMENT '文章名称',
  `adate` timestamp NULL DEFAULT NULL COMMENT '文章上传时间',
  `auser` char(64) DEFAULT NULL COMMENT '文章上传用户',
  `asort` char(64) DEFAULT NULL COMMENT '文章类型',
  `acontent` text COMMENT '文章内容',
  `anum_collect` int(11) DEFAULT NULL COMMENT '赞量点',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fans_class_video
-- ----------------------------
CREATE TABLE `fans_class_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '视频id',
  `vname` char(64) DEFAULT NULL COMMENT '视频名称',
  `vuser_id` int(64) DEFAULT NULL COMMENT '频视上传用户ID',
  `vuser_name` char(255) DEFAULT NULL COMMENT '视频上传用户名称',
  `vsort` char(64) DEFAULT NULL COMMENT '频视类型',
  `vcontent` char(255) DEFAULT NULL COMMENT '频视内容',
  `vnum_collect` int(11) DEFAULT NULL COMMENT '收藏量',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `remarks` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `del_flag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fans_comment
-- ----------------------------
CREATE TABLE `fans_comment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) DEFAULT NULL COMMENT '评论者',
  `tutor_id` int(11) DEFAULT NULL COMMENT '评论对象\r\n',
  `content` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `dznum` int(11) DEFAULT '0' COMMENT '点赞数',
  `crreate_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL COMMENT '发表评论时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `del_flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for fans_forum
-- ----------------------------
CREATE TABLE `fans_forum` (
  `id` int(255) NOT NULL,
  `name` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '贴子名称',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '发帖内容',
  `sort` int(11) DEFAULT '4' COMMENT '帖子分类',
  `create_by` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发帖人',
  `create_date` datetime DEFAULT NULL COMMENT '发贴时间',
  `update_by` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新者',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for fans_rel_collection
-- ----------------------------
CREATE TABLE `fans_rel_collection` (
  `id` int(64) NOT NULL AUTO_INCREMENT COMMENT '收藏ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `collection_id` varchar(64) DEFAULT NULL COMMENT '被收藏的教程或帖子的id',
  `create_by` varchar(64) DEFAULT NULL COMMENT '收藏的用户',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '收藏的时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fans_rel_users
-- ----------------------------
CREATE TABLE `fans_rel_users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '粉丝关系ID',
  `user_a_id` varchar(64) DEFAULT NULL COMMENT '关注者',
  `user_b_id` varchar(64) DEFAULT NULL COMMENT '被关注者',
  `create_by` varchar(64) DEFAULT NULL COMMENT '关注者的名字',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fans_sys_user
-- ----------------------------
CREATE TABLE `fans_sys_user` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '录密码登',
  `pic` varchar(200) DEFAULT NULL COMMENT '头像',
  `signature` varchar(255) DEFAULT NULL COMMENT '个人签名',
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
