# WordPress MySQL database migration
#
# Generated: Wednesday 2. December 2020 10:30 UTC
# Hostname: localhost
# Database: `mj_flood_tech`
# URL: //localhost/mj-flood-technology
# Path: C:\\xampp\\htdocs\\mj-flood-technology
# Tables: mj_commentmeta, mj_comments, mj_links, mj_options, mj_postmeta, mj_posts, mj_term_relationships, mj_term_taxonomy, mj_termmeta, mj_terms, mj_usermeta, mj_users
# Table Prefix: mj_
# Post Types: revision, acf-field, acf-field-group, attachment, case-study, customize_changeset, nav_menu_item, our-partners, page, post, services
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `mj_commentmeta`
#

DROP TABLE IF EXISTS `mj_commentmeta`;


#
# Table structure of table `mj_commentmeta`
#

CREATE TABLE `mj_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_commentmeta`
#

#
# End of data contents of table `mj_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `mj_comments`
#

DROP TABLE IF EXISTS `mj_comments`;


#
# Table structure of table `mj_comments`
#

CREATE TABLE `mj_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_comments`
#

#
# End of data contents of table `mj_comments`
# --------------------------------------------------------



#
# Delete any existing table `mj_links`
#

DROP TABLE IF EXISTS `mj_links`;


#
# Table structure of table `mj_links`
#

CREATE TABLE `mj_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_links`
#

#
# End of data contents of table `mj_links`
# --------------------------------------------------------



#
# Delete any existing table `mj_options`
#

DROP TABLE IF EXISTS `mj_options`;


#
# Table structure of table `mj_options`
#

CREATE TABLE `mj_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_options`
#
INSERT INTO `mj_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/mj-flood-technology', 'yes'),
(2, 'home', 'http://localhost/mj-flood-technology', 'yes'),
(3, 'blogname', 'MJ Flood Technology', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jigar.bhanushali787@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:33:"classic-editor/classic-editor.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mj-flood-tech', 'yes'),
(41, 'stylesheet', 'mj-flood-tech', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:20:"Request Consultation";s:4:"text";s:223:"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p><a class="btn" href="#">Find out more</a>";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1622351467', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'mj_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `mj_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1606907479;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1606929079;a:2:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1606929080;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1606972277;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1606972332;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1606972337;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1607490678;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:"7IXLWqbAPyvOBoC2us5cXU";a:2:{s:10:"hashed_key";s:34:"$P$BtlkKnkgyfe8n6eZjWnH.u0XfNZjo.0";s:10:"created_at";i:1606801731;}}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1606801066;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(145, 'finished_updating_comment_type', '1', 'yes'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'acf_version', '5.9.3', 'yes'),
(152, 'current_theme', 'MJ Flood Technology', 'yes'),
(153, 'theme_mods_mj-flood-tech', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:5:{s:6:"menu-1";i:2;s:6:"menu-2";i:3;s:6:"menu-3";i:4;s:6:"menu-4";i:5;s:6:"menu-5";i:6;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:18;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(155, 'recovery_mode_email_last_sent', '1606801731', 'yes'),
(156, 'category_children', 'a:0:{}', 'yes'),
(166, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(171, 'options_banner_title', 'Banner title', 'no'),
(172, '_options_banner_title', 'field_5fc6197883564', 'no'),
(173, 'options_banner_description', 'Short descriptions Lorem ipsum dolor sit amet, consectetur adipiscing elit. Offering expert solutions, delivery and support.', 'no'),
(174, '_options_banner_description', 'field_5fc6199a83565', 'no'),
(175, 'options_banner_image', '64', 'no'),
(176, '_options_banner_image', 'field_5fc619bf83566', 'no'),
(177, 'options_banner_button_text', 'Request a consultation', 'no'),
(178, '_options_banner_button_text', 'field_5fc619d483567', 'no'),
(179, 'options_banner_button_url', '', 'no'),
(180, '_options_banner_button_url', 'field_5fc619ff83568', 'no'),
(181, 'options_footer_about_us', '<h4>MJ Flood Technology</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud', 'no'),
(182, '_options_footer_about_us', 'field_5fc61a807400e', 'no'),
(183, 'options_twitter', 'https://twitter.com/', 'no'),
(184, '_options_twitter', 'field_5fc61af07defc', 'no'),
(185, 'options_facebook', 'https://www.facebook.com/', 'no'),
(186, '_options_facebook', 'field_5fc61aff7defd', 'no'),
(187, 'options_instagram', 'https://www.instagram.com/', 'no'),
(188, '_options_instagram', 'field_5fc61b0f7defe', 'no'),
(189, 'options_linkedin', 'https://in.linkedin.com/', 'no'),
(190, '_options_linkedin', 'field_5fc61b217deff', 'no'),
(191, 'options_youtube', 'https://www.youtube.com/', 'no'),
(192, '_options_youtube', 'field_5fc61b327df00', 'no'),
(242, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1606905022;}', 'no') ;

#
# End of data contents of table `mj_options`
# --------------------------------------------------------



#
# Delete any existing table `mj_postmeta`
#

DROP TABLE IF EXISTS `mj_postmeta`;


#
# Table structure of table `mj_postmeta`
#

CREATE TABLE `mj_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_postmeta`
#
INSERT INTO `mj_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1606804709:1'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1606818239:1'),
(10, 7, '_wp_page_template', 'page-templates/home.php'),
(11, 6, '_wp_trash_meta_status', 'draft'),
(12, 6, '_wp_trash_meta_time', '1606805101'),
(13, 6, '_wp_desired_post_slug', ''),
(14, 11, '_wp_attached_file', '2020/12/value-we-deliver-icon-1.svg'),
(15, 12, '_wp_attached_file', '2020/12/value-we-deliver-icon-2.svg'),
(16, 13, '_wp_attached_file', '2020/12/value-we-deliver-icon-3.svg'),
(17, 14, '_wp_attached_file', '2020/12/value-we-deliver-icon-4.svg'),
(18, 18, '_wp_attached_file', '2020/12/logo.svg'),
(19, 19, '_edit_lock', '1606811424:1'),
(20, 19, '_wp_trash_meta_status', 'publish'),
(21, 19, '_wp_trash_meta_time', '1606811433'),
(31, 21, '_menu_item_type', 'custom'),
(32, 21, '_menu_item_menu_item_parent', '0'),
(33, 21, '_menu_item_object_id', '21'),
(34, 21, '_menu_item_object', 'custom'),
(35, 21, '_menu_item_target', ''),
(36, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 21, '_menu_item_xfn', ''),
(38, 21, '_menu_item_url', '#'),
(40, 22, '_menu_item_type', 'custom'),
(41, 22, '_menu_item_menu_item_parent', '0'),
(42, 22, '_menu_item_object_id', '22'),
(43, 22, '_menu_item_object', 'custom'),
(44, 22, '_menu_item_target', ''),
(45, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 22, '_menu_item_xfn', ''),
(47, 22, '_menu_item_url', '#'),
(48, 22, '_menu_item_orphaned', '1606812104'),
(49, 23, '_menu_item_type', 'custom'),
(50, 23, '_menu_item_menu_item_parent', '0'),
(51, 23, '_menu_item_object_id', '23'),
(52, 23, '_menu_item_object', 'custom'),
(53, 23, '_menu_item_target', ''),
(54, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 23, '_menu_item_xfn', ''),
(56, 23, '_menu_item_url', '#'),
(58, 24, '_menu_item_type', 'custom'),
(59, 24, '_menu_item_menu_item_parent', '0'),
(60, 24, '_menu_item_object_id', '24'),
(61, 24, '_menu_item_object', 'custom'),
(62, 24, '_menu_item_target', ''),
(63, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 24, '_menu_item_xfn', ''),
(65, 24, '_menu_item_url', '#'),
(67, 25, '_menu_item_type', 'custom'),
(68, 25, '_menu_item_menu_item_parent', '0'),
(69, 25, '_menu_item_object_id', '25'),
(70, 25, '_menu_item_object', 'custom'),
(71, 25, '_menu_item_target', ''),
(72, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 25, '_menu_item_xfn', ''),
(74, 25, '_menu_item_url', '#'),
(76, 26, '_menu_item_type', 'custom'),
(77, 26, '_menu_item_menu_item_parent', '0'),
(78, 26, '_menu_item_object_id', '26'),
(79, 26, '_menu_item_object', 'custom'),
(80, 26, '_menu_item_target', ''),
(81, 26, '_menu_item_classes', 'a:1:{i:0;s:3:"btn";}'),
(82, 26, '_menu_item_xfn', ''),
(83, 26, '_menu_item_url', '#'),
(85, 27, '_menu_item_type', 'custom'),
(86, 27, '_menu_item_menu_item_parent', '0'),
(87, 27, '_menu_item_object_id', '27'),
(88, 27, '_menu_item_object', 'custom'),
(89, 27, '_menu_item_target', ''),
(90, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 27, '_menu_item_xfn', ''),
(92, 27, '_menu_item_url', '#'),
(94, 28, '_menu_item_type', 'custom'),
(95, 28, '_menu_item_menu_item_parent', '0'),
(96, 28, '_menu_item_object_id', '28'),
(97, 28, '_menu_item_object', 'custom'),
(98, 28, '_menu_item_target', ''),
(99, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 28, '_menu_item_xfn', ''),
(101, 28, '_menu_item_url', '#'),
(103, 29, '_menu_item_type', 'custom'),
(104, 29, '_menu_item_menu_item_parent', '0'),
(105, 29, '_menu_item_object_id', '29'),
(106, 29, '_menu_item_object', 'custom'),
(107, 29, '_menu_item_target', ''),
(108, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 29, '_menu_item_xfn', ''),
(110, 29, '_menu_item_url', '#'),
(112, 30, '_menu_item_type', 'custom'),
(113, 30, '_menu_item_menu_item_parent', '0'),
(114, 30, '_menu_item_object_id', '30'),
(115, 30, '_menu_item_object', 'custom'),
(116, 30, '_menu_item_target', ''),
(117, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(118, 30, '_menu_item_xfn', ''),
(119, 30, '_menu_item_url', '#'),
(120, 30, '_menu_item_orphaned', '1606812772'),
(121, 31, '_menu_item_type', 'custom') ;
INSERT INTO `mj_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(122, 31, '_menu_item_menu_item_parent', '0'),
(123, 31, '_menu_item_object_id', '31'),
(124, 31, '_menu_item_object', 'custom'),
(125, 31, '_menu_item_target', ''),
(126, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 31, '_menu_item_xfn', ''),
(128, 31, '_menu_item_url', '#'),
(130, 32, '_menu_item_type', 'custom'),
(131, 32, '_menu_item_menu_item_parent', '0'),
(132, 32, '_menu_item_object_id', '32'),
(133, 32, '_menu_item_object', 'custom'),
(134, 32, '_menu_item_target', ''),
(135, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(136, 32, '_menu_item_xfn', ''),
(137, 32, '_menu_item_url', '#'),
(139, 33, '_menu_item_type', 'custom'),
(140, 33, '_menu_item_menu_item_parent', '0'),
(141, 33, '_menu_item_object_id', '33'),
(142, 33, '_menu_item_object', 'custom'),
(143, 33, '_menu_item_target', ''),
(144, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(145, 33, '_menu_item_xfn', ''),
(146, 33, '_menu_item_url', '#'),
(148, 34, '_menu_item_type', 'custom'),
(149, 34, '_menu_item_menu_item_parent', '0'),
(150, 34, '_menu_item_object_id', '34'),
(151, 34, '_menu_item_object', 'custom'),
(152, 34, '_menu_item_target', ''),
(153, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(154, 34, '_menu_item_xfn', ''),
(155, 34, '_menu_item_url', '#'),
(157, 35, '_menu_item_type', 'custom'),
(158, 35, '_menu_item_menu_item_parent', '0'),
(159, 35, '_menu_item_object_id', '35'),
(160, 35, '_menu_item_object', 'custom'),
(161, 35, '_menu_item_target', ''),
(162, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(163, 35, '_menu_item_xfn', ''),
(164, 35, '_menu_item_url', '#'),
(166, 36, '_menu_item_type', 'custom'),
(167, 36, '_menu_item_menu_item_parent', '0'),
(168, 36, '_menu_item_object_id', '36'),
(169, 36, '_menu_item_object', 'custom'),
(170, 36, '_menu_item_target', ''),
(171, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(172, 36, '_menu_item_xfn', ''),
(173, 36, '_menu_item_url', '#'),
(175, 37, '_menu_item_type', 'custom'),
(176, 37, '_menu_item_menu_item_parent', '0'),
(177, 37, '_menu_item_object_id', '37'),
(178, 37, '_menu_item_object', 'custom'),
(179, 37, '_menu_item_target', ''),
(180, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(181, 37, '_menu_item_xfn', ''),
(182, 37, '_menu_item_url', '#'),
(184, 38, '_menu_item_type', 'custom'),
(185, 38, '_menu_item_menu_item_parent', '0'),
(186, 38, '_menu_item_object_id', '38'),
(187, 38, '_menu_item_object', 'custom'),
(188, 38, '_menu_item_target', ''),
(189, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(190, 38, '_menu_item_xfn', ''),
(191, 38, '_menu_item_url', '#'),
(193, 39, '_menu_item_type', 'custom'),
(194, 39, '_menu_item_menu_item_parent', '0'),
(195, 39, '_menu_item_object_id', '39'),
(196, 39, '_menu_item_object', 'custom'),
(197, 39, '_menu_item_target', ''),
(198, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(199, 39, '_menu_item_xfn', ''),
(200, 39, '_menu_item_url', '#'),
(202, 40, '_menu_item_type', 'custom'),
(203, 40, '_menu_item_menu_item_parent', '0'),
(204, 40, '_menu_item_object_id', '40'),
(205, 40, '_menu_item_object', 'custom'),
(206, 40, '_menu_item_target', ''),
(207, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(208, 41, '_menu_item_type', 'custom'),
(209, 40, '_menu_item_xfn', ''),
(210, 40, '_menu_item_url', '#'),
(211, 41, '_menu_item_menu_item_parent', '0'),
(212, 40, '_menu_item_orphaned', '1606813200'),
(213, 41, '_menu_item_object_id', '41'),
(214, 41, '_menu_item_object', 'custom'),
(215, 41, '_menu_item_target', ''),
(216, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(217, 41, '_menu_item_xfn', ''),
(218, 41, '_menu_item_url', '#'),
(220, 42, '_menu_item_type', 'custom'),
(221, 42, '_menu_item_menu_item_parent', '0'),
(222, 42, '_menu_item_object_id', '42'),
(223, 42, '_menu_item_object', 'custom'),
(224, 42, '_menu_item_target', ''),
(225, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(226, 42, '_menu_item_xfn', ''),
(227, 42, '_menu_item_url', '#'),
(229, 43, '_menu_item_type', 'custom'),
(230, 43, '_menu_item_menu_item_parent', '0'),
(231, 43, '_menu_item_object_id', '43'),
(232, 43, '_menu_item_object', 'custom') ;
INSERT INTO `mj_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(233, 43, '_menu_item_target', ''),
(234, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(235, 43, '_menu_item_xfn', ''),
(236, 43, '_menu_item_url', '#'),
(238, 44, '_menu_item_type', 'custom'),
(239, 44, '_menu_item_menu_item_parent', '0'),
(240, 44, '_menu_item_object_id', '44'),
(241, 44, '_menu_item_object', 'custom'),
(242, 44, '_menu_item_target', ''),
(243, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(244, 44, '_menu_item_xfn', ''),
(245, 44, '_menu_item_url', '#'),
(247, 45, '_menu_item_type', 'custom'),
(248, 45, '_menu_item_menu_item_parent', '0'),
(249, 45, '_menu_item_object_id', '45'),
(250, 45, '_menu_item_object', 'custom'),
(251, 45, '_menu_item_target', ''),
(252, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(253, 45, '_menu_item_xfn', ''),
(254, 45, '_menu_item_url', '#'),
(256, 46, '_menu_item_type', 'custom'),
(257, 46, '_menu_item_menu_item_parent', '0'),
(258, 46, '_menu_item_object_id', '46'),
(259, 46, '_menu_item_object', 'custom'),
(260, 46, '_menu_item_target', ''),
(261, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(262, 46, '_menu_item_xfn', ''),
(263, 46, '_menu_item_url', '#'),
(265, 47, '_menu_item_type', 'custom'),
(266, 47, '_menu_item_menu_item_parent', '0'),
(267, 47, '_menu_item_object_id', '47'),
(268, 47, '_menu_item_object', 'custom'),
(269, 47, '_menu_item_target', ''),
(270, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(271, 47, '_menu_item_xfn', ''),
(272, 47, '_menu_item_url', '#'),
(274, 49, '_edit_last', '1'),
(275, 49, '_edit_lock', '1606889052:1'),
(276, 64, '_wp_attached_file', '2020/12/hero-grafic.svg'),
(277, 65, '_edit_last', '1'),
(278, 65, '_edit_lock', '1606823714:1'),
(279, 66, '_wp_attached_file', '2020/12/news01.jpg'),
(280, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:254;s:4:"file";s:18:"2020/12/news01.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"news01-300x212.jpg";s:5:"width";i:300;s:6:"height";i:212;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"news01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(281, 65, '_thumbnail_id', '66'),
(283, 68, '_edit_last', '1'),
(284, 68, '_edit_lock', '1606823768:1'),
(285, 68, '_thumbnail_id', '66'),
(287, 70, '_edit_last', '1'),
(288, 70, '_edit_lock', '1606823802:1'),
(289, 70, '_thumbnail_id', '66'),
(295, 74, '_edit_last', '1'),
(296, 74, '_edit_lock', '1606887676:1'),
(297, 77, '_edit_last', '1'),
(298, 77, '_edit_lock', '1606889062:1'),
(299, 79, '_edit_last', '1'),
(300, 79, '_edit_lock', '1606896835:1'),
(301, 80, '_wp_attached_file', '2020/12/tablogo1.png'),
(302, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:131;s:6:"height";i:27;s:4:"file";s:20:"2020/12/tablogo1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(303, 79, '_thumbnail_id', '107'),
(304, 79, 'sub_title', 'microsoft'),
(305, 79, '_sub_title', 'field_5fc6309dd1ff9'),
(306, 79, 'cs_logo', '80'),
(307, 79, '_cs_logo', 'field_5fc631071c95d'),
(308, 81, '_edit_last', '1'),
(309, 81, '_edit_lock', '1606889016:1'),
(310, 82, '_wp_attached_file', '2020/12/tablogo2.png'),
(311, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:124;s:6:"height";i:34;s:4:"file";s:20:"2020/12/tablogo2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(312, 81, '_thumbnail_id', '107'),
(313, 81, 'sub_title', 'aliqua'),
(314, 81, '_sub_title', 'field_5fc6309dd1ff9'),
(315, 81, 'cs_logo', '82'),
(316, 81, '_cs_logo', 'field_5fc631071c95d'),
(317, 83, '_edit_last', '1'),
(318, 83, '_edit_lock', '1606889006:1'),
(319, 84, '_wp_attached_file', '2020/12/tablogo3.png'),
(320, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:124;s:6:"height";i:33;s:4:"file";s:20:"2020/12/tablogo3.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(321, 83, '_thumbnail_id', '107'),
(322, 83, 'sub_title', 'dynamic'),
(323, 83, '_sub_title', 'field_5fc6309dd1ff9'),
(324, 83, 'cs_logo', '84'),
(325, 83, '_cs_logo', 'field_5fc631071c95d'),
(326, 85, '_edit_last', '1'),
(327, 85, '_edit_lock', '1606888963:1'),
(328, 86, '_wp_attached_file', '2020/12/tablogo4.png'),
(329, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:108;s:6:"height";i:53;s:4:"file";s:20:"2020/12/tablogo4.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(330, 85, '_thumbnail_id', '107'),
(331, 85, 'sub_title', 'fugiat'),
(332, 85, '_sub_title', 'field_5fc6309dd1ff9'),
(333, 85, 'cs_logo', '86'),
(334, 85, '_cs_logo', 'field_5fc631071c95d'),
(335, 87, '_edit_last', '1'),
(336, 87, '_edit_lock', '1606889872:1'),
(337, 88, '_wp_attached_file', '2020/12/microsoft_logo.svg'),
(338, 87, '_thumbnail_id', '88'),
(339, 89, '_edit_last', '1'),
(340, 89, '_edit_lock', '1606889861:1'),
(341, 90, '_wp_attached_file', '2020/12/hp.svg'),
(342, 89, '_thumbnail_id', '90'),
(343, 92, '_edit_last', '1'),
(344, 92, '_edit_lock', '1606825399:1') ;
INSERT INTO `mj_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(345, 92, '_thumbnail_id', '90'),
(346, 93, '_edit_last', '1'),
(347, 93, '_edit_lock', '1606889692:1'),
(348, 93, '_thumbnail_id', '88'),
(349, 94, '_edit_last', '1'),
(350, 94, '_edit_lock', '1606825438:1'),
(351, 94, '_thumbnail_id', '90'),
(352, 95, '_edit_last', '1'),
(353, 95, '_edit_lock', '1606825480:1'),
(354, 95, '_thumbnail_id', '88'),
(355, 96, '_edit_last', '1'),
(356, 96, '_edit_lock', '1606889657:1'),
(357, 96, '_thumbnail_id', '90'),
(358, 97, '_edit_last', '1'),
(359, 97, '_edit_lock', '1606825515:1'),
(360, 97, '_thumbnail_id', '88'),
(361, 98, '_edit_last', '1'),
(362, 98, '_edit_lock', '1606904627:1'),
(363, 99, '_wp_attached_file', '2020/12/what-we-do-1.png'),
(364, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:886;s:4:"file";s:24:"2020/12/what-we-do-1.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:24:"what-we-do-1-300x185.png";s:5:"width";i:300;s:6:"height";i:185;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"what-we-do-1-1024x630.png";s:5:"width";i:1024;s:6:"height";i:630;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"what-we-do-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:24:"what-we-do-1-768x473.png";s:5:"width";i:768;s:6:"height";i:473;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(365, 98, '_thumbnail_id', '110'),
(366, 100, '_edit_last', '1'),
(367, 100, '_edit_lock', '1606889810:1'),
(368, 101, '_wp_attached_file', '2020/12/what-we-do-2.png'),
(369, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:886;s:4:"file";s:24:"2020/12/what-we-do-2.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:24:"what-we-do-2-244x300.png";s:5:"width";i:244;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"what-we-do-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(370, 100, '_thumbnail_id', '101'),
(371, 102, '_edit_last', '1'),
(372, 102, '_edit_lock', '1606889826:1'),
(373, 103, '_wp_attached_file', '2020/12/what-we-do-3.png'),
(374, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:886;s:4:"file";s:24:"2020/12/what-we-do-3.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:24:"what-we-do-3-244x300.png";s:5:"width";i:244;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"what-we-do-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(375, 102, '_thumbnail_id', '103'),
(376, 104, '_edit_last', '1'),
(377, 104, '_edit_lock', '1606890620:1'),
(378, 105, '_wp_attached_file', '2020/12/what-we-do-4.png'),
(379, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:886;s:4:"file";s:24:"2020/12/what-we-do-4.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:24:"what-we-do-4-244x300.png";s:5:"width";i:244;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"what-we-do-4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(380, 104, '_thumbnail_id', '105'),
(381, 106, '_edit_last', '1'),
(382, 106, '_edit_lock', '1606889862:1'),
(383, 107, '_wp_attached_file', '2020/12/our-partners.png'),
(384, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:800;s:4:"file";s:24:"2020/12/our-partners.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:24:"our-partners-270x300.png";s:5:"width";i:270;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"our-partners-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(385, 108, '_edit_last', '1'),
(386, 108, '_edit_lock', '1606889613:1'),
(387, 108, '_thumbnail_id', '90'),
(388, 109, '_edit_last', '1'),
(389, 109, '_edit_lock', '1606889559:1'),
(390, 109, '_thumbnail_id', '88'),
(391, 110, '_wp_attached_file', '2020/12/what-we-do-1-1.png'),
(392, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:886;s:4:"file";s:26:"2020/12/what-we-do-1-1.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:26:"what-we-do-1-1-300x185.png";s:5:"width";i:300;s:6:"height";i:185;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"what-we-do-1-1-1024x630.png";s:5:"width";i:1024;s:6:"height";i:630;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"what-we-do-1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"what-we-do-1-1-768x473.png";s:5:"width";i:768;s:6:"height";i:473;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;

#
# End of data contents of table `mj_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `mj_posts`
#

DROP TABLE IF EXISTS `mj_posts`;


#
# Table structure of table `mj_posts`
#

CREATE TABLE `mj_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_posts`
#
INSERT INTO `mj_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2020-12-01 05:11:15', '2020-12-01 05:11:15', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/mj-flood-technology.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-12-01 05:11:15', '2020-12-01 05:11:15', '', 0, 'http://localhost/mj-flood-technology/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-12-01 05:12:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-01 05:12:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/mj-flood-technology/?p=4', 0, 'post', '', 0),
(6, 1, '2020-12-01 06:45:01', '2020-12-01 06:45:01', '', 'Home', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-12-01 06:45:01', '2020-12-01 06:45:01', '', 0, 'http://localhost/mj-flood-technology/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-12-01 06:38:53', '2020-12-01 06:38:53', '<div class="col-md-5 mb-5 mb-md-0">\r\n<h2>Value we deliver</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.</p>\r\n<p>Commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<a class="btn" href="#">Read more</a>\r\n</div>\r\n<div class="col-md-7">\r\n<div class="row">\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-1.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-3.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-2.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-4.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-12-01 07:11:13', '2020-12-01 07:11:13', '', 0, 'http://localhost/mj-flood-technology/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-12-01 06:38:53', '2020-12-01 06:38:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-01 06:38:53', '2020-12-01 06:38:53', '', 7, 'http://localhost/mj-flood-technology/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-12-01 06:45:01', '2020-12-01 06:45:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-12-01 06:45:01', '2020-12-01 06:45:01', '', 6, 'http://localhost/mj-flood-technology/6-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-12-01 07:10:52', '2020-12-01 07:10:52', '<div class="col-md-5 mb-5 mb-md-0">\n<h2>Value we deliver</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.</p>\n<p>Commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa\nqui\nofficia deserunt mollit anim id est laborum.\n\n<a class="btn" href="#">Read more</a>\n\n</div>\n<div class="col-md-7">\n<div class="row">\n<div class="col-lg-6">\n<div class="value-list"><span class="value-icon">\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-1.svg" alt="Value Icon" />\n</span>\n<div class="value-description">\n<h4>Key benefit</h4>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n\n</div>\n</div>\n</div>\n<div class="col-lg-6">\n<div class="value-list"><span class="value-icon">\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-3.svg" alt="Value Icon" />\n</span>\n<div class="value-description">\n<h4>Key benefit</h4>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n\n</div>\n</div>\n</div>\n<div class="col-lg-6">\n<div class="value-list"><span class="value-icon">\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-2.svg" alt="Value Icon" />\n</span>\n<div class="value-description">\n<h4>Key benefit</h4>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n\n</div>\n</div>\n</div>\n<div class="col-lg-6">\n<div class="value-list"><span class="value-icon">\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-4.svg" alt="Value Icon" />\n</span>\n<div class="value-description">\n<h4>Key benefit</h4>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n\n</div>\n</div>\n</div>\n</div>\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2020-12-01 07:10:52', '2020-12-01 07:10:52', '', 7, 'http://localhost/mj-flood-technology/7-autosave-v1/', 0, 'revision', '', 0),
(11, 1, '2020-12-01 07:00:24', '2020-12-01 07:00:24', '', 'value-we-deliver-icon-1', '', 'inherit', 'open', 'closed', '', 'value-we-deliver-icon-1', '', '', '2020-12-01 07:00:24', '2020-12-01 07:00:24', '', 0, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(12, 1, '2020-12-01 07:00:25', '2020-12-01 07:00:25', '', 'value-we-deliver-icon-2', '', 'inherit', 'open', 'closed', '', 'value-we-deliver-icon-2', '', '', '2020-12-01 07:00:25', '2020-12-01 07:00:25', '', 0, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(13, 1, '2020-12-01 07:00:25', '2020-12-01 07:00:25', '', 'value-we-deliver-icon-3', '', 'inherit', 'open', 'closed', '', 'value-we-deliver-icon-3', '', '', '2020-12-01 07:00:25', '2020-12-01 07:00:25', '', 0, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-3.svg', 0, 'attachment', 'image/svg+xml', 0),
(14, 1, '2020-12-01 07:00:26', '2020-12-01 07:00:26', '', 'value-we-deliver-icon-4', '', 'inherit', 'open', 'closed', '', 'value-we-deliver-icon-4', '', '', '2020-12-01 07:00:26', '2020-12-01 07:00:26', '', 0, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-4.svg', 0, 'attachment', 'image/svg+xml', 0),
(15, 1, '2020-12-01 07:03:39', '2020-12-01 07:03:39', '            <div class="col-md-5 mb-5 mb-md-0">\r\n                <h2>Value we deliver</h2>\r\n                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\r\n                    labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n                    laboris nisi ut aliquip ex ea. </p>\r\n                <p>Commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum\r\n                    dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa\r\n                    qui\r\n                    officia deserunt mollit anim id est laborum.</p>\r\n                <a href="#" class="btn">Read more</a>\r\n            </div>\r\n            <div class="col-md-7">\r\n                <div class="row">\r\n                    <div class="col-lg-6">\r\n                        <div class="value-list">\r\n                            <span class="value-icon">\r\n                                <img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-1.svg" alt="Value Icon">\r\n                            </span>\r\n                            <div class="value-description">\r\n                                <h4>Key benefit</h4>\r\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class="col-lg-6">\r\n                        <div class="value-list">\r\n                            <span class="value-icon">\r\n                                <img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-3.svg" alt="Value Icon">\r\n                            </span>\r\n                            <div class="value-description">\r\n                                <h4>Key benefit</h4>\r\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class="col-lg-6">\r\n                        <div class="value-list">\r\n                            <span class="value-icon">\r\n                                <img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-2.svg" alt="Value Icon">\r\n                            </span>\r\n                            <div class="value-description">\r\n                                <h4>Key benefit</h4>\r\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class="col-lg-6">\r\n                        <div class="value-list">\r\n                            <span class="value-icon">\r\n                                <img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-4.svg" alt="Value Icon">\r\n                            </span>\r\n                            <div class="value-description">\r\n                                <h4>Key benefit</h4>\r\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-01 07:03:39', '2020-12-01 07:03:39', '', 7, 'http://localhost/mj-flood-technology/7-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-12-01 07:08:46', '2020-12-01 07:08:46', '&nbsp;\r\n<div class="col-md-5 mb-5 mb-md-0">\r\n<h2>Value we deliver</h2>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\nlaboris nisi ut aliquip ex ea.\r\n\r\nCommodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum\r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa\r\nqui\r\nofficia deserunt mollit anim id est laborum.\r\n\r\n<a class="btn" href="#">Read more</a>\r\n\r\n</div>\r\n<div class="col-md-7">\r\n<div class="row">\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-1.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-3.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-2.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-4.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-01 07:08:46', '2020-12-01 07:08:46', '', 7, 'http://localhost/mj-flood-technology/7-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-12-01 07:11:13', '2020-12-01 07:11:13', '<div class="col-md-5 mb-5 mb-md-0">\r\n<h2>Value we deliver</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.</p>\r\n<p>Commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<a class="btn" href="#">Read more</a>\r\n</div>\r\n<div class="col-md-7">\r\n<div class="row">\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-1.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-3.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-2.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-lg-6">\r\n<div class="value-list"><span class="value-icon">\r\n<img src="http://localhost/mj-flood-technology/wp-content/uploads/2020/12/value-we-deliver-icon-4.svg" alt="Value Icon" />\r\n</span>\r\n<div class="value-description">\r\n<h4>Key benefit</h4>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-12-01 07:11:13', '2020-12-01 07:11:13', '', 7, 'http://localhost/mj-flood-technology/7-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-12-01 08:30:06', '2020-12-01 08:30:06', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-12-01 08:30:06', '2020-12-01 08:30:06', '', 0, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(19, 1, '2020-12-01 08:30:32', '2020-12-01 08:30:32', '{"mj-flood-tech::custom_logo":{"value":18,"type":"theme_mod","user_id":1,"date_modified_gmt":"2020-12-01 08:30:23"}}', '', '', 'trash', 'closed', 'closed', '', '52a7dc11-ee0e-47ee-b37d-45b903534ec6', '', '', '2020-12-01 08:30:32', '2020-12-01 08:30:32', '', 0, 'http://localhost/mj-flood-technology/?p=19', 0, 'customize_changeset', '', 0),
(21, 1, '2020-12-01 08:40:46', '2020-12-01 08:40:46', '', 'Solutions', '', 'publish', 'closed', 'closed', '', 'solutions', '', '', '2020-12-01 08:50:13', '2020-12-01 08:50:13', '', 0, 'http://localhost/mj-flood-technology/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2020-12-01 08:41:44', '0000-00-00 00:00:00', '', 'test', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-12-01 08:41:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/mj-flood-technology/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2020-12-01 08:50:13', '2020-12-01 08:50:13', '', 'Partners', '', 'publish', 'closed', 'closed', '', 'partners', '', '', '2020-12-01 08:50:13', '2020-12-01 08:50:13', '', 0, 'http://localhost/mj-flood-technology/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2020-12-01 08:50:13', '2020-12-01 08:50:13', '', 'Case Studies', '', 'publish', 'closed', 'closed', '', 'case-studies', '', '', '2020-12-01 08:50:13', '2020-12-01 08:50:13', '', 0, 'http://localhost/mj-flood-technology/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2020-12-01 08:50:14', '2020-12-01 08:50:14', '', 'Our Company', '', 'publish', 'closed', 'closed', '', 'our-company', '', '', '2020-12-01 08:50:14', '2020-12-01 08:50:14', '', 0, 'http://localhost/mj-flood-technology/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2020-12-01 08:50:14', '2020-12-01 08:50:14', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-12-01 08:50:14', '2020-12-01 08:50:14', '', 0, 'http://localhost/mj-flood-technology/?p=26', 5, 'nav_menu_item', '', 0),
(27, 1, '2020-12-01 08:55:22', '2020-12-01 08:55:22', '', 'Cloud Solutions', '', 'publish', 'closed', 'closed', '', 'cloud-solutions', '', '', '2020-12-01 08:55:22', '2020-12-01 08:55:22', '', 0, 'http://localhost/mj-flood-technology/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2020-12-01 08:55:22', '2020-12-01 08:55:22', '', 'Workplace Transformation', '', 'publish', 'closed', 'closed', '', 'workplace-transformation', '', '', '2020-12-01 08:55:22', '2020-12-01 08:55:22', '', 0, 'http://localhost/mj-flood-technology/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2020-12-01 08:55:22', '2020-12-01 08:55:22', '', 'Security Solutions', '', 'publish', 'closed', 'closed', '', 'security-solutions', '', '', '2020-12-01 08:55:22', '2020-12-01 08:55:22', '', 0, 'http://localhost/mj-flood-technology/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2020-12-01 08:52:51', '0000-00-00 00:00:00', '', 'Data Centre', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-12-01 08:52:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/mj-flood-technology/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2020-12-01 08:55:23', '2020-12-01 08:55:23', '', 'Data Centre', '', 'publish', 'closed', 'closed', '', 'data-centre', '', '', '2020-12-01 08:55:23', '2020-12-01 08:55:23', '', 0, 'http://localhost/mj-flood-technology/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2020-12-01 08:55:23', '2020-12-01 08:55:23', '', 'Managed Services', '', 'publish', 'closed', 'closed', '', 'managed-services', '', '', '2020-12-01 08:55:23', '2020-12-01 08:55:23', '', 0, 'http://localhost/mj-flood-technology/?p=32', 5, 'nav_menu_item', '', 0),
(33, 1, '2020-12-01 08:55:23', '2020-12-01 08:55:23', '', 'Professional Services', '', 'publish', 'closed', 'closed', '', 'professional-services', '', '', '2020-12-01 08:55:23', '2020-12-01 08:55:23', '', 0, 'http://localhost/mj-flood-technology/?p=33', 6, 'nav_menu_item', '', 0),
(34, 1, '2020-12-01 08:58:58', '2020-12-01 08:58:58', '', 'Microsoft', '', 'publish', 'closed', 'closed', '', 'microsoft', '', '', '2020-12-01 08:58:58', '2020-12-01 08:58:58', '', 0, 'http://localhost/mj-flood-technology/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2020-12-01 08:58:59', '2020-12-01 08:58:59', '', 'HPE', '', 'publish', 'closed', 'closed', '', 'hpe', '', '', '2020-12-01 08:58:59', '2020-12-01 08:58:59', '', 0, 'http://localhost/mj-flood-technology/?p=35', 2, 'nav_menu_item', '', 0),
(36, 1, '2020-12-01 08:58:59', '2020-12-01 08:58:59', '', 'Mimecast', '', 'publish', 'closed', 'closed', '', 'mimecast', '', '', '2020-12-01 08:58:59', '2020-12-01 08:58:59', '', 0, 'http://localhost/mj-flood-technology/?p=36', 3, 'nav_menu_item', '', 0),
(37, 1, '2020-12-01 08:58:59', '2020-12-01 08:58:59', '', 'Aliqua', '', 'publish', 'closed', 'closed', '', 'aliqua', '', '', '2020-12-01 08:58:59', '2020-12-01 08:58:59', '', 0, 'http://localhost/mj-flood-technology/?p=37', 4, 'nav_menu_item', '', 0),
(38, 1, '2020-12-01 08:58:59', '2020-12-01 08:58:59', '', 'Dynamic', '', 'publish', 'closed', 'closed', '', 'dynamic', '', '', '2020-12-01 08:58:59', '2020-12-01 08:58:59', '', 0, 'http://localhost/mj-flood-technology/?p=38', 5, 'nav_menu_item', '', 0),
(39, 1, '2020-12-01 08:58:59', '2020-12-01 08:58:59', '', 'More', '', 'publish', 'closed', 'closed', '', 'more', '', '', '2020-12-01 08:58:59', '2020-12-01 08:58:59', '', 0, 'http://localhost/mj-flood-technology/?p=39', 6, 'nav_menu_item', '', 0),
(40, 1, '2020-12-01 08:59:59', '0000-00-00 00:00:00', '', 'Contact Us', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-12-01 08:59:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/mj-flood-technology/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2020-12-01 09:01:35', '2020-12-01 09:01:35', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us-2', '', '', '2020-12-01 09:01:35', '2020-12-01 09:01:35', '', 0, 'http://localhost/mj-flood-technology/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2020-12-01 09:01:35', '2020-12-01 09:01:35', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-12-01 09:01:35', '2020-12-01 09:01:35', '', 0, 'http://localhost/mj-flood-technology/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2020-12-01 09:01:35', '2020-12-01 09:01:35', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-12-01 09:01:35', '2020-12-01 09:01:35', '', 0, 'http://localhost/mj-flood-technology/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2020-12-01 09:01:36', '2020-12-01 09:01:36', '', 'Careers', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2020-12-01 09:01:36', '2020-12-01 09:01:36', '', 0, 'http://localhost/mj-flood-technology/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2020-12-01 09:04:00', '2020-12-01 09:04:00', '', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2020-12-01 09:07:00', '2020-12-01 09:07:00', '', 0, 'http://localhost/mj-flood-technology/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2020-12-01 09:04:00', '2020-12-01 09:04:00', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2020-12-01 09:07:00', '2020-12-01 09:07:00', '', 0, 'http://localhost/mj-flood-technology/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2020-12-01 09:04:00', '2020-12-01 09:04:00', '', 'Sitemap', '', 'publish', 'closed', 'closed', '', 'sitemap', '', '', '2020-12-01 09:07:00', '2020-12-01 09:07:00', '', 0, 'http://localhost/mj-flood-technology/?p=47', 3, 'nav_menu_item', '', 0),
(48, 1, '2020-12-01 10:17:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-01 10:17:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/mj-flood-technology/?page_id=48', 0, 'page', '', 0),
(49, 1, '2020-12-01 10:21:35', '2020-12-01 10:21:35', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:13:"theme-setting";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Option', 'option', 'publish', 'closed', 'closed', '', 'group_5fc6190ae1fbf', '', '', '2020-12-01 10:30:24', '2020-12-01 10:30:24', '', 0, 'http://localhost/mj-flood-technology/?post_type=acf-field-group&#038;p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2020-12-01 10:25:26', '2020-12-01 10:25:26', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_5fc6196383563', '', '', '2020-12-01 10:25:26', '2020-12-01 10:25:26', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=50', 0, 'acf-field', '', 0),
(51, 1, '2020-12-01 10:25:26', '2020-12-01 10:25:26', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'banner_title', 'publish', 'closed', 'closed', '', 'field_5fc6197883564', '', '', '2020-12-01 10:25:26', '2020-12-01 10:25:26', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=51', 1, 'acf-field', '', 0),
(52, 1, '2020-12-01 10:25:26', '2020-12-01 10:25:26', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Description', 'banner_description', 'publish', 'closed', 'closed', '', 'field_5fc6199a83565', '', '', '2020-12-01 10:25:26', '2020-12-01 10:25:26', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=52', 2, 'acf-field', '', 0),
(53, 1, '2020-12-01 10:25:26', '2020-12-01 10:25:26', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_5fc619bf83566', '', '', '2020-12-01 10:25:26', '2020-12-01 10:25:26', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=53', 3, 'acf-field', '', 0),
(54, 1, '2020-12-01 10:25:26', '2020-12-01 10:25:26', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Button', 'banner_button_text', 'publish', 'closed', 'closed', '', 'field_5fc619d483567', '', '', '2020-12-01 10:25:26', '2020-12-01 10:25:26', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=54', 4, 'acf-field', '', 0),
(55, 1, '2020-12-01 10:25:26', '2020-12-01 10:25:26', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Button URL', 'banner_button_url', 'publish', 'closed', 'closed', '', 'field_5fc619ff83568', '', '', '2020-12-01 10:25:26', '2020-12-01 10:25:26', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=55', 5, 'acf-field', '', 0),
(56, 1, '2020-12-01 10:28:13', '2020-12-01 10:28:13', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'field_5fc61a5f7400d', '', '', '2020-12-01 10:28:13', '2020-12-01 10:28:13', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=56', 6, 'acf-field', '', 0),
(57, 1, '2020-12-01 10:28:13', '2020-12-01 10:28:13', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'About US', 'footer_about_us', 'publish', 'closed', 'closed', '', 'field_5fc61a807400e', '', '', '2020-12-01 10:28:13', '2020-12-01 10:28:13', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=57', 7, 'acf-field', '', 0),
(58, 1, '2020-12-01 10:30:24', '2020-12-01 10:30:24', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Social media', 'social_media', 'publish', 'closed', 'closed', '', 'field_5fc61ace7defb', '', '', '2020-12-01 10:30:24', '2020-12-01 10:30:24', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=58', 8, 'acf-field', '', 0),
(59, 1, '2020-12-01 10:30:24', '2020-12-01 10:30:24', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5fc61af07defc', '', '', '2020-12-01 10:30:24', '2020-12-01 10:30:24', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=59', 9, 'acf-field', '', 0),
(60, 1, '2020-12-01 10:30:24', '2020-12-01 10:30:24', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5fc61aff7defd', '', '', '2020-12-01 10:30:24', '2020-12-01 10:30:24', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=60', 10, 'acf-field', '', 0),
(61, 1, '2020-12-01 10:30:24', '2020-12-01 10:30:24', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5fc61b0f7defe', '', '', '2020-12-01 10:30:24', '2020-12-01 10:30:24', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=61', 11, 'acf-field', '', 0),
(62, 1, '2020-12-01 10:30:24', '2020-12-01 10:30:24', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Linkedin', 'linkedin', 'publish', 'closed', 'closed', '', 'field_5fc61b217deff', '', '', '2020-12-01 10:30:24', '2020-12-01 10:30:24', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=62', 12, 'acf-field', '', 0),
(63, 1, '2020-12-01 10:30:24', '2020-12-01 10:30:24', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Youtube', 'youtube', 'publish', 'closed', 'closed', '', 'field_5fc61b327df00', '', '', '2020-12-01 10:30:24', '2020-12-01 10:30:24', '', 49, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=63', 13, 'acf-field', '', 0),
(64, 1, '2020-12-01 10:32:14', '2020-12-01 10:32:14', '', 'hero-grafic', '', 'inherit', 'open', 'closed', '', 'hero-grafic', '', '', '2020-12-01 10:32:14', '2020-12-01 10:32:14', '', 0, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/hero-grafic.svg', 0, 'attachment', 'image/svg+xml', 0),
(65, 1, '2020-12-01 11:56:54', '2020-12-01 11:56:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.....', '3 Ways Virtualisation Monitoring Will Benefit Your Business', '', 'publish', 'open', 'open', '', '3-ways-virtualisation-monitoring-will-benefit-your-business', '', '', '2020-12-01 11:56:54', '2020-12-01 11:56:54', '', 0, 'http://localhost/mj-flood-technology/?p=65', 0, 'post', '', 0),
(66, 1, '2020-12-01 11:56:40', '2020-12-01 11:56:40', '', 'news01', '', 'inherit', 'open', 'closed', '', 'news01', '', '', '2020-12-01 11:56:40', '2020-12-01 11:56:40', '', 65, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/news01.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-12-01 11:56:54', '2020-12-01 11:56:54', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.....', '3 Ways Virtualisation Monitoring Will Benefit Your Business', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-12-01 11:56:54', '2020-12-01 11:56:54', '', 65, 'http://localhost/mj-flood-technology/65-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-12-01 11:58:23', '2020-12-01 11:58:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.....', '3 Ways Virtualisation Monitoring Will Benefit Your Business', '', 'publish', 'open', 'open', '', '3-ways-virtualisation-monitoring-will-benefit-your-business-2', '', '', '2020-12-01 11:58:23', '2020-12-01 11:58:23', '', 0, 'http://localhost/mj-flood-technology/?p=68', 0, 'post', '', 0),
(69, 1, '2020-12-01 11:58:23', '2020-12-01 11:58:23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.....', '3 Ways Virtualisation Monitoring Will Benefit Your Business', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-12-01 11:58:23', '2020-12-01 11:58:23', '', 68, 'http://localhost/mj-flood-technology/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-12-01 11:59:00', '2020-12-01 11:59:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.....', '3 Ways Virtualisation Monitoring Will Benefit Your Business', '', 'publish', 'open', 'open', '', '3-ways-virtualisation-monitoring-will-benefit-your-business-3', '', '', '2020-12-01 11:59:00', '2020-12-01 11:59:00', '', 0, 'http://localhost/mj-flood-technology/?p=70', 0, 'post', '', 0),
(71, 1, '2020-12-01 11:59:00', '2020-12-01 11:59:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.....', '3 Ways Virtualisation Monitoring Will Benefit Your Business', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2020-12-01 11:59:00', '2020-12-01 11:59:00', '', 70, 'http://localhost/mj-flood-technology/70-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-12-01 11:59:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-01 11:59:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/mj-flood-technology/?post_type=case-study&p=73', 0, 'case-study', '', 0),
(74, 1, '2020-12-01 12:02:19', '2020-12-01 12:02:19', 'a:7:{s:8:"location";a:2:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"case-study";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";}}}s:8:"position";s:4:"side";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Sub Title', 'sub-title', 'publish', 'closed', 'closed', '', 'group_5fc63080585c7', '', '', '2020-12-01 12:02:19', '2020-12-01 12:02:19', '', 0, 'http://localhost/mj-flood-technology/?post_type=acf-field-group&#038;p=74', 0, 'acf-field-group', '', 0),
(75, 1, '2020-12-01 12:02:19', '2020-12-01 12:02:19', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Sub Title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_5fc6309dd1ff9', '', '', '2020-12-01 12:02:19', '2020-12-01 12:02:19', '', 74, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=75', 0, 'acf-field', '', 0),
(76, 1, '2020-12-01 12:02:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-01 12:02:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/mj-flood-technology/?post_type=case-study&p=76', 0, 'case-study', '', 0),
(77, 1, '2020-12-01 12:03:57', '2020-12-01 12:03:57', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"case-study";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Case study', 'case-study', 'publish', 'closed', 'closed', '', 'group_5fc630fc62eac', '', '', '2020-12-01 12:03:58', '2020-12-01 12:03:58', '', 0, 'http://localhost/mj-flood-technology/?post_type=acf-field-group&#038;p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2020-12-01 12:03:57', '2020-12-01 12:03:57', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'cs_logo', 'publish', 'closed', 'closed', '', 'field_5fc631071c95d', '', '', '2020-12-01 12:03:57', '2020-12-01 12:03:57', '', 77, 'http://localhost/mj-flood-technology/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2020-12-01 12:09:39', '2020-12-01 12:09:39', 'microsoft Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim exercitation.', 'microsoft Title lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', '', 'publish', 'closed', 'closed', '', 'title-lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt', '', '', '2020-12-02 06:02:32', '2020-12-02 06:02:32', '', 0, 'http://localhost/mj-flood-technology/?post_type=case-study&#038;p=79', 0, 'case-study', '', 0),
(80, 1, '2020-12-01 12:06:15', '2020-12-01 12:06:15', '', 'tablogo1', '', 'inherit', 'open', 'closed', '', 'tablogo1', '', '', '2020-12-01 12:06:15', '2020-12-01 12:06:15', '', 79, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/tablogo1.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2020-12-01 12:08:41', '2020-12-01 12:08:41', 'aliqua Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim exercitation.', 'aliqua Title lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', '', 'publish', 'closed', 'closed', '', 'title-lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-2', '', '', '2020-12-02 06:03:36', '2020-12-02 06:03:36', '', 0, 'http://localhost/mj-flood-technology/?post_type=case-study&#038;p=81', 0, 'case-study', '', 0),
(82, 1, '2020-12-01 12:07:31', '2020-12-01 12:07:31', '', 'tablogo2', '', 'inherit', 'open', 'closed', '', 'tablogo2', '', '', '2020-12-01 12:07:31', '2020-12-01 12:07:31', '', 81, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/tablogo2.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2020-12-01 12:07:34', '2020-12-01 12:07:34', 'dynamic Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim exercitation.', 'dynamic Title lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', '', 'publish', 'closed', 'closed', '', 'title-lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-3', '', '', '2020-12-02 06:03:26', '2020-12-02 06:03:26', '', 0, 'http://localhost/mj-flood-technology/?post_type=case-study&#038;p=83', 0, 'case-study', '', 0),
(84, 1, '2020-12-01 12:08:19', '2020-12-01 12:08:19', '', 'tablogo3', '', 'inherit', 'open', 'closed', '', 'tablogo3', '', '', '2020-12-01 12:08:19', '2020-12-01 12:08:19', '', 83, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/tablogo3.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2020-12-01 12:06:41', '2020-12-01 12:06:41', 'fugiat Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim exercitation.', 'fugiat Title lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', '', 'publish', 'closed', 'closed', '', 'title-lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-do-eiusmod-tempor-incididunt-4', '', '', '2020-12-02 06:02:43', '2020-12-02 06:02:43', '', 0, 'http://localhost/mj-flood-technology/?post_type=case-study&#038;p=85', 0, 'case-study', '', 0),
(86, 1, '2020-12-01 12:09:20', '2020-12-01 12:09:20', '', 'tablogo4', '', 'inherit', 'open', 'closed', '', 'tablogo4', '', '', '2020-12-01 12:09:20', '2020-12-01 12:09:20', '', 85, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/tablogo4.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2020-12-01 12:24:38', '2020-12-01 12:24:38', '', 'Microsoft', '', 'publish', 'closed', 'closed', '', 'microsoft', '', '', '2020-12-02 06:17:52', '2020-12-02 06:17:52', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&#038;p=87', 0, 'our-partners', '', 0),
(88, 1, '2020-12-01 12:19:31', '2020-12-01 12:19:31', '', 'microsoft_logo', '', 'inherit', 'open', 'closed', '', 'microsoft_logo', '', '', '2020-12-01 12:19:31', '2020-12-01 12:19:31', '', 87, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/microsoft_logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(89, 1, '2020-12-01 12:19:52', '2020-12-01 12:19:52', '', 'hewlett packard', '', 'publish', 'closed', 'closed', '', 'hewlett-packrd', '', '', '2020-12-02 06:17:41', '2020-12-02 06:17:41', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&#038;p=89', 0, 'our-partners', '', 0),
(90, 1, '2020-12-01 12:24:05', '2020-12-01 12:24:05', '', 'hp', '', 'inherit', 'open', 'closed', '', 'hp', '', '', '2020-12-01 12:24:05', '2020-12-01 12:24:05', '', 89, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/hp.svg', 0, 'attachment', 'image/svg+xml', 0),
(91, 1, '2020-12-01 12:25:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-01 12:25:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&p=91', 0, 'our-partners', '', 0),
(92, 1, '2020-12-01 12:25:35', '2020-12-01 12:25:35', '', 'hewlett packard', '', 'publish', 'closed', 'closed', '', 'hewlett-packard', '', '', '2020-12-01 12:25:35', '2020-12-01 12:25:35', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&#038;p=92', 0, 'our-partners', '', 0) ;
INSERT INTO `mj_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(93, 1, '2020-12-01 12:25:56', '2020-12-01 12:25:56', '', 'microsoft', '', 'publish', 'closed', 'closed', '', 'hewlett-packard-2', '', '', '2020-12-02 06:17:12', '2020-12-02 06:17:12', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&#038;p=93', 0, 'our-partners', '', 0),
(94, 1, '2020-12-01 12:26:18', '2020-12-01 12:26:18', '', 'hewlett packard', '', 'publish', 'closed', 'closed', '', 'hewlett-packard-3', '', '', '2020-12-01 12:26:18', '2020-12-01 12:26:18', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&#038;p=94', 0, 'our-partners', '', 0),
(95, 1, '2020-12-01 12:26:59', '2020-12-01 12:26:59', '', 'microsoft', '', 'publish', 'closed', 'closed', '', 'microsoft-2', '', '', '2020-12-01 12:26:59', '2020-12-01 12:26:59', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&#038;p=95', 0, 'our-partners', '', 0),
(96, 1, '2020-12-01 12:27:17', '2020-12-01 12:27:17', '', 'hewlett packard', '', 'publish', 'closed', 'closed', '', 'microsoft-3', '', '', '2020-12-02 06:16:20', '2020-12-02 06:16:20', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&#038;p=96', 0, 'our-partners', '', 0),
(97, 1, '2020-12-01 12:27:33', '2020-12-01 12:27:33', '', 'microsoft', '', 'publish', 'closed', 'closed', '', 'microsoft-4', '', '', '2020-12-01 12:27:34', '2020-12-01 12:27:34', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&#038;p=97', 0, 'our-partners', '', 0),
(98, 1, '2020-12-01 12:36:21', '2020-12-01 12:36:21', 'Service 1 Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Service 1', '', 'publish', 'closed', 'closed', '', 'service-1', '', '', '2020-12-02 09:07:20', '2020-12-02 09:07:20', '', 0, 'http://localhost/mj-flood-technology/?post_type=services&#038;p=98', 0, 'services', '', 0),
(99, 1, '2020-12-01 12:31:13', '2020-12-01 12:31:13', '', 'what-we-do-1', '', 'inherit', 'open', 'closed', '', 'what-we-do-1', '', '', '2020-12-01 12:31:13', '2020-12-01 12:31:13', '', 98, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/what-we-do-1.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2020-12-01 12:35:33', '2020-12-01 12:35:33', 'Service 2 Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Service 2', '', 'publish', 'closed', 'closed', '', 'service-2', '', '', '2020-12-02 06:19:11', '2020-12-02 06:19:11', '', 0, 'http://localhost/mj-flood-technology/?post_type=services&#038;p=100', 0, 'services', '', 0),
(101, 1, '2020-12-01 12:32:21', '2020-12-01 12:32:21', '', 'what-we-do-2', '', 'inherit', 'open', 'closed', '', 'what-we-do-2', '', '', '2020-12-01 12:32:21', '2020-12-01 12:32:21', '', 100, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/what-we-do-2.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2020-12-01 12:32:45', '2020-12-01 12:32:45', 'Service 3 Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Service 3', '', 'publish', 'closed', 'closed', '', 'service-3', '', '', '2020-12-02 06:19:28', '2020-12-02 06:19:28', '', 0, 'http://localhost/mj-flood-technology/?post_type=services&#038;p=102', 0, 'services', '', 0),
(103, 1, '2020-12-01 12:33:39', '2020-12-01 12:33:39', '', 'what-we-do-3', '', 'inherit', 'open', 'closed', '', 'what-we-do-3', '', '', '2020-12-01 12:33:39', '2020-12-01 12:33:39', '', 102, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/what-we-do-3.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2020-12-01 12:31:24', '2020-12-01 12:31:24', 'Service 4 Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Service 4', '', 'publish', 'closed', 'closed', '', 'service-4', '', '', '2020-12-02 06:19:45', '2020-12-02 06:19:45', '', 0, 'http://localhost/mj-flood-technology/?post_type=services&#038;p=104', 0, 'services', '', 0),
(105, 1, '2020-12-01 12:34:12', '2020-12-01 12:34:12', '', 'what-we-do-4', '', 'inherit', 'open', 'closed', '', 'what-we-do-4', '', '', '2020-12-01 12:34:12', '2020-12-01 12:34:12', '', 104, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/what-we-do-4.png', 0, 'attachment', 'image/png', 0) ;
INSERT INTO `mj_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(106, 1, '2020-12-01 12:30:41', '2020-12-01 12:30:41', 'Service 5 Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Service 5', '', 'publish', 'closed', 'closed', '', 'service-5', '', '', '2020-12-02 06:20:02', '2020-12-02 06:20:02', '', 0, 'http://localhost/mj-flood-technology/?post_type=services&#038;p=106', 0, 'services', '', 0),
(107, 1, '2020-12-02 05:58:47', '2020-12-02 05:58:47', '', 'our-partners', '', 'inherit', 'open', 'closed', '', 'our-partners', '', '', '2020-12-02 05:58:47', '2020-12-02 05:58:47', '', 85, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/our-partners.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2020-12-02 06:12:40', '2020-12-02 06:12:40', '', 'hewlett packard', '', 'publish', 'closed', 'closed', '', 'microsoft-5', '', '', '2020-12-02 06:15:33', '2020-12-02 06:15:33', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&#038;p=108', 0, 'our-partners', '', 0),
(109, 1, '2020-12-02 06:13:43', '2020-12-02 06:13:43', '', 'microsoft', '', 'publish', 'closed', 'closed', '', 'hewlett-packard-4', '', '', '2020-12-02 06:14:49', '2020-12-02 06:14:49', '', 0, 'http://localhost/mj-flood-technology/?post_type=our-partners&#038;p=109', 0, 'our-partners', '', 0),
(110, 1, '2020-12-02 09:06:56', '2020-12-02 09:06:56', '', 'what-we-do-1', '', 'inherit', 'open', 'closed', '', 'what-we-do-1-2', '', '', '2020-12-02 09:06:56', '2020-12-02 09:06:56', '', 98, 'http://localhost/mj-flood-technology/wp-content/uploads/2020/12/what-we-do-1-1.png', 0, 'attachment', 'image/png', 0) ;

#
# End of data contents of table `mj_posts`
# --------------------------------------------------------



#
# Delete any existing table `mj_term_relationships`
#

DROP TABLE IF EXISTS `mj_term_relationships`;


#
# Table structure of table `mj_term_relationships`
#

CREATE TABLE `mj_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_term_relationships`
#
INSERT INTO `mj_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(21, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(31, 3, 0),
(32, 3, 0),
(33, 3, 0),
(34, 4, 0),
(35, 4, 0),
(36, 4, 0),
(37, 4, 0),
(38, 4, 0),
(39, 4, 0),
(41, 5, 0),
(42, 5, 0),
(43, 5, 0),
(44, 5, 0),
(45, 6, 0),
(46, 6, 0),
(47, 6, 0),
(65, 1, 0),
(68, 1, 0),
(70, 1, 0) ;

#
# End of data contents of table `mj_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `mj_term_taxonomy`
#

DROP TABLE IF EXISTS `mj_term_taxonomy`;


#
# Table structure of table `mj_term_taxonomy`
#

CREATE TABLE `mj_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_term_taxonomy`
#
INSERT INTO `mj_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'nav_menu', '', 0, 6),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'nav_menu', '', 0, 3) ;

#
# End of data contents of table `mj_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `mj_termmeta`
#

DROP TABLE IF EXISTS `mj_termmeta`;


#
# Table structure of table `mj_termmeta`
#

CREATE TABLE `mj_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_termmeta`
#

#
# End of data contents of table `mj_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `mj_terms`
#

DROP TABLE IF EXISTS `mj_terms`;


#
# Table structure of table `mj_terms`
#

CREATE TABLE `mj_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_terms`
#
INSERT INTO `mj_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header', 'header', 0),
(3, 'Footer - Solutions', 'footer-solutions', 0),
(4, 'Footer - Partners', 'footer-partners', 0),
(5, 'Footer - Company', 'footer-company', 0),
(6, 'Footer - Legal', 'footer-legal', 0) ;

#
# End of data contents of table `mj_terms`
# --------------------------------------------------------



#
# Delete any existing table `mj_usermeta`
#

DROP TABLE IF EXISTS `mj_usermeta`;


#
# Table structure of table `mj_usermeta`
#

CREATE TABLE `mj_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_usermeta`
#
INSERT INTO `mj_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mj'),
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
(12, 1, 'mj_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'mj_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:"400eb88dc36f622a82f485b2f18ce0429213eb71b51eedec5fca8748e03dfa3e";a:4:{s:10:"expiration";i:1606972331;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36";s:5:"login";i:1606799531;}s:64:"bca704c2350c147c0298f1319f1c5fa64125de2b1dc74ebd37ddf7302e97df0f";a:4:{s:10:"expiration";i:1607009453;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36";s:5:"login";i:1606836653;}s:64:"bf8f39fc32ec888ef452be98f3ced4c664426041fbdd23b2d47a00110c5ea7ec";a:4:{s:10:"expiration";i:1607055572;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36";s:5:"login";i:1606882772;}}'),
(17, 1, 'mj_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'mj_user-settings', 'editor=html&libraryContent=browse'),
(19, 1, 'mj_user-settings-time', '1606811554'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}') ;

#
# End of data contents of table `mj_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `mj_users`
#

DROP TABLE IF EXISTS `mj_users`;


#
# Table structure of table `mj_users`
#

CREATE TABLE `mj_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `mj_users`
#
INSERT INTO `mj_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mj', '$P$B2pRGzkQx0BixZujG2MSIAZ/AVDDro0', 'mj', 'jigar.bhanushali787@gmail.com', 'http://localhost/mj-flood-technology', '2020-12-01 05:11:14', '', 0, 'mj') ;

#
# End of data contents of table `mj_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

