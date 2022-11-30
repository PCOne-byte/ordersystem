/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql数据库
 Source Server Type    : MySQL
 Source Server Version : 50558
 Source Host           : localhost:3306
 Source Schema         : diancan

 Target Server Type    : MySQL
 Target Server Version : 50558
 File Encoding         : 65001

 Date: 05/05/2020 21:03:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for evaluate_p
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_p`;
CREATE TABLE `evaluate_p`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `evaluate_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluate_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of evaluate_p
-- ----------------------------
INSERT INTO `evaluate_p` VALUES (1, '97f84cac-b5e0-47f6-bf60-069999dae8f4', '                    请输入评价内容\r\n东坡肉相当地道，味道很好，好吃！', '2020-04-13 06:24:08', NULL, NULL, 0);
INSERT INTO `evaluate_p` VALUES (2, '8743fhy-b93hf-9jfd-fjd', '这是评论1', '2020-04-14 06:24:08', NULL, NULL, 0);
INSERT INTO `evaluate_p` VALUES (3, '34343-urheu43-7847h-ufd', '这是评论2', '2020-04-15 06:24:08', NULL, NULL, 0);

-- ----------------------------
-- Table structure for leave_p
-- ----------------------------
DROP TABLE IF EXISTS `leave_p`;
CREATE TABLE `leave_p`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `user_id` int(16) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leave_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of leave_p
-- ----------------------------
INSERT INTO `leave_p` VALUES (1, 2, '老板，你家007号服务员服务真心不错，很贴心呢，点个赞哟，下次还回来，哈哈', '2020-04-13', NULL, NULL, 1);
INSERT INTO `leave_p` VALUES (2, 2, '留言留言，这里是留言', '2020-04-14', NULL, NULL, 0);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `notice_date` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '周末优惠促销', '每周日凡消费满300，即可在本店享受8折优惠', '2020-04-13', 1);
INSERT INTO `notice` VALUES (2, '套餐优惠公告', '凡八人及八人人以上同时用餐可享受8折优惠', '2020-04-13', 1);
INSERT INTO `notice` VALUES (3, '公告声明', '优惠促销活动不叠加，解释权归本店所有', '2020-04-13', 1);

-- ----------------------------
-- Table structure for order_p
-- ----------------------------
DROP TABLE IF EXISTS `order_p`;
CREATE TABLE `order_p`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_date` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态',
  `user_id` int(16) NULL DEFAULT NULL,
  `money` double(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_p
-- ----------------------------
INSERT INTO `order_p` VALUES (1, 'c5713cff-28d7-4011-8915-cca7dfeea18d', '2020-04-28', '1', 3, 10);
INSERT INTO `order_p` VALUES (2, 'd2077407-20fe-487e-998f-f181d2c6a13e', '2020-04-28', '0', 2, 30);
INSERT INTO `order_p` VALUES (3, '8b120ed5-f461-4655-b043-61c129e96454', '2020-04-28', '0', 2, 143);
INSERT INTO `order_p` VALUES (4, '96526acc-d2c6-4d40-870f-aba425b14b95', '2020-04-28', '0', 2, 143);
INSERT INTO `order_p` VALUES (5, '103b625f-9d29-400b-bcbf-9359e09c5145', '2020-04-28', '0', 2, 21);
INSERT INTO `order_p` VALUES (6, '718bc78b-e3fb-4ec9-8953-e60c94865e3a', '2020-04-28', '0', 2, 9);
INSERT INTO `order_p` VALUES (7, 'd7753874-74e2-46d2-922c-a0ebd3fe8a7a', '2020-04-28', '0', 3, 10);
INSERT INTO `order_p` VALUES (8, '5e11424a-6b54-4e6f-bb7a-8fb00e2c3d7d', '2020-04-28', '0', 3, 21);
INSERT INTO `order_p` VALUES (9, '326143d1-80df-491a-8ba4-94032d7e7851', '2020-04-28', '0', 3, 14);
INSERT INTO `order_p` VALUES (10, '5ef3c1d0-0ea5-47c5-ab72-c6e00ef3ed2f', '2020-04-28', '0', 2, 10);
INSERT INTO `order_p` VALUES (11, '4bd3bf00-321a-41ce-a090-043cc12e2bcb', '2020-04-29', '0', 1, 20);
INSERT INTO `order_p` VALUES (12, '587583c0-9539-43bb-98b6-8ba2b53951d0', '2020-04-29', '0', 2, 200);

-- ----------------------------
-- Table structure for product_banner_p
-- ----------------------------
DROP TABLE IF EXISTS `product_banner_p`;
CREATE TABLE `product_banner_p`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `product_id` int(16) NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_banner_p
-- ----------------------------
INSERT INTO `product_banner_p` VALUES (1, 3, 1);
INSERT INTO `product_banner_p` VALUES (2, 1, 1);
INSERT INTO `product_banner_p` VALUES (3, 14, 1);

-- ----------------------------
-- Table structure for product_kind_p
-- ----------------------------
DROP TABLE IF EXISTS `product_kind_p`;
CREATE TABLE `product_kind_p`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `kind_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_kind_p
-- ----------------------------
INSERT INTO `product_kind_p` VALUES (1, '我爱吃肉');
INSERT INTO `product_kind_p` VALUES (2, '我爱吃素');
INSERT INTO `product_kind_p` VALUES (3, '我爱海鲜');
INSERT INTO `product_kind_p` VALUES (4, '我爱主食');
INSERT INTO `product_kind_p` VALUES (5, '小吃饮料');

-- ----------------------------
-- Table structure for product_order_p
-- ----------------------------
DROP TABLE IF EXISTS `product_order_p`;
CREATE TABLE `product_order_p`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_id` int(16) NOT NULL,
  `buy_num` int(16) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_order_p
-- ----------------------------
INSERT INTO `product_order_p` VALUES (4, 'c5713cff-28d7-4011-8915-cca7dfeea18d', 7, 1);
INSERT INTO `product_order_p` VALUES (5, 'd2077407-20fe-487e-998f-f181d2c6a13e', 31, 1);
INSERT INTO `product_order_p` VALUES (6, 'd2077407-20fe-487e-998f-f181d2c6a13e', 8, 1);
INSERT INTO `product_order_p` VALUES (7, 'd2077407-20fe-487e-998f-f181d2c6a13e', 10, 1);
INSERT INTO `product_order_p` VALUES (8, '8b120ed5-f461-4655-b043-61c129e96454', 3, 1);
INSERT INTO `product_order_p` VALUES (9, '96526acc-d2c6-4d40-870f-aba425b14b95', 3, 1);
INSERT INTO `product_order_p` VALUES (10, '103b625f-9d29-400b-bcbf-9359e09c5145', 4, 1);
INSERT INTO `product_order_p` VALUES (11, '718bc78b-e3fb-4ec9-8953-e60c94865e3a', 8, 1);
INSERT INTO `product_order_p` VALUES (12, 'd7753874-74e2-46d2-922c-a0ebd3fe8a7a', 7, 1);
INSERT INTO `product_order_p` VALUES (13, '5e11424a-6b54-4e6f-bb7a-8fb00e2c3d7d', 4, 1);
INSERT INTO `product_order_p` VALUES (14, '326143d1-80df-491a-8ba4-94032d7e7851', 5, 1);
INSERT INTO `product_order_p` VALUES (15, '5ef3c1d0-0ea5-47c5-ab72-c6e00ef3ed2f', 7, 1);
INSERT INTO `product_order_p` VALUES (16, '4bd3bf00-321a-41ce-a090-043cc12e2bcb', 1, 1);
INSERT INTO `product_order_p` VALUES (17, '4bd3bf00-321a-41ce-a090-043cc12e2bcb', 7, 2);
INSERT INTO `product_order_p` VALUES (19, '587583c0-9539-43bb-98b6-8ba2b53951d0', 1, 5);

-- ----------------------------
-- Table structure for product_p
-- ----------------------------
DROP TABLE IF EXISTS `product_p`;
CREATE TABLE `product_p`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `vprice` double(10, 2) NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inventory` int(16) NULL DEFAULT NULL,
  `product_kind_id` int(16) NULL DEFAULT NULL,
  `buy_count` int(1) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `status` int(1) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_p
-- ----------------------------
INSERT INTO `product_p` VALUES (1, '大盘鸡', 40.00, 37.00, '/static/pro/upload/1f889bbacd414cd.jpg', '美味大盘鸡，好吃、好吃、好好吃！', NULL, 1, 8, 1);
INSERT INTO `product_p` VALUES (2, '东坡肉', 32.00, 30.00, '/static/pro/upload/ffec80580537404.jpg', '东坡肉眉山和江南地区特色传统名菜！', NULL, 1, 0, 0);
INSERT INTO `product_p` VALUES (3, '干锅牛蛙', 143.00, 43.00, '/static/pro/upload/2c85771b7710499.jpg', '干锅牛蛙', NULL, 1, 13, 1);
INSERT INTO `product_p` VALUES (4, '干锅腊肉茶树菇', 21.00, 21.00, '/static/pro/upload/499b730e18ff45f.jpg', '干锅腊肉茶树菇,好吃的不行！', NULL, 1, 1, 1);
INSERT INTO `product_p` VALUES (5, '白菜豆腐汤', 14.00, 14.00, '/static/pro/upload/1c46dda3860343a.jpg', '白菜豆腐汤.jpg', NULL, 2, 1, 1);
INSERT INTO `product_p` VALUES (6, '干锅花菜', 8.00, 5.00, '/static/pro/upload/a10be9a10e5a475.jpeg', '干锅有机花菜', NULL, 2, NULL, 1);
INSERT INTO `product_p` VALUES (7, '金针菇烧豆腐', 10.00, 9.00, '/static/pro/upload/bb91469f56754f3.jpg', '金针菇烧豆腐', NULL, 2, 2, 1);
INSERT INTO `product_p` VALUES (8, '韭菜炒香干', 9.00, 9.00, '/static/pro/upload/5060735a2b604a2.jpeg', '韭菜炒香干', NULL, 2, 1, 1);
INSERT INTO `product_p` VALUES (9, '西芹呛鱿鱼', 21.00, 21.00, '/static/pro/upload/7e32aeee3b204de.jpeg', '西芹呛鱿鱼', NULL, 3, NULL, 1);
INSERT INTO `product_p` VALUES (10, '牛肉干', 30.00, 25.00, '/static/pro/upload/cce01d99d7254e1.jpg', '牛肉干内蒙古风干手撕五香辣味牛肉片', NULL, 5, 1, 1);
INSERT INTO `product_p` VALUES (11, '汴京炸鸡.jpg', 18.00, 15.00, '/static/pro/upload/1d07ae5d2a18401.jpg', '汴京炸鸡.jpg', NULL, 5, NULL, 1);
INSERT INTO `product_p` VALUES (12, '康师傅冰红茶', 5.00, 4.50, '/static/pro/upload/038ef1a78b7243a.jpg', '康师傅冰红茶.jpg', NULL, 5, NULL, 1);
INSERT INTO `product_p` VALUES (13, '哇哈哈纯净水', 3.00, 3.00, '/static/pro/upload/bf71ab78ff2d467.jpg', '哇哈哈纯净水', NULL, 5, NULL, 1);
INSERT INTO `product_p` VALUES (14, '柠檬水.jpg', 4.00, 4.00, '/static/pro/upload/1f25f4e97c0f461.jpg', '柠檬水.jpg', NULL, 5, NULL, 1);
INSERT INTO `product_p` VALUES (15, '牛奶饼干.jpeg', 8.00, 7.00, '/static/pro/upload/547f1909cb40401.jpeg', '牛奶饼干.jpeg', NULL, 5, NULL, 1);
INSERT INTO `product_p` VALUES (16, '草莓饮料.jpg', 9.00, 9.00, '/static/pro/upload/3ba944de000a44e.jpg', '草莓饮料.jpg', NULL, 5, NULL, 1);
INSERT INTO `product_p` VALUES (17, '鱼香肉丝.jpg', 15.00, 15.00, '/static/pro/upload/c51c4ccaaa434fd.jpg', '鱼香肉丝.jpg', NULL, 1, NULL, 1);
INSERT INTO `product_p` VALUES (18, '特色卤牛肉.jpg', 30.00, 28.00, '/static/pro/upload/384de547262e430.jpg', '特色卤牛肉.jpg', NULL, 1, NULL, 1);
INSERT INTO `product_p` VALUES (19, '蒜苔炒肉.jpg', 20.00, 17.00, '/static/pro/upload/dae716e6121243a.jpg', '蒜苔炒肉.jpg', NULL, 1, NULL, 1);
INSERT INTO `product_p` VALUES (20, '口水鸡.jpg', 25.00, 24.00, '/static/pro/upload/4059f391afcd4c5.jpg', '口水鸡.jpg', NULL, 1, NULL, 1);
INSERT INTO `product_p` VALUES (21, '洋葱木耳.jpg', 13.00, 9.00, '/static/pro/upload/383660f4fed047a.jpg', '洋葱木耳.jpg', NULL, 2, NULL, 1);
INSERT INTO `product_p` VALUES (22, '西芹腐竹.jpg', 14.00, 14.00, '/static/pro/upload/0b8fb69829654a9.jpg', '西芹腐竹.jpg', NULL, 2, NULL, 1);
INSERT INTO `product_p` VALUES (23, '西红柿炒土豆片.jpg', 17.00, 15.00, '/static/pro/upload/7e979913ff42424.jpg', '西红柿炒土豆片.jpg', NULL, 2, NULL, 1);
INSERT INTO `product_p` VALUES (24, '蒜蓉时蔬.jpg', 9.00, 9.00, '/static/pro/upload/9ec5f6906509402.jpg', '蒜蓉时蔬.jpg', NULL, 2, NULL, 1);
INSERT INTO `product_p` VALUES (25, '酸辣土豆丝.jpg', 12.00, 10.00, '/static/pro/upload/090de4159ea5448.jpg', '酸辣土豆丝.jpg', NULL, 2, NULL, 1);
INSERT INTO `product_p` VALUES (26, '手撕包菜.jpeg', 11.00, 11.00, '/static/pro/upload/48a2233e00a941f.jpeg', '手撕包菜.jpeg', NULL, 2, NULL, 1);
INSERT INTO `product_p` VALUES (27, '河间驴肉火烧.jpg', 9.00, 9.00, '/static/pro/upload/068075e216714df.jpg', '河间驴肉火烧.jpg', NULL, 4, NULL, 1);
INSERT INTO `product_p` VALUES (28, '米饭', 5.00, 5.00, '/static/pro/upload/caf6e334418e43b.jpg', '米饭', NULL, 4, NULL, 1);
INSERT INTO `product_p` VALUES (29, '馒头.jpg', 3.00, 3.00, '/static/pro/upload/1beafae965a6409.jpg', '馒头.jpg', NULL, 4, NULL, 1);
INSERT INTO `product_p` VALUES (30, '水饺', 10.00, 10.00, '/static/pro/upload/b8722977d7644e7.jpg', '水饺', NULL, 4, NULL, 1);
INSERT INTO `product_p` VALUES (31, '蛋挞.jpg', 10.00, 10.00, '/static/pro/upload/0f8ed80a8604492.jpg', '蛋挞.jpg', NULL, 5, 1, 1);
INSERT INTO `product_p` VALUES (32, '222', 222.00, 222.00, '/static/pro/upload/f0a5363710a84a7.png', '222', NULL, 1, NULL, 0);

-- ----------------------------
-- Table structure for role_p
-- ----------------------------
DROP TABLE IF EXISTS `role_p`;
CREATE TABLE `role_p`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_p
-- ----------------------------
INSERT INTO `role_p` VALUES (1, '管理员');
INSERT INTO `role_p` VALUES (2, '普通用户');

-- ----------------------------
-- Table structure for user_info_p
-- ----------------------------
DROP TABLE IF EXISTS `user_info_p`;
CREATE TABLE `user_info_p`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `user_id` int(16) NULL DEFAULT NULL,
  `real_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_info` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip_code` int(8) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_p
-- ----------------------------
DROP TABLE IF EXISTS `user_p`;
CREATE TABLE `user_p`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(16) NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_p
-- ----------------------------
INSERT INTO `user_p` VALUES (1, 'admin', 'admin', 1, 1);
INSERT INTO `user_p` VALUES (2, 'miaosheng', 'miaosheng', 2, 1);
INSERT INTO `user_p` VALUES (3, 'xiaoming', 'xiaoming', 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
