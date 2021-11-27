-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2021 at 01:47 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terrace`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-08-19 21:05:09', '2021-08-19 21:05:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.terrace.com', 'yes'),
(2, 'home', 'http://www.terrace.com', 'yes'),
(3, 'blogname', 'Terrace', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dragomirmandic.work@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:100:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=15&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:33:\"instagram-feed/instagram-feed.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'terrace', 'yes'),
(41, 'stylesheet', 'terrace', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:33:\"instagram-feed/instagram-feed.php\";s:22:\"sb_instagram_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '15', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1644959108', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:29:\"manage_instagram_feed_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:12:\"left-sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:9:{i:1634472309;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1634504709;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634504723;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634504724;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634510074;a:2:{s:21:\"sb_instagram_cron_job\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:23:\"sb_instagram_twicedaily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1634536800;a:2:{s:29:\"sb_instagram_feed_issue_email\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"sbiweekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:23:\"sbi_notification_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"sbiweekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1634933751;a:1:{s:23:\"sbi_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1634936709;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1629408266;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1634471256;s:7:\"checked\";a:4:{s:7:\"terrace\";s:5:\"0.9.6\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(148, 'current_theme', 'Terrace', 'yes'),
(149, 'theme_mods_terrace', 'a:6:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:4:\"none\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(155, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(171, 'recently_activated', 'a:0:{}', 'yes'),
(178, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1629411677;s:7:\"version\";s:5:\"5.4.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(183, 'sbi_statuses', 'a:4:{s:8:\"database\";a:1:{s:14:\"hashtag_column\";b:1;}s:13:\"first_install\";i:1629412475;s:4:\"gdpr\";a:1:{s:19:\"from_update_success\";b:0;}s:23:\"rating_notice_dismissed\";i:1632483772;}', 'no'),
(184, 'sbi_usage_tracking', 'a:2:{s:7:\"enabled\";b:0;s:9:\"last_send\";i:0;}', 'yes'),
(185, 'widget_instagram-feed-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(186, 'sbi_usage_tracking_config', 'a:6:{s:3:\"day\";i:5;s:4:\"hour\";i:20;s:6:\"minute\";i:15;s:6:\"second\";i:51;s:6:\"offset\";i:504951;s:8:\"initsend\";i:1629490551;}', 'yes'),
(189, 'sbi_rating_notice', 'dismissed', 'no'),
(190, 'sbi_db_version', '1.9', 'yes'),
(191, 'sb_instagram_errors', 'a:8:{s:10:\"connection\";a:0:{}s:7:\"hashtag\";a:0:{}s:8:\"resizing\";a:0:{}s:15:\"database_create\";a:0:{}s:10:\"upload_dir\";a:0:{}s:8:\"accounts\";a:0:{}s:9:\"error_log\";a:0:{}s:10:\"action_log\";a:1:{i:0;s:41:\"08-19 22:34:35 - Retesting GDPR features.\";}}', 'no'),
(193, 'sbi_notifications', 'a:4:{s:6:\"update\";i:1633518204;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(194, 'sbi_newuser_notifications', 'a:4:{s:6:\"update\";i:1629412476;s:4:\"feed\";a:2:{s:6:\"review\";a:6:{s:5:\"title\";s:22:\"Could you help us out?\";s:7:\"content\";s:273:\"It\'s great to see that you\'ve been using the <strong><span>{plugin}</span></strong> plugin for a while now. Hopefully you\'re happy with it!&nbsp; If so, would you consider leaving a positive review? It really helps to support the plugin and helps others to discover it too!\";s:2:\"id\";s:6:\"review\";s:5:\"image\";s:12:\"sbi-icon.png\";s:4:\"btns\";a:4:{s:7:\"primary\";a:4:{s:3:\"url\";s:12:\"{review-url}\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}s:5:\"class\";s:31:\"sbi_notice_dismiss sbi_main_cta\";s:4:\"text\";s:18:\"Sure, I\'d love to!\";}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:9:\"No thanks\";}s:8:\"complete\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:27:\"I\'ve already given a review\";}s:5:\"later\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:5:\"later\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:12:\"Ask Me Later\";}}s:4:\"wait\";s:2:\"14\";}s:8:\"discount\";a:8:{s:5:\"title\";s:28:\"Attention {platform} Lovers!\";s:7:\"content\";s:221:\"<strong><span>Exclusive offer!</span></strong> We don\'t run promotions very often, but for a limited time we\'re offering <strong><span>{amount} off</span></strong> our Pro version to all users of our free {plugin} plugin.\";s:2:\"id\";s:8:\"discount\";s:6:\"amount\";s:3:\"60%\";s:5:\"image\";s:12:\"sbi-icon.png\";s:13:\"image_overlay\";s:7:\"60% off\";s:4:\"btns\";a:2:{s:7:\"primary\";a:4:{s:3:\"url\";s:127:\"https://smashballoon.com/{slug}/?utm_campaign={campaign}&utm_source=notices&utm_medium=newuser&discount={lowerplatform}thankyou\";s:5:\"class\";s:32:\"sbi_notice_dismiss sbi_offer_btn\";s:4:\"text\";s:14:\"Get this offer\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:31:\"sbi_ignore_new_user_sale_notice\";s:6:\"always\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:18:\"I\'m not interested\";}}s:4:\"wait\";s:2:\"30\";}}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(195, 'secret_key', '@+NX=vLCyK!n5!%&w{?+t8Ud^91`(Xq4_4]zr~F).`z4hubP[d+1#{?v.0wcQN~_', 'no'),
(219, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(327, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(328, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(445, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1634471255;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(447, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"dragomirmandic.work@gmail.com\";s:7:\"version\";s:5:\"5.8.1\";s:9:\"timestamp\";i:1631176969;}', 'no'),
(763, 'category_children', 'a:0:{}', 'yes'),
(809, '_transient_is_multi_author', '0', 'yes'),
(813, '_site_transient_timeout_theme_roots', '1634473056', 'no'),
(814, '_site_transient_theme_roots', 'a:4:{s:7:\"terrace\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(815, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1634471257;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}s:33:\"instagram-feed/instagram-feed.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/instagram-feed\";s:4:\"slug\";s:14:\"instagram-feed\";s:6:\"plugin\";s:33:\"instagram-feed/instagram-feed.php\";s:11:\"new_version\";s:5:\"2.9.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/instagram-feed/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/instagram-feed.2.9.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/instagram-feed/assets/icon-128x128.png?rev=2137676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/instagram-feed/assets/banner-772x250.png?rev=2137676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.4\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:6:\"4.1.10\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:33:\"instagram-feed/instagram-feed.php\";s:5:\"2.9.2\";}}', 'no'),
(816, '_site_transient_timeout_php_check_6c9aa7b1087ab72b13d3f99b1ffc068f', '1635076058', 'no'),
(817, '_site_transient_php_check_6c9aa7b1087ab72b13d3f99b1ffc068f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', '#'),
(30, 8, '_menu_item_type', 'custom'),
(31, 8, '_menu_item_menu_item_parent', '0'),
(32, 8, '_menu_item_object_id', '8'),
(33, 8, '_menu_item_object', 'custom'),
(34, 8, '_menu_item_target', ''),
(35, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 8, '_menu_item_xfn', ''),
(37, 8, '_menu_item_url', '#'),
(39, 9, '_menu_item_type', 'custom'),
(40, 9, '_menu_item_menu_item_parent', '0'),
(41, 9, '_menu_item_object_id', '9'),
(42, 9, '_menu_item_object', 'custom'),
(43, 9, '_menu_item_target', ''),
(44, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 9, '_menu_item_xfn', ''),
(46, 9, '_menu_item_url', '#'),
(57, 11, '_menu_item_type', 'custom'),
(58, 11, '_menu_item_menu_item_parent', '0'),
(59, 11, '_menu_item_object_id', '11'),
(60, 11, '_menu_item_object', 'custom'),
(61, 11, '_menu_item_target', ''),
(62, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 11, '_menu_item_xfn', ''),
(64, 11, '_menu_item_url', '#'),
(66, 12, '_menu_item_type', 'custom'),
(67, 12, '_menu_item_menu_item_parent', '0'),
(68, 12, '_menu_item_object_id', '12'),
(69, 12, '_menu_item_object', 'custom'),
(70, 12, '_menu_item_target', ''),
(71, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 12, '_menu_item_xfn', ''),
(73, 12, '_menu_item_url', '#'),
(75, 13, '_menu_item_type', 'custom'),
(76, 13, '_menu_item_menu_item_parent', '0'),
(77, 13, '_menu_item_object_id', '13'),
(78, 13, '_menu_item_object', 'custom'),
(79, 13, '_menu_item_target', ''),
(80, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 13, '_menu_item_xfn', ''),
(82, 13, '_menu_item_url', '#'),
(93, 15, '_edit_lock', '1632665767:1'),
(94, 15, '_wp_page_template', 'page-templates/template-home.php'),
(107, 19, '_form', '<div class=\"row\">\n<div class=\"col-lg-6 col-xl-4\">[text* your-name placeholder \"Your Name\"]</div>\n<div class=\"col-lg-6 col-xl-5\">[email* your-email placeholder \"Your Email\"]</div>\n<div class=\"col-xl-3\">[submit \"Subscribe\"]</div>\n</div>'),
(108, 19, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <wordpress@terrace.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(109, 19, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <wordpress@terrace.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(110, 19, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(111, 19, '_additional_settings', ''),
(112, 19, '_locale', 'en_US'),
(113, 20, '_form', '<div class=\"row\">\n<div class=\"col-lg-6\">[text* your-name placeholder \"Your Name\"] [tel* your-phone placeholder \"Your Phone\"][email* your-email placeholder \"Your Email\"]</div>\n<div class=\"col-lg-6\">[textarea your-message x4 placeholder \"Your Message\"][submit \"Submit\"]</div>\n</div>'),
(114, 20, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <wordpress@terrace.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(115, 20, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <wordpress@terrace.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(116, 20, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(117, 20, '_additional_settings', ''),
(118, 20, '_locale', 'en_US'),
(120, 22, '_edit_last', '1'),
(121, 22, '_edit_lock', '1630102682:1'),
(122, 22, '_wp_page_template', 'default'),
(123, 24, '_wp_attached_file', '2021/08/functions-preview.jpg'),
(124, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:780;s:4:\"file\";s:29:\"2021/08/functions-preview.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 27, '_menu_item_type', 'post_type'),
(126, 27, '_menu_item_menu_item_parent', '0'),
(127, 27, '_menu_item_object_id', '22'),
(128, 27, '_menu_item_object', 'page'),
(129, 27, '_menu_item_target', ''),
(130, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 27, '_menu_item_xfn', ''),
(132, 27, '_menu_item_url', ''),
(135, 7, '_wp_old_date', '2021-08-19'),
(136, 8, '_wp_old_date', '2021-08-19'),
(137, 9, '_wp_old_date', '2021-08-19'),
(138, 11, '_wp_old_date', '2021-08-19'),
(139, 12, '_wp_old_date', '2021-08-19'),
(140, 13, '_wp_old_date', '2021-08-19'),
(142, 28, '_menu_item_type', 'post_type'),
(143, 28, '_menu_item_menu_item_parent', '0'),
(144, 28, '_menu_item_object_id', '15'),
(145, 28, '_menu_item_object', 'page'),
(146, 28, '_menu_item_target', ''),
(147, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 28, '_menu_item_xfn', ''),
(149, 28, '_menu_item_url', ''),
(153, 37, '_edit_last', '1'),
(154, 37, '_edit_lock', '1632502199:1'),
(155, 37, '_wp_page_template', 'page-templates/template-contact.php'),
(165, 28, '_wp_old_date', '2021-08-26'),
(166, 7, '_wp_old_date', '2021-08-26'),
(167, 8, '_wp_old_date', '2021-08-26'),
(168, 27, '_wp_old_date', '2021-08-26'),
(169, 9, '_wp_old_date', '2021-08-26'),
(170, 11, '_wp_old_date', '2021-08-26'),
(171, 12, '_wp_old_date', '2021-08-26'),
(172, 13, '_wp_old_date', '2021-08-26'),
(173, 42, '_form', '<label> Your Name\n    [text* your-name] </label>\n\n<label> Your Phone\n    [tel* your-phone] </label>\n\n<label> Your Email\n    [email* your-email] </label>\n\n<label> Your Message (optional)\n    [textarea your-message x3] </label>\n\n[submit \"Submit\"]'),
(174, 42, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <wordpress@terrace.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(175, 42, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <wordpress@terrace.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(176, 42, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(177, 42, '_additional_settings', ''),
(178, 42, '_locale', 'en_US'),
(179, 1, '_edit_lock', '1633544445:1'),
(180, 1, '_edit_last', '1'),
(227, 1, '_thumbnail_id', '24'),
(230, 64, '_menu_item_type', 'post_type'),
(231, 64, '_menu_item_menu_item_parent', '0'),
(232, 64, '_menu_item_object_id', '37'),
(233, 64, '_menu_item_object', 'page'),
(234, 64, '_menu_item_target', ''),
(235, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 64, '_menu_item_xfn', ''),
(237, 64, '_menu_item_url', ''),
(239, 28, '_wp_old_date', '2021-08-27'),
(240, 7, '_wp_old_date', '2021-08-27'),
(241, 8, '_wp_old_date', '2021-08-27'),
(242, 27, '_wp_old_date', '2021-08-27'),
(243, 9, '_wp_old_date', '2021-08-27'),
(244, 11, '_wp_old_date', '2021-08-27'),
(245, 12, '_wp_old_date', '2021-08-27'),
(246, 13, '_wp_old_date', '2021-08-27'),
(247, 66, '_edit_last', '1'),
(248, 66, '_edit_lock', '1633564709:1'),
(249, 67, '_wp_attached_file', '2021/10/news-placeholder.jpg'),
(250, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1002;s:6:\"height\";i:853;s:4:\"file\";s:28:\"2021/10/news-placeholder.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 66, '_thumbnail_id', '67');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-08-19 21:05:09', '2021-08-19 21:05:09', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-10-06 17:50:35', '2021-10-06 17:50:35', '', 0, 'http://www.terrace.com/?p=1', 0, 'post', '', 1),
(2, 1, '2021-08-19 21:05:09', '2021-08-19 21:05:09', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://www.terrace.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-08-19 21:05:09', '2021-08-19 21:05:09', '', 0, 'http://www.terrace.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-08-19 21:05:09', '2021-08-19 21:05:09', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://www.terrace.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-08-19 21:05:09', '2021-08-19 21:05:09', '', 0, 'http://www.terrace.com/?page_id=3', 0, 'page', '', 0),
(7, 1, '2021-10-06 18:42:01', '2021-08-19 21:40:47', '', 'Dining', '', 'publish', 'closed', 'closed', '', 'dining', '', '', '2021-10-06 18:42:01', '2021-10-06 18:42:01', '', 0, 'http://www.terrace.com/?p=7', 2, 'nav_menu_item', '', 0),
(8, 1, '2021-10-06 18:42:01', '2021-08-19 21:40:47', '', 'Lunch', '', 'publish', 'closed', 'closed', '', 'lunch', '', '', '2021-10-06 18:42:01', '2021-10-06 18:42:01', '', 0, 'http://www.terrace.com/?p=8', 3, 'nav_menu_item', '', 0),
(9, 1, '2021-10-06 18:42:01', '2021-08-19 21:40:47', '', 'Breakfast', '', 'publish', 'closed', 'closed', '', 'breakfast', '', '', '2021-10-06 18:42:01', '2021-10-06 18:42:01', '', 0, 'http://www.terrace.com/?p=9', 5, 'nav_menu_item', '', 0),
(11, 1, '2021-10-06 18:42:01', '2021-08-19 21:40:47', '', 'What\'s On', '', 'publish', 'closed', 'closed', '', 'whats-on', '', '', '2021-10-06 18:42:01', '2021-10-06 18:42:01', '', 0, 'http://www.terrace.com/?p=11', 6, 'nav_menu_item', '', 0),
(12, 1, '2021-10-06 18:42:01', '2021-08-19 21:40:47', '', 'Reservations', '', 'publish', 'closed', 'closed', '', 'reservations', '', '', '2021-10-06 18:42:01', '2021-10-06 18:42:01', '', 0, 'http://www.terrace.com/?p=12', 7, 'nav_menu_item', '', 0),
(13, 1, '2021-10-06 18:42:01', '2021-08-19 21:40:47', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-10-06 18:42:01', '2021-10-06 18:42:01', '', 0, 'http://www.terrace.com/?p=13', 8, 'nav_menu_item', '', 0),
(15, 1, '2021-08-19 21:46:26', '2021-08-19 21:46:26', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-08-19 21:46:26', '2021-08-19 21:46:26', '', 0, 'http://www.terrace.com/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-08-19 21:46:26', '2021-08-19 21:46:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-08-19 21:46:26', '2021-08-19 21:46:26', '', 15, 'http://www.terrace.com/?p=16', 0, 'revision', '', 0),
(19, 1, '2021-08-19 22:25:11', '2021-08-19 22:25:11', '<div class=\"row\">\r\n<div class=\"col-lg-6 col-xl-4\">[text* your-name placeholder \"Your Name\"]</div>\r\n<div class=\"col-lg-6 col-xl-5\">[email* your-email placeholder \"Your Email\"]</div>\r\n<div class=\"col-xl-3\">[submit \"Subscribe\"]</div>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@terrace.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@terrace.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Newsletter Subscription', '', 'publish', 'closed', 'closed', '', 'newsletter-subscription', '', '', '2021-08-19 22:25:11', '2021-08-19 22:25:11', '', 0, 'http://www.terrace.com/?post_type=wpcf7_contact_form&p=19', 0, 'wpcf7_contact_form', '', 0),
(20, 1, '2021-08-19 22:25:42', '2021-08-19 22:25:42', '<div class=\"row\">\r\n<div class=\"col-lg-6\">[text* your-name placeholder \"Your Name\"] [tel* your-phone placeholder \"Your Phone\"][email* your-email placeholder \"Your Email\"]</div>\r\n<div class=\"col-lg-6\">[textarea your-message x4 placeholder \"Your Message\"][submit \"Submit\"]</div>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@terrace.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@terrace.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Footer Form', '', 'publish', 'closed', 'closed', '', 'footer-form', '', '', '2021-08-19 22:37:40', '2021-08-19 22:37:40', '', 0, 'http://www.terrace.com/?post_type=wpcf7_contact_form&#038;p=20', 0, 'wpcf7_contact_form', '', 0),
(22, 1, '2021-08-26 17:48:22', '2021-08-26 17:48:22', '<h2>Are you looking for a venue for your next event or party?</h2>\r\nWe are proud to support local business and local producers by sourcing as much as possible locally, including fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Ferguson Valley, Margaret River and throughout the South West.\r\n<h2>We provide catering for the fallowing:</h2>\r\n<ul>\r\n 	<li>Private Functions</li>\r\n 	<li>Weddings</li>\r\n 	<li>Engagement Parties</li>\r\n 	<li>Birthday Parties</li>\r\n 	<li>Corporate</li>\r\n 	<li>Sundowners</li>\r\n</ul>\r\n<div class=\"img-widescreen\"><img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" /></div>\r\nLocated just moments from the Bunbury CBD and with ample free parking at the front door. Terrace Cafe &amp; Restaurant is the ultimate destination for your function.\r\n\r\n<a href=\"#\">Contact our funtions Coordinator for an obligation free quote.</a>', 'Functions & Venue Hire', '', 'publish', 'closed', 'closed', '', 'functions-venue-hire', '', '', '2021-08-27 22:01:44', '2021-08-27 22:01:44', '', 0, 'http://www.terrace.com/?page_id=22', 0, 'page', '', 0),
(23, 1, '2021-08-23 10:03:21', '2021-08-23 10:03:21', '<h3>Are you looking for a venue for your next event or party?</h3>\r\nWe are proud to support local business and local producers by sourcing as much as possible locally, including fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Ferguson Valley, Margaret River and throughout the South West.\r\n<ul>\r\n 	<li>Private Functions</li>\r\n 	<li>Weddings</li>\r\n 	<li>Engagement Parties</li>\r\n 	<li>Birthday Parties</li>\r\n 	<li>Corporate</li>\r\n 	<li>Sundowners</li>\r\n</ul>\r\nLocated just moments from the Bunbury CBD and with ample free parking at the front door. Terrace Cafe &amp; Restaurant is the ultimate destination for your function.\r\n\r\nContact our funtions Coordinator for an obligation free quote.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Functions & Venue Hire', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-08-23 10:03:21', '2021-08-23 10:03:21', '', 22, 'http://www.terrace.com/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-08-23 11:03:18', '2021-08-23 11:03:18', '', 'functions-preview', '', 'inherit', 'open', 'closed', '', 'functions-preview', '', '', '2021-08-23 11:03:18', '2021-08-23 11:03:18', '', 22, 'http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2021-08-23 11:12:13', '2021-08-23 11:12:13', '<h3>Are you looking for a venue for your next event or party?</h3>\r\nWe are proud to support local business and local producers by sourcing as much as possible locally, including fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Ferguson Valley, Margaret River and throughout the South West.\r\n<ul>\r\n 	<li>Private Functions</li>\r\n 	<li>Weddings</li>\r\n 	<li>Engagement Parties</li>\r\n 	<li>Birthday Parties</li>\r\n 	<li>Corporate</li>\r\n 	<li>Sundowners</li>\r\n</ul>\r\nLocated just moments from the Bunbury CBD and with ample free parking at the front door. Terrace Cafe &amp; Restaurant is the ultimate destination for your function.\r\n\r\nContact our funtions Coordinator for an obligation free quote.\r\n\r\n<img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" />', 'Functions & Venue Hire', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-08-23 11:12:13', '2021-08-23 11:12:13', '', 22, 'http://www.terrace.com/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-08-26 17:48:12', '2021-08-26 17:48:12', '<h3>Are you looking for a venue for your next event or party?</h3>\r\nWe are proud to support local business and local producers by sourcing as much as possible locally, including fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Ferguson Valley, Margaret River and throughout the South West.\r\n<ul>\r\n 	<li>Private Functions</li>\r\n 	<li>Weddings</li>\r\n 	<li>Engagement Parties</li>\r\n 	<li>Birthday Parties</li>\r\n 	<li>Corporate</li>\r\n 	<li>Sundowners</li>\r\n</ul>\r\n<img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" />\r\n\r\nLocated just moments from the Bunbury CBD and with ample free parking at the front door. Terrace Cafe &amp; Restaurant is the ultimate destination for your function.\r\n\r\nContact our funtions Coordinator for an obligation free quote.', 'Functions & Venue Hire', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-08-26 17:48:12', '2021-08-26 17:48:12', '', 22, 'http://www.terrace.com/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-10-06 18:42:01', '2021-08-26 18:25:07', '', 'Functions', '', 'publish', 'closed', 'closed', '', '27', '', '', '2021-10-06 18:42:01', '2021-10-06 18:42:01', '', 0, 'http://www.terrace.com/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2021-10-06 18:42:01', '2021-08-26 18:28:21', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2021-10-06 18:42:01', '2021-10-06 18:42:01', '', 0, 'http://www.terrace.com/?p=28', 1, 'nav_menu_item', '', 0),
(31, 1, '2021-08-26 21:55:42', '2021-08-26 21:55:42', '<h2>Are you looking for a venue for your next event or party?</h2>\r\nWe are proud to support local business and local producers by sourcing as much as possible locally, including fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Ferguson Valley, Margaret River and throughout the South West.\r\n<ul>\r\n 	<li>Private Functions</li>\r\n 	<li>Weddings</li>\r\n 	<li>Engagement Parties</li>\r\n 	<li>Birthday Parties</li>\r\n 	<li>Corporate</li>\r\n 	<li>Sundowners</li>\r\n</ul>\r\n<img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" />\r\n\r\nLocated just moments from the Bunbury CBD and with ample free parking at the front door. Terrace Cafe &amp; Restaurant is the ultimate destination for your function.\r\n\r\nContact our funtions Coordinator for an obligation free quote.', 'Functions & Venue Hire', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-08-26 21:55:42', '2021-08-26 21:55:42', '', 22, 'http://www.terrace.com/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-08-27 19:33:58', '2021-08-27 19:33:58', '<h2>Are you looking for a venue for your next event or party?</h2>\r\nWe are proud to support local business and local producers by sourcing as much as possible locally, including fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Ferguson Valley, Margaret River and throughout the South West.\r\n<h2>We provide catering for the fallowing:</h2>\r\n<ul>\r\n 	<li>Private Functions</li>\r\n 	<li>Weddings</li>\r\n 	<li>Engagement Parties</li>\r\n 	<li>Birthday Parties</li>\r\n 	<li>Corporate</li>\r\n 	<li>Sundowners</li>\r\n</ul>\r\n<img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" />\r\n\r\nLocated just moments from the Bunbury CBD and with ample free parking at the front door. Terrace Cafe &amp; Restaurant is the ultimate destination for your function.\r\n\r\nContact our funtions Coordinator for an obligation free quote.', 'Functions & Venue Hire', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-08-27 19:33:58', '2021-08-27 19:33:58', '', 22, 'http://www.terrace.com/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-08-27 21:08:27', '2021-08-27 21:08:27', '<h2>Are you looking for a venue for your next event or party?</h2>\nWe are proud to support local business and local producers by sourcing as much as possible locally, including fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Ferguson Valley, Margaret River and throughout the South West.\n<h2>We provide catering for the fallowing:</h2>\n<ul>\n 	<li>Private Functions</li>\n 	<li>Weddings</li>\n 	<li>Engagement Parties</li>\n 	<li>Birthday Parties</li>\n 	<li>Corporate</li>\n 	<li>Sundowners</li>\n</ul>\n<div class=\"img-widescreen\"><img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" /></div>\nLocated just moments from the Bunbury CBD and with ample free parking at the front door. Terrace Cafe &amp; Restaurant is the ultimate destination for your function.\n\nContact our funtions Coordinator for an obligation free quote.', 'Functions & Venue Hire', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2021-08-27 21:08:27', '2021-08-27 21:08:27', '', 22, 'http://www.terrace.com/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-08-27 20:14:36', '2021-08-27 20:14:36', '<h2>Are you looking for a venue for your next event or party?</h2>\r\nWe are proud to support local business and local producers by sourcing as much as possible locally, including fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Ferguson Valley, Margaret River and throughout the South West.\r\n<h2>We provide catering for the fallowing:</h2>\r\n<ul>\r\n 	<li>Private Functions</li>\r\n 	<li>Weddings</li>\r\n 	<li>Engagement Parties</li>\r\n 	<li>Birthday Parties</li>\r\n 	<li>Corporate</li>\r\n 	<li>Sundowners</li>\r\n</ul>\r\n<div class=\"img-widescreen\">\r\n<img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" />\r\n</div>\r\nLocated just moments from the Bunbury CBD and with ample free parking at the front door. Terrace Cafe &amp; Restaurant is the ultimate destination for your function.\r\n\r\nContact our funtions Coordinator for an obligation free quote.', 'Functions & Venue Hire', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-08-27 20:14:36', '2021-08-27 20:14:36', '', 22, 'http://www.terrace.com/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-08-27 21:08:25', '2021-08-27 21:08:25', '<h2>Are you looking for a venue for your next event or party?</h2>\r\nWe are proud to support local business and local producers by sourcing as much as possible locally, including fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Ferguson Valley, Margaret River and throughout the South West.\r\n<h2>We provide catering for the fallowing:</h2>\r\n<ul>\r\n 	<li>Private Functions</li>\r\n 	<li>Weddings</li>\r\n 	<li>Engagement Parties</li>\r\n 	<li>Birthday Parties</li>\r\n 	<li>Corporate</li>\r\n 	<li>Sundowners</li>\r\n</ul>\r\n<div class=\"img-widescreen\"><img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" /></div>\r\nLocated just moments from the Bunbury CBD and with ample free parking at the front door. Terrace Cafe &amp; Restaurant is the ultimate destination for your function.\r\n\r\nContact our funtions Coordinator for an obligation free quote.', 'Functions & Venue Hire', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-08-27 21:08:25', '2021-08-27 21:08:25', '', 22, 'http://www.terrace.com/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-08-27 22:01:44', '2021-08-27 22:01:44', '<h2>Are you looking for a venue for your next event or party?</h2>\r\nWe are proud to support local business and local producers by sourcing as much as possible locally, including fish from Augusta, beef and chicken from Western Australia (DBC), coffee from Ferguson Valley, Margaret River and throughout the South West.\r\n<h2>We provide catering for the fallowing:</h2>\r\n<ul>\r\n 	<li>Private Functions</li>\r\n 	<li>Weddings</li>\r\n 	<li>Engagement Parties</li>\r\n 	<li>Birthday Parties</li>\r\n 	<li>Corporate</li>\r\n 	<li>Sundowners</li>\r\n</ul>\r\n<div class=\"img-widescreen\"><img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" /></div>\r\nLocated just moments from the Bunbury CBD and with ample free parking at the front door. Terrace Cafe &amp; Restaurant is the ultimate destination for your function.\r\n\r\n<a href=\"#\">Contact our funtions Coordinator for an obligation free quote.</a>', 'Functions & Venue Hire', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-08-27 22:01:44', '2021-08-27 22:01:44', '', 22, 'http://www.terrace.com/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-08-27 22:21:24', '2021-08-27 22:21:24', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n<div class=\"row contact-us-contact-info\">\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"tel:0897916575\"><i class=\"fa fa-phone\"></i> 08 9791 6575</a></div>\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-envelope-o\"></i> info@terrace.com</a></div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-map\"></i> Lot 757, Ocean Drive, Bunbury 6230</a></div>\r\n<div>\r\n</div>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-09-24 12:06:00', '2021-09-24 12:06:00', '', 0, 'http://www.terrace.com/?page_id=37', 0, 'page', '', 0),
(38, 1, '2021-08-27 22:21:24', '2021-08-27 22:21:24', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-08-27 22:21:24', '2021-08-27 22:21:24', '', 37, 'http://www.terrace.com/?p=38', 0, 'revision', '', 0),
(40, 1, '2021-09-24 11:55:16', '2021-09-24 11:55:16', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\n<div class=\"row contact-info\">\n<div class=\"col-lg-6\">\n<div><a href=\"tel:0897916575\"><i class=\"fa fa-phone\">08 9791 6575</i></a></div>\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-envelope-o\"></i> info@terrace.com</a></div>\n</div>\n<div class=\"col-lg-6\">\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-map\"></i> Lot 757, Ocean Drive, Bunbury 6230</a></div>\n<div>\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2021-09-24 11:55:16', '2021-09-24 11:55:16', '', 37, 'http://www.terrace.com/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-08-27 22:47:59', '2021-08-27 22:47:59', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n&nbsp;\r\n\r\n08 9791 6575\r\n\r\ninfo@terrace.com\r\n\r\nLot 757, Ocean Drive, Bunbury 6230', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-08-27 22:47:59', '2021-08-27 22:47:59', '', 37, 'http://www.terrace.com/?p=41', 0, 'revision', '', 0),
(42, 1, '2021-08-28 12:53:13', '2021-08-28 12:53:13', '<label> Your Name\r\n    [text* your-name] </label>\r\n\r\n<label> Your Phone\r\n    [tel* your-phone] </label>\r\n\r\n<label> Your Email\r\n    [email* your-email] </label>\r\n\r\n<label> Your Message (optional)\r\n    [textarea your-message x3] </label>\r\n\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@terrace.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@terrace.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Us Page Form', '', 'publish', 'closed', 'closed', '', 'contact-us-page-form', '', '', '2021-09-15 09:31:17', '2021-09-15 09:31:17', '', 0, 'http://www.terrace.com/?post_type=wpcf7_contact_form&#038;p=42', 0, 'wpcf7_contact_form', '', 0),
(44, 1, '2021-09-15 09:31:08', '2021-09-15 09:31:08', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n&nbsp;\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n\r\n08 9791 6575\r\n\r\ninfo@terrace.com\r\n\r\nLot 757, Ocean Drive, Bunbury 6230\r\n\r\n</div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-15 09:31:08', '2021-09-15 09:31:08', '', 37, 'http://www.terrace.com/?p=44', 0, 'revision', '', 0),
(45, 1, '2021-09-15 09:33:06', '2021-09-15 09:33:06', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n&nbsp;\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n08 9791 6575\r\ninfo@terrace.com\r\n</div>\r\n<div class=\"col-lg-6\">\r\nLot 757, Ocean Drive, Bunbury 6230\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-15 09:33:06', '2021-09-15 09:33:06', '', 37, 'http://www.terrace.com/?p=45', 0, 'revision', '', 0),
(46, 1, '2021-09-15 09:34:57', '2021-09-15 09:34:57', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n&nbsp;\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n<div><i class=\"fa fa-phone\">08 9791 6575</i></div>\r\ninfo@terrace.com\r\n</div>\r\n<div class=\"col-lg-6\">\r\nLot 757, Ocean Drive, Bunbury 6230\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-15 09:34:57', '2021-09-15 09:34:57', '', 37, 'http://www.terrace.com/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-09-15 09:37:53', '2021-09-15 09:37:53', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n&nbsp;\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"tel:08 9791 6575\"><i class=\"fa fa-phone\">08 9791 6575</i></a></div>\r\ninfo@terrace.com\r\n</div>\r\n<div class=\"col-lg-6\">\r\nLot 757, Ocean Drive, Bunbury 6230\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-15 09:37:53', '2021-09-15 09:37:53', '', 37, 'http://www.terrace.com/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-09-15 09:39:11', '2021-09-15 09:39:11', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n&nbsp;\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"tel:0897916575\"><i class=\"fa fa-phone\">08 9791 6575</i></a></div>\r\ninfo@terrace.com\r\n</div>\r\n<div class=\"col-lg-6\">\r\nLot 757, Ocean Drive, Bunbury 6230\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-15 09:39:11', '2021-09-15 09:39:11', '', 37, 'http://www.terrace.com/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-09-15 09:40:23', '2021-09-15 09:40:23', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n&nbsp;\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"tel:0897916575\"><i class=\"fa fa-phone\">08 9791 6575</i></a></div>\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-envelope\">info@terrace.com</i></a></div>\r\n\r\n</div>\r\n<div class=\"col-lg-6\">\r\nLot 757, Ocean Drive, Bunbury 6230\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-15 09:40:23', '2021-09-15 09:40:23', '', 37, 'http://www.terrace.com/?p=49', 0, 'revision', '', 0),
(51, 1, '2021-09-24 11:46:12', '2021-09-24 11:46:12', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"tel:0897916575\"><i class=\"fa fa-phone\">08 9791 6575</i></a></div>\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-envelope-o\">info@terrace.com</i></a></div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\nLot 757, Ocean Drive, Bunbury 6230\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-24 11:46:12', '2021-09-24 11:46:12', '', 37, 'http://www.terrace.com/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-09-24 11:47:54', '2021-09-24 11:47:54', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"tel:0897916575\"><i class=\"fa fa-phone\">08 9791 6575</i></a></div>\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-envelope-o\">info@terrace.com</i></a></div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-map\">Lot 757, Ocean Drive, Bunbury 6230</i></a></div>\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-24 11:47:54', '2021-09-24 11:47:54', '', 37, 'http://www.terrace.com/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-09-24 11:50:13', '2021-09-24 11:50:13', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"tel:0897916575\"><i class=\"fa fa-phone\">08 9791 6575</i></a></div>\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-envelope-o\"></i> info@terrace.com</a></div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-map\"></i> Lot 757, Ocean Drive, Bunbury 6230</a></div>\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-24 11:50:13', '2021-09-24 11:50:13', '', 37, 'http://www.terrace.com/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-09-24 11:55:23', '2021-09-24 11:55:23', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n<div class=\"row contact-info\">\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"tel:0897916575\"><i class=\"fa fa-phone\">08 9791 6575</i></a></div>\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-envelope-o\"></i> info@terrace.com</a></div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-map\"></i> Lot 757, Ocean Drive, Bunbury 6230</a></div>\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-24 11:55:23', '2021-09-24 11:55:23', '', 37, 'http://www.terrace.com/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-09-24 11:56:12', '2021-09-24 11:56:12', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n<div class=\"row contact-us-contact-info\">\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"tel:0897916575\"><i class=\"fa fa-phone\">08 9791 6575</i></a></div>\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-envelope-o\"></i> info@terrace.com</a></div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-map\"></i> Lot 757, Ocean Drive, Bunbury 6230</a></div>\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-24 11:56:12', '2021-09-24 11:56:12', '', 37, 'http://www.terrace.com/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-09-24 12:06:00', '2021-09-24 12:06:00', '<h2>We would love to hear from you! Please contact us using the fallowing methods or fill out the form below and we will get in touch with you shortly.</h2>\r\n<div class=\"row contact-us-contact-info\">\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"tel:0897916575\"><i class=\"fa fa-phone\"></i> 08 9791 6575</a></div>\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-envelope-o\"></i> info@terrace.com</a></div>\r\n</div>\r\n<div class=\"col-lg-6\">\r\n<div><a href=\"mailto:info@terrace.com\"><i class=\"fa fa-map\"></i> Lot 757, Ocean Drive, Bunbury 6230</a></div>\r\n<div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-09-24 12:06:00', '2021-09-24 12:06:00', '', 37, 'http://www.terrace.com/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-09-24 17:01:02', '2021-09-24 17:01:02', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-24 17:01:02', '2021-09-24 17:01:02', '', 1, 'http://www.terrace.com/?p=57', 0, 'revision', '', 0),
(60, 1, '2021-10-06 17:45:02', '2021-10-06 17:45:02', '<!-- wp:paragraph -->\r\n<p><img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" />Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-10-06 17:45:02', '2021-10-06 17:45:02', '', 1, 'http://www.terrace.com/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-10-06 17:47:03', '2021-10-06 17:47:03', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writ<img src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" class=\"alignnone size-full wp-image-24\" />ing!</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-10-06 17:47:03', '2021-10-06 17:47:03', '', 1, 'http://www.terrace.com/?p=61', 0, 'revision', '', 0),
(62, 1, '2021-10-06 17:47:50', '2021-10-06 17:47:50', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<p><img class=\"alignnone size-full wp-image-24\" src=\"http://www.terrace.com/wp-content/uploads/2021/08/functions-preview.jpg\" alt=\"\" width=\"1920\" height=\"780\" /></p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-10-06 17:47:50', '2021-10-06 17:47:50', '', 1, 'http://www.terrace.com/?p=62', 0, 'revision', '', 0),
(63, 1, '2021-10-06 17:50:10', '2021-10-06 17:50:10', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-10-06 17:50:10', '2021-10-06 17:50:10', '', 1, 'http://www.terrace.com/?p=63', 0, 'revision', '', 0),
(64, 1, '2021-10-06 18:42:01', '2021-10-06 18:42:01', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-10-06 18:42:01', '2021-10-06 18:42:01', '', 0, 'http://www.terrace.com/?p=64', 9, 'nav_menu_item', '', 0),
(66, 1, '2021-10-06 18:49:59', '2021-10-06 18:49:59', 'Join us to celebrate your mum this Mother\'s Day. Breakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...', 'Mother\'s Day', '', 'publish', 'open', 'open', '', 'mothers-day', '', '', '2021-10-06 23:30:03', '2021-10-06 23:30:03', '', 0, 'http://www.terrace.com/?p=66', 0, 'post', '', 0),
(67, 1, '2021-10-06 18:49:04', '2021-10-06 18:49:04', '', 'news-placeholder', '', 'inherit', 'open', 'closed', '', 'news-placeholder', '', '', '2021-10-06 18:49:04', '2021-10-06 18:49:04', '', 66, 'http://www.terrace.com/wp-content/uploads/2021/10/news-placeholder.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2021-10-06 18:49:59', '2021-10-06 18:49:59', '<h2>Join us to celebrate your mum this Mother\'s Day.</h2>\r\nBreakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...', 'Mother\'s Day', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-10-06 18:49:59', '2021-10-06 18:49:59', '', 66, 'http://www.terrace.com/?p=68', 0, 'revision', '', 0),
(69, 1, '2021-10-06 21:58:34', '2021-10-06 21:58:34', 'Join us to celebrate your mum this Mother\'s Day.\r\n\r\nBreakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...', 'Mother\'s Day', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-10-06 21:58:34', '2021-10-06 21:58:34', '', 66, 'http://www.terrace.com/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-10-06 21:59:55', '2021-10-06 21:59:55', '<h2>Join us to celebrate your mum this Mother\'s Day.</h2>\r\nBreakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...', 'Mother\'s Day', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-10-06 21:59:55', '2021-10-06 21:59:55', '', 66, 'http://www.terrace.com/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-10-06 22:16:38', '2021-10-06 22:16:38', 'Join us to celebrate your mum this Mother\'s Day. Breakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...', 'Mother\'s Day', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-10-06 22:16:38', '2021-10-06 22:16:38', '', 66, 'http://www.terrace.com/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-10-06 22:17:44', '2021-10-06 22:17:44', '<pre>Join us to celebrate your mum this Mother\'s Day. Breakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...</pre>', 'Mother\'s Day', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-10-06 22:17:44', '2021-10-06 22:17:44', '', 66, 'http://www.terrace.com/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-10-06 22:21:24', '2021-10-06 22:21:24', 'Join us to celebrate your mum this Mother\'s Day. Breakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...\n</p>', 'Mother\'s Day', '', 'inherit', 'closed', 'closed', '', '66-autosave-v1', '', '', '2021-10-06 22:21:24', '2021-10-06 22:21:24', '', 66, 'http://www.terrace.com/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-10-06 22:19:21', '2021-10-06 22:19:21', '<p data-aos=\"fade-up\" data-aos-duration=\"1000\">\r\nJoin us to celebrate your mum this Mother\'s Day. Breakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...\r\n</p>', 'Mother\'s Day', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-10-06 22:19:21', '2021-10-06 22:19:21', '', 66, 'http://www.terrace.com/?p=74', 0, 'revision', '', 0),
(75, 1, '2021-10-06 22:21:29', '2021-10-06 22:21:29', 'Join us to celebrate your mum this Mother\'s Day. Breakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...', 'Mother\'s Day', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-10-06 22:21:29', '2021-10-06 22:21:29', '', 66, 'http://www.terrace.com/?p=75', 0, 'revision', '', 0),
(76, 1, '2021-10-06 23:29:26', '2021-10-06 23:29:26', 'dragomire mandicu Join us to celebrate your mum this Mother\'s Day. Breakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...', 'Mother\'s Day', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-10-06 23:29:26', '2021-10-06 23:29:26', '', 66, 'http://www.terrace.com/?p=76', 0, 'revision', '', 0),
(77, 1, '2021-10-06 23:30:03', '2021-10-06 23:30:03', 'Join us to celebrate your mum this Mother\'s Day. Breakfast and Lunch is pretty full but we\'re taking dinner bookings so you can enjoy the best of our superb location right on the beach. All dinner reservations receive a complimentary box of chocolates too...', 'Mother\'s Day', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-10-06 23:30:03', '2021-10-06 23:30:03', '', 66, 'http://www.terrace.com/?p=77', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sbi_instagram_feeds_posts`
--

CREATE TABLE `wp_sbi_instagram_feeds_posts` (
  `record_id` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `instagram_id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feed_id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hashtag` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_sbi_instagram_feed_locator`
--

CREATE TABLE `wp_sbi_instagram_feed_locator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` varchar(50) NOT NULL DEFAULT '',
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `html_location` varchar(50) NOT NULL DEFAULT 'unknown',
  `shortcode_atts` longtext NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_sbi_instagram_posts`
--

CREATE TABLE `wp_sbi_instagram_posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `instagram_id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_stamp` datetime DEFAULT NULL,
  `top_time_stamp` datetime DEFAULT NULL,
  `json_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media_id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sizes` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `aspect_ratio` decimal(4,2) NOT NULL DEFAULT 0.00,
  `images_done` tinyint(1) NOT NULL DEFAULT 0,
  `last_requested` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'News', 'news', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(4, 'Whats On', 'whats-on', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(27, 2, 0),
(28, 2, 0),
(64, 2, 0),
(66, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 9),
(4, 4, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"93a075155ce5399f123c466dfe474ebd070e0e0cd79207bf8a121b32f4ef8c46\";a:4:{s:10:\"expiration\";i:1633875174;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36\";s:5:\"login\";i:1632665574;}s:64:\"fc4f086c380b5b1e0abada2e49491fff952f73904edbebb0a5dfa04ee7b446a1\";a:4:{s:10:\"expiration\";i:1633876612;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36\";s:5:\"login\";i:1632667012;}s:64:\"f6943ce1875af5b2db5dff736a3d2dbb762ba440c75abbf7278e9635f3678165\";a:4:{s:10:\"expiration\";i:1633960444;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36\";s:5:\"login\";i:1632750844;}s:64:\"e67e6064b4db0efc38188a7e4783fbebcbf6115475549cfa50b064335117a2eb\";a:4:{s:10:\"expiration\";i:1634311444;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36\";s:5:\"login\";i:1633101844;}s:64:\"a0912544ee8809f364ce626412e127cd5ba5da6d35a918216da7d3e794d3c4ca\";a:4:{s:10:\"expiration\";i:1634727803;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36\";s:5:\"login\";i:1633518203;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '59'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.4\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&ampampeditor=tinymce&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1633558995'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'sbi_ignore_new_user_sale_notice', 'always'),
(26, 1, 'closedpostboxes_post', 'a:1:{i:0;s:12:\"revisionsdiv\";}'),
(27, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BlWmiCc.8tk.dl7al0BMU.4tm0Z9G91', 'admin', 'dragomirmandic.work@gmail.com', 'http://www.terrace.com', '2021-08-19 21:05:09', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_sbi_instagram_feeds_posts`
--
ALTER TABLE `wp_sbi_instagram_feeds_posts`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `hashtag` (`hashtag`(100)),
  ADD KEY `feed_id` (`feed_id`(100));

--
-- Indexes for table `wp_sbi_instagram_feed_locator`
--
ALTER TABLE `wp_sbi_instagram_feed_locator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_id` (`feed_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `wp_sbi_instagram_posts`
--
ALTER TABLE `wp_sbi_instagram_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=818;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `wp_sbi_instagram_feeds_posts`
--
ALTER TABLE `wp_sbi_instagram_feeds_posts`
  MODIFY `record_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_sbi_instagram_feed_locator`
--
ALTER TABLE `wp_sbi_instagram_feed_locator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_sbi_instagram_posts`
--
ALTER TABLE `wp_sbi_instagram_posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
