/*
Navicat MySQL Data Transfer

Source Server         : vagrant
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : audiphone

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-11-04 18:06:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, '2017-11-01 03:12:18');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '管理员', 'fa-tasks', null, null, '2017-11-01 03:10:34');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '用户', 'fa-users', 'auth/users', null, '2017-11-01 03:10:59');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色', 'fa-user', 'auth/roles', null, '2017-11-01 03:11:08');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限', 'fa-ban', 'auth/permissions', null, '2017-11-01 03:11:16');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单', 'fa-bars', 'auth/menu', null, '2017-11-01 03:11:34');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '操作日志', 'fa-history', 'auth/logs', null, '2017-11-01 03:11:45');
INSERT INTO `admin_menu` VALUES ('8', '0', '7', '帮助工具', 'fa-gears', null, '2017-11-01 03:18:49', '2017-11-01 03:21:02');
INSERT INTO `admin_menu` VALUES ('9', '8', '8', '脚手架工具', 'fa-keyboard-o', 'helpers/scaffold', '2017-11-01 03:18:49', '2017-11-01 03:21:33');
INSERT INTO `admin_menu` VALUES ('10', '8', '9', '数据库命令行', 'fa-database', 'helpers/terminal/database', '2017-11-01 03:18:49', '2017-11-01 03:22:09');
INSERT INTO `admin_menu` VALUES ('11', '8', '10', 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', '2017-11-01 03:18:49', '2017-11-01 03:18:49');
INSERT INTO `admin_menu` VALUES ('12', '8', '11', '路由列表', 'fa-list-alt', 'helpers/routes', '2017-11-01 03:18:49', '2017-11-01 03:24:05');
INSERT INTO `admin_menu` VALUES ('13', '0', '12', '文件管理', 'fa-file', 'media', '2017-11-01 03:47:44', '2017-11-01 03:55:27');
INSERT INTO `admin_menu` VALUES ('14', '0', '13', 'Api测试', 'fa-sliders', 'api-tester', '2017-11-01 03:50:57', '2017-11-01 03:55:41');
INSERT INTO `admin_menu` VALUES ('15', '0', '14', '计划任务', 'fa-clock-o', 'scheduling', '2017-11-01 03:54:32', '2017-11-01 03:55:57');
INSERT INTO `admin_menu` VALUES ('16', '0', '0', '微信管理', 'fa-weixin', '/wechat/index', '2017-11-04 03:53:52', '2017-11-04 03:55:37');

-- ----------------------------
-- Table structure for `admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=456 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-01 02:48:10', '2017-11-01 02:48:10');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 02:48:22', '2017-11-01 02:48:22');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/users/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 02:48:28', '2017-11-01 02:48:28');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 02:48:39', '2017-11-01 02:48:39');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 02:48:45', '2017-11-01 02:48:45');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 02:49:03', '2017-11-01 02:49:03');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 02:51:51', '2017-11-01 02:51:51');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 02:52:04', '2017-11-01 02:52:04');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/setting', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 02:54:36', '2017-11-01 02:54:36');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:03:38', '2017-11-01 03:03:38');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-01 03:03:55', '2017-11-01 03:03:55');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/setting', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:04:00', '2017-11-01 03:04:00');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:04:12', '2017-11-01 03:04:12');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:04:23', '2017-11-01 03:04:23');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/users/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:04:26', '2017-11-01 03:04:26');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:04:36', '2017-11-01 03:04:36');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/roles/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:04:43', '2017-11-01 03:04:43');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:04:55', '2017-11-01 03:04:55');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 03:07:21', '2017-11-01 03:07:21');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:07:29', '2017-11-01 03:07:29');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:07:32', '2017-11-01 03:07:32');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:07:33', '2017-11-01 03:07:33');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/permissions/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:07:46', '2017-11-01 03:07:46');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:07:50', '2017-11-01 03:07:50');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:08:37', '2017-11-01 03:08:37');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:08:39', '2017-11-01 03:08:39');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:08:41', '2017-11-01 03:08:41');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:08:47', '2017-11-01 03:08:47');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:08:55', '2017-11-01 03:08:55');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:09:09', '2017-11-01 03:09:09');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:09:12', '2017-11-01 03:09:12');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:09:13', '2017-11-01 03:09:13');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:09:14', '2017-11-01 03:09:14');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/setting', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:09:23', '2017-11-01 03:09:23');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:09:28', '2017-11-01 03:09:28');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:09:30', '2017-11-01 03:09:30');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:09:51', '2017-11-01 03:09:51');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:09:57', '2017-11-01 03:09:57');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:10:04', '2017-11-01 03:10:04');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:10:08', '2017-11-01 03:10:08');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:10:23', '2017-11-01 03:10:23');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:10:25', '2017-11-01 03:10:25');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu/2', 'PUT', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:10:33', '2017-11-01 03:10:33');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:10:34', '2017-11-01 03:10:34');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:10:37', '2017-11-01 03:10:37');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:10:44', '2017-11-01 03:10:44');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu/3', 'PUT', '192.168.33.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:10:59', '2017-11-01 03:10:59');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:10:59', '2017-11-01 03:10:59');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/menu/4/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:11:03', '2017-11-01 03:11:03');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu/4', 'PUT', '192.168.33.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:11:08', '2017-11-01 03:11:08');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:11:08', '2017-11-01 03:11:08');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/menu/5/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:11:10', '2017-11-01 03:11:10');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/menu/5', 'PUT', '192.168.33.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:11:16', '2017-11-01 03:11:16');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:11:16', '2017-11-01 03:11:16');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu/6/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:11:18', '2017-11-01 03:11:18');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/menu/6', 'PUT', '192.168.33.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:11:34', '2017-11-01 03:11:34');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:11:34', '2017-11-01 03:11:34');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:11:36', '2017-11-01 03:11:36');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu/7', 'PUT', '192.168.33.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:11:45', '2017-11-01 03:11:45');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:11:45', '2017-11-01 03:11:45');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:11:48', '2017-11-01 03:11:48');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:11:54', '2017-11-01 03:11:54');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:12:06', '2017-11-01 03:12:06');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu/1', 'PUT', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:12:18', '2017-11-01 03:12:18');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:12:18', '2017-11-01 03:12:18');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:12:21', '2017-11-01 03:12:21');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:13:11', '2017-11-01 03:13:11');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:13:14', '2017-11-01 03:13:14');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:13:15', '2017-11-01 03:13:15');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:13:49', '2017-11-01 03:13:49');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:13:52', '2017-11-01 03:13:52');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:13:55', '2017-11-01 03:13:55');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/permissions/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:13:58', '2017-11-01 03:13:58');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:14:06', '2017-11-01 03:14:06');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:14:07', '2017-11-01 03:14:07');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:14:07', '2017-11-01 03:14:07');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:14:08', '2017-11-01 03:14:08');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:14:10', '2017-11-01 03:14:10');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/permissions/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:14:14', '2017-11-01 03:14:14');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-01 03:14:28', '2017-11-01 03:14:28');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:14:44', '2017-11-01 03:14:44');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/users/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:14:51', '2017-11-01 03:14:51');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:15:09', '2017-11-01 03:15:09');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/permissions/3/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:15:16', '2017-11-01 03:15:16');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/permissions/3', 'PUT', '192.168.33.1', '{\"slug\":\"auth.login\",\"name\":\"\\u7528\\u6237\\u767b\\u5f55\\u3001\\u767b\\u51fa\",\"http_method\":[null],\"http_path\":\"\\/auth\\/login\\r\\n\\/auth\\/logout\",\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-01 03:15:32', '2017-11-01 03:15:32');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 03:15:32', '2017-11-01 03:15:32');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/auth/permissions/4/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:15:37', '2017-11-01 03:15:37');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/auth/permissions/4', 'PUT', '192.168.33.1', '{\"slug\":\"auth.setting\",\"name\":\"\\u7528\\u6237\\u8bbe\\u7f6e\",\"http_method\":[\"GET\",\"PUT\",null],\"http_path\":\"\\/auth\\/setting\",\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-01 03:15:46', '2017-11-01 03:15:46');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 03:15:46', '2017-11-01 03:15:46');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/auth/permissions/5/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:15:52', '2017-11-01 03:15:52');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/auth/permissions/5', 'PUT', '192.168.33.1', '{\"slug\":\"auth.management\",\"name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/auth\\/roles\\r\\n\\/auth\\/permissions\\r\\n\\/auth\\/menu\\r\\n\\/auth\\/logs\",\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-01 03:16:07', '2017-11-01 03:16:07');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 03:16:07', '2017-11-01 03:16:07');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/auth/permissions/2/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:16:10', '2017-11-01 03:16:10');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/auth/permissions/2', 'PUT', '192.168.33.1', '{\"slug\":\"dashboard\",\"name\":\"\\u63a7\\u5236\\u53f0\",\"http_method\":[\"GET\",null],\"http_path\":\"\\/\",\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-01 03:16:25', '2017-11-01 03:16:25');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 03:16:25', '2017-11-01 03:16:25');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/permissions/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:16:31', '2017-11-01 03:16:31');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/permissions/1', 'PUT', '192.168.33.1', '{\"slug\":\"*\",\"name\":\"\\u6240\\u6709\\u6743\\u9650\",\"http_method\":[null],\"http_path\":\"*\",\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-01 03:16:41', '2017-11-01 03:16:41');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 03:16:41', '2017-11-01 03:16:41');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:16:43', '2017-11-01 03:16:43');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:16:45', '2017-11-01 03:16:45');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:16:47', '2017-11-01 03:16:47');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 03:19:02', '2017-11-01 03:19:02');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/helpers/scaffold', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:19:08', '2017-11-01 03:19:08');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/helpers/terminal/database', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:19:13', '2017-11-01 03:19:13');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:19:16', '2017-11-01 03:19:16');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/helpers/routes', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:19:18', '2017-11-01 03:19:18');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/helpers/scaffold', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:19:43', '2017-11-01 03:19:43');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:19:44', '2017-11-01 03:19:44');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:19:45', '2017-11-01 03:19:45');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/permissions/6/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:19:53', '2017-11-01 03:19:53');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/auth/permissions/6', 'PUT', '192.168.33.1', '{\"slug\":\"ext.helpers\",\"name\":\"\\u989d\\u5916\\u5e2e\\u52a9\",\"http_method\":[null],\"http_path\":\"\\/helpers\\/*\",\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-01 03:20:14', '2017-11-01 03:20:14');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 03:20:14', '2017-11-01 03:20:14');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:20:16', '2017-11-01 03:20:16');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:20:21', '2017-11-01 03:20:21');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/menu/8', 'PUT', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"\\u989d\\u5916\\u5e2e\\u52a9\",\"icon\":\"fa-gears\",\"uri\":null,\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:20:37', '2017-11-01 03:20:37');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:20:37', '2017-11-01 03:20:37');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:20:41', '2017-11-01 03:20:41');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:20:53', '2017-11-01 03:20:53');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:20:55', '2017-11-01 03:20:55');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/menu/8', 'PUT', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"\\u5e2e\\u52a9\\u5de5\\u5177\",\"icon\":\"fa-gears\",\"uri\":null,\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:21:02', '2017-11-01 03:21:02');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:21:02', '2017-11-01 03:21:02');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/menu/9/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:21:06', '2017-11-01 03:21:06');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/menu/9', 'PUT', '192.168.33.1', '{\"parent_id\":\"8\",\"title\":\"\\u811a\\u624b\\u67b6\\u5de5\\u5177\",\"icon\":\"fa-keyboard-o\",\"uri\":\"helpers\\/scaffold\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:21:32', '2017-11-01 03:21:32');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:21:33', '2017-11-01 03:21:33');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/menu/10/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:21:50', '2017-11-01 03:21:50');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/menu/10', 'PUT', '192.168.33.1', '{\"parent_id\":\"8\",\"title\":\"\\u6570\\u636e\\u5e93\\u547d\\u4ee4\\u884c\",\"icon\":\"fa-database\",\"uri\":\"helpers\\/terminal\\/database\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:22:09', '2017-11-01 03:22:09');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:22:09', '2017-11-01 03:22:09');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/helpers/terminal/database', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:23:51', '2017-11-01 03:23:51');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:23:53', '2017-11-01 03:23:53');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/auth/menu/12/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:23:57', '2017-11-01 03:23:57');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/menu/12', 'PUT', '192.168.33.1', '{\"parent_id\":\"8\",\"title\":\"\\u8def\\u7531\\u5217\\u8868\",\"icon\":\"fa-list-alt\",\"uri\":\"helpers\\/routes\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:24:05', '2017-11-01 03:24:05');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:24:05', '2017-11-01 03:24:05');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:24:07', '2017-11-01 03:24:07');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/helpers/routes', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:25:38', '2017-11-01 03:25:38');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/helpers/routes', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:25:47', '2017-11-01 03:25:47');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:25:48', '2017-11-01 03:25:48');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/helpers/terminal/database', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:25:53', '2017-11-01 03:25:53');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/helpers/scaffold', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:25:55', '2017-11-01 03:25:55');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/helpers/scaffold', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:26:48', '2017-11-01 03:26:48');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/helpers/terminal/database', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:26:51', '2017-11-01 03:26:51');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:26:53', '2017-11-01 03:26:53');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/helpers/terminal/artisan', 'POST', '192.168.33.1', '{\"c\":\"route:list\",\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\"}', '2017-11-01 03:26:59', '2017-11-01 03:26:59');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:29:02', '2017-11-01 03:29:02');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:29:05', '2017-11-01 03:29:05');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/helpers/scaffold', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:29:32', '2017-11-01 03:29:32');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/helpers/terminal/database', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:29:33', '2017-11-01 03:29:33');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:29:36', '2017-11-01 03:29:36');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/helpers/terminal/artisan', 'POST', '192.168.33.1', '{\"c\":\"route:list\",\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\"}', '2017-11-01 03:29:44', '2017-11-01 03:29:44');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:30:26', '2017-11-01 03:30:26');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/helpers/scaffold', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:30:29', '2017-11-01 03:30:29');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/helpers/terminal/database', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:30:41', '2017-11-01 03:30:41');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:30:42', '2017-11-01 03:30:42');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/helpers/routes', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:30:51', '2017-11-01 03:30:51');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:31:19', '2017-11-01 03:31:19');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/auth/setting', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:34:21', '2017-11-01 03:34:21');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:34:42', '2017-11-01 03:34:42');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/helpers/routes', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:34:45', '2017-11-01 03:34:45');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/helpers/routes', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:35:00', '2017-11-01 03:35:00');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:35:45', '2017-11-01 03:35:45');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/auth/users/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:35:49', '2017-11-01 03:35:49');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:35:55', '2017-11-01 03:35:55');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-01 03:54:46', '2017-11-01 03:54:46');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/media', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:54:50', '2017-11-01 03:54:50');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/api-tester', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:54:53', '2017-11-01 03:54:53');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/scheduling', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:55:05', '2017-11-01 03:55:05');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/api-tester', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:55:07', '2017-11-01 03:55:07');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/scheduling', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:55:09', '2017-11-01 03:55:09');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:55:14', '2017-11-01 03:55:14');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/auth/menu/13/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:55:18', '2017-11-01 03:55:18');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/auth/menu/13', 'PUT', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa-file\",\"uri\":\"media\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:55:27', '2017-11-01 03:55:27');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:55:28', '2017-11-01 03:55:28');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/auth/menu/14/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:55:32', '2017-11-01 03:55:32');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/auth/menu/14', 'PUT', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"Api\\u6d4b\\u8bd5\",\"icon\":\"fa-sliders\",\"uri\":\"api-tester\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:55:41', '2017-11-01 03:55:41');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:55:41', '2017-11-01 03:55:41');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/auth/menu/15/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:55:45', '2017-11-01 03:55:45');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/auth/menu/15', 'PUT', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"\\u8ba1\\u5212\\u4efb\\u52a1\",\"icon\":\"fa-clock-o\",\"uri\":\"scheduling\",\"roles\":[null],\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-01 03:55:57', '2017-11-01 03:55:57');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 03:55:57', '2017-11-01 03:55:57');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/scheduling', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:56:01', '2017-11-01 03:56:01');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-01 03:56:06', '2017-11-01 03:56:06');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/media', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:56:10', '2017-11-01 03:56:10');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/api-tester', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:56:10', '2017-11-01 03:56:10');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/media', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:56:11', '2017-11-01 03:56:11');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/media', 'GET', '192.168.33.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:56:13', '2017-11-01 03:56:13');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/media', 'GET', '192.168.33.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:56:15', '2017-11-01 03:56:15');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/media', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 03:56:16', '2017-11-01 03:56:16');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:27:18', '2017-11-01 05:27:18');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:27:21', '2017-11-01 05:27:21');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:27:23', '2017-11-01 05:27:23');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:27:30', '2017-11-01 05:27:30');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:27:37', '2017-11-01 05:27:37');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/helpers/scaffold', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:27:47', '2017-11-01 05:27:47');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/helpers/terminal/database', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:27:48', '2017-11-01 05:27:48');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:27:49', '2017-11-01 05:27:49');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/helpers/terminal/artisan', 'POST', '192.168.33.1', '{\"c\":\"route:list\",\"_token\":\"1ELZOJOjc5tSNhRvqaJzSjpPXCr1qSzfYHkkB2pJ\"}', '2017-11-01 05:27:55', '2017-11-01 05:27:55');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/helpers/routes', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:28:03', '2017-11-01 05:28:03');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/api-tester', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:28:08', '2017-11-01 05:28:08');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/scheduling', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:28:10', '2017-11-01 05:28:10');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:28:13', '2017-11-01 05:28:13');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:28:55', '2017-11-01 05:28:55');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/auth/setting', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:29:01', '2017-11-01 05:29:01');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:29:04', '2017-11-01 05:29:04');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:29:10', '2017-11-01 05:29:10');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:29:11', '2017-11-01 05:29:11');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/auth/logout', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:29:18', '2017-11-01 05:29:18');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-01 05:29:25', '2017-11-01 05:29:25');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/auth/logout', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:29:31', '2017-11-01 05:29:31');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-01 05:29:46', '2017-11-01 05:29:46');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:29:51', '2017-11-01 05:29:51');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:29:53', '2017-11-01 05:29:53');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:29:57', '2017-11-01 05:29:57');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 05:29:58', '2017-11-01 05:29:58');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 08:31:11', '2017-11-01 08:31:11');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/helpers/scaffold', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 08:32:19', '2017-11-01 08:32:19');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:15:20', '2017-11-01 09:15:20');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:15:23', '2017-11-01 09:15:23');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:15:25', '2017-11-01 09:15:25');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:15:27', '2017-11-01 09:15:27');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/auth/permissions/6/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:15:34', '2017-11-01 09:15:34');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/auth/permissions/6', 'PUT', '192.168.33.1', '{\"slug\":\"ext.helpers\",\"name\":\"\\u5e2e\\u52a9\\u5de5\\u5177\",\"http_method\":[null],\"http_path\":\"\\/helpers\\/*\",\"_token\":\"Y2CtOZG16aEibAQERKfd0ZsxfptkUaPAUVNIkZFe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-01 09:15:42', '2017-11-01 09:15:42');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 09:15:42', '2017-11-01 09:15:42');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/auth/permissions/7/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:15:46', '2017-11-01 09:15:46');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/auth/permissions/7', 'PUT', '192.168.33.1', '{\"slug\":\"ext.media-manager\",\"name\":\"\\u6587\\u4ef6\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/media*\",\"_token\":\"Y2CtOZG16aEibAQERKfd0ZsxfptkUaPAUVNIkZFe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-01 09:15:53', '2017-11-01 09:15:53');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 09:15:53', '2017-11-01 09:15:53');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/auth/permissions/8/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:15:57', '2017-11-01 09:15:57');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/auth/permissions/8', 'PUT', '192.168.33.1', '{\"slug\":\"ext.api-tester\",\"name\":\"Api\\u6d4b\\u8bd5\",\"http_method\":[null],\"http_path\":\"\\/api-tester*\",\"_token\":\"Y2CtOZG16aEibAQERKfd0ZsxfptkUaPAUVNIkZFe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-01 09:16:03', '2017-11-01 09:16:03');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 09:16:03', '2017-11-01 09:16:03');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/auth/permissions/9/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:16:08', '2017-11-01 09:16:08');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/auth/permissions/9', 'PUT', '192.168.33.1', '{\"slug\":\"ext.scheduling\",\"name\":\"\\u8ba1\\u5212\\u4efb\\u52a1\",\"http_method\":[null],\"http_path\":\"\\/scheduling*\",\"_token\":\"Y2CtOZG16aEibAQERKfd0ZsxfptkUaPAUVNIkZFe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-01 09:16:15', '2017-11-01 09:16:15');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-01 09:16:15', '2017-11-01 09:16:15');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:18:12', '2017-11-01 09:18:12');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-01 09:19:25', '2017-11-01 09:19:25');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:19:30', '2017-11-01 09:19:30');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:19:35', '2017-11-01 09:19:35');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:19:40', '2017-11-01 09:19:40');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/helpers/scaffold', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:19:44', '2017-11-01 09:19:44');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/helpers/terminal/database', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:19:45', '2017-11-01 09:19:45');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:19:50', '2017-11-01 09:19:50');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/helpers/terminal/artisan', 'POST', '192.168.33.1', '{\"c\":\"route:list\",\"_token\":\"Y2CtOZG16aEibAQERKfd0ZsxfptkUaPAUVNIkZFe\"}', '2017-11-01 09:19:55', '2017-11-01 09:19:55');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.33.1', '[]', '2017-11-01 09:27:22', '2017-11-01 09:27:22');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-01 09:27:27', '2017-11-01 09:27:27');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-02 03:44:07', '2017-11-02 03:44:07');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:44:15', '2017-11-02 03:44:15');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/auth/users/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:44:19', '2017-11-02 03:44:19');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:44:30', '2017-11-02 03:44:30');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:44:39', '2017-11-02 03:44:39');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:44:48', '2017-11-02 03:44:48');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/api-tester', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:45:07', '2017-11-02 03:45:07');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/scheduling', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:45:08', '2017-11-02 03:45:08');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/media', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:45:10', '2017-11-02 03:45:10');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/scheduling', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:45:11', '2017-11-02 03:45:11');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/media', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:45:13', '2017-11-02 03:45:13');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/helpers/scaffold', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:45:15', '2017-11-02 03:45:15');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/helpers/terminal/artisan', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:45:17', '2017-11-02 03:45:17');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/helpers/terminal/artisan', 'POST', '192.168.33.1', '{\"c\":\"route:list\",\"_token\":\"aNZRmMOQF0FBY8NsFTIr0clNrwvzrCXIlfGtXIVR\"}', '2017-11-02 03:45:24', '2017-11-02 03:45:24');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/helpers/routes', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-02 03:46:30', '2017-11-02 03:46:30');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 01:44:19', '2017-11-04 01:44:19');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 03:21:21', '2017-11-04 03:21:21');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:53:19', '2017-11-04 03:53:19');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:53:22', '2017-11-04 03:53:22');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/auth/menu', 'POST', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"\\u5fae\\u4fe1\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"pQd7MpwYvn83sTSOuiSafy9E8mhdol3u8bmPqjA8\"}', '2017-11-04 03:53:52', '2017-11-04 03:53:52');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-04 03:53:52', '2017-11-04 03:53:52');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/auth/menu/16/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:54:02', '2017-11-04 03:54:02');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/auth/menu/16', 'PUT', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"\\u5fae\\u4fe1\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"pQd7MpwYvn83sTSOuiSafy9E8mhdol3u8bmPqjA8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-04 03:54:10', '2017-11-04 03:54:10');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-04 03:54:10', '2017-11-04 03:54:10');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:54:14', '2017-11-04 03:54:14');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 03:54:18', '2017-11-04 03:54:18');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:54:19', '2017-11-04 03:54:19');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:54:29', '2017-11-04 03:54:29');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/auth/menu/16/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:54:33', '2017-11-04 03:54:33');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/auth/menu/16', 'PUT', '192.168.33.1', '{\"parent_id\":\"0\",\"title\":\"\\u5fae\\u4fe1\\u7ba1\\u7406\",\"icon\":\"fa-weixin\",\"uri\":\"\\/wechat\\/index\",\"roles\":[null],\"_token\":\"pQd7MpwYvn83sTSOuiSafy9E8mhdol3u8bmPqjA8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/menu\"}', '2017-11-04 03:55:37', '2017-11-04 03:55:37');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '[]', '2017-11-04 03:55:37', '2017-11-04 03:55:37');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:55:44', '2017-11-04 03:55:44');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin/auth/permissions/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:55:49', '2017-11-04 03:55:49');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:55:53', '2017-11-04 03:55:53');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/auth/permissions/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:56:04', '2017-11-04 03:56:04');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:56:14', '2017-11-04 03:56:14');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/auth/permissions/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:56:25', '2017-11-04 03:56:25');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/auth/permissions', 'POST', '192.168.33.1', '{\"slug\":\"wechat.manger\",\"name\":\"\\u5fae\\u4fe1\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":null,\"_token\":\"pQd7MpwYvn83sTSOuiSafy9E8mhdol3u8bmPqjA8\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-04 03:56:44', '2017-11-04 03:56:44');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-04 03:56:44', '2017-11-04 03:56:44');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/auth/permissions/10/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:56:55', '2017-11-04 03:56:55');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/auth/permissions/10', 'PUT', '192.168.33.1', '{\"slug\":\"wechat.manger\",\"name\":\"\\u5fae\\u4fe1\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/wechat\\/index\",\"_token\":\"pQd7MpwYvn83sTSOuiSafy9E8mhdol3u8bmPqjA8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/audiphone.com\\/admin\\/auth\\/permissions\"}', '2017-11-04 03:57:01', '2017-11-04 03:57:01');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '[]', '2017-11-04 03:57:01', '2017-11-04 03:57:01');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:57:06', '2017-11-04 03:57:06');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:57:07', '2017-11-04 03:57:07');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:57:08', '2017-11-04 03:57:08');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:57:09', '2017-11-04 03:57:09');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:57:09', '2017-11-04 03:57:09');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:57:10', '2017-11-04 03:57:10');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:57:15', '2017-11-04 03:57:15');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 03:57:17', '2017-11-04 03:57:17');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:57:20', '2017-11-04 03:57:20');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 03:57:20', '2017-11-04 03:57:20');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 03:57:44', '2017-11-04 03:57:44');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:57:45', '2017-11-04 03:57:45');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 03:57:53', '2017-11-04 03:57:53');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 03:57:54', '2017-11-04 03:57:54');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 03:57:57', '2017-11-04 03:57:57');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:57:58', '2017-11-04 03:57:58');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 03:58:01', '2017-11-04 03:58:01');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 03:58:10', '2017-11-04 03:58:10');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/scheduling', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 03:58:13', '2017-11-04 03:58:13');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 03:58:15', '2017-11-04 03:58:15');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 04:00:13', '2017-11-04 04:00:13');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 04:00:14', '2017-11-04 04:00:14');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 04:00:15', '2017-11-04 04:00:15');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 04:00:19', '2017-11-04 04:00:19');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 04:00:20', '2017-11-04 04:00:20');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:14:21', '2017-11-04 07:14:21');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:14:23', '2017-11-04 07:14:23');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:14:23', '2017-11-04 07:14:23');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:14:30', '2017-11-04 07:14:30');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:14:30', '2017-11-04 07:14:30');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:16:10', '2017-11-04 07:16:10');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:16:12', '2017-11-04 07:16:12');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:16:12', '2017-11-04 07:16:12');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:16:13', '2017-11-04 07:16:13');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:16:14', '2017-11-04 07:16:14');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:16:21', '2017-11-04 07:16:21');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:16:21', '2017-11-04 07:16:21');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:20:34', '2017-11-04 07:20:34');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:23:45', '2017-11-04 07:23:45');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:23:45', '2017-11-04 07:23:45');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:26:35', '2017-11-04 07:26:35');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:26:36', '2017-11-04 07:26:36');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:26:39', '2017-11-04 07:26:39');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:26:41', '2017-11-04 07:26:41');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:26:41', '2017-11-04 07:26:41');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:29:02', '2017-11-04 07:29:02');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:29:04', '2017-11-04 07:29:04');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:29:05', '2017-11-04 07:29:05');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 07:29:06', '2017-11-04 07:29:06');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:35:51', '2017-11-04 07:35:51');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 07:35:51', '2017-11-04 07:35:51');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 07:37:33', '2017-11-04 07:37:33');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:37:34', '2017-11-04 07:37:34');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 07:37:34', '2017-11-04 07:37:34');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:39:28', '2017-11-04 07:39:28');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:39:42', '2017-11-04 07:39:42');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:39:42', '2017-11-04 07:39:42');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:39:44', '2017-11-04 07:39:44');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:39:45', '2017-11-04 07:39:45');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:05', '2017-11-04 07:40:05');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:10', '2017-11-04 07:40:10');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:40:12', '2017-11-04 07:40:12');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:15', '2017-11-04 07:40:15');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/scheduling', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:22', '2017-11-04 07:40:22');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:40:27', '2017-11-04 07:40:27');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:29', '2017-11-04 07:40:29');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:40:32', '2017-11-04 07:40:32');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:34', '2017-11-04 07:40:34');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:35', '2017-11-04 07:40:35');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:36', '2017-11-04 07:40:36');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:36', '2017-11-04 07:40:36');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:37', '2017-11-04 07:40:37');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:37', '2017-11-04 07:40:37');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:37', '2017-11-04 07:40:37');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:38', '2017-11-04 07:40:38');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:40:40', '2017-11-04 07:40:40');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-04 07:40:53', '2017-11-04 07:40:53');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:40:57', '2017-11-04 07:40:57');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:41:01', '2017-11-04 07:41:01');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:41:03', '2017-11-04 07:41:03');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:41:06', '2017-11-04 07:41:06');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:41:08', '2017-11-04 07:41:08');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:41:10', '2017-11-04 07:41:10');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:41:17', '2017-11-04 07:41:17');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:43:09', '2017-11-04 07:43:09');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:44:14', '2017-11-04 07:44:14');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:44:18', '2017-11-04 07:44:18');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:44:37', '2017-11-04 07:44:37');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:44:52', '2017-11-04 07:44:52');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:45:05', '2017-11-04 07:45:05');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:45:10', '2017-11-04 07:45:10');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/auth/users/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:45:11', '2017-11-04 07:45:11');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/auth/users/create', 'GET', '192.168.33.1', '[]', '2017-11-04 07:45:13', '2017-11-04 07:45:13');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:53:21', '2017-11-04 07:53:21');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/auth/users/create', 'GET', '192.168.33.1', '[]', '2017-11-04 07:53:21', '2017-11-04 07:53:21');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/auth/users/create', 'GET', '192.168.33.1', '[]', '2017-11-04 07:54:30', '2017-11-04 07:54:30');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:54:32', '2017-11-04 07:54:32');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:54:32', '2017-11-04 07:54:32');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 07:55:30', '2017-11-04 07:55:30');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:55:38', '2017-11-04 07:55:38');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/media', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:55:47', '2017-11-04 07:55:47');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:55:50', '2017-11-04 07:55:50');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/auth/menu', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:55:54', '2017-11-04 07:55:54');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:58:52', '2017-11-04 07:58:52');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/api-tester', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:58:59', '2017-11-04 07:58:59');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:59:01', '2017-11-04 07:59:01');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:59:03', '2017-11-04 07:59:03');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/auth/users/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:59:08', '2017-11-04 07:59:08');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:59:13', '2017-11-04 07:59:13');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/auth/roles/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:59:20', '2017-11-04 07:59:20');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/auth/permissions', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:59:25', '2017-11-04 07:59:25');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:59:37', '2017-11-04 07:59:37');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 07:59:42', '2017-11-04 07:59:42');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:01:25', '2017-11-04 08:01:25');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:01:56', '2017-11-04 08:01:56');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:02:14', '2017-11-04 08:02:14');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:02:19', '2017-11-04 08:02:19');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:02:20', '2017-11-04 08:02:20');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin', 'GET', '192.168.33.1', '[]', '2017-11-04 08:02:46', '2017-11-04 08:02:46');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:02:54', '2017-11-04 08:02:54');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:09:53', '2017-11-04 08:09:53');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/wechat/index', 'DELETE', '192.168.33.1', '{\"_method\":\"delete\",\"_token\":\"tQIwNB9JKO25qSnwTGkSK1OCnP3aktwrxTr0rQxe\"}', '2017-11-04 08:12:19', '2017-11-04 08:12:19');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:12:20', '2017-11-04 08:12:20');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/wechat/index', 'DELETE', '192.168.33.1', '{\"_method\":\"delete\",\"_token\":\"tQIwNB9JKO25qSnwTGkSK1OCnP3aktwrxTr0rQxe\"}', '2017-11-04 08:12:20', '2017-11-04 08:12:20');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:12:20', '2017-11-04 08:12:20');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:12:29', '2017-11-04 08:12:29');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '[]', '2017-11-04 08:13:38', '2017-11-04 08:13:38');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:13:45', '2017-11-04 08:13:45');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2017-11-04 08:13:55', '2017-11-04 08:13:55');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2017-11-04 08:13:56', '2017-11-04 08:13:56');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2017-11-04 08:13:58', '2017-11-04 08:13:58');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/auth/users', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:14:52', '2017-11-04 08:14:52');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/auth/users', 'GET', '192.168.33.1', '[]', '2017-11-04 08:15:05', '2017-11-04 08:15:05');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:15:08', '2017-11-04 08:15:08');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:15:22', '2017-11-04 08:15:22');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:16:09', '2017-11-04 08:16:09');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:16:25', '2017-11-04 08:16:25');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:16:30', '2017-11-04 08:16:30');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:16:36', '2017-11-04 08:16:36');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:16:38', '2017-11-04 08:16:38');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:16:40', '2017-11-04 08:16:40');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:16:47', '2017-11-04 08:16:47');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:19:41', '2017-11-04 08:19:41');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:19:44', '2017-11-04 08:19:44');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:19:45', '2017-11-04 08:19:45');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:20:56', '2017-11-04 08:20:56');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:20:58', '2017-11-04 08:20:58');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:21:07', '2017-11-04 08:21:07');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:21:09', '2017-11-04 08:21:09');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:21:10', '2017-11-04 08:21:10');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:21:11', '2017-11-04 08:21:11');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:21:12', '2017-11-04 08:21:12');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:22:20', '2017-11-04 08:22:20');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:32:13', '2017-11-04 08:32:13');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:32:16', '2017-11-04 08:32:16');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/auth/roles', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:32:22', '2017-11-04 08:32:22');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/auth/roles/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:32:24', '2017-11-04 08:32:24');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:32:28', '2017-11-04 08:32:28');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:32:30', '2017-11-04 08:32:30');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:32:32', '2017-11-04 08:32:32');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:33:23', '2017-11-04 08:33:23');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:33:30', '2017-11-04 08:33:30');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '[]', '2017-11-04 08:34:08', '2017-11-04 08:34:08');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '[]', '2017-11-04 08:34:49', '2017-11-04 08:34:49');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '[]', '2017-11-04 08:35:30', '2017-11-04 08:35:30');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/wechat/index', 'POST', '192.168.33.1', '{\"title\":\"\\u8bbe\\u8ba1\\u82f1\\u96c4\\u6c47\",\"token\":\"designer\",\"appid\":\"wx0049064f47fee49e\",\"appsecret\":\"03513f4334e4de0aa1e74aded1aed8e9\",\"_token\":\"tQIwNB9JKO25qSnwTGkSK1OCnP3aktwrxTr0rQxe\"}', '2017-11-04 08:37:04', '2017-11-04 08:37:04');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/wechat/index/create', 'GET', '192.168.33.1', '[]', '2017-11-04 08:37:04', '2017-11-04 08:37:04');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/wechat/index', 'POST', '192.168.33.1', '{\"title\":\"\\u8bbe\\u8ba1\\u82f1\\u96c4\\u6c47\",\"token\":\"designer\",\"appid\":\"wx0049064f47fee49e\",\"appsecret\":\"03513f4334e4de0aa1e74aded1aed8e9\",\"_token\":\"tQIwNB9JKO25qSnwTGkSK1OCnP3aktwrxTr0rQxe\"}', '2017-11-04 08:38:12', '2017-11-04 08:38:12');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '[]', '2017-11-04 08:38:12', '2017-11-04 08:38:12');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/wechat/index/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:38:16', '2017-11-04 08:38:16');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:38:34', '2017-11-04 08:38:34');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/wechat/index/1/edit', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:38:37', '2017-11-04 08:38:37');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/wechat/index', 'GET', '192.168.33.1', '{\"_pjax\":\"#pjax-container\"}', '2017-11-04 08:38:40', '2017-11-04 08:38:40');

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', '所有权限', '*', '', '*', null, '2017-11-01 03:16:41');
INSERT INTO `admin_permissions` VALUES ('2', '控制台', 'dashboard', 'GET', '/', null, '2017-11-01 03:16:25');
INSERT INTO `admin_permissions` VALUES ('3', '用户登录、登出', 'auth.login', '', '/auth/login\r\n/auth/logout', null, '2017-11-01 03:15:32');
INSERT INTO `admin_permissions` VALUES ('4', '用户设置', 'auth.setting', 'GET,PUT', '/auth/setting', null, '2017-11-01 03:15:46');
INSERT INTO `admin_permissions` VALUES ('5', '权限管理', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, '2017-11-01 03:16:07');
INSERT INTO `admin_permissions` VALUES ('6', '帮助工具', 'ext.helpers', '', '/helpers/*', '2017-11-01 03:18:49', '2017-11-01 09:15:42');
INSERT INTO `admin_permissions` VALUES ('7', '文件管理', 'ext.media-manager', '', '/media*', '2017-11-01 03:47:44', '2017-11-01 09:15:53');
INSERT INTO `admin_permissions` VALUES ('8', 'Api测试', 'ext.api-tester', '', '/api-tester*', '2017-11-01 03:50:57', '2017-11-01 09:16:03');
INSERT INTO `admin_permissions` VALUES ('9', '计划任务', 'ext.scheduling', '', '/scheduling*', '2017-11-01 03:54:32', '2017-11-01 09:16:15');
INSERT INTO `admin_permissions` VALUES ('10', '微信管理', 'wechat.manger', '', '/wechat/index', '2017-11-04 03:56:44', '2017-11-04 03:57:01');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for `admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2017-11-01 02:47:23', '2017-11-01 02:47:23');

-- ----------------------------
-- Table structure for `admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$bMpUjXPSYqIQ3SNKb6z3HeF8pd0IOCPlcOG81ulAvHp/A3cpmkvzm', 'Administrator', null, 'SKftbJewgAyYyvrREbdebUzllXva5qrVdmdRn7dM8cDvzHTmb1dZkKvx1n98', '2017-11-01 02:47:23', '2017-11-01 02:47:23');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_mangement`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_mangement`;
CREATE TABLE `wechat_mangement` (
  `id` int(9) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(100) DEFAULT NULL COMMENT '名称',
  `token` varchar(60) DEFAULT NULL COMMENT '微信token',
  `appid` varchar(60) DEFAULT NULL COMMENT '微信appid',
  `appsecret` varchar(60) DEFAULT NULL COMMENT '微信密钥',
  `p_appid` varchar(60) DEFAULT NULL COMMENT '小程序appid',
  `p_appsecret` varchar(60) DEFAULT NULL COMMENT '小程序密钥',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_mangement
-- ----------------------------
INSERT INTO `wechat_mangement` VALUES ('1', '设计英雄汇', 'designer', 'wx0049064f47fee49e', '03513f4334e4de0aa1e74aded1aed8e9', null, null, '2017-11-04 08:38:12', '2017-11-04 08:38:12');
