/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : new_springboot

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 27/03/2022 12:41:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `value` varchar(255) DEFAULT NULL COMMENT '内容',
  `type` varchar(255) DEFAULT NULL COMMENT '类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('user', 'el-icon-s-custom', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('home', 'el-icon-s-home', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('role', 'el-icon-s-platform', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('menu', 'el-icon-s-data', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('file', 'el-icon-document', 'icon');
INSERT INTO `sys_dict` (`name`, `value`, `type`) VALUES ('system', 'el-icon-menu', 'icon');
COMMIT;

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) DEFAULT NULL COMMENT '文件类型',
  `size` bigint DEFAULT NULL COMMENT '文件大小',
  `url` varchar(255) DEFAULT NULL COMMENT '文件url',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除 0:未删除、1：已删除',
  `enable` tinyint(1) DEFAULT '1' COMMENT '是否禁用 0：不可用、1：可用',
  `md5` varchar(255) DEFAULT NULL COMMENT '文件md5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
BEGIN;
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (20, 'bg.png', 'png', 74, 'http://localhost:9091/file/aacf3d4ea641416d8a26a5c7fa856c10.png', 1, 1, '142445a7ba8ae704551eb21f3a96cadf');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (21, '班级姓名.docx', 'docx', 18, 'http://localhost:9091/file/708181dafbb34542973079bbbd34a7b5.docx', 0, 1, '298dc9ece360a93dec8572539cd8808d');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (22, 'bg.png', 'png', 74, 'http://localhost:9091/file/aacf3d4ea641416d8a26a5c7fa856c10.png', 0, 1, '142445a7ba8ae704551eb21f3a96cadf');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (23, 'IMG_5453.JPG', 'JPG', 553, 'http://localhost:9091/file/89bc13109cd44451a19c2123c130696b.JPG', 0, 1, 'a90045e304ac8122768787fcdac086a3');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (24, '65101164_p0.jpeg', 'jpeg', 663, 'http://localhost:9091/file/4319a30787bc420da7d9513c46db28af.jpeg', 0, 1, '8c6feb8e7532e909c3427ac5b23ba4b3');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (25, '89bc13109cd44451a19c2123c130696b.JPG', 'JPG', 553, 'http://localhost:9091/file/89bc13109cd44451a19c2123c130696b.JPG', 1, 1, 'a90045e304ac8122768787fcdac086a3');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (26, 'IMG_5453-3.JPG', 'JPG', 180, 'http://localhost:9091/file/85ee9daa1f8343c592f16e49a1a10648.JPG', 1, 1, '8f3ca78033e34733eceb844e64896394');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (27, 'QQ20211031-0.jpg', 'jpg', 154, 'http://localhost:9091/file/5d972ca209ce4923a4fd0c31f1df403b.jpg', 1, 1, '45b87a4a5255e7cfdfbaa5a5bcc1c5de');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (28, 'QQ20211031-0.jpg', 'jpg', 154, 'http://localhost:9091/file/5d972ca209ce4923a4fd0c31f1df403b.jpg', 1, 1, '45b87a4a5255e7cfdfbaa5a5bcc1c5de');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (29, 'shark.jpg', 'jpg', 829, 'http://localhost:9091/file/44243889cc0c41f6ad6c6a255c8f6ed6.jpg', 1, 1, 'd575f151ac786d9ec150693c1e5f20d4');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (30, 'IMG_5453-3.JPG', 'JPG', 180, 'http://localhost:9091/file/85ee9daa1f8343c592f16e49a1a10648.JPG', 1, 1, '8f3ca78033e34733eceb844e64896394');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (31, 'QQ20211031-0.jpg', 'jpg', 154, 'http://localhost:9091/file/5d972ca209ce4923a4fd0c31f1df403b.jpg', 1, 1, '45b87a4a5255e7cfdfbaa5a5bcc1c5de');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (32, 'shark.jpg', 'jpg', 829, 'http://localhost:9091/file/44243889cc0c41f6ad6c6a255c8f6ed6.jpg', 1, 1, 'd575f151ac786d9ec150693c1e5f20d4');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (33, 'IMG_5453-3.JPG', 'JPG', 180, 'http://localhost:9091/file/85ee9daa1f8343c592f16e49a1a10648.JPG', 1, 1, '8f3ca78033e34733eceb844e64896394');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (34, 'shark.jpg', 'jpg', 829, 'http://localhost:9091/file/44243889cc0c41f6ad6c6a255c8f6ed6.jpg', 1, 1, 'd575f151ac786d9ec150693c1e5f20d4');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (35, 'QQ20211031-0.jpg', 'jpg', 154, 'http://localhost:9091/file/5d972ca209ce4923a4fd0c31f1df403b.jpg', 1, 1, '45b87a4a5255e7cfdfbaa5a5bcc1c5de');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (36, 'shark.jpg', 'jpg', 829, 'http://localhost:9091/file/44243889cc0c41f6ad6c6a255c8f6ed6.jpg', 1, 1, 'd575f151ac786d9ec150693c1e5f20d4');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (37, 'QQ20211031-0.jpg', 'jpg', 154, 'http://localhost:9091/file/5d972ca209ce4923a4fd0c31f1df403b.jpg', 1, 1, '45b87a4a5255e7cfdfbaa5a5bcc1c5de');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (38, 'IMG_5453-3.JPG', 'JPG', 180, 'http://localhost:9091/file/85ee9daa1f8343c592f16e49a1a10648.JPG', 1, 1, '8f3ca78033e34733eceb844e64896394');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (39, 'QQ20211031-0.jpg', 'jpg', 154, 'http://localhost:9091/file/5d972ca209ce4923a4fd0c31f1df403b.jpg', 1, 1, '45b87a4a5255e7cfdfbaa5a5bcc1c5de');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (40, 'f5bcb34fccddb5dbd45bb53e4c3f872f.jpg', 'jpg', 32, 'http://localhost:9091/file/862a74021f9d4f35ad6c326b789eaecb.jpg', 1, 1, 'dd483d1d6e4dc38c0b71d2922e9dbff2');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (41, '头像2.jpg', 'jpg', 168, 'http://localhost:9091/file/440e5b683fee44b49d9f4d0331ede42b.jpg', 0, 1, '57dff6b6d804af87fdaca5a4330c046c');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (42, '头像4.jpg', 'jpg', 140, 'http://localhost:9091/file/cdada16043364dc08e0e13ffb43cf379.jpg', 0, 1, 'dac85d6677a56405dcaf5ccae9efcac9');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (43, '头像3.jpg', 'jpg', 213, 'http://localhost:9091/file/b0a72b62891f4fa6991cd1bd71e6dbb5.jpg', 0, 1, '20349becce1db751f5cdbd20dc94ed9c');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (44, '头像1.jpg', 'jpg', 31, 'http://localhost:9091/file/19e3358c60ea42e3b9a0a2a6f93c147d.jpg', 0, 1, 'b79c0e3e17c05aec371f2c931c3eed84');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (45, '头像5.jpg', 'jpg', 32, 'http://localhost:9091/file/862a74021f9d4f35ad6c326b789eaecb.jpg', 0, 1, 'dd483d1d6e4dc38c0b71d2922e9dbff2');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (46, '头像6.jpg', 'jpg', 63, 'http://localhost:9091/file/a022536d9fbb497fb78578ab619ec5a4.jpg', 0, 1, '4c876f1d23ebbd6e64d89da4bcc70adb');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (47, '角色.xlsx', 'xlsx', 12, 'http://localhost:9091/file/9e8d0da3edb249559d5e8fdbe0fb25a5.xlsx', 1, 1, '220e63f1f74927bed908402d8c7404d4');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (48, '副本附件3：信息学院2021年寒假假期计划离校时间(1).xlsx', 'xlsx', 36, 'http://localhost:9091/file/54d1a907c92a45e0b441f91b9190d09c.xlsx', 1, 1, '8eef9c6a5e81942ea80da9512848fa81');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (49, '角色.xlsx', 'xlsx', 12, 'http://localhost:9091/file/9e8d0da3edb249559d5e8fdbe0fb25a5.xlsx', 0, 1, '220e63f1f74927bed908402d8c7404d4');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (50, '演示文稿1.pptx', 'pptx', 32, 'http://localhost:9091/file/ba7efc5a87304aa8843ef961a1b22063.pptx', 0, 1, 'b6d6aaef0050bd93eb0be68a2ea3c5be');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (59, '头像1.jpg', 'jpg', 31, 'http://localhost:9091/file/19e3358c60ea42e3b9a0a2a6f93c147d.jpg', 0, 1, 'b79c0e3e17c05aec371f2c931c3eed84');
INSERT INTO `sys_file` (`id`, `name`, `type`, `size`, `url`, `is_delete`, `enable`, `md5`) VALUES (60, '头像5.jpg', 'jpg', 32, 'http://localhost:9091/file/862a74021f9d4f35ad6c326b789eaecb.jpg', 0, 1, 'dd483d1d6e4dc38c0b71d2922e9dbff2');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `pid` int DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (2, '主页', '/home', 'el-icon-s-home', '描述1', NULL, 'Home');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (4, '系统管理', NULL, 'el-icon-menu', NULL, NULL, NULL);
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (5, '用户管理', '/user', 'el-icon-s-custom', NULL, 4, 'User');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (6, '角色管理', '/role', 'el-icon-s-platform', NULL, 4, 'Role');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (7, '菜单管理', '/menu', 'el-icon-s-data', NULL, 4, 'Menu');
INSERT INTO `sys_menu` (`id`, `name`, `path`, `icon`, `description`, `pid`, `page_path`) VALUES (8, '文件管理', '/file', 'el-icon-document', NULL, 4, 'File');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`id`, `name`, `description`, `flag`) VALUES (1, '管理员', '管理员', 'ROLE_ADMIN');
INSERT INTO `sys_role` (`id`, `name`, `description`, `flag`) VALUES (2, '用户', '用户', 'ROLE_USER');
INSERT INTO `sys_role` (`id`, `name`, `description`, `flag`) VALUES (3, '运营商', '运营商', 'ROLE_PROVIDER');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 2);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 4);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 5);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 6);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 7);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (1, 8);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 4);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 8);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 2);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 4);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 5);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (3, 8);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (3, '0320', '12345665433213', 'nickTest3', 'test3@mail', 'testphone', '3321312313', '2022-03-20 11:30:07', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (4, '4', '4', '4567', '4', '4', 'test0321_4', '2022-05-21 19:52:51', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (6, '6', '6', '6', '6', '6', '6', '2022-05-19 23:53:57', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (7, '7', '7', '7', '7', '7', '7‘’', '2022-05-19 23:54:03', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (8, '8', '8', '8', '8', '8', '8', '2022-05-19 23:54:07', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (9, '9', '9', '9', '9', '9', '9', '2022-05-19 23:54:12', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (10, '10', '10', '10', '10', '10', '10', '2022-05-19 23:54:23', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (11, '11', '11', '11', '11', '11', '11', '2022-05-19 23:54:31', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (12, '12', '12', '12', '12', '12', '12', '2022-07-19 23:54:37', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (13, '13', '13', '1', '13', '13', '13', '2022-07-19 23:54:44', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (14, '14', '14', '14', '14', '14', '14', '2022-09-19 23:54:50', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (15, '15', '15', '15', '151', '15', '15', '2022-11-19 23:55:01', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (17, 'abc', NULL, '23343', '副书记艾', '飞机啊是', '甲方ifdsf', '2022-08-20 19:42:13', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (18, 'testzzl', NULL, 'zzl', 'zzl@zzl.com', '123', '123', '2022-11-20 21:51:28', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (19, '0321', NULL, '0321', 'test', '12', '24', '2022-11-21 20:00:16', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (20, 'test24', NULL, 'test_jfios_sfjiof ', 'ioweafji', 'fjio2j2', 'fjisdao', '2022-02-21 20:01:48', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (21, '这是一个测试', NULL, '测试', '24@jio.com', '214dsaffdsaf', 'fjio', '2022-12-21 21:10:20', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (22, 'sbVUE', NULL, '哪个傻逼', '会觉得', '前端', '有意思？', '2022-06-21 21:48:55', NULL, NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (26, 'test导入测试', '423', '发窘', '发电量数据库', '的飞机噢is', '剪短发哦哦； ', '2022-02-21 23:02:29', '', NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (27, 'zzl', '123456', 'zzl_provider', 'zzl', 'zzl', 'zzl', '2022-12-22 18:26:43', 'https://avatar.csdnimg.cn/9/0/2/0_weixin_44359517.jpg', 'ROLE_PROVIDER');
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (29, 'test2', '111111', 'test2', NULL, NULL, NULL, '2022-12-22 11:38:00', 'http://localhost:9091/file/5d972ca209ce4923a4fd0c31f1df403b.jpg', NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (30, 'test导入测试', '423', '发窘', '发电量数据库', '的飞机噢is', '剪短发哦哦； ', '2022-06-22 12:12:11', '', NULL);
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (31, 'admin', 'admin', 'admin', NULL, NULL, NULL, '2022-03-27 00:05:34', 'http://localhost:9091/file/a022536d9fbb497fb78578ab619ec5a4.jpg', 'ROLE_ADMIN');
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `email`, `phone`, `address`, `createTime`, `avatar`, `role`) VALUES (33, 'test', 'test', 'test_user', 'test', 'test', NULL, '2022-03-23 22:20:12', 'http://localhost:9091/file/862a74021f9d4f35ad6c326b789eaecb.jpg', 'ROLE_USER');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
