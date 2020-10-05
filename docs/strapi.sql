/*
 Navicat MySQL Data Transfer

 Source Server         : _ localhost Strapi
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : strapi

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 29/09/2020 08:37:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_Name_unique` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, 'French food', 1, 1, '2020-09-05 13:09:17', '2020-09-05 13:09:17');
INSERT INTO `categories` VALUES (2, 'Brunch', 1, 1, '2020-09-05 13:09:28', '2020-09-05 13:17:48');
INSERT INTO `categories` VALUES (3, 'Italian Food', 1, 1, '2020-09-05 13:17:29', '2020-09-05 13:17:55');
INSERT INTO `categories` VALUES (4, 'Diner', 1, 1, '2020-09-05 13:17:39', '2020-09-05 13:17:39');
COMMIT;

-- ----------------------------
-- Table structure for categories_restaurants__restaurants_categories
-- ----------------------------
DROP TABLE IF EXISTS `categories_restaurants__restaurants_categories`;
CREATE TABLE `categories_restaurants__restaurants_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categories_restaurants__restaurants_categories
-- ----------------------------
BEGIN;
INSERT INTO `categories_restaurants__restaurants_categories` VALUES (1, 1, 1);
INSERT INTO `categories_restaurants__restaurants_categories` VALUES (2, 2, 1);
INSERT INTO `categories_restaurants__restaurants_categories` VALUES (3, 4, 1);
INSERT INTO `categories_restaurants__restaurants_categories` VALUES (4, 4, 2);
INSERT INTO `categories_restaurants__restaurants_categories` VALUES (5, 2, 2);
INSERT INTO `categories_restaurants__restaurants_categories` VALUES (6, 3, 2);
COMMIT;

-- ----------------------------
-- Table structure for components_hours_hours_of_operations
-- ----------------------------
DROP TABLE IF EXISTS `components_hours_hours_of_operations`;
CREATE TABLE `components_hours_hours_of_operations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `day_interval` varchar(255) NOT NULL,
  `opening_hours` varchar(255) DEFAULT NULL,
  `closing_hours` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of components_hours_hours_of_operations
-- ----------------------------
BEGIN;
INSERT INTO `components_hours_hours_of_operations` VALUES (1, 'Sun - Mon', 'Closed', NULL);
INSERT INTO `components_hours_hours_of_operations` VALUES (2, 'Tues - Fri', '12:00', '22:30');
INSERT INTO `components_hours_hours_of_operations` VALUES (3, 'Sat', '11:30', '16:00');
INSERT INTO `components_hours_hours_of_operations` VALUES (4, 'Mon', 'Closed', NULL);
INSERT INTO `components_hours_hours_of_operations` VALUES (5, 'Tue - Sat', '11:00', '23:00');
COMMIT;

-- ----------------------------
-- Table structure for core_store
-- ----------------------------
DROP TABLE IF EXISTS `core_store`;
CREATE TABLE `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of core_store
-- ----------------------------
BEGIN;
INSERT INTO `core_store` VALUES (1, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (2, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (3, 'db_model_strapi_webhooks', '{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (4, 'db_model_strapi_permission', '{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (5, 'db_model_upload_file', '{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (6, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (7, 'db_model_strapi_administrator', '{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (8, 'db_model_upload_file_morph', '{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"},\"order\":{\"type\":\"integer\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (9, 'db_model_strapi_users_roles', '{\"user_id\":{\"type\":\"integer\"},\"role_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (10, 'db_model_strapi_role', '{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (11, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (12, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]}}', 'object', '', '');
INSERT INTO `core_store` VALUES (13, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', '');
INSERT INTO `core_store` VALUES (14, 'plugin_content_manager_configuration_content_types::strapi::permission', '{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"created_at\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', '', '');
INSERT INTO `core_store` VALUES (15, 'plugin_content_manager_configuration_content_types::strapi::role', '{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', '', '');
INSERT INTO `core_store` VALUES (16, 'plugin_content_manager_configuration_content_types::strapi::user', '{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', '');
INSERT INTO `core_store` VALUES (17, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', '');
INSERT INTO `core_store` VALUES (18, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', '');
INSERT INTO `core_store` VALUES (19, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', '');
INSERT INTO `core_store` VALUES (20, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', '');
INSERT INTO `core_store` VALUES (21, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', '');
INSERT INTO `core_store` VALUES (22, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', '', '');
INSERT INTO `core_store` VALUES (23, 'db_model_restaurants', '{\"Name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"Description\":{\"type\":\"richtext\"},\"categories\":{\"collection\":\"category\",\"via\":\"restaurants\",\"attribute\":\"category\",\"column\":\"id\",\"isVirtual\":true},\"restaurant_hours\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"hours.hours-of-operation\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (24, 'plugin_content_manager_configuration_content_types::application::restaurant.restaurant', '{\"uid\":\"application::restaurant.restaurant\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"Description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":false,\"sortable\":false}},\"categories\":{\"edit\":{\"label\":\"Categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Name\"},\"list\":{\"label\":\"Categories\",\"searchable\":false,\"sortable\":false}},\"restaurant_hours\":{\"edit\":{\"label\":\"Restaurant_hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Restaurant_hours\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Name\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"Name\",\"size\":6}],[{\"name\":\"Description\",\"size\":12}],[{\"name\":\"restaurant_hours\",\"size\":12}]],\"editRelations\":[\"categories\"]}}', 'object', '', '');
INSERT INTO `core_store` VALUES (25, 'db_model_categories', '{\"Name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"restaurants\":{\"via\":\"categories\",\"collection\":\"restaurant\",\"dominant\":true,\"attribute\":\"restaurant\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (26, 'db_model_categories_restaurants__restaurants_categories', '{\"category_id\":{\"type\":\"integer\"},\"restaurant_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (27, 'plugin_content_manager_configuration_content_types::application::category.category', '{\"uid\":\"application::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Name\",\"defaultSortBy\":\"Name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"restaurants\":{\"edit\":{\"label\":\"Restaurants\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Name\"},\"list\":{\"label\":\"Restaurants\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Name\",\"created_at\",\"updated_at\"],\"editRelations\":[\"restaurants\"],\"edit\":[[{\"name\":\"Name\",\"size\":6}]]}}', 'object', '', '');
INSERT INTO `core_store` VALUES (28, 'db_model_components_hours_hours_of_operations', '{\"day_interval\":{\"type\":\"string\",\"required\":true},\"opening_hours\":{\"type\":\"string\"},\"closing_hours\":{\"type\":\"string\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` VALUES (29, 'plugin_content_manager_configuration_components::hours.hours-of-operation', '{\"uid\":\"hours.hours-of-operation\",\"isComponent\":true,\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"day_interval\",\"defaultSortBy\":\"day_interval\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"day_interval\":{\"edit\":{\"label\":\"Day (or Days)\",\"description\":\"You can type in one day or a series of days to complete this field. E.g. \\\"Tuesday\\\" or \\\"Tues - Wed\\\".\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Day_interval\",\"searchable\":true,\"sortable\":true}},\"opening_hours\":{\"edit\":{\"label\":\"Opening Hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Opening_hours\",\"searchable\":true,\"sortable\":true}},\"closing_hours\":{\"edit\":{\"label\":\"Closing Hours\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Closing_hours\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"day_interval\",\"opening_hours\",\"closing_hours\"],\"edit\":[[{\"name\":\"day_interval\",\"size\":6}],[{\"name\":\"opening_hours\",\"size\":6},{\"name\":\"closing_hours\",\"size\":6}]],\"editRelations\":[]}}', 'object', '', '');
COMMIT;

-- ----------------------------
-- Table structure for restaurants
-- ----------------------------
DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE `restaurants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `restaurants_Name_unique` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of restaurants
-- ----------------------------
BEGIN;
INSERT INTO `restaurants` VALUES (1, 'Biscotte Restaurant', 'Welcome to Biscotte restaurant! Restaurant Biscotte offers a cuisine based on fresh, quality products, often local, organic when possible, and always produced by passionate producers.', 1, 1, '2020-09-05 13:08:10', '2020-09-05 13:08:10');
INSERT INTO `restaurants` VALUES (2, 'Sofia Italian Kitchen & Bar', 'With its romantic ambiance and superb food offering, the recently opened Sofia Italian Kitchen and Bar, invites you to savor the best of Italy in Old San Juan. The place has a quiet, old world environment that complements perfectly the wonderful variety of traditional Italian dishes that are the main attraction in the restaurant, served by a knowledgeable and friendly staff. ', 1, 1, '2020-09-05 13:17:07', '2020-09-05 13:17:07');
COMMIT;

-- ----------------------------
-- Table structure for restaurants_components
-- ----------------------------
DROP TABLE IF EXISTS `restaurants_components`;
CREATE TABLE `restaurants_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `restaurant_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_id_fk` (`restaurant_id`),
  CONSTRAINT `restaurant_id_fk` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of restaurants_components
-- ----------------------------
BEGIN;
INSERT INTO `restaurants_components` VALUES (1, 'restaurant_hours', 1, 'components_hours_hours_of_operations', 1, 1);
INSERT INTO `restaurants_components` VALUES (2, 'restaurant_hours', 2, 'components_hours_hours_of_operations', 2, 1);
INSERT INTO `restaurants_components` VALUES (3, 'restaurant_hours', 3, 'components_hours_hours_of_operations', 3, 1);
INSERT INTO `restaurants_components` VALUES (4, 'restaurant_hours', 1, 'components_hours_hours_of_operations', 4, 2);
INSERT INTO `restaurants_components` VALUES (5, 'restaurant_hours', 2, 'components_hours_hours_of_operations', 5, 2);
COMMIT;

-- ----------------------------
-- Table structure for strapi_administrator
-- ----------------------------
DROP TABLE IF EXISTS `strapi_administrator`;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of strapi_administrator
-- ----------------------------
BEGIN;
INSERT INTO `strapi_administrator` VALUES (1, 'Strapi', 'Demo', NULL, 'strapi@demo.com', '$2a$10$8DQeG3yD.tY5vKJNGbqv1O/4NAKvEPAw0tOOKCg4XPnBHEVwbbyXa', NULL, NULL, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for strapi_permission
-- ----------------------------
DROP TABLE IF EXISTS `strapi_permission`;
CREATE TABLE `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext,
  `conditions` longtext,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of strapi_permission
-- ----------------------------
BEGIN;
INSERT INTO `strapi_permission` VALUES (1, 'plugins::upload.read', NULL, NULL, '[]', 2, '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_permission` VALUES (2, 'plugins::upload.assets.create', NULL, NULL, '[]', 2, '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_permission` VALUES (3, 'plugins::upload.assets.download', NULL, NULL, '[]', 2, '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_permission` VALUES (4, 'plugins::upload.assets.update', NULL, NULL, '[]', 2, '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_permission` VALUES (5, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 2, '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_permission` VALUES (6, 'plugins::upload.read', NULL, NULL, '[\"admin::is-creator\"]', 3, '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_permission` VALUES (7, 'plugins::upload.assets.create', NULL, NULL, '[]', 3, '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_permission` VALUES (8, 'plugins::upload.assets.update', NULL, NULL, '[\"admin::is-creator\"]', 3, '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_permission` VALUES (9, 'plugins::upload.assets.download', NULL, NULL, '[]', 3, '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_permission` VALUES (10, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 3, '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_permission` VALUES (11, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (12, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (13, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (14, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (15, 'plugins::upload.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (16, 'plugins::content-type-builder.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (17, 'plugins::upload.assets.create', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (18, 'plugins::upload.assets.update', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (19, 'plugins::upload.assets.download', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (20, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (21, 'plugins::upload.settings.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (22, 'plugins::content-manager.single-types.configure-view', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (23, 'plugins::content-manager.collection-types.configure-view', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (24, 'plugins::content-manager.components.configure-layout', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (25, 'plugins::users-permissions.roles.create', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (26, 'plugins::users-permissions.roles.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (27, 'plugins::users-permissions.roles.update', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (28, 'plugins::users-permissions.roles.delete', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (29, 'plugins::users-permissions.providers.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (30, 'plugins::users-permissions.providers.update', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (31, 'plugins::users-permissions.email-templates.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (32, 'plugins::users-permissions.email-templates.update', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (33, 'plugins::users-permissions.advanced-settings.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (34, 'plugins::users-permissions.advanced-settings.update', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (35, 'admin::marketplace.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (36, 'admin::marketplace.plugins.install', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (37, 'admin::marketplace.plugins.uninstall', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (38, 'admin::webhooks.create', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (39, 'admin::webhooks.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (40, 'admin::webhooks.update', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (41, 'admin::webhooks.delete', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (42, 'admin::users.create', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (43, 'admin::users.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (44, 'admin::users.update', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (45, 'admin::users.delete', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (46, 'admin::roles.create', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (47, 'admin::roles.read', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (48, 'admin::roles.delete', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (49, 'admin::roles.update', NULL, NULL, '[]', 1, '2020-09-05 12:50:21', '2020-09-05 12:50:21');
INSERT INTO `strapi_permission` VALUES (53, 'plugins::content-manager.explorer.delete', 'application::restaurant.restaurant', NULL, '[]', 1, '2020-09-05 12:56:19', '2020-09-05 12:56:19');
INSERT INTO `strapi_permission` VALUES (54, 'plugins::content-manager.explorer.create', 'application::category.category', '[\"Name\",\"restaurants\"]', '[]', 1, '2020-09-05 12:58:29', '2020-09-05 12:58:29');
INSERT INTO `strapi_permission` VALUES (56, 'plugins::content-manager.explorer.read', 'application::category.category', '[\"Name\",\"restaurants\"]', '[]', 1, '2020-09-05 12:58:29', '2020-09-05 12:58:29');
INSERT INTO `strapi_permission` VALUES (58, 'plugins::content-manager.explorer.update', 'application::category.category', '[\"Name\",\"restaurants\"]', '[]', 1, '2020-09-05 12:58:29', '2020-09-05 12:58:29');
INSERT INTO `strapi_permission` VALUES (60, 'plugins::content-manager.explorer.delete', 'application::category.category', NULL, '[]', 1, '2020-09-05 12:58:29', '2020-09-05 12:58:29');
INSERT INTO `strapi_permission` VALUES (61, 'plugins::content-manager.explorer.create', 'application::restaurant.restaurant', '[\"Name\",\"Description\",\"categories\",\"restaurant_hours.day_interval\",\"restaurant_hours.opening_hours\",\"restaurant_hours.closing_hours\"]', '[]', 1, '2020-09-05 13:03:53', '2020-09-05 13:03:53');
INSERT INTO `strapi_permission` VALUES (62, 'plugins::content-manager.explorer.update', 'application::restaurant.restaurant', '[\"Name\",\"Description\",\"categories\",\"restaurant_hours.day_interval\",\"restaurant_hours.opening_hours\",\"restaurant_hours.closing_hours\"]', '[]', 1, '2020-09-05 13:03:53', '2020-09-05 13:03:53');
INSERT INTO `strapi_permission` VALUES (63, 'plugins::content-manager.explorer.read', 'application::restaurant.restaurant', '[\"Name\",\"Description\",\"categories\",\"restaurant_hours.day_interval\",\"restaurant_hours.opening_hours\",\"restaurant_hours.closing_hours\"]', '[]', 1, '2020-09-05 13:03:53', '2020-09-05 13:03:53');
COMMIT;

-- ----------------------------
-- Table structure for strapi_role
-- ----------------------------
DROP TABLE IF EXISTS `strapi_role`;
CREATE TABLE `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of strapi_role
-- ----------------------------
BEGIN;
INSERT INTO `strapi_role` VALUES (1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_role` VALUES (2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2020-09-05 12:50:20', '2020-09-05 12:50:20');
INSERT INTO `strapi_role` VALUES (3, 'Author', 'strapi-author', 'Authors can manage and publish the content they created.', '2020-09-05 12:50:20', '2020-09-05 12:50:20');
COMMIT;

-- ----------------------------
-- Table structure for strapi_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `strapi_users_roles`;
CREATE TABLE `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of strapi_users_roles
-- ----------------------------
BEGIN;
INSERT INTO `strapi_users_roles` VALUES (1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for strapi_webhooks
-- ----------------------------
DROP TABLE IF EXISTS `strapi_webhooks`;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of strapi_webhooks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upload_file
-- ----------------------------
DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of upload_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upload_file_morph
-- ----------------------------
DROP TABLE IF EXISTS `upload_file_morph`;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of upload_file_morph
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users-permissions_permission
-- ----------------------------
DROP TABLE IF EXISTS `users-permissions_permission`;
CREATE TABLE `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users-permissions_permission
-- ----------------------------
BEGIN;
INSERT INTO `users-permissions_permission` VALUES (1, 'content-manager', 'components', 'findcomponent', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (2, 'content-manager', 'components', 'findcomponent', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (3, 'content-manager', 'components', 'listcomponents', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (4, 'content-manager', 'components', 'updatecomponent', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (5, 'content-manager', 'components', 'listcomponents', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (6, 'content-manager', 'components', 'updatecomponent', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (7, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (8, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (9, 'content-manager', 'contentmanager', 'count', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (10, 'content-manager', 'contentmanager', 'count', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (11, 'content-manager', 'contentmanager', 'create', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (12, 'content-manager', 'contentmanager', 'create', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (13, 'content-manager', 'contentmanager', 'delete', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (14, 'content-manager', 'contentmanager', 'delete', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (15, 'content-manager', 'contentmanager', 'deletemany', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (16, 'content-manager', 'contentmanager', 'deletemany', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (17, 'content-manager', 'contentmanager', 'find', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (18, 'content-manager', 'contentmanager', 'find', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (19, 'content-manager', 'contentmanager', 'findone', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (20, 'content-manager', 'contentmanager', 'findone', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (21, 'content-manager', 'contentmanager', 'findrelationlist', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (22, 'content-manager', 'contentmanager', 'findrelationlist', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (23, 'content-manager', 'contentmanager', 'generateuid', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (24, 'content-manager', 'contentmanager', 'generateuid', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (25, 'content-manager', 'contentmanager', 'update', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (26, 'content-manager', 'contentmanager', 'update', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (27, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (28, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (29, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (30, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (31, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (32, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (33, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (34, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (35, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (36, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (37, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (38, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (39, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (40, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (41, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (42, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (43, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (44, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (45, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (46, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (47, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (48, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (49, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (50, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (51, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (52, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (53, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (54, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (55, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (56, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (57, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (58, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (59, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (60, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (61, 'email', 'email', 'send', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (62, 'email', 'email', 'send', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (63, 'upload', 'proxy', 'uploadproxy', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (64, 'upload', 'proxy', 'uploadproxy', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (65, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (66, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (67, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (68, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (69, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (70, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (71, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (72, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (73, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (74, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (75, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (76, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (77, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (78, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (79, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (80, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (81, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (82, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (83, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (84, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (85, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (86, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (87, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (88, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (89, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (90, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (91, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (92, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (93, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (94, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (95, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (96, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (97, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (98, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (99, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (100, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (101, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (102, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (103, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (104, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (105, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (106, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (107, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (108, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (109, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (110, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (111, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (112, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (113, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (114, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (115, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (116, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (117, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (118, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (119, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (120, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (121, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (122, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (123, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (124, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (125, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (126, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (127, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (128, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (129, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (130, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (131, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (132, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (133, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (134, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (135, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (136, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (137, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (138, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (139, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (140, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (141, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (142, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (143, 'application', 'restaurant', 'count', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (144, 'application', 'restaurant', 'count', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (145, 'application', 'restaurant', 'create', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (146, 'application', 'restaurant', 'create', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (147, 'application', 'restaurant', 'delete', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (148, 'application', 'restaurant', 'delete', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (149, 'application', 'restaurant', 'find', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (150, 'application', 'restaurant', 'find', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (151, 'application', 'restaurant', 'findone', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (152, 'application', 'restaurant', 'findone', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (153, 'application', 'restaurant', 'update', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (154, 'application', 'restaurant', 'update', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (155, 'application', 'category', 'count', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (156, 'application', 'category', 'count', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (157, 'application', 'category', 'create', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (158, 'application', 'category', 'create', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (159, 'application', 'category', 'delete', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (160, 'application', 'category', 'delete', 0, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (161, 'application', 'category', 'find', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (162, 'application', 'category', 'find', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (163, 'application', 'category', 'findone', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (164, 'application', 'category', 'findone', 1, '', 2, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (165, 'application', 'category', 'update', 0, '', 1, NULL, NULL);
INSERT INTO `users-permissions_permission` VALUES (166, 'application', 'category', 'update', 0, '', 2, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for users-permissions_role
-- ----------------------------
DROP TABLE IF EXISTS `users-permissions_role`;
CREATE TABLE `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users-permissions_role
-- ----------------------------
BEGIN;
INSERT INTO `users-permissions_role` VALUES (1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL);
INSERT INTO `users-permissions_role` VALUES (2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for users-permissions_user
-- ----------------------------
DROP TABLE IF EXISTS `users-permissions_user`;
CREATE TABLE `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users-permissions_user
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
