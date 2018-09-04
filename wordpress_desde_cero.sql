-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 04, 2018 at 03:15 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress_desde_cero`
--

-- --------------------------------------------------------

--
-- Table structure for table `dl_commentmeta`
--

CREATE TABLE `dl_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dl_comments`
--

CREATE TABLE `dl_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_comments`
--

INSERT INTO `dl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un Comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-14 22:56:33', '2018-08-14 22:56:33', 'Hola, este es un comentario.\nPara empezar con la moderación, edición y eliminación de comentarios, por favor visita la pantalla de comentarios en el panel inicial.\nLos Avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dl_duplicator_packages`
--

CREATE TABLE `dl_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dl_duplicator_packages`
--

INSERT INTO `dl_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20180821_wordpressdesdecero', 'b203a650d6f91ccc7806180821235530', 100, '2018-08-21 23:55:54', 'imunozq', 0x4f3a31313a224455505f5061636b616765223a32333a7b733a373a2243726561746564223b733a31393a22323031382d30382d32312032333a35353a3330223b733a373a2256657273696f6e223b733a363a22312e322e3430223b733a393a2256657273696f6e5750223b733a353a22342e392e38223b733a393a2256657273696f6e4442223b733a363a22352e362e3334223b733a31303a2256657273696f6e504850223b733a353a22372e322e31223b733a393a2256657273696f6e4f53223b733a353a2257494e4e54223b733a323a224944223b693a313b733a343a224e616d65223b733a32373a2232303138303832315f776f7264707265737364657364656365726f223b733a343a2248617368223b733a33323a226232303361363530643666393163636337383036313830383231323335353330223b733a383a224e616d6548617368223b733a36303a2232303138303832315f776f7264707265737364657364656365726f5f6232303361363530643666393163636337383036313830383231323335353330223b733a343a2254797065223b693a303b733a353a224e6f746573223b733a303a22223b733a393a2253746f726550617468223b733a39313a22433a2f55736572732f497368612f4465736b746f702f4d756a657265732050726f6772616d61646f7261732f776f72647072657373206465736465206365726f2f776f726470726573732f77702d736e617073686f74732f746d70223b733a383a2253746f726555524c223b733a33353a22687474703a2f2f6c6f63616c686f73743a383038302f77702d736e617073686f74732f223b733a383a225363616e46696c65223b733a37303a2232303138303832315f776f7264707265737364657364656365726f5f62323033613635306436663931636363373830363138303832313233353533305f7363616e2e6a736f6e223b733a373a2252756e74696d65223b733a31303a2236372e3532207365632e223b733a373a2245786553697a65223b733a383a223434352e39344b42223b733a373a225a697053697a65223b733a363a22392e37384d42223b733a363a22537461747573223b4e3b733a363a22575055736572223b733a373a22696d756e6f7a71223b733a373a2241726368697665223b4f3a31313a224455505f41726368697665223a31393a7b733a31303a2246696c74657244697273223b733a303a22223b733a31313a2246696c74657246696c6573223b733a303a22223b733a31303a2246696c74657245787473223b733a303a22223b733a31333a2246696c74657244697273416c6c223b613a303a7b7d733a31343a2246696c74657246696c6573416c6c223b613a303a7b7d733a31333a2246696c74657245787473416c6c223b613a303a7b7d733a383a2246696c7465724f6e223b693a303b733a31323a224578706f72744f6e6c794442223b693a303b733a343a2246696c65223b733a37323a2232303138303832315f776f7264707265737364657364656365726f5f62323033613635306436663931636363373830363138303832313233353533305f617263686976652e7a6970223b733a363a22466f726d6174223b733a333a225a4950223b733a373a225061636b446972223b733a37343a22433a2f55736572732f497368612f4465736b746f702f4d756a657265732050726f6772616d61646f7261732f776f72647072657373206465736465206365726f2f776f72647072657373223b733a343a2253697a65223b693a31303235393837323b733a343a2244697273223b613a303a7b7d733a353a2246696c6573223b613a303a7b7d733a31303a2246696c746572496e666f223b4f3a32333a224455505f417263686976655f46696c7465725f496e666f223a383a7b733a343a2244697273223b4f3a33343a224455505f417263686976655f46696c7465725f53636f70655f4469726563746f7279223a343a7b733a373a225761726e696e67223b613a303a7b7d733a31303a22556e7265616461626c65223b613a303a7b7d733a343a22436f7265223b613a303a7b7d733a383a22496e7374616e6365223b613a303a7b7d7d733a353a2246696c6573223b4f3a32393a224455505f417263686976655f46696c7465725f53636f70655f46696c65223a353a7b733a343a2253697a65223b613a303a7b7d733a373a225761726e696e67223b613a303a7b7d733a31303a22556e7265616461626c65223b613a303a7b7d733a343a22436f7265223b613a303a7b7d733a383a22496e7374616e6365223b613a303a7b7d7d733a343a2245787473223b4f3a32393a224455505f417263686976655f46696c7465725f53636f70655f42617365223a323a7b733a343a22436f7265223b613a303a7b7d733a383a22496e7374616e6365223b613a303a7b7d7d733a393a2255446972436f756e74223b693a303b733a31303a225546696c65436f756e74223b693a303b733a393a2255457874436f756e74223b693a303b733a383a225472656553697a65223b613a303a7b7d733a31313a22547265655761726e696e67223b613a303a7b7d7d733a31343a225265637572736976654c696e6b73223b613a303a7b7d733a31303a22002a005061636b616765223b723a313b733a32393a22004455505f4172636869766500746d7046696c74657244697273416c6c223b613a303a7b7d733a32343a22004455505f41726368697665007770436f72655061746873223b613a363a7b693a303b733a38333a22433a2f55736572732f497368612f4465736b746f702f4d756a657265732050726f6772616d61646f7261732f776f72647072657373206465736465206365726f2f776f726470726573732f77702d61646d696e223b693a313b733a39333a22433a2f55736572732f497368612f4465736b746f702f4d756a657265732050726f6772616d61646f7261732f776f72647072657373206465736465206365726f2f776f726470726573732f77702d636f6e74656e742f75706c6f616473223b693a323b733a39353a22433a2f55736572732f497368612f4465736b746f702f4d756a657265732050726f6772616d61646f7261732f776f72647072657373206465736465206365726f2f776f726470726573732f77702d636f6e74656e742f6c616e677561676573223b693a333b733a39333a22433a2f55736572732f497368612f4465736b746f702f4d756a657265732050726f6772616d61646f7261732f776f72647072657373206465736465206365726f2f776f726470726573732f77702d636f6e74656e742f706c7567696e73223b693a343b733a39323a22433a2f55736572732f497368612f4465736b746f702f4d756a657265732050726f6772616d61646f7261732f776f72647072657373206465736465206365726f2f776f726470726573732f77702d636f6e74656e742f7468656d6573223b693a353b733a38363a22433a2f55736572732f497368612f4465736b746f702f4d756a657265732050726f6772616d61646f7261732f776f72647072657373206465736465206365726f2f776f726470726573732f77702d696e636c75646573223b7d7d733a393a22496e7374616c6c6572223b4f3a31333a224455505f496e7374616c6c6572223a373a7b733a343a2246696c65223b733a37343a2232303138303832315f776f7264707265737364657364656365726f5f62323033613635306436663931636363373830363138303832313233353533305f696e7374616c6c65722e706870223b733a343a2253697a65223b693a3435363634323b733a31303a224f7074734442486f7374223b733a303a22223b733a31303a224f7074734442506f7274223b733a303a22223b733a31303a224f70747344424e616d65223b733a303a22223b733a31303a224f707473444255736572223b733a303a22223b733a31303a22002a005061636b616765223b723a313b7d733a383a224461746162617365223b4f3a31323a224455505f4461746162617365223a31333a7b733a343a2254797065223b733a353a224d7953514c223b733a343a2253697a65223b693a3130333336383b733a343a2246696c65223b733a37333a2232303138303832315f776f7264707265737364657364656365726f5f62323033613635306436663931636363373830363138303832313233353533305f64617461626173652e73716c223b733a343a2250617468223b4e3b733a31323a2246696c7465725461626c6573223b733a303a22223b733a383a2246696c7465724f6e223b693a303b733a343a224e616d65223b4e3b733a31303a22436f6d70617469626c65223b733a303a22223b733a383a22436f6d6d656e7473223b733a32383a224d7953514c20436f6d6d756e69747920536572766572202847504c29223b733a31303a22002a005061636b616765223b723a313b733a32353a22004455505f446174616261736500646253746f726550617468223b733a3136353a22433a2f55736572732f497368612f4465736b746f702f4d756a657265732050726f6772616d61646f7261732f776f72647072657373206465736465206365726f2f776f726470726573732f77702d736e617073686f74732f746d702f32303138303832315f776f7264707265737364657364656365726f5f62323033613635306436663931636363373830363138303832313233353533305f64617461626173652e73716c223b733a32333a22004455505f446174616261736500454f464d61726b6572223b733a303a22223b733a32363a22004455505f4461746162617365006e6574776f726b466c757368223b623a303b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `dl_links`
--

CREATE TABLE `dl_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dl_options`
--

CREATE TABLE `dl_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_options`
--

INSERT INTO `dl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080', 'yes'),
(2, 'home', 'http://localhost:8080', 'yes'),
(3, 'blogname', 'wordpress desde cero', 'yes'),
(4, 'blogdescription', 'Mi primer tema', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ishamu023@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:25:\"duplicator/duplicator.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:117:\"C:\\Users\\Isha\\Desktop\\Mujeres Programadoras\\wordpress desde cero\\wordpress/wp-content/themes/mi primer tema/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'mi primer tema', 'yes'),
(41, 'stylesheet', 'mi primer tema', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '14', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'dl_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_CL', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1536076240;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1536101796;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536101861;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536104072;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534424287;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(131, 'can_compress_scripts', '0', 'no'),
(144, 'category_children', 'a:0:{}', 'yes'),
(170, 'current_theme', '', 'yes'),
(171, 'theme_mods_mi primer tema', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(172, 'theme_switched', '', 'yes'),
(216, 'recently_activated', 'a:0:{}', 'yes'),
(223, 'duplicator_settings', 'a:10:{s:7:\"version\";s:6:\"1.2.40\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:20:\"storage_htaccess_off\";b:0;}', 'yes'),
(224, 'duplicator_version_plugin', '1.2.40', 'yes'),
(248, 'duplicator_package_active', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-08-21 23:55:30\";s:7:\"Version\";s:6:\"1.2.40\";s:9:\"VersionWP\";s:5:\"4.9.8\";s:9:\"VersionDB\";s:6:\"5.6.34\";s:10:\"VersionPHP\";s:5:\"7.2.1\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:27:\"20180821_wordpressdesdecero\";s:4:\"Hash\";s:32:\"b203a650d6f91ccc7806180821235530\";s:8:\"NameHash\";s:60:\"20180821_wordpressdesdecero_b203a650d6f91ccc7806180821235530\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:91:\"C:/Users/Isha/Desktop/Mujeres Programadoras/wordpress desde cero/wordpress/wp-snapshots/tmp\";s:8:\"StoreURL\";s:35:\"http://localhost:8080/wp-snapshots/\";s:8:\"ScanFile\";s:70:\"20180821_wordpressdesdecero_b203a650d6f91ccc7806180821235530_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":19:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:74:\"C:/Users/Isha/Desktop/Mujeres Programadoras/wordpress desde cero/wordpress\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-08-21 23:55:30\";s:7:\"Version\";s:6:\"1.2.40\";s:9:\"VersionWP\";s:5:\"4.9.8\";s:9:\"VersionDB\";s:6:\"5.6.34\";s:10:\"VersionPHP\";s:5:\"7.2.1\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:27:\"20180821_wordpressdesdecero\";s:4:\"Hash\";s:32:\"b203a650d6f91ccc7806180821235530\";s:8:\"NameHash\";s:60:\"20180821_wordpressdesdecero_b203a650d6f91ccc7806180821235530\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:91:\"C:/Users/Isha/Desktop/Mujeres Programadoras/wordpress desde cero/wordpress/wp-snapshots/tmp\";s:8:\"StoreURL\";s:35:\"http://localhost:8080/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:58;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:58;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:83:\"C:/Users/Isha/Desktop/Mujeres Programadoras/wordpress desde cero/wordpress/wp-admin\";i:1;s:93:\"C:/Users/Isha/Desktop/Mujeres Programadoras/wordpress desde cero/wordpress/wp-content/uploads\";i:2;s:95:\"C:/Users/Isha/Desktop/Mujeres Programadoras/wordpress desde cero/wordpress/wp-content/languages\";i:3;s:93:\"C:/Users/Isha/Desktop/Mujeres Programadoras/wordpress desde cero/wordpress/wp-content/plugins\";i:4;s:92:\"C:/Users/Isha/Desktop/Mujeres Programadoras/wordpress desde cero/wordpress/wp-content/themes\";i:5;s:86:\"C:/Users/Isha/Desktop/Mujeres Programadoras/wordpress desde cero/wordpress/wp-includes\";}}s:9:\"Installer\";r:80;s:8:\"Database\";r:88;}', 'yes'),
(258, '_site_transient_timeout_browser_01fe6d96f512df15cc1b10345d6b37d9', '1536273255', 'no'),
(259, '_site_transient_browser_01fe6d96f512df15cc1b10345d6b37d9', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(302, '_site_transient_timeout_theme_roots', '1536075749', 'no'),
(303, '_site_transient_theme_roots', 'a:1:{s:14:\"mi primer tema\";s:7:\"/themes\";}', 'no'),
(306, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CL/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_CL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CL/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1536073964;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-28 15:49:41\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(307, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1536073965;s:7:\"checked\";a:1:{s:14:\"mi primer tema\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(308, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1536073965;s:8:\"response\";a:1:{s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.2.42\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.2.42.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=1298463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-09-06 16:48:55\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/es_CL.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `dl_postmeta`
--

CREATE TABLE `dl_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_postmeta`
--

INSERT INTO `dl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1534289589'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_edit_lock', '1534891773:1'),
(7, 2, '_edit_last', '1'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1535671459:1'),
(10, 1, '_edit_lock', '1535720065:1'),
(11, 10, '_wp_attached_file', '2018/08/descarga.jpg'),
(12, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2018/08/descarga.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"descarga-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 1, '_edit_last', '1'),
(18, 12, '_wp_attached_file', '2018/08/noticia-frutas-e1535720243877.png'),
(19, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:206;s:6:\"height\";i:242;s:4:\"file\";s:41:\"2018/08/noticia-frutas-e1535720243877.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"noticia-frutas-e1535720243877-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"noticia-frutas-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 13, '_wp_attached_file', '2018/08/images-e1535720306154.jpg'),
(21, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:207;s:6:\"height\";i:180;s:4:\"file\";s:33:\"2018/08/images-e1535720306154.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"images-e1535720306154-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 14, '_wp_attached_file', '2018/08/frutas.jpg'),
(23, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:207;s:6:\"height\";i:243;s:4:\"file\";s:18:\"2018/08/frutas.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"frutas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 15, '_edit_last', '1'),
(25, 15, '_edit_lock', '1535720106:1'),
(28, 17, '_edit_last', '1'),
(29, 17, '_edit_lock', '1535719983:1'),
(34, 20, '_edit_last', '1'),
(35, 20, '_edit_lock', '1535720168:1'),
(38, 23, '_wp_trash_meta_status', 'publish'),
(39, 23, '_wp_trash_meta_time', '1534425841'),
(40, 24, '_wp_trash_meta_status', 'publish'),
(41, 24, '_wp_trash_meta_time', '1534455606'),
(42, 36, '_wp_attached_file', '2018/08/frutas-750x500-e1535720199134.jpg'),
(43, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:206;s:6:\"height\";i:243;s:4:\"file\";s:41:\"2018/08/frutas-750x500-e1535720199134.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"frutas-750x500-e1535720199134-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"frutas-750x500-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 1, '_thumbnail_id', '36'),
(47, 15, '_thumbnail_id', '12'),
(50, 17, '_thumbnail_id', '14'),
(53, 20, '_thumbnail_id', '13'),
(54, 7, '_wp_trash_meta_status', 'publish'),
(55, 7, '_wp_trash_meta_time', '1535671613'),
(56, 7, '_wp_desired_post_slug', 'blog'),
(57, 41, '_edit_last', '1'),
(58, 41, '_edit_lock', '1535672669:1'),
(59, 41, '_wp_trash_meta_status', 'publish'),
(60, 41, '_wp_trash_meta_time', '1535715790'),
(61, 41, '_wp_desired_post_slug', 'blog'),
(62, 44, '_edit_last', '1'),
(63, 44, '_edit_lock', '1535722916:1'),
(64, 36, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:18:\"frutas-750x500.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:26:\"frutas-750x500-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:26:\"frutas-750x500-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(65, 12, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:720;s:6:\"height\";i:405;s:4:\"file\";s:18:\"noticia-frutas.png\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:26:\"noticia-frutas-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:26:\"noticia-frutas-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(66, 13, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:280;s:6:\"height\";i:180;s:4:\"file\";s:10:\"images.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `dl_posts`
--

CREATE TABLE `dl_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_posts`
--

INSERT INTO `dl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-14 22:56:33', '2018-08-14 22:56:33', '<h2>Esta es tu primera entrada. La rellenaré con lo que mejor sabemos jajaja ...</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati?\r\n\r\n<img class=\"aligncenter size-medium wp-image-36\" src=\"http://localhost:8080/wp-content/uploads/2018/08/frutas-750x500-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />', 'Primera entrada', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2018-08-21 23:45:45', '2018-08-21 23:45:45', '', 0, 'http://localhost:8080/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-14 22:56:33', '2018-08-14 22:56:33', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-21 22:51:43', '2018-08-21 22:51:43', '', 0, 'http://localhost:8080/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-14 22:56:33', '2018-08-14 22:56:33', '<h2>Who we are</h2><p>Our website address is: http://localhost:8080.</p><h2>What personal data we collect and why we collect it</h2><h3>Comentarios</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Multimedia</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-08-14 23:33:09', '2018-08-14 23:33:09', '', 0, 'http://localhost:8080/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-08-14 23:33:09', '2018-08-14 23:33:09', '<h2>Who we are</h2><p>Our website address is: http://localhost:8080.</p><h2>What personal data we collect and why we collect it</h2><h3>Comentarios</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Multimedia</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-08-14 23:33:09', '2018-08-14 23:33:09', '', 3, 'http://localhost:8080/2018/08/14/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-08-14 23:33:30', '2018-08-14 23:33:30', 'hola home', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-14 23:33:30', '2018-08-14 23:33:30', '', 2, 'http://localhost:8080/2018/08/14/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-08-14 23:34:42', '2018-08-14 23:34:42', '', 'blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed', '', '', '2018-08-30 23:26:53', '2018-08-30 23:26:53', '', 0, 'http://localhost:8080/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-08-14 23:34:42', '2018-08-14 23:34:42', 'blog', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-08-14 23:34:42', '2018-08-14 23:34:42', '', 7, 'http://localhost:8080/2018/08/14/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-08-14 23:37:26', '2018-08-14 23:37:26', 'Esta es tu primera entrada. La rellenaré con lo que mejor sabemos jajaja ...\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? Delectus.', 'Primera entrada', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-08-14 23:37:26', '2018-08-14 23:37:26', '', 1, 'http://localhost:8080/2018/08/14/1-autosave-v1/', 0, 'revision', '', 0),
(10, 1, '2018-08-14 23:37:52', '2018-08-14 23:37:52', '', 'descarga', '', 'inherit', 'open', 'closed', '', 'descarga', '', '', '2018-08-14 23:37:52', '2018-08-14 23:37:52', '', 1, 'http://localhost:8080/wp-content/uploads/2018/08/descarga.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-08-14 23:38:40', '2018-08-14 23:38:40', 'Esta es tu primera entrada. La rellenaré con lo que mejor sabemos jajaja ...\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? Delectus.<img class=\"aligncenter size-full wp-image-10\" src=\"http://localhost:8080/wp-content/uploads/2018/08/descarga.jpg\" alt=\"\" width=\"225\" height=\"225\" />', 'Primera entrada', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-14 23:38:40', '2018-08-14 23:38:40', '', 1, 'http://localhost:8080/2018/08/14/1-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-08-14 23:40:18', '2018-08-14 23:40:18', '', 'noticia-frutas', '', 'inherit', 'open', 'closed', '', 'noticia-frutas', '', '', '2018-08-14 23:43:23', '2018-08-14 23:43:23', '', 15, 'http://localhost:8080/wp-content/uploads/2018/08/noticia-frutas.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2018-08-14 23:40:44', '2018-08-14 23:40:44', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2018-08-14 23:45:47', '2018-08-14 23:45:47', '', 20, 'http://localhost:8080/wp-content/uploads/2018/08/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-08-14 23:41:59', '2018-08-14 23:41:59', '', 'frutas', '', 'inherit', 'open', 'closed', '', 'frutas', '', '', '2018-08-14 23:44:02', '2018-08-14 23:44:02', '', 17, 'http://localhost:8080/wp-content/uploads/2018/08/frutas.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-08-14 23:43:25', '2018-08-14 23:43:25', '<h2>Esta es mi segunda entrada y tal como la anterior la rellenare con ...</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati?<img class=\"aligncenter size-medium wp-image-12\" src=\"http://localhost:8080/wp-content/uploads/2018/08/noticia-frutas-300x169.png\" alt=\"\" width=\"300\" height=\"169\" />', 'Segunda entrada', '', 'publish', 'open', 'open', '', 'segunda-entrada', '', '', '2018-08-21 23:44:28', '2018-08-21 23:44:28', '', 0, 'http://localhost:8080/?p=15', 0, 'post', '', 0),
(16, 1, '2018-08-14 23:43:25', '2018-08-14 23:43:25', 'Esta es mi segunda entrada y tal como la anterior la rellenare con ...\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? Delectus.<img class=\"aligncenter size-medium wp-image-12\" src=\"http://localhost:8080/wp-content/uploads/2018/08/noticia-frutas-300x169.png\" alt=\"\" width=\"300\" height=\"169\" />', 'Segunda entrada', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-14 23:43:25', '2018-08-14 23:43:25', '', 15, 'http://localhost:8080/2018/08/14/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-08-14 23:44:33', '2018-08-14 23:44:33', '<h2>Es la penultima entrada y el penultimo relleno ...</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati?<img class=\"aligncenter size-full wp-image-14\" src=\"http://localhost:8080/wp-content/uploads/2018/08/frutas.jpg\" alt=\"\" width=\"207\" height=\"243\" />', 'Tercera entrada', '', 'publish', 'open', 'open', '', 'tercera-entrada', '', '', '2018-08-21 23:44:45', '2018-08-21 23:44:45', '', 0, 'http://localhost:8080/?p=17', 0, 'post', '', 0),
(18, 1, '2018-08-14 23:44:33', '2018-08-14 23:44:33', 'Es la ultima entrada y el ultimo relleno ...\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? Delectus.\r\n\r\n<img class=\"aligncenter size-full wp-image-14\" src=\"http://localhost:8080/wp-content/uploads/2018/08/frutas.jpg\" alt=\"\" width=\"207\" height=\"243\" />', 'Tercera entrada', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-14 23:44:33', '2018-08-14 23:44:33', '', 17, 'http://localhost:8080/2018/08/14/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-08-14 23:45:02', '2018-08-14 23:45:02', 'Es la penultima entrada y el penultimo relleno ...\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? Delectus.\r\n\r\n<img class=\"aligncenter size-full wp-image-14\" src=\"http://localhost:8080/wp-content/uploads/2018/08/frutas.jpg\" alt=\"\" width=\"207\" height=\"243\" />', 'Tercera entrada', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-14 23:45:02', '2018-08-14 23:45:02', '', 17, 'http://localhost:8080/2018/08/14/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-08-14 23:46:01', '2018-08-14 23:46:01', '<h2>Esta sí que es la última entrada jajaj con un poco de ...</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? <img class=\"aligncenter size-full wp-image-13\" src=\"http://localhost:8080/wp-content/uploads/2018/08/images.jpg\" alt=\"\" width=\"280\" height=\"180\" />', 'Cuarta entrada', '', 'publish', 'open', 'open', '', 'cuarta-entrada', '', '', '2018-08-21 23:45:00', '2018-08-21 23:45:00', '', 0, 'http://localhost:8080/?p=20', 0, 'post', '', 0),
(21, 1, '2018-08-14 23:45:15', '2018-08-14 23:45:15', '', 'Cuarta', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-14 23:45:15', '2018-08-14 23:45:15', '', 20, 'http://localhost:8080/2018/08/14/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-08-14 23:46:01', '2018-08-14 23:46:01', 'Esta sí que es la última entrada jajaj con un poco de ...\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? Delectus.<img class=\"aligncenter size-full wp-image-13\" src=\"http://localhost:8080/wp-content/uploads/2018/08/images.jpg\" alt=\"\" width=\"280\" height=\"180\" />', 'Cuarta entrada', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-14 23:46:01', '2018-08-14 23:46:01', '', 20, 'http://localhost:8080/2018/08/14/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-08-16 13:24:01', '2018-08-16 13:24:01', '{\n    \"blogdescription\": {\n        \"value\": \"Mi primer tema\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-16 13:24:01\"\n    },\n    \"site_icon\": {\n        \"value\": 14,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-16 13:24:01\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-16 13:24:01\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-16 13:24:01\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-16 13:24:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '62526746-289c-4f4b-9697-dacb28d35fdc', '', '', '2018-08-16 13:24:01', '2018-08-16 13:24:01', '', 0, 'http://localhost:8080/2018/08/16/62526746-289c-4f4b-9697-dacb28d35fdc/', 0, 'customize_changeset', '', 0),
(24, 1, '2018-08-16 21:40:05', '2018-08-16 21:40:05', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-16 21:40:05\"\n    },\n    \"page_on_front\": {\n        \"value\": \"7\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-16 21:40:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8ffda285-f9fb-420f-a5f0-07d1c4cd9a46', '', '', '2018-08-16 21:40:05', '2018-08-16 21:40:05', '', 0, 'http://localhost:8080/2018/08/16/8ffda285-f9fb-420f-a5f0-07d1c4cd9a46/', 0, 'customize_changeset', '', 0),
(25, 1, '2018-08-21 21:53:26', '2018-08-21 21:53:26', 'Esta es tu primera entrada. La rellenaré con lo que mejor sabemos jajaja ...\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? <img class=\"aligncenter size-full wp-image-10\" src=\"http://localhost:8080/wp-content/uploads/2018/08/descarga.jpg\" alt=\"\" width=\"225\" height=\"225\" />', 'Primera entrada', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-21 21:53:26', '2018-08-21 21:53:26', '', 1, 'http://localhost:8080/2018/08/21/1-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-08-21 21:53:46', '2018-08-21 21:53:46', 'Esta es mi segunda entrada y tal como la anterior la rellenare con ...\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati?<img class=\"aligncenter size-medium wp-image-12\" src=\"http://localhost:8080/wp-content/uploads/2018/08/noticia-frutas-300x169.png\" alt=\"\" width=\"300\" height=\"169\" />', 'Segunda entrada', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-21 21:53:46', '2018-08-21 21:53:46', '', 15, 'http://localhost:8080/2018/08/21/15-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-08-21 21:54:03', '2018-08-21 21:54:03', 'Es la penultima entrada y el penultimo relleno ...\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati?<img class=\"aligncenter size-full wp-image-14\" src=\"http://localhost:8080/wp-content/uploads/2018/08/frutas.jpg\" alt=\"\" width=\"207\" height=\"243\" />', 'Tercera entrada', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-21 21:54:03', '2018-08-21 21:54:03', '', 17, 'http://localhost:8080/2018/08/21/17-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-08-21 21:54:16', '2018-08-21 21:54:16', 'Esta sí que es la última entrada jajaj con un poco de ...\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? <img class=\"aligncenter size-full wp-image-13\" src=\"http://localhost:8080/wp-content/uploads/2018/08/images.jpg\" alt=\"\" width=\"280\" height=\"180\" />', 'Cuarta entrada', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-21 21:54:16', '2018-08-21 21:54:16', '', 20, 'http://localhost:8080/2018/08/21/20-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-08-21 21:55:43', '2018-08-21 21:55:43', '<h2>Esta es tu primera entrada. La rellenaré con lo que mejor sabemos jajaja ...</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? <img class=\"aligncenter size-full wp-image-10\" src=\"http://localhost:8080/wp-content/uploads/2018/08/descarga.jpg\" alt=\"\" width=\"225\" height=\"225\" />', 'Primera entrada', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-21 21:55:43', '2018-08-21 21:55:43', '', 1, 'http://localhost:8080/2018/08/21/1-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-08-21 21:55:55', '2018-08-21 21:55:55', '<h2>Esta es mi segunda entrada y tal como la anterior la rellenare con ...</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati?<img class=\"aligncenter size-medium wp-image-12\" src=\"http://localhost:8080/wp-content/uploads/2018/08/noticia-frutas-300x169.png\" alt=\"\" width=\"300\" height=\"169\" />', 'Segunda entrada', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-21 21:55:55', '2018-08-21 21:55:55', '', 15, 'http://localhost:8080/2018/08/21/15-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-08-21 21:56:07', '2018-08-21 21:56:07', '<h2>Es la penultima entrada y el penultimo relleno ...</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati?<img class=\"aligncenter size-full wp-image-14\" src=\"http://localhost:8080/wp-content/uploads/2018/08/frutas.jpg\" alt=\"\" width=\"207\" height=\"243\" />', 'Tercera entrada', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-21 21:56:07', '2018-08-21 21:56:07', '', 17, 'http://localhost:8080/2018/08/21/17-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-08-21 21:56:18', '2018-08-21 21:56:18', '<h2>Esta sí que es la última entrada jajaj con un poco de ...</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati? <img class=\"aligncenter size-full wp-image-13\" src=\"http://localhost:8080/wp-content/uploads/2018/08/images.jpg\" alt=\"\" width=\"280\" height=\"180\" />', 'Cuarta entrada', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-21 21:56:18', '2018-08-21 21:56:18', '', 20, 'http://localhost:8080/2018/08/21/20-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-08-21 22:51:43', '2018-08-21 22:51:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-21 22:51:43', '2018-08-21 22:51:43', '', 2, 'http://localhost:8080/2018/08/21/2-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-08-21 23:29:03', '2018-08-21 23:29:03', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-08-21 23:29:03', '2018-08-21 23:29:03', '', 7, 'http://localhost:8080/2018/08/21/7-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-08-21 23:43:18', '2018-08-21 23:43:18', '', 'frutas-750x500', '', 'inherit', 'open', 'closed', '', 'frutas-750x500', '', '', '2018-08-21 23:43:18', '2018-08-21 23:43:18', '', 1, 'http://localhost:8080/wp-content/uploads/2018/08/frutas-750x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-08-21 23:45:25', '2018-08-21 23:45:25', '<h2>Esta es tu primera entrada. La rellenaré con lo que mejor sabemos jajaja ...</h2>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident dolorum, dolorem repellat architecto nesciunt alias laborum optio voluptatibus enim ullam accusamus sint consequatur rerum commodi beatae facilis vitae! Architecto, nisi?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Iste maxime modi quas alias eum voluptatibus ducimus natus nam, earum quisquam quidem facilis, illum quis non. Rerum beatae eveniet obcaecati?\r\n\r\n<img class=\"aligncenter size-medium wp-image-36\" src=\"http://localhost:8080/wp-content/uploads/2018/08/frutas-750x500-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />', 'Primera entrada', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-21 23:45:25', '2018-08-21 23:45:25', '', 1, 'http://localhost:8080/2018/08/21/1-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-08-30 22:34:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-30 22:34:15', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/?p=38', 0, 'post', '', 0),
(39, 1, '2018-08-30 22:50:09', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-30 22:50:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/?p=39', 0, 'post', '', 0),
(40, 1, '2018-08-30 23:26:07', '2018-08-30 23:26:07', '', 'blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-08-30 23:26:07', '2018-08-30 23:26:07', '', 7, 'http://localhost:8080/7-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-08-30 23:27:08', '2018-08-30 23:27:08', 'funciona   la pagina', 'blog', '', 'trash', 'closed', 'closed', '', 'blog__trashed-2', '', '', '2018-08-31 11:43:11', '2018-08-31 11:43:11', '', 0, 'http://localhost:8080/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-08-30 23:27:08', '2018-08-30 23:27:08', 'funciona', 'blog', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-08-30 23:27:08', '2018-08-30 23:27:08', '', 41, 'http://localhost:8080/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-08-30 23:46:51', '2018-08-30 23:46:51', 'funciona   la pagina', 'blog', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-08-30 23:46:51', '2018-08-30 23:46:51', '', 41, 'http://localhost:8080/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-08-31 11:44:10', '2018-08-31 11:44:10', '', 'blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-08-31 13:31:34', '2018-08-31 13:31:34', '', 0, 'http://localhost:8080/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-08-31 11:44:10', '2018-08-31 11:44:10', 'funciona el blog', 'blog', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-08-31 11:44:10', '2018-08-31 11:44:10', '', 44, 'http://localhost:8080/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-08-31 13:31:34', '2018-08-31 13:31:34', '', 'blog', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-08-31 13:31:34', '2018-08-31 13:31:34', '', 44, 'http://localhost:8080/44-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dl_termmeta`
--

CREATE TABLE `dl_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dl_terms`
--

CREATE TABLE `dl_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_terms`
--

INSERT INTO `dl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Mis posts', 'mis-posts', 0),
(3, 'mi primer post', 'mi-primer-post', 0),
(4, 'mi primer post', 'mi-primer-post', 0),
(5, 'mi segundo post', 'mi-segundo-post', 0),
(6, 'Mi tercer post', 'mi-tercer-post', 0),
(7, 'Mi cuarta entrada', 'mi-cuarta-entrada', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dl_term_relationships`
--

CREATE TABLE `dl_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_term_relationships`
--

INSERT INTO `dl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(1, 4, 0),
(15, 2, 0),
(15, 5, 0),
(17, 2, 0),
(17, 6, 0),
(20, 2, 0),
(20, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dl_term_taxonomy`
--

CREATE TABLE `dl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_term_taxonomy`
--

INSERT INTO `dl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 0),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dl_usermeta`
--

CREATE TABLE `dl_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_usermeta`
--

INSERT INTO `dl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'imunozq'),
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
(12, 1, 'dl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'dl_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"cbaad3ba823a7b53b7122a448567f41f85b4200c2e5e850bcc80d336da34288d\";a:4:{s:10:\"expiration\";i:1535841252;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535668452;}}'),
(17, 1, 'dl_user-settings', 'libraryContent=browse&imgsize=medium&align=center&advImgDetails=show&editor=tinymce'),
(18, 1, 'dl_user-settings-time', '1534287457'),
(19, 1, 'dl_dashboard_quick_press_last_post_id', '38'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `dl_users`
--

CREATE TABLE `dl_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dl_users`
--

INSERT INTO `dl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'imunozq', '$P$B1NKf57rVNGl1/QQ1.yDO4M/T.6hEq/', 'imunozq', 'ishamu023@gmail.com', '', '2018-08-14 22:56:32', '', 0, 'imunozq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dl_commentmeta`
--
ALTER TABLE `dl_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dl_comments`
--
ALTER TABLE `dl_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `dl_duplicator_packages`
--
ALTER TABLE `dl_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `dl_links`
--
ALTER TABLE `dl_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `dl_options`
--
ALTER TABLE `dl_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `dl_postmeta`
--
ALTER TABLE `dl_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dl_posts`
--
ALTER TABLE `dl_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `dl_termmeta`
--
ALTER TABLE `dl_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dl_terms`
--
ALTER TABLE `dl_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `dl_term_relationships`
--
ALTER TABLE `dl_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `dl_term_taxonomy`
--
ALTER TABLE `dl_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `dl_usermeta`
--
ALTER TABLE `dl_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `dl_users`
--
ALTER TABLE `dl_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dl_commentmeta`
--
ALTER TABLE `dl_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_comments`
--
ALTER TABLE `dl_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dl_duplicator_packages`
--
ALTER TABLE `dl_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dl_links`
--
ALTER TABLE `dl_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_options`
--
ALTER TABLE `dl_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;
--
-- AUTO_INCREMENT for table `dl_postmeta`
--
ALTER TABLE `dl_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `dl_posts`
--
ALTER TABLE `dl_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `dl_termmeta`
--
ALTER TABLE `dl_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dl_terms`
--
ALTER TABLE `dl_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dl_term_taxonomy`
--
ALTER TABLE `dl_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dl_usermeta`
--
ALTER TABLE `dl_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `dl_users`
--
ALTER TABLE `dl_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
