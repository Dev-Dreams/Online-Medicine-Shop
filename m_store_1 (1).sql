-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 07:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m_store_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add category', 6, 'add_category'),
(22, 'Can change category', 6, 'change_category'),
(23, 'Can delete category', 6, 'delete_category'),
(24, 'Can view category', 6, 'view_category'),
(25, 'Can add sub_ category', 7, 'add_sub_category'),
(26, 'Can change sub_ category', 7, 'change_sub_category'),
(27, 'Can delete sub_ category', 7, 'delete_sub_category'),
(28, 'Can view sub_ category', 7, 'view_sub_category'),
(29, 'Can add user', 8, 'add_customuser'),
(30, 'Can change user', 8, 'change_customuser'),
(31, 'Can delete user', 8, 'delete_customuser'),
(32, 'Can view user', 8, 'view_customuser'),
(33, 'Can add products', 9, 'add_products'),
(34, 'Can change products', 9, 'change_products'),
(35, 'Can delete products', 9, 'delete_products'),
(36, 'Can view products', 9, 'view_products'),
(37, 'Can add product', 10, 'add_product'),
(38, 'Can change product', 10, 'change_product'),
(39, 'Can delete product', 10, 'delete_product'),
(40, 'Can view product', 10, 'view_product'),
(41, 'Can add cart item', 11, 'add_cartitem'),
(42, 'Can change cart item', 11, 'change_cartitem'),
(43, 'Can delete cart item', 11, 'delete_cartitem'),
(44, 'Can view cart item', 11, 'view_cartitem'),
(45, 'Can add s_ product', 12, 'add_s_product'),
(46, 'Can change s_ product', 12, 'change_s_product'),
(47, 'Can delete s_ product', 12, 'delete_s_product'),
(48, 'Can view s_ product', 12, 'view_s_product'),
(49, 'Can add contact', 13, 'add_contact'),
(50, 'Can change contact', 13, 'change_contact'),
(51, 'Can delete contact', 13, 'delete_contact'),
(52, 'Can view contact', 13, 'view_contact'),
(53, 'Can add order', 14, 'add_order'),
(54, 'Can change order', 14, 'change_order'),
(55, 'Can delete order', 14, 'delete_order'),
(56, 'Can view order', 14, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-08-26 12:28:06.229969', '1', 'Category-1', 1, '[{\"added\": {}}]', 6, 1),
(2, '2024-08-26 12:28:15.744469', '2', 'Category-2', 1, '[{\"added\": {}}]', 6, 1),
(3, '2024-08-26 12:34:50.532898', '1', 'Absolut Gold Capsule', 1, '[{\"added\": {}}]', 10, 1),
(4, '2024-08-27 13:17:22.763107', '2', 'Category-2', 3, '', 6, 1),
(5, '2024-08-27 13:17:22.773041', '1', 'Category-1', 3, '', 6, 1),
(6, '2024-08-27 13:18:04.937588', '3', 'Vitamin C', 1, '[{\"added\": {}}]', 6, 1),
(7, '2024-08-27 13:25:13.654104', '2', 'Fast&Up Charge with Natural Vitamin C from Amla & Zinc', 1, '[{\"added\": {}}]', 10, 1),
(8, '2024-08-27 13:28:09.470829', '3', 'Absolut Gold Capsule', 1, '[{\"added\": {}}]', 10, 1),
(9, '2024-08-27 16:12:23.706522', '4', 'Vitamin A', 1, '[{\"added\": {}}]', 6, 1),
(10, '2024-08-27 16:14:43.477249', '4', 'Tata 1mg Super Antioxidant Multiminerals with Betacarotene, Zinc Sulphate & Selenium', 1, '[{\"added\": {}}]', 10, 1),
(11, '2024-08-27 16:16:06.573279', '5', 'My12 Plus Tablet', 1, '[{\"added\": {}}]', 10, 1),
(12, '2024-08-27 16:19:42.985667', '5', 'Antioxidant Supplements', 1, '[{\"added\": {}}]', 6, 1),
(13, '2024-08-27 16:21:23.843364', '6', 'Carbamide Forte Chelated Iron with Folic Acid, Zinc, Vitamin C & B12 for Blood Building & Energy', 1, '[{\"added\": {}}]', 10, 1),
(14, '2024-08-27 16:22:58.711690', '7', 'CoQ 10', 1, '[{\"added\": {}}]', 10, 1),
(15, '2024-08-27 17:15:04.888332', '8', 'Super Antioxidant', 1, '[{\"added\": {}}]', 10, 1),
(16, '2024-08-27 17:15:27.782362', '4', 'Tata 1mg Super Antioxidant Multiminerals with Betacarotene, Zinc Sulphate & Selenium', 3, '', 10, 1),
(17, '2024-08-27 17:17:00.508737', '9', 'Chelated Iron', 1, '[{\"added\": {}}]', 10, 1),
(18, '2024-08-27 17:17:14.417634', '6', 'Carbamide Forte Chelated Iron with Folic Acid, Zinc, Vitamin C & B12 for Blood Building & Energy', 3, '', 10, 1),
(19, '2024-08-27 17:18:18.226507', '10', 'Fast&Up', 1, '[{\"added\": {}}]', 10, 1),
(20, '2024-08-27 17:18:35.597577', '2', 'Fast&Up Charge with Natural Vitamin C from Amla & Zinc', 3, '', 10, 1),
(21, '2024-08-27 17:21:41.589826', '6', 'Acidity', 1, '[{\"added\": {}}]', 6, 1),
(22, '2024-08-27 17:22:52.494642', '11', 'Gaviscon', 1, '[{\"added\": {}}]', 10, 1),
(23, '2024-08-27 17:26:39.253967', '12', 'Gelusil', 1, '[{\"added\": {}}]', 10, 1),
(24, '2024-08-27 18:08:29.455417', '1', 'Gelusil', 1, '[{\"added\": {}}]', 12, 1),
(25, '2024-08-27 18:09:31.662651', '2', 'Fast&Up', 1, '[{\"added\": {}}]', 12, 1),
(26, '2024-08-27 18:10:55.555367', '3', 'Super Antioxidant', 1, '[{\"added\": {}}]', 12, 1),
(27, '2024-08-27 18:12:09.536451', '4', 'Chelated Iron', 1, '[{\"added\": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(11, 'index', 'cartitem'),
(6, 'index', 'category'),
(13, 'index', 'contact'),
(8, 'index', 'customuser'),
(14, 'index', 'order'),
(10, 'index', 'product'),
(9, 'index', 'products'),
(7, 'index', 'sub_category'),
(12, 'index', 's_product'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-08-26 11:03:48.037401'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-08-26 11:03:48.078955'),
(3, 'auth', '0001_initial', '2024-08-26 11:03:48.254168'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-08-26 11:03:48.292111'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-08-26 11:03:48.292111'),
(6, 'auth', '0004_alter_user_username_opts', '2024-08-26 11:03:48.301125'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-08-26 11:03:48.309299'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-08-26 11:03:48.310839'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-08-26 11:03:48.313360'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-08-26 11:03:48.317461'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-08-26 11:03:48.324500'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-08-26 11:03:48.332741'),
(13, 'auth', '0011_update_proxy_permissions', '2024-08-26 11:03:48.336152'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-08-26 11:03:48.340693'),
(15, 'index', '0001_initial', '2024-08-26 11:03:48.570797'),
(16, 'admin', '0001_initial', '2024-08-26 11:03:48.658513'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-08-26 11:03:48.664022'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-26 11:03:48.670417'),
(19, 'sessions', '0001_initial', '2024-08-26 11:03:48.696268'),
(20, 'index', '0002_products', '2024-08-26 11:23:18.312197'),
(21, 'index', '0003_cartitem_product_remove_sub_category_category_and_more', '2024-08-26 12:26:32.522584'),
(22, 'index', '0004_s_product', '2024-08-27 18:06:04.136003'),
(23, 'index', '0005_contact', '2024-09-02 09:04:08.863358'),
(24, 'index', '0006_rename_product_cartitem_product_order', '2024-09-03 17:27:25.745015');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9lcrcliyojhmkn6g10wcj33qpfixc9la', '.eJxVjEEOwiAQRe_C2pAyzhRw6b5nIFMYpGpoUtqV8e7apAvd_vfef6nA21rC1mQJU1IXZdTpdxs5PqTuIN253mYd57ou06h3RR-06WFO8rwe7t9B4Va-9ZmJjAUHYFPEiFkkk2foBC1E23fkDFL2np1IgswAgoLgTGLTA6n3B9ILN3Y:1siXrN:EaeSfUNpECB4H1LNaCgrnCQqIMEuzVNaAnk24xDc1VY', '2024-09-09 11:26:09.261787'),
('blhatg9z4rkkm5fr3ln9awljzh8h5413', '.eJxVjEEOwiAQRe_C2pAyzhRw6b5nIFMYpGpoUtqV8e7apAvd_vfef6nA21rC1mQJU1IXZdTpdxs5PqTuIN253mYd57ou06h3RR-06WFO8rwe7t9B4Va-9ZmJjAUHYFPEiFkkk2foBC1E23fkDFL2np1IgswAgoLgTGLTA6n3B9ILN3Y:1siqVm:efnRRcKQnd4k0e8QpEZP-gFXZlHKpajsA7j_-KQparQ', '2024-09-10 07:21:06.998696'),
('ce7qegskfrs76n9prlv1alaqbuxq75ij', '.eJxVjEEOwiAQRe_C2hCGSgdduvcMzcAMUjWQlHZlvLuSdKG7n_9e3ktNtK152pos08zqrKw6_H6B4kNKB3yncqs61rIuc9Bd0Ttt-lpZnpfd_Qtkarln0Y0RHafT0VljBh_8dyWTDCEjyoAQSEawkQTQoxUDDA5ACIwAqPcHwGo2_w:1skmlQ:YqgKcOq2BDjZbaE-HtkKEHBjQxoSZO-GpQ79X2uOb6U', '2024-09-15 15:45:16.299926'),
('gziaxbr67ypkzrphmehs5mgxz0s0pbbu', '.eJxVjEEOwiAQRe_C2hCGSgdduvcMzcAMUjWQlHZlvLuSdKG7n_9e3ktNtK152pos08zqrKw6_H6B4kNKB3yncqs61rIuc9Bd0Ttt-lpZnpfd_Qtkarln0Y0RHafT0VljBh_8dyWTDCEjyoAQSEawkQTQoxUDDA5ACIwAqPcHwGo2_w:1slX74:A0s0ez-6rzzpGbFBAQzn2wPUTwbJCpiYofH1wY4MSig', '2024-09-17 17:14:42.730212'),
('hmogpjrx7y55o55ue968s3l8g3jrykoi', '.eJxVjEEOwiAQRe_C2pAyzhRw6b5nIFMYpGpoUtqV8e7apAvd_vfef6nA21rC1mQJU1IXZdTpdxs5PqTuIN253mYd57ou06h3RR-06WFO8rwe7t9B4Va-9ZmJjAUHYFPEiFkkk2foBC1E23fkDFL2np1IgswAgoLgTGLTA6n3B9ILN3Y:1skhOq:y6HphIbMsYgAgnWBjxS7MicE-AjkkLMjIbNmiytoGOU', '2024-09-15 10:01:36.580976'),
('k8f6kefcs0pq3akeetjj6wn9tc4apoff', '.eJxVjEEOwiAQRe_C2hCGSgdduvcMzcAMUjWQlHZlvLuSdKG7n_9e3ktNtK152pos08zqrKw6_H6B4kNKB3yncqs61rIuc9Bd0Ttt-lpZnpfd_Qtkarln0Y0RHafT0VljBh_8dyWTDCEjyoAQSEawkQTQoxUDDA5ACIwAqPcHwGo2_w:1slWmF:o_1GaaHIooofFLfveVzY7EHi53U71GLpZ1jSULPQCGk', '2024-09-17 16:53:11.249147'),
('n454vhtrctudfu4gexul5gg5akfufiyo', '.eJxVjEEOwiAQRe_C2pAyzhRw6b5nIFMYpGpoUtqV8e7apAvd_vfef6nA21rC1mQJU1IXZdTpdxs5PqTuIN253mYd57ou06h3RR-06WFO8rwe7t9B4Va-9ZmJjAUHYFPEiFkkk2foBC1E23fkDFL2np1IgswAgoLgTGLTA6n3B9ILN3Y:1slXf9:NzNtAlXIRzKLJn_Q7RQDSfF2u9uXwiaka3_ZqCw1UUg', '2024-09-17 17:49:55.426625'),
('qnch9f3lv2fngsg8okvffswfdqvm30qp', '.eJxVjEEOwiAQRe_C2pAyzhRw6b5nIFMYpGpoUtqV8e7apAvd_vfef6nA21rC1mQJU1IXZdTpdxs5PqTuIN253mYd57ou06h3RR-06WFO8rwe7t9B4Va-9ZmJjAUHYFPEiFkkk2foBC1E23fkDFL2np1IgswAgoLgTGLTA6n3B9ILN3Y:1slOx8:4Ws8fFRyNF4iHnjDX83FcVKIRvM6cC5zsJSvGlWIYPI', '2024-09-17 08:31:54.283873');

-- --------------------------------------------------------

--
-- Table structure for table `index_cartitem`
--

CREATE TABLE `index_cartitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `date_added` datetime(6) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `index_category`
--

CREATE TABLE `index_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `index_category`
--

INSERT INTO `index_category` (`cat_id`, `cat_name`) VALUES
(3, 'Vitamin C'),
(4, 'Vitamin A'),
(5, 'Antioxidant Supplements'),
(6, 'Acidity');

-- --------------------------------------------------------

--
-- Table structure for table `index_contact`
--

CREATE TABLE `index_contact` (
  `id` bigint(20) NOT NULL,
  `first_Name` varchar(250) NOT NULL,
  `last_Name` varchar(250) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `index_customuser`
--

CREATE TABLE `index_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `mobile` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `index_customuser`
--

INSERT INTO `index_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `mobile`) VALUES
(1, 'pbkdf2_sha256$600000$FFDgIEGTytu2jxyL7BJapx$TlEAryZwrraYE2/lNgqyHFXvRU3SwT0rSFhHPlV7rp0=', '2024-09-03 17:49:55.418630', 1, 'admin', '', '', 'debjeet450@gmail.com', 1, 1, '2024-08-26 11:25:19.988438', ''),
(2, 'pbkdf2_sha256$600000$ep50h6jIICmXOSQ9eN8SQt$jbit+MpIbEGDcItU2l3uMhprWKoV0Zuy/vMLLvauPNQ=', '2024-09-03 17:28:31.894963', 0, 'Debjeet', 'Debjeet', 'Paul', 'debjeet450@gmail.com', 0, 1, '2024-09-01 09:39:54.516634', '');

-- --------------------------------------------------------

--
-- Table structure for table `index_customuser_groups`
--

CREATE TABLE `index_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `index_customuser_user_permissions`
--

CREATE TABLE `index_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `index_order`
--

CREATE TABLE `index_order` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `date_ordered` datetime(6) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `index_order`
--

INSERT INTO `index_order` (`id`, `quantity`, `date_ordered`, `payment_status`, `payment_id`, `address`, `product_id`, `user_id`) VALUES
(1, 2, '2024-09-03 17:28:42.622724', 'success', '', 'hmbm', 5, 2),
(2, 2, '2024-09-03 17:28:42.628400', 'success', '', 'hmbm', 8, 2),
(3, 1, '2024-09-03 17:47:25.168535', 'success', '', 'zdvzsvzv', 7, 2),
(4, 1, '2024-09-03 17:47:25.173352', 'success', '', 'zdvzsvzv', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `index_product`
--

CREATE TABLE `index_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(150) NOT NULL,
  `p_description` longtext DEFAULT NULL,
  `p_price` decimal(10,2) NOT NULL,
  `p_image` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `index_product`
--

INSERT INTO `index_product` (`p_id`, `p_name`, `p_description`, `p_price`, `p_image`, `category_id`) VALUES
(3, 'Absolut Gold Capsule', 'The combination of multivitamin and multimineral is enriched with essential building blocks of the body that are usually prescribed to lower the prevalence of inadequate nutrient intake and improve conditions associated with nutritional deficiencies. It may also provide antioxidant effects that protect the cells from the damaging effects of free radicals. Absolut Gold Capsule is used as a nutraceutical to replenish nutritional deficiencies, lower the risk of different disease conditions and support overall health.', 185.00, 'products/Absolut_Gold_Capsule_AF5xKaY.png', 3),
(5, 'My12 Plus Tablet', 'It is a combination of multiple nutritional supplements. It is taken to manage conditions caused by nutritional deficiencies such as vitamins, minerals, and other nutrients in the body.', 50.00, 'products/u6zefrxyjcuwneqsyvg3.webp', 4),
(7, 'CoQ 10', 'CoQ10 (coenzyme 10) capsules for heart health are formulated to support heart health and to promote healthy cellular functions. It contains 200mg of coenzyme Q10 (ubiquinone) which can help reduce the risk of cardiovascular disease. Coenzyme Q10 (CoQ 10) also acts as an antioxidant, which protects cells from damage and plays an important part in metabolism. It is non-GMO as well as gluten-free. CoQ10 is a naturally occurring nutrient in the body that is responsible for healthy cellular function. Certain conditions such as heart disease, high cholesterol levels, and age can decrease the CoQ10 level. CoQ10 supplements are used to maintain a healthy level of coenzyme in the body which helps support healthy cellular function and maintain a healthy heart.', 615.00, 'products/30215e190c7c4cb5a9474b29442f6427.webp', 5),
(8, 'Super Antioxidant', '1mg Super Antioxidant Multiminerals with Betacarotene Capsule contains highly potent ingredients such as betacarotene, zinc sulphate and selenium that supports nutritional needs. It may be useful in supporting prostate health, strengthening the immune system and promoting skin health. Moreover, the formulation is scientifically formulated, gluten-free and non-GMO.', 175.00, 'products/535a441968f943a6b4c2a62930300b95_94Fjn5u.webp', 4),
(9, 'Chelated Iron', 'Carbamide Forte Chelated Iron + Vitamin C + Folic Acid + Vit B12 + Zinc Vegetarian Tablet ensures optimal iron levels critical for energy and cognitive function, a strong immune system, reproductive health, and red blood cell formation. It is clinically proven to be highly absorbable. Our iron supplements for women and men contain iron: ferrous bisglycinate coupled with vitamin C, zinc, B12, plus folic acid. These ingredients help red blood cell formation and ensure faster-acting results. This natural iron chelate (ferrous glycinate) has been specifically formulated to reduce the incidence of stomach upsets and diarrhoea. Vitamin C aids in the absorption of iron in the body. It contains the RDA value of iron, vitamin C, zinc, B12, and folic acid.', 349.00, 'products/0d3c2dbc232645559a7de0e28eecf29b_5B8ljxL.webp', 5),
(10, 'Fast&Up', 'Fast&Up Charge Natural Vitamin C & Zinc Effervescent Tablet is a health supplement which delivers immunity-boosting ingredients like amla extract and zinc. These support a healthy immune response and increase resistance to immune challenges. Vitamin C and zinc are essential nutrients and play a vital role in the optimal functioning of the immune system.', 638.00, 'products/afa943fb0d15468cb048137e4640c9ed_Dx6fS2l.webp', 3),
(11, 'Gaviscon', 'Gaviscon Oral Suspension / For Heartburn, Indigestion & Stomach Care / Peppermint Flavour is used to manage acidity and indigestion. It provides quick and lasting relief from pain and discomfort caused due to heartburn and gas troubles such as bloating and belching. It also helps to improve the symptoms of acidity such as abdominal pain and stomach discomfort. It is known to work by neutralizing stomach acid in the body.', 157.00, 'products/h3jfihbixcxgl4lq3jg8.webp', 6),
(12, 'Gelusil', 'Gelusil MPS Antacid & Antigas Original Liquid | For Acidity, Hurtburns, Gas & Stomach Care | Sugar-Free | Mint Flavour is a therapeutic digestive medication containing a balanced mix of ingredients that are widely used as an antacid, providing quick relief from acidity, heartburn and gas.', 215.00, 'products/xz9widg7enybeqeqlvf3.webp', 6);

-- --------------------------------------------------------

--
-- Table structure for table `index_s_product`
--

CREATE TABLE `index_s_product` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(150) NOT NULL,
  `s_description` longtext DEFAULT NULL,
  `s_price` decimal(10,2) NOT NULL,
  `s_image` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `index_s_product`
--

INSERT INTO `index_s_product` (`s_id`, `s_name`, `s_description`, `s_price`, `s_image`, `category_id`) VALUES
(1, 'Gelusil', 'Gelusil MPS Antacid & Antigas Original Liquid | For Acidity, Hurtburns, Gas & Stomach Care | Sugar-Free | Mint Flavour is a therapeutic digestive medication containing a balanced mix of ingredients that are widely used as an antacid, providing quick relief from acidity, heartburn and gas.', 215.00, 'popular_products/xz9widg7enybeqeqlvf3.webp', 6),
(2, 'Fast&Up', 'Fast&Up Charge Natural Vitamin C & Zinc Effervescent Tablet is a health supplement which delivers immunity-boosting ingredients like amla extract and zinc. These support a healthy immune response and increase resistance to immune challenges. Vitamin C and zinc are essential nutrients and play a vital role in the optimal functioning of the immune system.', 638.00, 'popular_products/afa943fb0d15468cb048137e4640c9ed.webp', 3),
(3, 'Super Antioxidant', '1mg Super Antioxidant Multiminerals with Betacarotene Capsule contains highly potent ingredients such as betacarotene, zinc sulphate and selenium that supports nutritional needs. It may be useful in supporting prostate health, strengthening the immune system and promoting skin health. Moreover, the formulation is scientifically formulated, gluten-free and non-GMO.', 175.00, 'popular_products/535a441968f943a6b4c2a62930300b95.webp', 4),
(4, 'Chelated Iron', 'Carbamide Forte Chelated Iron + Vitamin C + Folic Acid + Vit B12 + Zinc Vegetarian Tablet ensures optimal iron levels critical for energy and cognitive function, a strong immune system, reproductive health, and red blood cell formation. It is clinically proven to be highly absorbable. Our iron supplements for women and men contain iron: ferrous bisglycinate coupled with vitamin C, zinc, B12, plus folic acid. These ingredients help red blood cell formation and ensure faster-acting results. This natural iron chelate (ferrous glycinate) has been specifically formulated to reduce the incidence of stomach upsets and diarrhoea. Vitamin C aids in the absorption of iron in the body. It contains the RDA value of iron, vitamin C, zinc, B12, and folic acid.', 349.00, 'popular_products/0d3c2dbc232645559a7de0e28eecf29b.webp', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_index_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `index_cartitem`
--
ALTER TABLE `index_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_cartitem_product_id_df6a8aa4_fk_index_product_p_id` (`Product_id`),
  ADD KEY `index_cartitem_user_id_9bb78044_fk_index_customuser_id` (`user_id`);

--
-- Indexes for table `index_category`
--
ALTER TABLE `index_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `index_contact`
--
ALTER TABLE `index_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_customuser`
--
ALTER TABLE `index_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `index_customuser_groups`
--
ALTER TABLE `index_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_customuser_groups_customuser_id_group_id_d6a8091f_uniq` (`customuser_id`,`group_id`),
  ADD KEY `index_customuser_groups_group_id_35110dc1_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `index_customuser_user_permissions`
--
ALTER TABLE `index_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_customuser_user_pe_customuser_id_permission_cb384b2d_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `index_customuser_use_permission_id_3ea72853_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `index_order`
--
ALTER TABLE `index_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_order_product_id_d2291a25_fk_index_product_p_id` (`product_id`),
  ADD KEY `index_order_user_id_82fd391d_fk_index_customuser_id` (`user_id`);

--
-- Indexes for table `index_product`
--
ALTER TABLE `index_product`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `index_product_category_id_18523109_fk_index_category_cat_id` (`category_id`);

--
-- Indexes for table `index_s_product`
--
ALTER TABLE `index_s_product`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `index_s_product_category_id_bf954a73_fk_index_category_cat_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `index_cartitem`
--
ALTER TABLE `index_cartitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `index_category`
--
ALTER TABLE `index_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `index_contact`
--
ALTER TABLE `index_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `index_customuser`
--
ALTER TABLE `index_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `index_customuser_groups`
--
ALTER TABLE `index_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `index_customuser_user_permissions`
--
ALTER TABLE `index_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `index_order`
--
ALTER TABLE `index_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `index_product`
--
ALTER TABLE `index_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `index_s_product`
--
ALTER TABLE `index_s_product`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_index_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `index_customuser` (`id`);

--
-- Constraints for table `index_cartitem`
--
ALTER TABLE `index_cartitem`
  ADD CONSTRAINT `index_cartitem_Product_id_472ccdf8_fk_index_product_p_id` FOREIGN KEY (`Product_id`) REFERENCES `index_product` (`p_id`),
  ADD CONSTRAINT `index_cartitem_user_id_9bb78044_fk_index_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `index_customuser` (`id`);

--
-- Constraints for table `index_customuser_groups`
--
ALTER TABLE `index_customuser_groups`
  ADD CONSTRAINT `index_customuser_gro_customuser_id_ce9ebc63_fk_index_cus` FOREIGN KEY (`customuser_id`) REFERENCES `index_customuser` (`id`),
  ADD CONSTRAINT `index_customuser_groups_group_id_35110dc1_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `index_customuser_user_permissions`
--
ALTER TABLE `index_customuser_user_permissions`
  ADD CONSTRAINT `index_customuser_use_customuser_id_270e936e_fk_index_cus` FOREIGN KEY (`customuser_id`) REFERENCES `index_customuser` (`id`),
  ADD CONSTRAINT `index_customuser_use_permission_id_3ea72853_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `index_order`
--
ALTER TABLE `index_order`
  ADD CONSTRAINT `index_order_product_id_d2291a25_fk_index_product_p_id` FOREIGN KEY (`product_id`) REFERENCES `index_product` (`p_id`),
  ADD CONSTRAINT `index_order_user_id_82fd391d_fk_index_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `index_customuser` (`id`);

--
-- Constraints for table `index_product`
--
ALTER TABLE `index_product`
  ADD CONSTRAINT `index_product_category_id_18523109_fk_index_category_cat_id` FOREIGN KEY (`category_id`) REFERENCES `index_category` (`cat_id`);

--
-- Constraints for table `index_s_product`
--
ALTER TABLE `index_s_product`
  ADD CONSTRAINT `index_s_product_category_id_bf954a73_fk_index_category_cat_id` FOREIGN KEY (`category_id`) REFERENCES `index_category` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
