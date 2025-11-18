/*
 Navicat Premium Dump SQL

 Source Server         : LOCALHOST XAMPP
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : localhost:3306
 Source Schema         : proyek

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 18/11/2025 09:38:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'Dolorem recusandae repellat.', 'Nathanael Schaefer', 'Ut illum maxime dicta nostrum et recusandae. Expedita omnis et amet et architecto. Vel aut explicabo corporis unde maiores necessitatibus nihil. Architecto necessitatibus architecto illum dolor aliquid.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `books` VALUES (2, 'Voluptas fuga sequi.', 'Bertha Romaguera', 'Mollitia sapiente quo magni numquam officiis rerum. Aperiam atque dolores excepturi quia quod. Ut in sunt illo quia. Ut at illo laborum amet ab.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `books` VALUES (3, 'Vitae dignissimos omnis cum.', 'Darrel Emmerich', 'Corporis quo est possimus deserunt tempora dicta fugiat. Earum fugit quaerat est laboriosam quia. Est fuga debitis harum. Assumenda qui pariatur nihil atque tempora consequatur rem nisi.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `books` VALUES (4, 'Sed eos qui.', 'Prof. Lee Zulauf', 'Dolorem voluptatem ut qui quos ut. Non delectus adipisci hic et illum quaerat fugit. Nobis quo omnis aut totam.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `books` VALUES (5, 'Rerum reprehenderit optio itaque.', 'Verna Bosco', 'Odio repellat non est illum et et. Iste ut sed autem debitis. Voluptatem quae quisquam et rem in. Est praesentium ea ipsam aut voluptates.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');

-- ----------------------------
-- Table structure for breezy_sessions
-- ----------------------------
DROP TABLE IF EXISTS `breezy_sessions`;
CREATE TABLE `breezy_sessions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `authenticatable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint UNSIGNED NOT NULL,
  `panel_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `guard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `breezy_sessions_authenticatable_type_authenticatable_id_index`(`authenticatable_type` ASC, `authenticatable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of breezy_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------
INSERT INTO `cache` VALUES ('7b52009b64fd0a2a49e6d8a939753077792b0554', 'i:1;', 1763370760);
INSERT INTO `cache` VALUES ('7b52009b64fd0a2a49e6d8a939753077792b0554:timer', 'i:1763370760;', 1763370760);
INSERT INTO `cache` VALUES ('livewire-rate-limiter:59d6ad626907b5a0341aba51c3754cd265bffec5', 'i:2;', 1763372277);
INSERT INTO `cache` VALUES ('livewire-rate-limiter:59d6ad626907b5a0341aba51c3754cd265bffec5:timer', 'i:1763372277;', 1763372277);
INSERT INTO `cache` VALUES ('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:86:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"view_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"view_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"update_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"restore_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"restore_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"replicate_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"reorder_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"delete_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:17:\"force_delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:21:\"force_delete_any_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:16:\"book:create_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"book:update_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:16:\"book:delete_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:20:\"book:pagination_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:16:\"book:detail_book\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:10:\"view_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:14:\"view_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:12:\"create_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:12:\"update_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:13:\"restore_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:17:\"restore_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:15:\"replicate_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:13:\"reorder_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:12:\"delete_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:16:\"delete_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:18:\"force_delete_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:22:\"force_delete_any_token\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:18:\"page_ManageSetting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:11:\"page_Themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:18:\"page_MyProfilePage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:13:\"view_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:17:\"view_any_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:15:\"create_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:15:\"update_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:16:\"restore_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:20:\"restore_any_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:18:\"replicate_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:16:\"reorder_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:15:\"delete_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:19:\"delete_any_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:21:\"force_delete_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:25:\"force_delete_any_contract\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:15:\"view_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:19:\"view_any_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:17:\"create_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:17:\"update_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:18:\"restore_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:22:\"restore_any_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:20:\"replicate_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:18:\"reorder_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:17:\"delete_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:21:\"delete_any_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:23:\"force_delete_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:27:\"force_delete_any_kontraktor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:10:\"view_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:14:\"view_any_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:12:\"create_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:12:\"update_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:13:\"restore_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:17:\"restore_any_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:15:\"replicate_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:13:\"reorder_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:12:\"delete_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:16:\"delete_any_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:18:\"force_delete_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:22:\"force_delete_any_plant\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:12:\"admin proyek\";s:1:\"c\";s:3:\"web\";}}}', 1763458668);

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES (1, 'Dr. Malika Frami', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `contacts` VALUES (2, 'Prof. Kobe Mueller', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `contacts` VALUES (3, 'Milan Gislason', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `contacts` VALUES (4, 'Mr. Austen Monahan V', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `contacts` VALUES (5, 'Rodrick Beer', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `contacts` VALUES (6, 'Alisa Prohaska', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `contacts` VALUES (7, 'Mrs. Sarah Ward Jr.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `contacts` VALUES (8, 'Pansy McCullough', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `contacts` VALUES (9, 'Turner Fadel', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `contacts` VALUES (10, 'Ms. Precious Koss', '2025-11-17 07:47:16', '2025-11-17 07:47:16');

-- ----------------------------
-- Table structure for contracts
-- ----------------------------
DROP TABLE IF EXISTS `contracts`;
CREATE TABLE `contracts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_agreement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `nomor_sr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plant_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontraktor_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ammount` int NOT NULL,
  `worker` int NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contracts
-- ----------------------------
INSERT INTO `contracts` VALUES (1, 'TEST/001', 'KONTRAK TEST', 'TEST/001', '2025-11-17', '2025-12-01', 'TEST/001', '2', '1', 500000000, 250, 'TEST', '01KA8HB9YQCZH434JR2K7TRJ2F.pdf', '2025-11-17 08:52:10', '2025-11-17 09:11:46');

-- ----------------------------
-- Table structure for exports
-- ----------------------------
DROP TABLE IF EXISTS `exports`;
CREATE TABLE `exports`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `exporter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `exports_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exports
-- ----------------------------

-- ----------------------------
-- Table structure for failed_import_rows
-- ----------------------------
DROP TABLE IF EXISTS `failed_import_rows`;
CREATE TABLE `failed_import_rows`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `data` json NOT NULL,
  `import_id` bigint UNSIGNED NOT NULL,
  `validation_error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `failed_import_rows_import_id_foreign`(`import_id` ASC) USING BTREE,
  CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_import_rows
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for imports
-- ----------------------------
DROP TABLE IF EXISTS `imports`;
CREATE TABLE `imports`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `importer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT 0,
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `imports_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of imports
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for kontraktors
-- ----------------------------
DROP TABLE IF EXISTS `kontraktors`;
CREATE TABLE `kontraktors`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kontraktors
-- ----------------------------
INSERT INTO `kontraktors` VALUES (1, 'PT.BAKTI UTAMA', '-', '2025-11-17 08:07:11', '2025-11-17 08:07:11');
INSERT INTO `kontraktors` VALUES (2, 'PT.INDONESIA BANGUN MANDIRI', '-', '2025-11-17 08:07:23', '2025-11-17 08:07:23');

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `media_uuid_unique`(`uuid` ASC) USING BTREE,
  INDEX `media_model_type_model_id_index`(`model_type` ASC, `model_id` ASC) USING BTREE,
  INDEX `media_order_column_index`(`order_column` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of media
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2022_12_14_083707_create_settings_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_12_04_025120_create_media_table', 1);
INSERT INTO `migrations` VALUES (6, '2024_12_04_041953_create_breezy_sessions_table', 1);
INSERT INTO `migrations` VALUES (7, '2025_01_01_120813_create_books_table', 1);
INSERT INTO `migrations` VALUES (8, '2025_01_02_064819_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (9, '2025_01_02_225927_add_avatar_url_column_to_users_table', 1);
INSERT INTO `migrations` VALUES (10, '2025_01_03_114929_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (11, '2025_01_04_125650_create_posts_table', 1);
INSERT INTO `migrations` VALUES (12, '2025_01_08_152510_create_kaido_settings', 1);
INSERT INTO `migrations` VALUES (13, '2025_01_08_233142_create_socialite_users_table', 1);
INSERT INTO `migrations` VALUES (14, '2025_01_09_225908_update_user_table_make_password_column_nullable', 1);
INSERT INTO `migrations` VALUES (15, '2025_01_12_031340_create_notifications_table', 1);
INSERT INTO `migrations` VALUES (16, '2025_01_12_031357_create_imports_table', 1);
INSERT INTO `migrations` VALUES (17, '2025_01_12_031358_create_exports_table', 1);
INSERT INTO `migrations` VALUES (18, '2025_01_12_031359_create_failed_import_rows_table', 1);
INSERT INTO `migrations` VALUES (19, '2025_01_12_091355_create_contacts_table', 1);
INSERT INTO `migrations` VALUES (20, '2025_01_31_020024_add_themes_settings_to_users_table', 1);
INSERT INTO `migrations` VALUES (21, '2025_11_17_075521_create_plants_table', 2);
INSERT INTO `migrations` VALUES (22, '2025_11_17_080406_create_kontraktors_table', 3);
INSERT INTO `migrations` VALUES (23, '2025_11_17_080935_create_contracts_table', 4);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 11);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 12);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` json NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_notifiable_type_notifiable_id_index`(`notifiable_type` ASC, `notifiable_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'view_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (2, 'view_any_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (3, 'create_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (4, 'update_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (5, 'restore_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (6, 'restore_any_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (7, 'replicate_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (8, 'reorder_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (9, 'delete_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (10, 'delete_any_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (11, 'force_delete_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (12, 'force_delete_any_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (13, 'book:create_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (14, 'book:update_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (15, 'book:delete_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (16, 'book:pagination_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (17, 'book:detail_book', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (18, 'view_role', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (19, 'view_any_role', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (20, 'create_role', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (21, 'update_role', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (22, 'delete_role', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (23, 'delete_any_role', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (24, 'view_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (25, 'view_any_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (26, 'create_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (27, 'update_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (28, 'restore_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (29, 'restore_any_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (30, 'replicate_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (31, 'reorder_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (32, 'delete_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (33, 'delete_any_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (34, 'force_delete_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (35, 'force_delete_any_token', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (36, 'view_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (37, 'view_any_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (38, 'create_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (39, 'update_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (40, 'restore_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (41, 'restore_any_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (42, 'replicate_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (43, 'reorder_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (44, 'delete_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (45, 'delete_any_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (46, 'force_delete_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (47, 'force_delete_any_user', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (48, 'page_ManageSetting', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (49, 'page_Themes', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (50, 'page_MyProfilePage', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `permissions` VALUES (51, 'view_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (52, 'view_any_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (53, 'create_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (54, 'update_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (55, 'restore_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (56, 'restore_any_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (57, 'replicate_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (58, 'reorder_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (59, 'delete_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (60, 'delete_any_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (61, 'force_delete_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (62, 'force_delete_any_contract', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (63, 'view_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (64, 'view_any_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (65, 'create_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (66, 'update_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (67, 'restore_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (68, 'restore_any_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (69, 'replicate_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (70, 'reorder_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (71, 'delete_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (72, 'delete_any_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (73, 'force_delete_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (74, 'force_delete_any_kontraktor', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (75, 'view_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (76, 'view_any_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (77, 'create_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (78, 'update_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (79, 'restore_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (80, 'restore_any_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (81, 'replicate_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (82, 'reorder_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (83, 'delete_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (84, 'delete_any_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (85, 'force_delete_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');
INSERT INTO `permissions` VALUES (86, 'force_delete_any_plant', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for plants
-- ----------------------------
DROP TABLE IF EXISTS `plants`;
CREATE TABLE `plants`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of plants
-- ----------------------------
INSERT INTO `plants` VALUES (2, 'Plant 1', '-', '2025-11-17 08:01:45', '2025-11-17 08:01:45');
INSERT INTO `plants` VALUES (3, 'Plant 7/8', '-', '2025-11-17 08:03:28', '2025-11-17 08:03:28');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'Dolores nisi commodi ut.', 'Natus sit consequatur harum tenetur explicabo quas sunt commodi. Sunt facilis quam rerum eaque. Deleniti aliquid et nesciunt dicta culpa.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `posts` VALUES (2, 'Nostrum et odio vel iste qui.', 'Blanditiis sit et non. Vel rerum odit laborum maiores quis suscipit natus deserunt. Qui id non distinctio neque enim.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `posts` VALUES (3, 'Beatae tempore accusamus quis aspernatur cum vitae nesciunt.', 'Quo voluptatibus harum at. Soluta optio facilis ut. Maiores corrupti delectus ducimus rerum qui animi facere sit.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `posts` VALUES (4, 'Quasi rem ut non animi dolores corporis.', 'Et cupiditate et assumenda facilis voluptas. Saepe magni deleniti cumque ab adipisci aut. Nesciunt quis facere ab eaque minus quia. Perferendis laborum optio facilis ab nisi nobis et delectus.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `posts` VALUES (5, 'Sunt incidunt laboriosam dolorem quo illum architecto nemo.', 'Hic est id aut pariatur totam similique. Omnis minus aliquam facere recusandae praesentium quis. Recusandae voluptatem omnis non nihil odit.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `posts` VALUES (6, 'Aut cupiditate eum quidem voluptate dolore veniam minus omnis.', 'Quibusdam a perferendis dolorum necessitatibus unde. Iste ut saepe quod aut voluptas rerum recusandae. Sint et voluptas inventore voluptatem corporis esse.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `posts` VALUES (7, 'Quaerat voluptatem nobis commodi velit amet aut minus.', 'Sed expedita itaque ut voluptate debitis et aliquam velit. Voluptatem atque rerum excepturi praesentium alias accusamus. Rem et ex ducimus ullam culpa nostrum corporis. Modi est vel sequi consequuntur et.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `posts` VALUES (8, 'Debitis aut ipsum in earum.', 'Numquam culpa et enim repellat. Dolores facilis fugit eum quasi. Et ratione occaecati quia neque ut illo dolorem. Maxime voluptatem unde atque.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `posts` VALUES (9, 'Quia maxime eaque sed totam sit sed.', 'Molestias vero rem maxime voluptate ut. Et aut dolorem soluta perferendis molestiae dolor quia. Sunt sit quia ut quia amet in omnis. Sequi ad quod sed nesciunt. Sit excepturi ipsa odit.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');
INSERT INTO `posts` VALUES (10, 'Sapiente recusandae magnam voluptates deserunt.', 'Quas est quis quibusdam similique laboriosam iure. Doloribus maxime consequatur aperiam voluptates. Dignissimos cumque tempore iure sit voluptate magni consequuntur. Suscipit vel magnam ut culpa vero aut necessitatibus.', '2025-11-17 07:47:16', '2025-11-17 07:47:16');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (9, 1);
INSERT INTO `role_has_permissions` VALUES (10, 1);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (13, 1);
INSERT INTO `role_has_permissions` VALUES (14, 1);
INSERT INTO `role_has_permissions` VALUES (15, 1);
INSERT INTO `role_has_permissions` VALUES (16, 1);
INSERT INTO `role_has_permissions` VALUES (17, 1);
INSERT INTO `role_has_permissions` VALUES (18, 1);
INSERT INTO `role_has_permissions` VALUES (19, 1);
INSERT INTO `role_has_permissions` VALUES (20, 1);
INSERT INTO `role_has_permissions` VALUES (21, 1);
INSERT INTO `role_has_permissions` VALUES (22, 1);
INSERT INTO `role_has_permissions` VALUES (23, 1);
INSERT INTO `role_has_permissions` VALUES (24, 1);
INSERT INTO `role_has_permissions` VALUES (25, 1);
INSERT INTO `role_has_permissions` VALUES (26, 1);
INSERT INTO `role_has_permissions` VALUES (27, 1);
INSERT INTO `role_has_permissions` VALUES (28, 1);
INSERT INTO `role_has_permissions` VALUES (29, 1);
INSERT INTO `role_has_permissions` VALUES (30, 1);
INSERT INTO `role_has_permissions` VALUES (31, 1);
INSERT INTO `role_has_permissions` VALUES (32, 1);
INSERT INTO `role_has_permissions` VALUES (33, 1);
INSERT INTO `role_has_permissions` VALUES (34, 1);
INSERT INTO `role_has_permissions` VALUES (35, 1);
INSERT INTO `role_has_permissions` VALUES (36, 1);
INSERT INTO `role_has_permissions` VALUES (37, 1);
INSERT INTO `role_has_permissions` VALUES (38, 1);
INSERT INTO `role_has_permissions` VALUES (39, 1);
INSERT INTO `role_has_permissions` VALUES (40, 1);
INSERT INTO `role_has_permissions` VALUES (41, 1);
INSERT INTO `role_has_permissions` VALUES (42, 1);
INSERT INTO `role_has_permissions` VALUES (43, 1);
INSERT INTO `role_has_permissions` VALUES (44, 1);
INSERT INTO `role_has_permissions` VALUES (45, 1);
INSERT INTO `role_has_permissions` VALUES (46, 1);
INSERT INTO `role_has_permissions` VALUES (47, 1);
INSERT INTO `role_has_permissions` VALUES (48, 1);
INSERT INTO `role_has_permissions` VALUES (49, 1);
INSERT INTO `role_has_permissions` VALUES (50, 1);
INSERT INTO `role_has_permissions` VALUES (51, 1);
INSERT INTO `role_has_permissions` VALUES (52, 1);
INSERT INTO `role_has_permissions` VALUES (53, 1);
INSERT INTO `role_has_permissions` VALUES (54, 1);
INSERT INTO `role_has_permissions` VALUES (55, 1);
INSERT INTO `role_has_permissions` VALUES (56, 1);
INSERT INTO `role_has_permissions` VALUES (57, 1);
INSERT INTO `role_has_permissions` VALUES (58, 1);
INSERT INTO `role_has_permissions` VALUES (59, 1);
INSERT INTO `role_has_permissions` VALUES (60, 1);
INSERT INTO `role_has_permissions` VALUES (61, 1);
INSERT INTO `role_has_permissions` VALUES (62, 1);
INSERT INTO `role_has_permissions` VALUES (63, 1);
INSERT INTO `role_has_permissions` VALUES (64, 1);
INSERT INTO `role_has_permissions` VALUES (65, 1);
INSERT INTO `role_has_permissions` VALUES (66, 1);
INSERT INTO `role_has_permissions` VALUES (67, 1);
INSERT INTO `role_has_permissions` VALUES (68, 1);
INSERT INTO `role_has_permissions` VALUES (69, 1);
INSERT INTO `role_has_permissions` VALUES (70, 1);
INSERT INTO `role_has_permissions` VALUES (71, 1);
INSERT INTO `role_has_permissions` VALUES (72, 1);
INSERT INTO `role_has_permissions` VALUES (73, 1);
INSERT INTO `role_has_permissions` VALUES (74, 1);
INSERT INTO `role_has_permissions` VALUES (75, 1);
INSERT INTO `role_has_permissions` VALUES (76, 1);
INSERT INTO `role_has_permissions` VALUES (77, 1);
INSERT INTO `role_has_permissions` VALUES (78, 1);
INSERT INTO `role_has_permissions` VALUES (79, 1);
INSERT INTO `role_has_permissions` VALUES (80, 1);
INSERT INTO `role_has_permissions` VALUES (81, 1);
INSERT INTO `role_has_permissions` VALUES (82, 1);
INSERT INTO `role_has_permissions` VALUES (83, 1);
INSERT INTO `role_has_permissions` VALUES (84, 1);
INSERT INTO `role_has_permissions` VALUES (85, 1);
INSERT INTO `role_has_permissions` VALUES (86, 1);
INSERT INTO `role_has_permissions` VALUES (51, 2);
INSERT INTO `role_has_permissions` VALUES (52, 2);
INSERT INTO `role_has_permissions` VALUES (53, 2);
INSERT INTO `role_has_permissions` VALUES (54, 2);
INSERT INTO `role_has_permissions` VALUES (55, 2);
INSERT INTO `role_has_permissions` VALUES (56, 2);
INSERT INTO `role_has_permissions` VALUES (57, 2);
INSERT INTO `role_has_permissions` VALUES (58, 2);
INSERT INTO `role_has_permissions` VALUES (59, 2);
INSERT INTO `role_has_permissions` VALUES (60, 2);
INSERT INTO `role_has_permissions` VALUES (61, 2);
INSERT INTO `role_has_permissions` VALUES (62, 2);
INSERT INTO `role_has_permissions` VALUES (63, 2);
INSERT INTO `role_has_permissions` VALUES (64, 2);
INSERT INTO `role_has_permissions` VALUES (65, 2);
INSERT INTO `role_has_permissions` VALUES (66, 2);
INSERT INTO `role_has_permissions` VALUES (67, 2);
INSERT INTO `role_has_permissions` VALUES (68, 2);
INSERT INTO `role_has_permissions` VALUES (69, 2);
INSERT INTO `role_has_permissions` VALUES (70, 2);
INSERT INTO `role_has_permissions` VALUES (71, 2);
INSERT INTO `role_has_permissions` VALUES (72, 2);
INSERT INTO `role_has_permissions` VALUES (73, 2);
INSERT INTO `role_has_permissions` VALUES (74, 2);
INSERT INTO `role_has_permissions` VALUES (75, 2);
INSERT INTO `role_has_permissions` VALUES (76, 2);
INSERT INTO `role_has_permissions` VALUES (77, 2);
INSERT INTO `role_has_permissions` VALUES (78, 2);
INSERT INTO `role_has_permissions` VALUES (79, 2);
INSERT INTO `role_has_permissions` VALUES (80, 2);
INSERT INTO `role_has_permissions` VALUES (81, 2);
INSERT INTO `role_has_permissions` VALUES (82, 2);
INSERT INTO `role_has_permissions` VALUES (83, 2);
INSERT INTO `role_has_permissions` VALUES (84, 2);
INSERT INTO `role_has_permissions` VALUES (85, 2);
INSERT INTO `role_has_permissions` VALUES (86, 2);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'super_admin', 'web', '2025-11-17 07:50:43', '2025-11-17 07:50:43');
INSERT INTO `roles` VALUES (2, 'admin proyek', 'web', '2025-11-17 08:40:04', '2025-11-17 08:40:04');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('6CzjYUJXFmseWshd4WW3omPJcTG3hhZh0CXeAZlX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 OPR/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUx3WnRhWGF4dXNEaUVwUk1lM2Q5VTR6NGo4NGxQdmJmUGdIZ2g4TSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763371026);
INSERT INTO `sessions` VALUES ('adTw1FYOd0gKt8zVOV2lrT8Ee4BqZyBdxvYY4vFH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 OPR/123.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR2FZTUVHOVZUc1JDcldyNmxLWEloUHp2elYxYTZLeXFOeGRJQ05hbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763365707);
INSERT INTO `sessions` VALUES ('aKxd4xrb8Zmo2KiSQO89CZYnaQ5q0ZUutxBNA2AV', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMmJ1eVRvZDAweG16SEVEdXZqMjJtdm1ZUVFYQW5XOGtPTGVHdEw3ciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9wcm95ZWsudGVzdC9jb250cmFjdHMvY3JlYXRlIjt9czo1MDoibG9naW5fd2ViXzNkYzdhOTEzZWY1ZmQ0Yjg5MGVjYWJlMzQ4NzA4NTU3M2UxNmNmODIiO2k6MTI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQ4WVc5aWhlVk96Y1U1WTBwWGV5d0JPNlZ6QmFsRW14SkNIaFR1QTJsRlZkN25IaS5mMWYvRyI7fQ==', 1763373010);
INSERT INTO `sessions` VALUES ('CLQkO5fhsyouEWtpot305NH9VCCSZ6bXYHbSG93z', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTHV4OG9ZSVdteENhS01jREFHb0xVWVFEdVhFejROM3ZWN080VlRlQyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI0OiJodHRwOi8vcHJveWVrLnRlc3QvdXNlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfM2RjN2E5MTNlZjVmZDRiODkwZWNhYmUzNDg3MDg1NTczZTE2Y2Y4MiI7aToxMTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJENGOTZ4eUNwankvSVliYlpVNnRmbE82RERCN2VsZjh3bjdaZHJaTG1WNVlrNElidjJ6OTR5IjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1763368830);
INSERT INTO `sessions` VALUES ('E7tofqbhN2UCiZUZjrnfaV46l2sap82JSoR0yPxQ', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTmNFQm1XRUhNM2FucTJlQ1FEQ1F4c1lPa29vc3E5YXhyeThVWWZEbiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfM2RjN2E5MTNlZjVmZDRiODkwZWNhYmUzNDg3MDg1NTczZTE2Y2Y4MiI7aToxMTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJENGOTZ4eUNwankvSVliYlpVNnRmbE82RERCN2VsZjh3bjdaZHJaTG1WNVlrNElidjJ6OTR5Ijt9', 1763365792);
INSERT INTO `sessions` VALUES ('KDiOGlUpATlUEz8d3uNncKTg5G71kvMYj84oP6vA', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 OPR/123.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiS2xEbzBZMU1mQlBTQlNmS1Uwcm5BZ1huRkkxQjB2NEJMS0pYa2h3ZiI7czo1MDoibG9naW5fd2ViXzNkYzdhOTEzZWY1ZmQ0Yjg5MGVjYWJlMzQ4NzA4NTU3M2UxNmNmODIiO2k6MTI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQ4WVc5aWhlVk96Y1U1WTBwWGV5d0JPNlZ6QmFsRW14SkNIaFR1QTJsRlZkN25IaS5mMWYvRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHA6Ly9wcm95ZWsudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763368937);
INSERT INTO `sessions` VALUES ('KL5rDoIyRdUaueSuruQyAo7fuPyb0RjkMThbBgz5', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 OPR/123.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSk1DbjVOUTVWOGg3bzhiMU9uanZweEV1cTdvajQzQ1A3OHpQTVYyNCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE4OiJodHRwOi8vcHJveWVrLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfM2RjN2E5MTNlZjVmZDRiODkwZWNhYmUzNDg3MDg1NTczZTE2Y2Y4MiI7aToxMjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJDhZVzlpaGVWT3pjVTVZMHBYZXl3Qk82VnpCYWxFbXhKQ0hoVHVBMmxGVmQ3bkhpLmYxZi9HIjt9', 1763368886);
INSERT INTO `sessions` VALUES ('q8pdZcd8NOirRZctli8ecPlynYJoIrgoLGammUbL', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoic3pjWlpBbXJ2WTZhS1JFN1NWWm5MYVp1aGNKUTRyVktWbGMzbHhPOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9tYW5hZ2Utc2V0dGluZyI7fXM6NTA6ImxvZ2luX3dlYl8zZGM3YTkxM2VmNWZkNGI4OTBlY2FiZTM0ODcwODU1NzNlMTZjZjgyIjtpOjExO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkQ0Y5Nnh5Q3BqeS9JWWJiWlU2dGZsTzZEREI3ZWxmOHduN1pkclpMbVY1WWs0SWJ2Mno5NHkiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1763372944);
INSERT INTO `sessions` VALUES ('qtKWz7vEQVRycwujHouVDQ2X0MIYYGpTzpidGHF1', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 OPR/123.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVUZaclE5ZmppdFhQU3ZVbUNLbWgySzI2MVhSU1FSWU5CamI0Z251cCI7czo1MDoibG9naW5fd2ViXzNkYzdhOTEzZWY1ZmQ0Yjg5MGVjYWJlMzQ4NzA4NTU3M2UxNmNmODIiO2k6MTI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQ4WVc5aWhlVk96Y1U1WTBwWGV5d0JPNlZ6QmFsRW14SkNIaFR1QTJsRlZkN25IaS5mMWYvRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9wcm95ZWsudGVzdC9jb250cmFjdHMvMS9lZGl0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1763370782);
INSERT INTO `sessions` VALUES ('XeR8VDHl3We1JltGF7q0CPcgqFuWO523r0ESQ9SX', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib0FXS2tqRHFqRjVYRU9KUTVqUmE5a3ZhdG1laHptRGhvaVZLbXJPQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763369120);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `payload` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `settings_group_name_unique`(`group` ASC, `name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'KaidoSetting', 'site_name', 0, '\"Spatie\"', '2025-11-17 07:47:15', '2025-11-17 07:47:15');
INSERT INTO `settings` VALUES (2, 'KaidoSetting', 'site_active', 0, 'true', '2025-11-17 07:47:15', '2025-11-17 07:47:15');
INSERT INTO `settings` VALUES (3, 'KaidoSetting', 'registration_enabled', 0, 'true', '2025-11-17 07:47:15', '2025-11-17 07:47:15');
INSERT INTO `settings` VALUES (4, 'KaidoSetting', 'login_enabled', 0, 'true', '2025-11-17 07:47:15', '2025-11-17 07:47:15');
INSERT INTO `settings` VALUES (5, 'KaidoSetting', 'password_reset_enabled', 0, 'true', '2025-11-17 07:47:15', '2025-11-17 07:47:15');
INSERT INTO `settings` VALUES (6, 'KaidoSetting', 'sso_enabled', 0, 'true', '2025-11-17 07:47:15', '2025-11-17 07:47:15');

-- ----------------------------
-- Table structure for socialite_users
-- ----------------------------
DROP TABLE IF EXISTS `socialite_users`;
CREATE TABLE `socialite_users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `socialite_users_provider_provider_id_unique`(`provider` ASC, `provider_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of socialite_users
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'default',
  `theme_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Prof. Easton Nolan', 'reyna91@example.org', '2025-11-17 07:47:15', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'eB3XWUj33o', '2025-11-17 07:47:15', '2025-11-17 07:47:15', NULL, 'default', NULL);
INSERT INTO `users` VALUES (2, 'Miss Corene Schaden PhD', 'sally.deckow@example.net', '2025-11-17 07:47:15', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'OyZ7GFHISB', '2025-11-17 07:47:16', '2025-11-17 07:47:16', NULL, 'default', NULL);
INSERT INTO `users` VALUES (3, 'Vaughn Mohr', 'linnie.stoltenberg@example.net', '2025-11-17 07:47:15', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'dLU7OV4Lnj', '2025-11-17 07:47:16', '2025-11-17 07:47:16', NULL, 'default', NULL);
INSERT INTO `users` VALUES (4, 'Webster Mitchell', 'blick.chadd@example.org', '2025-11-17 07:47:15', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'mQn8G2mHEA', '2025-11-17 07:47:16', '2025-11-17 07:47:16', NULL, 'default', NULL);
INSERT INTO `users` VALUES (5, 'Noemie Berge', 'pink.macejkovic@example.org', '2025-11-17 07:47:15', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'lcqOWY8cVT', '2025-11-17 07:47:16', '2025-11-17 07:47:16', NULL, 'default', NULL);
INSERT INTO `users` VALUES (6, 'Mrs. Myah Bernier Sr.', 'ooconner@example.net', '2025-11-17 07:47:15', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'M0yU8Wd4Jh', '2025-11-17 07:47:16', '2025-11-17 07:47:16', NULL, 'default', NULL);
INSERT INTO `users` VALUES (7, 'Romaine Klein', 'fsmith@example.com', '2025-11-17 07:47:15', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'cU15gitynD', '2025-11-17 07:47:16', '2025-11-17 07:47:16', NULL, 'default', NULL);
INSERT INTO `users` VALUES (8, 'Kevin Rau DDS', 'cleannon@example.org', '2025-11-17 07:47:15', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'KsCXdhyYGa', '2025-11-17 07:47:16', '2025-11-17 07:47:16', NULL, 'default', NULL);
INSERT INTO `users` VALUES (9, 'Mr. Sigrid Mueller', 'mayer.elton@example.net', '2025-11-17 07:47:15', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'hL3GQA4LNW', '2025-11-17 07:47:16', '2025-11-17 07:47:16', NULL, 'default', NULL);
INSERT INTO `users` VALUES (10, 'Mr. Lavon Considine', 'fahey.mckayla@example.org', '2025-11-17 07:47:15', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'HoDdAdtfH7', '2025-11-17 07:47:16', '2025-11-17 07:47:16', NULL, 'default', NULL);
INSERT INTO `users` VALUES (11, 'admin', 'admin@admin.com', '2025-11-17 07:47:16', '$2y$12$CF96xyCpjy/IYbbZU6tflO6DDB7elf8wn7ZdrZLmV5Yk4Ibv2z94y', 'RsjhECU5D3pSliVo5I9CLOg9Utc1a3UwVScCsbInCw3Cr2LrjzirwiOwdKal', '2025-11-17 07:47:16', '2025-11-17 07:47:16', NULL, 'default', NULL);
INSERT INTO `users` VALUES (12, 'zaldi', 'zaldijunio17@gmail.com', '2025-11-17 07:47:16', '$2y$12$8YW9iheVOzcU5Y0pXeywBO6VzBalEmxJCHhTuA2lFVd7nHi.f1f/G', 'XXhhs9WVtGnj9OwulYHWaxmapDSIJI7pPiiac3KddxBtUZQ6OZyjrErzHUzp', '2025-11-17 07:52:27', '2025-11-17 07:52:27', NULL, 'default', NULL);

SET FOREIGN_KEY_CHECKS = 1;
