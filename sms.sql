-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table sms_tyn.wp_canbo
CREATE TABLE IF NOT EXISTS `wp_canbo` (
  `id_canbo` int(3) NOT NULL AUTO_INCREMENT,
  `ma_canbo` varchar(20) DEFAULT NULL,
  `ten_canbo` varchar(50) DEFAULT NULL,
  `so_dt` varchar(50) DEFAULT NULL,
  `mota` varchar(98) DEFAULT NULL,
  `gioitinh` int(1) DEFAULT NULL,
  `trangthai` int(1) DEFAULT NULL,
  `ten_nhom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_canbo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sms_tyn.wp_canbo: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_canbo` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_canbo` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_commentmeta
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_commentmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_comments
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_gglcptch_whitelist
CREATE TABLE IF NOT EXISTS `wp_gglcptch_whitelist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(31) NOT NULL,
  `ip_from_int` bigint(20) DEFAULT NULL,
  `ip_to_int` bigint(20) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sms_tyn.wp_gglcptch_whitelist: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_gglcptch_whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gglcptch_whitelist` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_limit_login
CREATE TABLE IF NOT EXISTS `wp_limit_login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_ip` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `login_attempts` int(11) NOT NULL,
  `attempt_time` datetime DEFAULT NULL,
  `locked_time` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table sms_tyn.wp_limit_login: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_limit_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_limit_login` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_links
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_links: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_nhom
CREATE TABLE IF NOT EXISTS `wp_nhom` (
  `id_nhom` int(2) NOT NULL AUTO_INCREMENT,
  `ten_nhom` varchar(100) DEFAULT '1',
  `id_nhomcha` int(1) DEFAULT '1',
  `trangthai` int(1) DEFAULT '1',
  PRIMARY KEY (`id_nhom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sms_tyn.wp_nhom: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_nhom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nhom` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_nhomcha
CREATE TABLE IF NOT EXISTS `wp_nhomcha` (
  `id_nhomcha` int(10) NOT NULL AUTO_INCREMENT,
  `ten_nhomcha` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_nhomcha`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sms_tyn.wp_nhomcha: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_nhomcha` DISABLE KEYS */;
INSERT INTO `wp_nhomcha` (`id_nhomcha`, `ten_nhomcha`) VALUES
	(1, 'UBND huyện Lý Nhân');
/*!40000 ALTER TABLE `wp_nhomcha` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_options
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=15546 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_options: ~151 rows (approximately)
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://sms.test', 'yes'),
	(2, 'home', 'http://sms.test', 'yes'),
	(3, 'blogname', 'Hệ thống tin nhắn', 'yes'),
	(4, 'blogdescription', 'UBND huyện Lý Nhân', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'hoangyb.it@gmail.com', 'yes'),
	(7, 'start_of_week', '1', 'yes'),
	(8, 'use_balanceTags', '0', 'yes'),
	(9, 'use_smilies', '1', 'yes'),
	(10, 'require_name_email', '1', 'yes'),
	(11, 'comments_notify', '1', 'yes'),
	(12, 'posts_per_rss', '20', 'yes'),
	(13, 'rss_use_excerpt', '0', 'yes'),
	(14, 'mailserver_url', 'mail.example.com', 'yes'),
	(15, 'mailserver_login', 'login@example.com', 'yes'),
	(16, 'mailserver_pass', 'password', 'yes'),
	(17, 'mailserver_port', '110', 'yes'),
	(18, 'default_category', '1', 'yes'),
	(19, 'default_comment_status', 'closed', 'yes'),
	(20, 'default_ping_status', 'closed', 'yes'),
	(21, 'default_pingback_flag', '', 'yes'),
	(22, 'posts_per_page', '20', 'yes'),
	(23, 'date_format', 'd/m/Y', 'yes'),
	(24, 'time_format', 'H:i', 'yes'),
	(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
	(26, 'comment_moderation', '1', 'yes'),
	(27, 'moderation_notify', '1', 'yes'),
	(28, 'permalink_structure', '', 'yes'),
	(29, 'rewrite_rules', '', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:0:{}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', 'a:5:{i:0;s:87:"/var/www/html/demo/quanlynhatram/wp-content/plugins/rename-wp-login/rename-wp-login.php";i:1;s:71:"/var/www/html/demo/quanlynhatram/wp-content/plugins/akismet/akismet.php";i:2;s:87:"/var/www/html/demo/quanlynhatram/wp-content/plugins/wp-limit-login-attempts/captcha.php";i:3;s:103:"/var/www/html/demo/quanlynhatram/wp-content/plugins/wp-limit-login-attempts/wp-limit-login-attempts.php";i:5;s:76:"/var/www/html/demo/sms/wp-content/uploads/bws-custom-code/bws-custom-code.js";}', 'no'),
	(40, 'template', 'HNM', 'yes'),
	(41, 'stylesheet', 'HNM', 'yes'),
	(44, 'comment_registration', '1', 'yes'),
	(45, 'html_type', 'text/html', 'yes'),
	(46, 'use_trackback', '0', 'yes'),
	(47, 'default_role', 'subscriber', 'yes'),
	(48, 'db_version', '49752', 'yes'),
	(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(50, 'upload_path', '', 'yes'),
	(51, 'blog_public', '0', 'yes'),
	(52, 'default_link_category', '2', 'yes'),
	(53, 'show_on_front', 'posts', 'yes'),
	(54, 'tag_base', '', 'yes'),
	(55, 'show_avatars', '1', 'yes'),
	(56, 'avatar_rating', 'G', 'yes'),
	(57, 'upload_url_path', '', 'yes'),
	(58, 'thumbnail_size_w', '500', 'yes'),
	(59, 'thumbnail_size_h', '500', 'yes'),
	(60, 'thumbnail_crop', '1', 'yes'),
	(61, 'medium_size_w', '300', 'yes'),
	(62, 'medium_size_h', '300', 'yes'),
	(63, 'avatar_default', 'mystery', 'yes'),
	(64, 'large_size_w', '1024', 'yes'),
	(65, 'large_size_h', '1024', 'yes'),
	(66, 'image_default_link_type', '', 'yes'),
	(67, 'image_default_size', '', 'yes'),
	(68, 'image_default_align', '', 'yes'),
	(69, 'close_comments_for_old_posts', '', 'yes'),
	(70, 'close_comments_days_old', '14', 'yes'),
	(71, 'thread_comments', '1', 'yes'),
	(72, 'thread_comments_depth', '5', 'yes'),
	(73, 'page_comments', '', 'yes'),
	(74, 'comments_per_page', '50', 'yes'),
	(75, 'default_comments_page', 'newest', 'yes'),
	(76, 'comment_order', 'asc', 'yes'),
	(77, 'sticky_posts', 'a:0:{}', 'yes'),
	(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(81, 'uninstall_plugins', 'a:2:{s:33:"google-captcha/google-captcha.php";s:23:"gglcptch_delete_options";s:35:"rename-wp-login/rename-wp-login.php";a:2:{i:0;s:15:"Rename_WP_Login";i:1;s:9:"uninstall";}}', 'no'),
	(82, 'timezone_string', 'Asia/Ho_Chi_Minh', 'yes'),
	(83, 'page_for_posts', '0', 'yes'),
	(84, 'page_on_front', '0', 'yes'),
	(85, 'default_post_format', '0', 'yes'),
	(86, 'link_manager_enabled', '0', 'yes'),
	(87, 'finished_splitting_shared_terms', '1', 'yes'),
	(88, 'site_icon', '0', 'yes'),
	(89, 'medium_large_size_w', '768', 'yes'),
	(90, 'medium_large_size_h', '0', 'yes'),
	(91, 'wp_page_for_privacy_policy', '3', 'yes'),
	(92, 'show_comments_cookies_opt_in', '', 'yes'),
	(93, 'initial_db_version', '38590', 'yes'),
	(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(95, 'fresh_site', '0', 'yes'),
	(96, 'WPLANG', 'vi', 'yes'),
	(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(102, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
	(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(112, 'cron', 'a:8:{i:1665806374;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1665807690;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1665831467;a:1:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1665840630;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1665840643;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1665851770;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1666263467;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
	(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1588043772;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
	(180, 'new_admin_email', 'hoangyb.it@gmail.com', 'yes'),
	(436, 'recently_activated', 'a:1:{s:59:"wp-maximum-upload-file-size/wp-maximum-upload-file-size.php";i:1636602460;}', 'yes'),
	(446, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:33:"google-captcha/google-captcha.php";s:5:"2.1.5";}}}', 'yes'),
	(449, 'gglcptch_options', 'a:26:{s:17:"whitelist_message";s:24:"You are in the whitelist";s:10:"public_key";s:40:"6LfMvX0UAAAAAEsDrnyE1qRwKkDXGi2vEwtt6oSy";s:11:"private_key";s:40:"6LfMvX0UAAAAAPN34RUlMaKM7jQq5P-O2GSOArPx";s:10:"login_form";i:1;s:17:"registration_form";i:1;s:14:"reset_pwd_form";i:1;s:13:"comments_form";i:1;s:12:"contact_form";i:0;s:12:"testimonials";i:0;s:5:"theme";s:3:"red";s:8:"theme_v2";s:5:"light";s:17:"recaptcha_version";s:2:"v2";s:21:"plugin_option_version";s:4:"1.38";s:13:"first_install";i:1543458805;s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;s:8:"score_v3";d:0.5;s:13:"administrator";i:0;s:6:"editor";i:0;s:6:"author";i:0;s:11:"contributor";i:0;s:10:"subscriber";i:0;s:17:"plugin_db_version";s:3:"0.1";s:19:"go_settings_counter";i:1;s:13:"keys_verified";b:0;s:14:"disable_submit";i:0;}', 'yes'),
	(640, 'ftp_credentials', 'a:3:{s:8:"hostname";s:13:"113.160.153.9";s:8:"username";s:4:"root";s:15:"connection_type";s:4:"ftps";}', 'yes'),
	(2499, 'no_of_wp_limit_login_attepts', '5', 'yes'),
	(2500, 'limit_login_attepts_delay_time', '10', 'yes'),
	(2501, 'limit_login_attepts_captcha', '3', 'yes'),
	(2502, 'limit_login_captcha', 'checked', 'yes'),
	(2503, 'limit_login_install_date', '2020-03-29 3:38:44', 'yes'),
	(2515, 'rwl_page', 'dangnhap', 'yes'),
	(2521, 'category_children', 'a:0:{}', 'yes'),
	(2523, 'recovery_keys', 'a:0:{}', 'yes'),
	(2526, 'admin_email_lifespan', '1650965165', 'yes'),
	(2527, 'db_upgraded', '', 'yes'),
	(3033, 'current_theme', 'SMS VNPT', 'yes'),
	(3034, 'theme_mods_HNM', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
	(3035, 'theme_switched', '', 'yes'),
	(3973, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:20:"hoangyb.it@gmail.com";s:7:"version";s:5:"5.8.1";s:9:"timestamp";i:1631156965;}', 'no'),
	(15128, '_transient_health-check-site-status-result', '{"good":11,"recommended":6,"critical":2}', 'yes'),
	(15131, 'widget_block', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(15132, 'disallowed_keys', '', 'no'),
	(15133, 'comment_previously_approved', '', 'yes'),
	(15134, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
	(15135, 'auto_update_core_dev', 'enabled', 'yes'),
	(15136, 'auto_update_core_minor', 'enabled', 'yes'),
	(15137, 'auto_update_core_major', 'unset', 'yes'),
	(15138, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
	(15139, 'finished_updating_comment_type', '1', 'yes'),
	(15143, 'https_detection_errors', 'a:1:{s:20:"https_request_failed";a:1:{i:0;s:37:"Yêu cầu HTTPS không thành công.";}}', 'yes'),
	(15155, 'can_compress_scripts', '1', 'no'),
	(15341, '_transient_is_multi_author', '0', 'yes'),
	(15346, 'wmufs_maximum_execution_time', '36000', 'yes'),
	(15347, 'max_file_size', '16777216', 'yes'),
	(15538, '_site_transient_timeout_theme_roots', '1665805412', 'no'),
	(15539, '_site_transient_theme_roots', 'a:1:{s:3:"HNM";s:7:"/themes";}', 'no'),
	(15541, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:5:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-6.0.2.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-6.0.2.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"6.0.2";s:7:"version";s:5:"6.0.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.9";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-6.0.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-6.0.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-6.0.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-6.0.2-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"6.0.2";s:7:"version";s:5:"6.0.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.9";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-6.0.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-6.0.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-6.0.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-6.0.2-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"6.0.2";s:7:"version";s:5:"6.0.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.9";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.9.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.9.4-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"5.9.4";s:7:"version";s:5:"5.9.4";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.9";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:4;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.8.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.8.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.8.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.8.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-5.8.5-partial-1.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-5.8.5-rollback-1.zip";}s:7:"current";s:5:"5.8.5";s:7:"version";s:5:"5.8.5";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.9";s:15:"partial_version";s:5:"5.8.1";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1665803615;s:15:"version_checked";s:5:"5.8.1";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:2:"vi";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-22 14:07:50";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/vi.zip";s:10:"autoupdate";b:1;}}}', 'no'),
	(15542, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1665803615;s:7:"checked";a:1:{s:3:"HNM";s:3:"2.0";}s:8:"response";a:0:{}s:9:"no_update";a:0:{}s:12:"translations";a:0:{}}', 'no'),
	(15543, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1665803616;s:8:"response";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"5.0.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.5.0.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"5.0";s:6:"tested";s:5:"6.0.2";s:12:"requires_php";s:3:"5.2";}s:9:"hello.php";O:8:"stdClass":12:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582";s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.6";s:6:"tested";s:5:"5.8.5";s:12:"requires_php";b:0;}s:51:"wp-limit-login-attempts/wp-limit-login-attempts.php";O:8:"stdClass":12:{s:2:"id";s:37:"w.org/plugins/wp-limit-login-attempts";s:4:"slug";s:23:"wp-limit-login-attempts";s:6:"plugin";s:51:"wp-limit-login-attempts/wp-limit-login-attempts.php";s:11:"new_version";s:5:"2.6.4";s:3:"url";s:54:"https://wordpress.org/plugins/wp-limit-login-attempts/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/wp-limit-login-attempts.zip";s:5:"icons";a:2:{s:2:"2x";s:76:"https://ps.w.org/wp-limit-login-attempts/assets/icon-256x256.png?rev=1225433";s:2:"1x";s:76:"https://ps.w.org/wp-limit-login-attempts/assets/icon-128x128.png?rev=1225433";}s:7:"banners";a:1:{s:2:"1x";s:78:"https://ps.w.org/wp-limit-login-attempts/assets/banner-772x250.png?rev=1225433";}s:11:"banners_rtl";a:0:{}s:8:"requires";b:0;s:6:"tested";s:5:"5.8.5";s:12:"requires_php";s:3:"5.6";}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:47:"image-rotation-repair/image-rotation-repair.php";O:8:"stdClass":10:{s:2:"id";s:35:"w.org/plugins/image-rotation-repair";s:4:"slug";s:21:"image-rotation-repair";s:6:"plugin";s:47:"image-rotation-repair/image-rotation-repair.php";s:11:"new_version";s:3:"1.1";s:3:"url";s:52:"https://wordpress.org/plugins/image-rotation-repair/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/image-rotation-repair.1.1.zip";s:5:"icons";a:1:{s:7:"default";s:72:"https://s.w.org/plugins/geopattern-icon/image-rotation-repair_7db1c1.svg";}s:7:"banners";a:2:{s:2:"2x";s:76:"https://ps.w.org/image-rotation-repair/assets/banner-1544x500.jpg?rev=593016";s:2:"1x";s:75:"https://ps.w.org/image-rotation-repair/assets/banner-772x250.png?rev=517877";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"3.0";}}s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:3:"4.1";s:9:"hello.php";s:3:"1.7";s:47:"image-rotation-repair/image-rotation-repair.php";s:3:"1.1";s:51:"wp-limit-login-attempts/wp-limit-login-attempts.php";s:5:"2.6.3";}}', 'no'),
	(15544, '_site_transient_timeout_php_check_73ecd64509db505b6046b20394d377da', '1666408418', 'no'),
	(15545, '_site_transient_php_check_73ecd64509db505b6046b20394d377da', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:0;s:13:"is_acceptable";b:0;}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_phannhom
CREATE TABLE IF NOT EXISTS `wp_phannhom` (
  `id_canbo` int(3) NOT NULL DEFAULT '0',
  `id_nhom` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sms_tyn.wp_phannhom: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_phannhom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_phannhom` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_postmeta
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_postmeta: ~43 rows (approximately)
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(2, 3, '_wp_page_template', 'default'),
	(3, 6, '_edit_lock', '1586534458:1'),
	(4, 6, '_edit_last', '1'),
	(5, 6, '_wp_page_template', 'tmp-login.php'),
	(6, 8, '_edit_lock', '1580884207:1'),
	(7, 8, '_edit_last', '1'),
	(8, 8, '_wp_page_template', 'tmp-sendsms.php'),
	(12, 13, '_edit_lock', '1588036690:1'),
	(13, 13, '_edit_last', '1'),
	(14, 13, '_wp_page_template', 'tmp-ql_canbo.php'),
	(15, 15, '_edit_lock', '1588123095:1'),
	(16, 15, '_edit_last', '1'),
	(17, 15, '_wp_page_template', 'tmp-ql_nhom.php'),
	(20, 21, '_edit_lock', '1588996629:1'),
	(21, 21, '_edit_last', '1'),
	(22, 21, '_wp_page_template', 'tmp-sms.php'),
	(387, 3, '_edit_lock', '1584406471:1'),
	(393, 225, '_edit_last', '1'),
	(394, 225, '_wp_page_template', 'tmp-doimatkhau.php'),
	(395, 225, '_edit_lock', '1584934149:1'),
	(400, 1, '_edit_lock', '1589338624:1'),
	(518, 272, '_edit_lock', '1588126071:1'),
	(519, 272, '_wp_page_template', 'tmp-ql_phannhom.php'),
	(520, 275, '_edit_lock', '1588575097:1'),
	(521, 275, '_wp_page_template', 'tmp-upload_dsgui.php'),
	(522, 278, '_edit_lock', '1588575718:1'),
	(523, 278, '_wp_page_template', 'tmp-sendsms_upload.php'),
	(525, 282, '_edit_lock', '1589164737:1'),
	(526, 282, '_wp_page_template', 'tmp-tk_sltinnhangui.php'),
	(527, 285, '_edit_lock', '1589164528:1'),
	(528, 285, '_wp_page_template', 'tmp-sendsmscheck.php'),
	(529, 287, '_edit_lock', '1589180293:1'),
	(530, 287, '_wp_page_template', 'tmp-ex_chitiettn.php'),
	(531, 289, '_edit_lock', '1589180714:1'),
	(532, 289, '_wp_page_template', 'tmp-ex_sltinnhan.php'),
	(534, 292, '_edit_lock', '1589338362:1'),
	(535, 292, '_wp_page_template', 'index.php'),
	(536, 1, '_edit_last', '1'),
	(539, 1, '_wp_old_slug', 'chao-moi-nguoi'),
	(687, 447, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:195;s:6:"height";i:71;s:4:"file";s:16:"2021/09/Logo.png";s:5:"sizes";a:1:{s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:15:"Logo-100x71.png";s:5:"width";i:100;s:6:"height";i:71;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(691, 450, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1850;s:4:"file";s:25:"2021/12/motcua-scaled.jpg";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:18:"motcua-300x217.jpg";s:5:"width";i:300;s:6:"height";i:217;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"motcua-1024x740.jpg";s:5:"width";i:1024;s:6:"height";i:740;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"motcua-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"motcua-768x555.jpg";s:5:"width";i:768;s:6:"height";i:555;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:20:"motcua-1536x1110.jpg";s:5:"width";i:1536;s:6:"height";i:1110;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:20:"motcua-2048x1480.jpg";s:5:"width";i:2048;s:6:"height";i:1480;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:20:"motcua-2000x1200.jpg";s:5:"width";i:2000;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"motcua-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:9:"Basic RGB";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:10:"motcua.jpg";}'),
	(692, 451, '_wp_attached_file', '2022/03/TT01.2011.BNV_.pdf');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_posts
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=452 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_posts: ~46 rows (approximately)
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2018-11-14 13:30:28', '2018-11-14 06:30:28', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Trang chủ', '', 'publish', 'open', 'open', '', 'trang-chu', '', '', '2020-05-13 09:57:03', '2020-05-13 02:57:03', '', 0, 'http://113.160.153.9/demo/sms/?p=1', 0, 'post', '', 1),
	(2, 1, '2018-11-14 13:30:28', '2018-11-14 13:30:28', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href="http://113.160.153.9/demo/sms/wp-admin/">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2018-11-14 13:30:28', '2018-11-14 13:30:28', '', 0, 'http://113.160.153.9/demo/sms/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2018-11-14 13:30:28', '2018-11-14 13:30:28', '<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: http://113.160.153.9/demo/sms.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2018-11-14 13:30:28', '2018-11-14 13:30:28', '', 0, 'http://113.160.153.9/demo/sms/?page_id=3', 0, 'page', '', 0),
	(6, 1, '2018-11-14 16:40:23', '2018-11-14 16:40:23', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2018-11-14 16:40:23', '2018-11-14 16:40:23', '', 0, 'http://113.160.153.9/demo/sms/?page_id=6', 0, 'page', '', 0),
	(7, 1, '2018-11-14 16:40:23', '2018-11-14 16:40:23', '', 'Login', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-11-14 16:40:23', '2018-11-14 16:40:23', '', 6, 'http://113.160.153.9/demo/sms/2018/11/14/6-revision-v1/', 0, 'revision', '', 0),
	(8, 1, '2018-11-21 01:43:14', '2018-11-21 01:43:14', '', 'Thêm mới tin nhắn', '', 'publish', 'closed', 'closed', '', 'them-moi-tin-nhan', '', '', '2018-11-21 01:43:20', '2018-11-21 01:43:20', '', 0, 'http://113.160.153.9/demo/sms/?page_id=8', 0, 'page', '', 0),
	(9, 1, '2018-11-21 01:43:14', '2018-11-21 01:43:14', '', 'Thêm mới tin nhắn', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-11-21 01:43:14', '2018-11-21 01:43:14', '', 8, 'http://113.160.153.9/demo/sms/2018/11/21/8-revision-v1/', 0, 'revision', '', 0),
	(13, 1, '2018-11-23 02:11:37', '2018-11-23 02:11:37', '', 'Quản lý cán bộ', '', 'publish', 'closed', 'closed', '', 'quan-ly-nhan-vien', '', '', '2020-04-28 08:20:33', '2020-04-28 01:20:33', '', 0, 'http://113.160.153.9/demo/sms/?page_id=13', 0, 'page', '', 0),
	(14, 1, '2018-11-23 02:11:37', '2018-11-23 02:11:37', '', 'Thêm nhân viên', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-11-23 02:11:37', '2018-11-23 02:11:37', '', 13, 'http://113.160.153.9/demo/sms/?p=14', 0, 'revision', '', 0),
	(15, 1, '2018-11-23 02:15:41', '2018-11-23 02:15:41', '', 'Quản lý nhóm gửi tin', '', 'publish', 'closed', 'closed', '', 'quan-ly-phong-ban', '', '', '2020-04-29 08:20:38', '2020-04-29 01:20:38', '', 0, 'http://113.160.153.9/demo/sms/?page_id=15', 0, 'page', '', 0),
	(16, 1, '2018-11-23 02:15:41', '2018-11-23 02:15:41', '', 'Thêm mới phòng ban', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-11-23 02:15:41', '2018-11-23 02:15:41', '', 15, 'http://113.160.153.9/demo/sms/?p=16', 0, 'revision', '', 0),
	(17, 1, '2018-11-23 02:16:04', '2018-11-23 02:16:04', '', 'Thêm mới nhân viên', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-11-23 02:16:04', '2018-11-23 02:16:04', '', 13, 'http://113.160.153.9/demo/sms/?p=17', 0, 'revision', '', 0),
	(18, 1, '2018-11-23 04:04:07', '2018-11-23 04:04:07', '', 'Quản lý nhân viên', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-11-23 04:04:07', '2018-11-23 04:04:07', '', 13, 'http://113.160.153.9/demo/sms/?p=18', 0, 'revision', '', 0),
	(19, 1, '2018-11-23 04:04:24', '2018-11-23 04:04:24', '', 'Quản lý phòng ban', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-11-23 04:04:24', '2018-11-23 04:04:24', '', 15, 'http://113.160.153.9/demo/sms/?p=19', 0, 'revision', '', 0),
	(21, 1, '2018-11-26 03:23:28', '2018-11-26 03:23:28', '', 'Thống kê chi tiết tin nhắn', '', 'publish', 'closed', 'closed', '', 'sms', '', '', '2020-05-09 10:59:31', '2020-05-09 03:59:31', '', 0, 'http://113.160.153.9/demo/sms/?page_id=21', 0, 'page', '', 0),
	(22, 1, '2018-11-26 03:23:28', '2018-11-26 03:23:28', '', 'SMS', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-11-26 03:23:28', '2018-11-26 03:23:28', '', 21, 'http://113.160.153.9/demo/sms/?p=22', 0, 'revision', '', 0),
	(225, 1, '2020-03-23 10:16:04', '2020-03-23 03:16:04', '', 'Đổi mật khẩu', '', 'publish', 'closed', 'closed', '', 'doi-mat-khau', '', '', '2020-03-23 10:17:13', '2020-03-23 03:17:13', '', 0, 'http://vanphongtranyen.org.vn//?page_id=225', 0, 'page', '', 0),
	(226, 1, '2020-03-23 10:16:04', '2020-03-23 03:16:04', '', 'Đổi mật khẩu', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2020-03-23 10:16:04', '2020-03-23 03:16:04', '', 225, 'http://vanphongtranyen.org.vn//?p=226', 0, 'revision', '', 0),
	(268, 1, '2020-04-28 08:20:33', '2020-04-28 01:20:33', '', 'Quản lý cán bộ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-04-28 08:20:33', '2020-04-28 01:20:33', '', 13, 'http://vanphongtranyen.org.vn//?p=268', 0, 'revision', '', 0),
	(269, 1, '2020-04-29 08:20:38', '2020-04-29 01:20:38', '', 'Quản lý nhóm gửi tin', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-04-29 08:20:38', '2020-04-29 01:20:38', '', 15, 'http://vanphongtranyen.org.vn//?p=269', 0, 'revision', '', 0),
	(272, 1, '2020-04-29 09:09:45', '2020-04-29 02:09:45', '', 'Quản lý phân nhóm', '', 'publish', 'closed', 'closed', '', 'quan-ly-phan-nhom', '', '', '2020-04-29 09:09:45', '2020-04-29 02:09:45', '', 0, 'http://vanphongtranyen.org.vn//?page_id=272', 0, 'page', '', 0),
	(273, 1, '2020-04-29 09:09:45', '2020-04-29 02:09:45', '', 'Quản lý phân nhóm', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2020-04-29 09:09:45', '2020-04-29 02:09:45', '', 272, 'http://vanphongtranyen.org.vn//?p=273', 0, 'revision', '', 0),
	(275, 1, '2020-05-04 09:32:45', '2020-05-04 02:32:45', '', 'Upload danh sách gửi', '', 'publish', 'closed', 'closed', '', 'test-upload-file', '', '', '2020-05-04 11:28:33', '2020-05-04 04:28:33', '', 0, 'http://vanphongtranyen.org.vn//?page_id=275', 0, 'page', '', 0),
	(276, 1, '2020-05-04 09:32:45', '2020-05-04 02:32:45', '', 'Test upload file', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2020-05-04 09:32:45', '2020-05-04 02:32:45', '', 275, 'http://vanphongtranyen.org.vn//?p=276', 0, 'revision', '', 0),
	(277, 1, '2020-05-04 11:28:33', '2020-05-04 04:28:33', '', 'Upload danh sách gửi', '', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2020-05-04 11:28:33', '2020-05-04 04:28:33', '', 275, 'http://vanphongtranyen.org.vn//?p=277', 0, 'revision', '', 0),
	(278, 1, '2020-05-04 13:54:50', '2020-05-04 06:54:50', '', 'Gửi tin nhắn theo danh sách', '', 'publish', 'closed', 'closed', '', 'gui-tin-nhan-theo-danh-sach', '', '', '2020-05-04 13:54:50', '2020-05-04 06:54:50', '', 0, 'http://vanphongtranyen.org.vn//?page_id=278', 0, 'page', '', 0),
	(279, 1, '2020-05-04 13:54:50', '2020-05-04 06:54:50', '', 'Gửi tin nhắn theo danh sách', '', 'inherit', 'closed', 'closed', '', '278-revision-v1', '', '', '2020-05-04 13:54:50', '2020-05-04 06:54:50', '', 278, 'http://vanphongtranyen.org.vn//?p=279', 0, 'revision', '', 0),
	(281, 1, '2020-05-09 10:59:31', '2020-05-09 03:59:31', '', 'Thống kê chi tiết tin nhắn', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-05-09 10:59:31', '2020-05-09 03:59:31', '', 21, 'http://vanphongtranyen.org.vn//?p=281', 0, 'revision', '', 0),
	(282, 1, '2020-05-09 11:01:51', '2020-05-09 04:01:51', '', 'Thống kê số lượng tin nhắn', '', 'publish', 'closed', 'closed', '', 'thong-ke-so-luong-tin-nhan', '', '', '2020-05-09 11:02:03', '2020-05-09 04:02:03', '', 0, 'http://vanphongtranyen.org.vn//?page_id=282', 0, 'page', '', 0),
	(283, 1, '2020-05-09 11:01:51', '2020-05-09 04:01:51', '', 'Thống kê số lượng tin nhắn', '', 'inherit', 'closed', 'closed', '', '282-revision-v1', '', '', '2020-05-09 11:01:51', '2020-05-09 04:01:51', '', 282, 'http://vanphongtranyen.org.vn//?p=283', 0, 'revision', '', 0),
	(285, 1, '2020-05-11 09:37:45', '2020-05-11 02:37:45', '', 'Check gửi tin', '', 'publish', 'closed', 'closed', '', 'check-gui-tin', '', '', '2020-05-11 09:37:45', '2020-05-11 02:37:45', '', 0, 'http://vanphongtranyen.org.vn//?page_id=285', 0, 'page', '', 0),
	(286, 1, '2020-05-11 09:37:45', '2020-05-11 02:37:45', '', 'Check gửi tin', '', 'inherit', 'closed', 'closed', '', '285-revision-v1', '', '', '2020-05-11 09:37:45', '2020-05-11 02:37:45', '', 285, 'http://vanphongtranyen.org.vn//?p=286', 0, 'revision', '', 0),
	(287, 1, '2020-05-11 09:47:59', '2020-05-11 02:47:59', '', 'Excel chi tiết tin nhắn', '', 'publish', 'closed', 'closed', '', 'excel-chi-tiet-tin-nhan', '', '', '2020-05-11 09:47:59', '2020-05-11 02:47:59', '', 0, 'http://vanphongtranyen.org.vn//?page_id=287', 0, 'page', '', 0),
	(288, 1, '2020-05-11 09:47:59', '2020-05-11 02:47:59', '', 'Excel chi tiết tin nhắn', '', 'inherit', 'closed', 'closed', '', '287-revision-v1', '', '', '2020-05-11 09:47:59', '2020-05-11 02:47:59', '', 287, 'http://vanphongtranyen.org.vn//?p=288', 0, 'revision', '', 0),
	(289, 1, '2020-05-11 13:58:34', '2020-05-11 06:58:34', '', 'Excel số lượng tin nhắn', '', 'publish', 'closed', 'closed', '', 'excel-so-luong-tin-nhan', '', '', '2020-05-11 13:58:34', '2020-05-11 06:58:34', '', 0, 'http://vanphongtranyen.org.vn//?page_id=289', 0, 'page', '', 0),
	(290, 1, '2020-05-11 13:58:34', '2020-05-11 06:58:34', '', 'Excel số lượng tin nhắn', '', 'inherit', 'closed', 'closed', '', '289-revision-v1', '', '', '2020-05-11 13:58:34', '2020-05-11 06:58:34', '', 289, 'http://vanphongtranyen.org.vn//?p=290', 0, 'revision', '', 0),
	(292, 1, '2020-05-13 09:55:01', '2020-05-13 02:55:01', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2020-05-13 09:55:01', '2020-05-13 02:55:01', '', 0, 'http://vanphongtranyen.org.vn//?page_id=292', 0, 'page', '', 0),
	(293, 1, '2020-05-13 09:55:01', '2020-05-13 02:55:01', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '292-revision-v1', '', '', '2020-05-13 09:55:01', '2020-05-13 02:55:01', '', 292, 'http://vanphongtranyen.org.vn//?p=293', 0, 'revision', '', 0),
	(294, 1, '2020-05-13 09:57:03', '2020-05-13 02:57:03', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-13 09:57:03', '2020-05-13 02:57:03', '', 1, 'http://vanphongtranyen.org.vn//?p=294', 0, 'revision', '', 0),
	(445, 1, '2021-09-13 16:08:43', '2021-09-13 09:08:43', '', '210817_Tạm_dừng_cung_cấp_dịch_vụ_Du_lịch_thông_minh_cho_khách_hàng (2)', '', 'inherit', 'closed', 'closed', '', '210817_tam_dung_cung_cap_dich_vu_du_lich_thong_minh_cho_khach_hang-2', '', '', '2021-09-13 16:08:43', '2021-09-13 09:08:43', '', 0, 'http://sms.test/f/2021/09/210817_Tam_dung_cung_cap_dich_vu_Du_lich_thong_minh_cho_khach_hang-2.pdf', 0, 'attachment', 'application/pdf', 0),
	(446, 1, '2021-09-13 20:44:32', '2021-09-13 13:44:32', '', '210817_Tạm_dừng_cung_cấp_dịch_vụ_Du_lịch_thông_minh_cho_khách_hàng (2)', '', 'inherit', 'closed', 'closed', '', '210817_tam_dung_cung_cap_dich_vu_du_lich_thong_minh_cho_khach_hang-2-2', '', '', '2021-09-13 20:44:32', '2021-09-13 13:44:32', '', 0, 'http://sms.test/f/2021/09/210817_Tam_dung_cung_cap_dich_vu_Du_lich_thong_minh_cho_khach_hang-2-1.pdf', 0, 'attachment', 'application/pdf', 0),
	(447, 1, '2021-09-14 09:23:58', '2021-09-14 02:23:58', '', 'Logo', '', 'inherit', 'closed', 'closed', '', 'logo', '', '', '2021-09-14 09:23:58', '2021-09-14 02:23:58', '', 0, 'http://sms.test/f/2021/09/Logo.png', 0, 'attachment', 'image/png', 0),
	(448, 1, '2021-11-11 10:26:02', '2021-11-11 03:26:02', '', 'Thanh Liêm', '', 'inherit', 'closed', 'closed', '', 'thanh-liem', '', '', '2021-11-11 10:26:02', '2021-11-11 03:26:02', '', 0, 'http://sms.test/f/2021/11/Thanh-Liem.pdf', 0, 'attachment', 'application/pdf', 0),
	(449, 1, '2021-11-11 10:26:47', '2021-11-11 03:26:47', '', 'gioithieu', '', 'inherit', 'closed', 'closed', '', '1022-gioi-thieu-he-thong', '', '', '2021-11-11 10:27:11', '2021-11-11 03:27:11', '', 0, 'http://sms.test/f/2021/11/1022-Gioi-thieu-he-thong-.pptx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 0),
	(450, 1, '2021-12-24 09:11:39', '2021-12-24 02:11:39', '', 'Basic RGB', '', 'inherit', 'closed', 'closed', '', 'basic-rgb', '', '', '2021-12-24 09:11:39', '2021-12-24 02:11:39', '', 0, 'http://sms.test/f/2021/12/motcua.jpg', 0, 'attachment', 'image/jpeg', 0),
	(451, 1, '2022-03-22 14:07:35', '2022-03-22 07:07:35', '', 'TT01.2011.BNV', '', 'inherit', 'closed', 'closed', '', 'tt01-2011-bnv', '', '', '2022-03-22 14:07:35', '2022-03-22 07:07:35', '', 0, 'http://ubndln.vnpthanam.vn/f/2022/03/TT01.2011.BNV_.pdf', 0, 'attachment', 'application/pdf', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_sms
CREATE TABLE IF NOT EXISTS `wp_sms` (
  `id_sms` bigint(20) NOT NULL AUTO_INCREMENT,
  `noidung` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_dinhkem` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_nguoigui` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_gui` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `so_tn` int(10) NOT NULL,
  PRIMARY KEY (`id_sms`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sms_tyn.wp_sms: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sms` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_sms_canbo
CREATE TABLE IF NOT EXISTS `wp_sms_canbo` (
  `id_sms` int(10) NOT NULL,
  `id_canbo` int(10) NOT NULL,
  `id_nhom` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table sms_tyn.wp_sms_canbo: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_sms_canbo` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sms_canbo` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_sms_log
CREATE TABLE IF NOT EXISTS `wp_sms_log` (
  `id_sms` int(10) NOT NULL,
  `id_canbo` int(10) NOT NULL,
  `ngay_gui` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(2) NOT NULL,
  `chitiet` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table sms_tyn.wp_sms_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_sms_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sms_log` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_sms_log_upload
CREATE TABLE IF NOT EXISTS `wp_sms_log_upload` (
  `id_sms` int(10) NOT NULL,
  `so_dt` int(9) NOT NULL,
  `ngay_gui` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(2) NOT NULL,
  `chitiet` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sms_tyn.wp_sms_log_upload: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_sms_log_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sms_log_upload` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_sms_upload
CREATE TABLE IF NOT EXISTS `wp_sms_upload` (
  `id_sms` int(10) NOT NULL,
  `so_dt` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sms_tyn.wp_sms_upload: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_sms_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_sms_upload` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_termmeta
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_termmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_terms
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_terms: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Chưa được phân loại', 'khong-phan-loai', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_term_relationships
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_term_relationships: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_term_taxonomy
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_term_taxonomy: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_usermeta
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_usermeta: ~55 rows (approximately)
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'nickname', 'admin'),
	(2, 1, 'first_name', ''),
	(3, 1, 'last_name', ''),
	(4, 1, 'description', ''),
	(5, 1, 'rich_editing', 'true'),
	(6, 1, 'syntax_highlighting', 'true'),
	(7, 1, 'comment_shortcuts', 'false'),
	(8, 1, 'admin_color', 'fresh'),
	(9, 1, 'use_ssl', '0'),
	(10, 1, 'show_admin_bar_front', 'true'),
	(11, 1, 'locale', ''),
	(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(13, 1, 'wp_user_level', '10'),
	(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice'),
	(15, 1, 'show_welcome_panel', '0'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '450'),
	(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
	(54, 1, 'wp_user-settings', 'libraryContent=upload'),
	(55, 1, 'wp_user-settings-time', '1636602450'),
	(59, 1, 'closedpostboxes_page', 'a:0:{}'),
	(60, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
	(89, 1, 'wp_media_library_mode', 'grid'),
	(91, 1, 'show_try_gutenberg_panel', '0'),
	(235, 1, 'wp_limit_login_nag_ignore', 'true'),
	(308, 24, 'nickname', 'linhvv'),
	(309, 24, 'first_name', ''),
	(310, 24, 'last_name', ''),
	(311, 24, 'description', ''),
	(312, 24, 'rich_editing', 'true'),
	(313, 24, 'syntax_highlighting', 'true'),
	(314, 24, 'comment_shortcuts', 'false'),
	(315, 24, 'admin_color', 'fresh'),
	(316, 24, 'use_ssl', '0'),
	(317, 24, 'show_admin_bar_front', 'true'),
	(318, 24, 'locale', ''),
	(319, 24, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
	(320, 24, 'wp_user_level', '2'),
	(321, 24, 'dismissed_wp_pointers', ''),
	(323, 24, 'session_tokens', 'a:2:{s:64:"9b57677126eaa1c54349ee87a7611fdb26b6db2498ff539950ab90c02290cdcc";a:4:{s:10:"expiration";i:1615025542;s:2:"ip";s:14:"113.185.53.127";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36";s:5:"login";i:1614852742;}s:64:"e82d721494beed92d57415c5d29f9f24606977a50dd4bb2d9dd15cfd2571287f";a:4:{s:10:"expiration";i:1615028012;s:2:"ip";s:14:"113.185.53.127";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36";s:5:"login";i:1614855212;}}'),
	(330, 25, 'nickname', 'vanphong_tyn'),
	(331, 25, 'first_name', 'Văn phòng'),
	(332, 25, 'last_name', ''),
	(333, 25, 'description', ''),
	(334, 25, 'rich_editing', 'true'),
	(335, 25, 'syntax_highlighting', 'true'),
	(336, 25, 'comment_shortcuts', 'false'),
	(337, 25, 'admin_color', 'fresh'),
	(338, 25, 'use_ssl', '0'),
	(339, 25, 'show_admin_bar_front', 'true'),
	(340, 25, 'locale', ''),
	(341, 25, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
	(342, 25, 'wp_user_level', '7'),
	(343, 25, 'dismissed_wp_pointers', ''),
	(347, 25, 'session_tokens', 'a:6:{s:64:"a8a3e8cc10dc5dcfd32334d3a0cfb6f5b9f7327eeef80b1f5f7387c1decb6f8e";a:4:{s:10:"expiration";i:1627951811;s:2:"ip";s:12:"14.238.178.9";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36";s:5:"login";i:1626742211;}s:64:"e9d88dc4fd75a718538a4572cae4d8a655cd40fbff66fba37c1d94b943ed73a1";a:4:{s:10:"expiration";i:1628125763;s:2:"ip";s:12:"14.238.178.9";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36";s:5:"login";i:1626916163;}s:64:"3f7e138593acb7ec6e6bdfbd6036d566b54b65ae6297e764e5d8ab8a1007bdbd";a:4:{s:10:"expiration";i:1628129108;s:2:"ip";s:12:"14.238.178.9";s:2:"ua";s:135:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/96.0.230 Chrome/90.0.4430.230 Safari/537.36";s:5:"login";i:1626919508;}s:64:"9ca8f9f082763a2fe9f149ab293bbd3a32ce233b7e10cd1e45d834707bebf603";a:4:{s:10:"expiration";i:1628568585;s:2:"ip";s:14:"14.249.208.213";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36";s:5:"login";i:1627358985;}s:64:"f3ddc1dfe050edc719b56b97cf98405226c71c7a8f45a5e04154466dc0b5e995";a:4:{s:10:"expiration";i:1627656210;s:2:"ip";s:14:"113.162.51.137";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36";s:5:"login";i:1627483410;}s:64:"85734a1c68addcaccea1389357d2e0c616307f3b877fdb88bca6c5947d513b6a";a:4:{s:10:"expiration";i:1627828379;s:2:"ip";s:14:"113.162.92.161";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36";s:5:"login";i:1627655579;}}'),
	(349, 1, 'session_tokens', 'a:4:{s:64:"d9471dbf8bfcd6cbb2c695de686e2bd83064056f95fc163ff2ff4b9aad86179d";a:4:{s:10:"expiration";i:1648101864;s:2:"ip";s:15:"113.160.198.198";s:2:"ua";s:131:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.46";s:5:"login";i:1647929064;}s:64:"af058796fe5f4613d3a97c128cf34eb34ebbb9df80a30d452b3ea91c8c60d1f3";a:4:{s:10:"expiration";i:1649139554;s:2:"ip";s:15:"113.160.198.198";s:2:"ua";s:131:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.46";s:5:"login";i:1647929954;}s:64:"522bcd76c72513b3784052a2a10f3e0b74c380f21845f011c409ce4b2b1b86ee";a:4:{s:10:"expiration";i:1649142208;s:2:"ip";s:15:"113.160.198.198";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36";s:5:"login";i:1647932608;}s:64:"397ba5e114f7d7705ff87a8a30d27db7d78a9adb0f4f2ec58bb045c84645e111";a:4:{s:10:"expiration";i:1649175258;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:131:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.46";s:5:"login";i:1647965658;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Dumping structure for table sms_tyn.wp_users
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sms_tyn.wp_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admin', '$P$B9cXTq0hnWJCtr36JdSrhnjTmNiq6S1', 'admin', 'admin@admin.com', '', '2020-03-30 14:32:11', '', 0, 'Administrator'),
	(2, 'admin1', '6753b64aee88c334429baf33d760cd08', 'admin1', 'admin1@admin.com', '', '2020-03-30 14:32:11', '', 0, 'Administrator');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
