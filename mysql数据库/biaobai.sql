/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : biaobai

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2019-09-23 16:50:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `qw_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_group`;
CREATE TABLE `qw_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_auth_group
-- ----------------------------
INSERT INTO `qw_auth_group` VALUES ('1', '超级管理员', '1', '1,2,3,56,6,5,7,8,9,10,51,52,53,57,13,14,15,16,17,18,108,109,110');
INSERT INTO `qw_auth_group` VALUES ('2', '图书馆管理员', '1', '1,2,3,56,6,5,7,8,9,10,51,52,53,57,13,14,15,16,17,18,108,109,110');

-- ----------------------------
-- Table structure for `qw_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_group_access`;
CREATE TABLE `qw_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qw_auth_group_access
-- ----------------------------
INSERT INTO `qw_auth_group_access` VALUES ('1', '1');
INSERT INTO `qw_auth_group_access` VALUES ('91', '2');

-- ----------------------------
-- Table structure for `qw_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_rule`;
CREATE TABLE `qw_auth_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `islink` tinyint(1) NOT NULL DEFAULT '1',
  `o` int(11) NOT NULL COMMENT '排序',
  `tips` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_auth_rule
-- ----------------------------
INSERT INTO `qw_auth_rule` VALUES ('1', '0', 'Index/index', '返回首页', 'menu-icon fa fa-tachometer', '1', '1', '', '1', '0', '友情提示：经常查看操作日志，发现异常以便及时追查原因。');
INSERT INTO `qw_auth_rule` VALUES ('2', '0', '', '系统设置', 'menu-icon fa fa-cog', '1', '1', '', '1', '2', '');
INSERT INTO `qw_auth_rule` VALUES ('3', '2', 'Setting/setting', '网站设置', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '3', '这是网站设置的提示。');
INSERT INTO `qw_auth_rule` VALUES ('4', '2', 'Menu/index', '后台菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '4', '');
INSERT INTO `qw_auth_rule` VALUES ('5', '2', 'Menu/add', '新增菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '5', '');
INSERT INTO `qw_auth_rule` VALUES ('6', '4', 'Menu/edit', '编辑菜单', '', '1', '1', '', '0', '6', '');
INSERT INTO `qw_auth_rule` VALUES ('7', '2', 'Menu/update', '保存菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '7', '');
INSERT INTO `qw_auth_rule` VALUES ('8', '2', 'Menu/del', '删除菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '8', '');
INSERT INTO `qw_auth_rule` VALUES ('9', '2', 'Database/backup', '数据库备份', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '9', '');
INSERT INTO `qw_auth_rule` VALUES ('10', '9', 'Database/recovery', '数据库还原', '', '1', '1', '', '0', '10', '');
INSERT INTO `qw_auth_rule` VALUES ('13', '0', '', '用户及组', 'menu-icon fa fa-users', '1', '1', '', '1', '13', '');
INSERT INTO `qw_auth_rule` VALUES ('14', '13', 'Member/index', '用户管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '14', '');
INSERT INTO `qw_auth_rule` VALUES ('15', '13', 'Member/add', '新增用户', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '15', '');
INSERT INTO `qw_auth_rule` VALUES ('16', '13', 'Member/edit', '编辑用户', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '16', '');
INSERT INTO `qw_auth_rule` VALUES ('17', '13', 'Member/update', '保存用户', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '17', '');
INSERT INTO `qw_auth_rule` VALUES ('18', '13', 'Member/del', '删除用户', '', '1', '1', '', '0', '18', '');
INSERT INTO `qw_auth_rule` VALUES ('19', '13', 'Group/index', '用户组管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '19', '');
INSERT INTO `qw_auth_rule` VALUES ('21', '13', 'Group/edit', '编辑用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '21', '');
INSERT INTO `qw_auth_rule` VALUES ('22', '13', 'Group/update', '保存用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '22', '');
INSERT INTO `qw_auth_rule` VALUES ('23', '13', 'Group/del', '删除用户组', '', '1', '1', '', '0', '23', '');
INSERT INTO `qw_auth_rule` VALUES ('51', '9', 'Database/export', '备份', '', '1', '1', '', '0', '51', '');
INSERT INTO `qw_auth_rule` VALUES ('52', '9', 'Database/optimize', '数据优化', '', '1', '1', '', '0', '52', '');
INSERT INTO `qw_auth_rule` VALUES ('53', '9', 'Database/repair', '修复表', '', '1', '1', '', '0', '53', '');
INSERT INTO `qw_auth_rule` VALUES ('56', '3', 'Setting/update', '设置保存', '', '1', '1', '', '0', '56', '');
INSERT INTO `qw_auth_rule` VALUES ('57', '9', 'Database/del', '备份删除', '', '1', '1', '', '0', '57', '');
INSERT INTO `qw_auth_rule` VALUES ('108', '0', '', '临大表白墙', 'menu-icon fa fa-desktop', '1', '1', '', '1', '14', '');
INSERT INTO `qw_auth_rule` VALUES ('109', '108', 'Biaobai/lists', '信息列表', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('110', '108', 'Biaobai/users', '会员管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '2', '');

-- ----------------------------
-- Table structure for `qw_member`
-- ----------------------------
DROP TABLE IF EXISTS `qw_member`;
CREATE TABLE `qw_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(120) DEFAULT NULL COMMENT '信微ID',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '信微头像',
  `user` varchar(225) NOT NULL,
  `head` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` tinyint(1) DEFAULT NULL COMMENT '0保密1男，2女',
  `birthday` int(10) DEFAULT NULL COMMENT '生日',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL,
  `t` int(10) unsigned NOT NULL COMMENT '注册时间',
  `identifier` varchar(32) DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  `salt` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_member
-- ----------------------------
INSERT INTO `qw_member` VALUES ('1', '', 'http://localhost/lyubbq/userimg/0011.jpg', 'admin', '/Public/attached/201803/1522031574.jpg', '1', '1420128000', '13800138000', '331349451', 'xieyanwei@qq.com', '66d6a1c8748025462128dc75bf5ae8d1', '1522031576', 'e1cfa41006786fad11de38881bae7063', 'dbc0a3742194fc88e02e3a23837c0f19', 'KYXThNUwcu');
INSERT INTO `qw_member` VALUES ('91', null, null, 'sfdg', '/Public/attached/201802/1519454263.jpg', '1', '839001600', '13254689658', '546456546574', '444@cc.com', '4ea0d2717c524c167fb75a2f0bdd7301', '1519454341', 'b849d4c4c287ed221f285325ef523780', 'fbf2ba9b8dae1951332057deffff9bfa', 'JcmwMzrGNZ');

-- ----------------------------
-- Table structure for `qw_setting`
-- ----------------------------
DROP TABLE IF EXISTS `qw_setting`;
CREATE TABLE `qw_setting` (
  `k` varchar(100) NOT NULL COMMENT '变量',
  `v` varchar(255) NOT NULL COMMENT '值',
  `type` tinyint(1) NOT NULL COMMENT '0系统，1自定义',
  `name` varchar(255) NOT NULL COMMENT '说明',
  PRIMARY KEY (`k`) USING BTREE,
  KEY `k` (`k`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_setting
-- ----------------------------
INSERT INTO `qw_setting` VALUES ('sitename', '', '0', '');
INSERT INTO `qw_setting` VALUES ('title', '临大表白墙后台管理', '1', '');
INSERT INTO `qw_setting` VALUES ('keywords', '', '0', '');
INSERT INTO `qw_setting` VALUES ('description', '', '0', '');
INSERT INTO `qw_setting` VALUES ('footer', '', '1', '');
INSERT INTO `qw_setting` VALUES ('appID', 'wx977a202385225d6b', '1', 'appID');
INSERT INTO `qw_setting` VALUES ('appSecret', '85de648d41112463401adde4e13b8335', '1', 'appSecret');
INSERT INTO `qw_setting` VALUES ('sms_name', 'sllyutu', '1', '短信账号');
INSERT INTO `qw_setting` VALUES ('sms_pwd', 'abc123456!!', '1', '短信密码');

-- ----------------------------
-- Table structure for `qw_xcxbb_guanzhu`
-- ----------------------------
DROP TABLE IF EXISTS `qw_xcxbb_guanzhu`;
CREATE TABLE `qw_xcxbb_guanzhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `openid` varchar(150) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1261 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_xcxbb_guanzhu
-- ----------------------------
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1225', '548', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1518328610');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1226', '549', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1519005601');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1227', '552', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1518337396');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1228', '553', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1519005356');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1229', '553', 'oTacg0W9eZ9BDkJWzLmpqBPAIt5c', 'https://wx.qlogo.cn/mmopen/vi_32/SbXTZMia7OvOhH2wsMFK0J7hdHA1nQQe5ZnlAsVibYqBSsdiajq2sIRzRvyDSEdYAT9icia6g9osuRvD0RwyYgicK0Xg/0', '游客', '1518337565');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1230', '551', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1518341306');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1231', '555', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1520762833');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1232', '554', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1520047238');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1233', '555', 'oTacg0W9eZ9BDkJWzLmpqBPAIt5c', 'https://wx.qlogo.cn/mmopen/vi_32/SbXTZMia7OvOhH2wsMFK0J7hdHA1nQQe5ZnlAsVibYqBSsdiajq2sIRzRvyDSEdYAT9icia6g9osuRvD0RwyYgicK0Xg/0', '游客', '1518345672');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1234', '554', 'oTacg0W9eZ9BDkJWzLmpqBPAIt5c', 'https://wx.qlogo.cn/mmopen/vi_32/SbXTZMia7OvOhH2wsMFK0J7hdHA1nQQe5ZnlAsVibYqBSsdiajq2sIRzRvyDSEdYAT9icia6g9osuRvD0RwyYgicK0Xg/0', '游客', '1518345700');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1235', '556', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1520762859');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1236', '9999', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1522034835');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1237', '590', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1519011137');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1238', '0', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1519011159');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1239', '554', 'oTacg0RCW7CnRTJbvNSdtedJJFF8', 'http://localhost/lyubbq/Public/Home/images/nouser.jpg', 'undefined', '1519120744');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1240', '556', 'oTacg0RCW7CnRTJbvNSdtedJJFF8', 'http://localhost.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1519120869');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1241', '10000', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1519126085');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1242', '10000', 'oTacg0Q2DK4avOtOPham_B1f6NTo', 'http://localhost/lyubbq/Public/Home/images/nouser.jpg', 'undefined', '1519535815');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1243', '10000', 'oTacg0SKsNiKKaugs8t0D7eJ_boc', 'http://localhost/lyubbq/Public/Home/images/nouser.jpg', '游客', '1519535822');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1244', '10001', 'oTacg0Q2DK4avOtOPham_B1f6NTo', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1519535902');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1245', '553', 'oTacg0Q2DK4avOtOPham_B1f6NTo', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1519535912');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1246', '10003', 'oTacg0Q2DK4avOtOPham_B1f6NTo', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1519535931');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1247', '10001', 'oTacg0RhH6cFOu9CeJx6BivC3Qh4', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', 'undefined', '1519536080');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1248', '10003', 'oTacg0RhH6cFOu9CeJx6BivC3Qh4', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1519536045');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1249', '553', 'oTacg0RhH6cFOu9CeJx6BivC3Qh4', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1519536054');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1250', '9999', 'oTacg0S7SeCEIo_0UYS56Tgj6CU0', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', 'undefined', '1520761403');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1251', '554', 'oTacg0S7SeCEIo_0UYS56Tgj6CU0', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1520761501');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1252', '10005', 'oTacg0S7SeCEIo_0UYS56Tgj6CU0', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1520761510');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1253', '555', 'oTacg0S7SeCEIo_0UYS56Tgj6CU0', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1520761523');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1254', '10005', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1522031468');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1255', '556', 'oTacg0XrclY-0ua2o21caEMLc2Yo', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', 'undefined', '1521245445');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1256', '10006', 'oTacg0XrclY-0ua2o21caEMLc2Yo', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1521245524');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1257', '554', 'oTacg0XrclY-0ua2o21caEMLc2Yo', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', '游客', '1521245556');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1258', '10007', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1521958808');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1259', '10006', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '游客', '1522031488');
INSERT INTO `qw_xcxbb_guanzhu` VALUES ('1260', '10010', 'oM7Mu5XyeVJSc8roaUCRlcz_IP9k', 'https://wx.qlogo.cn/mmopen/vi_32/ib3Rzem884S7KDnFWAzH8akEbKqcRUVoLBSCYfy7Oib41DTyjqOGe2mUSibicymTpjYYmoWwiazEe7hb1reD29OEgLw/132', '游客', '1569220603');

-- ----------------------------
-- Table structure for `qw_xcxbb_list`
-- ----------------------------
DROP TABLE IF EXISTS `qw_xcxbb_list`;
CREATE TABLE `qw_xcxbb_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '程序小失物认领',
  `openid` varchar(120) NOT NULL,
  `buser` varchar(100) NOT NULL DEFAULT '0',
  `photo` varchar(255) DEFAULT '0' COMMENT '品物图片',
  `content` text NOT NULL COMMENT '品物描述',
  `display` int(11) NOT NULL DEFAULT '0',
  `plnum` varchar(20) DEFAULT NULL,
  `lat` varchar(100) NOT NULL,
  `long` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `datetime` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_xcxbb_list
-- ----------------------------
INSERT INTO `qw_xcxbb_list` VALUES ('9999', '1', '所有人', '0', '临大表白墙（微信小程序）正式上线啦！！！', '0', '17659', '', '', '临沂大学', '1518325200');
INSERT INTO `qw_xcxbb_list` VALUES ('10000', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '所有人', null, '66666', '1', '0', '34.85729', '118.07072', '山东省临沂市苍山县塔山路20号', '1519125859');
INSERT INTO `qw_xcxbb_list` VALUES ('553', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '程序员', 'Uploads/XcX/2018-02-11/5a7ffc530087c.jpg', '程序狗???? 的叹息。。', '0', '0', '35.04238', '118.07911', '山东省临沂市苍山县S229', '1518337106');
INSERT INTO `qw_xcxbb_list` VALUES ('554', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '所有人', 'Uploads/XcX/2018-02-11/5a800f7b74720.jpg', '祝大家狗年吉祥，万事如意。', '0', '0', '35.04238', '118.07911', '山东省临沂市苍山县S229', '1518342011');
INSERT INTO `qw_xcxbb_list` VALUES ('556', 'oTacg0W9eZ9BDkJWzLmpqBPAIt5c', '所有人', 'Uploads/XcX/2018-02-11/5a801dbb37051.jpg', '丢失钱包一个，大概是在大活到一区的路上，希望捡到的同学联系我，谢谢谢谢。\n微信sl18660951126', '0', '2', '35.04238', '118.07911', '山东省临沂市苍山县S229', '1518345658');
INSERT INTO `qw_xcxbb_list` VALUES ('555', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '晴晴', 'Uploads/XcX/2018-02-11/5a801024d4efa.jpg', '表白我家小可爱，把你搂在怀里。永远爱你。', '1', '2', '35.04238', '118.07911', '山东省临沂市苍山县S229', '1518342180');
INSERT INTO `qw_xcxbb_list` VALUES ('10001', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '所有人', null, '丢失', '1', '0', '34.85729', '118.07072', '山东省临沂市苍山县塔山路20号', '1519127062');
INSERT INTO `qw_xcxbb_list` VALUES ('10002', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '所有人', null, '捡到', '1', '0', '34.85729', '118.07072', '山东省临沂市苍山县塔山路20号', '1519127089');
INSERT INTO `qw_xcxbb_list` VALUES ('10003', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '所有人', null, 'utyu', '1', '0', '34.85729', '118.07072', '山东省临沂市苍山县塔山路20号', '1519140344');
INSERT INTO `qw_xcxbb_list` VALUES ('10004', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '所有人', null, 'rtgh', '1', '0', '34.85729', '118.07072', '山东省临沂市苍山县塔山路20号', '1519140361');
INSERT INTO `qw_xcxbb_list` VALUES ('10005', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '所有人', 'Uploads/XcX/2018-03-08/5aa0b08eea4f0.jpg', '测试信息', '0', '1', '35.116066', '118.28712', '山东省临沂市兰山区中心路', '1520480398');
INSERT INTO `qw_xcxbb_list` VALUES ('10006', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '所有人', 'Uploads/XcX/2018-03-14/5aa8b61c49c14.jpg', '至尊宝', '0', '0', '35.11593', '118.289215', '山东省临沂市兰山区中心路', '1521006107');
INSERT INTO `qw_xcxbb_list` VALUES ('10007', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '所有人', null, '啦啦啦', '1', '0', '35.115852', '118.289085', '山东省临沂市兰山区中心路', '1521958760');
INSERT INTO `qw_xcxbb_list` VALUES ('10008', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '所有人', null, '啦啦啦囖', '1', '0', '35.1152', '118.288704', '山东省临沂市兰山区中心路', '1521984773');
INSERT INTO `qw_xcxbb_list` VALUES ('10009', '', '所有人', null, '', '0', '0', '', '', '', '1521985021');
INSERT INTO `qw_xcxbb_list` VALUES ('10010', 'oM7Mu5XyeVJSc8roaUCRlcz_IP9k', '萌小希', 'Uploads/XcX/2019-09-23/5d8865d2d2411.jpg', '我喜欢这个妹子，麻烦这个妹子看见了回复我，谢谢！', '0', '1', '30.65984', '104.10194', '四川省成都市成华区双林路196号', '1569220050');

-- ----------------------------
-- Table structure for `qw_xcxbb_message`
-- ----------------------------
DROP TABLE IF EXISTS `qw_xcxbb_message`;
CREATE TABLE `qw_xcxbb_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `openid` varchar(150) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `content` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_xcxbb_message
-- ----------------------------
INSERT INTO `qw_xcxbb_message` VALUES ('168', '549', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '一棵树', '啊啊啊', '1518332370');
INSERT INTO `qw_xcxbb_message` VALUES ('169', '555', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '一棵树', '????????????', '1518342212');
INSERT INTO `qw_xcxbb_message` VALUES ('170', '555', 'oTacg0W9eZ9BDkJWzLmpqBPAIt5c', 'https://wx.qlogo.cn/mmopen/vi_32/SbXTZMia7OvOhH2wsMFK0J7hdHA1nQQe5ZnlAsVibYqBSsdiajq2sIRzRvyDSEdYAT9icia6g9osuRvD0RwyYgicK0Xg/0', 'i棵树科技', '9999', '1518345672');
INSERT INTO `qw_xcxbb_message` VALUES ('171', '556', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '一棵树', '我捡到了，放在信息学院门卫大爷那里了。', '1518345817');
INSERT INTO `qw_xcxbb_message` VALUES ('172', '10005', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '一棵树', '????', '1520763109');
INSERT INTO `qw_xcxbb_message` VALUES ('173', '556', 'oTacg0XrclY-0ua2o21caEMLc2Yo', 'https://www.chinaqf.xin/lyubbq/Public/Home/images/nouser.jpg', 'rdgztest_GVQFFV', '????', '1521245479');
INSERT INTO `qw_xcxbb_message` VALUES ('174', '10010', 'oM7Mu5XyeVJSc8roaUCRlcz_IP9k', 'https://wx.qlogo.cn/mmopen/vi_32/ib3Rzem884S7KDnFWAzH8akEbKqcRUVoLBSCYfy7Oib41DTyjqOGe2mUSibicymTpjYYmoWwiazEe7hb1reD29OEgLw/132', '鼠鼠', '麻烦认识这个妹子的转告下哦', '1569220329');

-- ----------------------------
-- Table structure for `qw_xcxbb_user`
-- ----------------------------
DROP TABLE IF EXISTS `qw_xcxbb_user`;
CREATE TABLE `qw_xcxbb_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(120) NOT NULL,
  `genDer` int(11) NOT NULL,
  `wxname` varchar(150) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `headimgurl` text NOT NULL,
  `disuid` int(2) NOT NULL DEFAULT '0',
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_xcxbb_user
-- ----------------------------
INSERT INTO `qw_xcxbb_user` VALUES ('63', '1', '0', '表白墙-管理员', '13006754376', 'https://www.chinaqf.xin/lyubbq/userimg/0011.jpg', '0', '0');
INSERT INTO `qw_xcxbb_user` VALUES ('64', 'oTacg0dHE-WTz4r3p4fMmJMiEyFg', '1', '一棵树', '18660951813', 'https://wx.qlogo.cn/mmopen/vi_32/sodia4icjjjaAzf487pdDPReqyaQia4ZSDE0H3QRib697uVMYn1yaiaRmDB2TCWaXHu9CPlPuHicfnLTgV0OZaJeUAxQ/0', '0', '1518328967');
INSERT INTO `qw_xcxbb_user` VALUES ('65', 'oTacg0W9eZ9BDkJWzLmpqBPAIt5c', '2', 'i棵树科技', '18660951126', 'https://wx.qlogo.cn/mmopen/vi_32/SbXTZMia7OvOhH2wsMFK0J7hdHA1nQQe5ZnlAsVibYqBSsdiajq2sIRzRvyDSEdYAT9icia6g9osuRvD0RwyYgicK0Xg/0', '0', '1518345442');
INSERT INTO `qw_xcxbb_user` VALUES ('67', 'oM7Mu5XyeVJSc8roaUCRlcz_IP9k', '1', '鼠鼠', '13688886666', 'https://wx.qlogo.cn/mmopen/vi_32/ib3Rzem884S7KDnFWAzH8akEbKqcRUVoLBSCYfy7Oib41DTyjqOGe2mUSibicymTpjYYmoWwiazEe7hb1reD29OEgLw/132', '0', '1569219695');
