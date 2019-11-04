-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2019 lúc 07:49 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web88`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phone`, `level`, `status`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin@gmail.com', '$2y$12$2yswUYIHRzYyB38a8xXL5efirAI0xTO06icdVQyHn5ITkVlv5Wi9m', '1962123325', 1, 1, NULL, NULL),
(5, 'admin25', 'admin123@gmail.com', '$2y$10$lF7W9LjL7XfDQB448Ce.Le/slnHGF84UQco90RpWQsYk6daPRYn96', '0388846413', 1, 0, NULL, NULL),
(6, 'linh Linh', 'adminlevel2@gmail.com', '$2y$10$bzzflF6VcBqcLyr3LcEieOLeV6k2wK/bZLxdZATTJWaS6dAxCDjCS', '01234567891', 2, 1, '2019-10-30 09:11:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `footer_hot` tinyint(4) NOT NULL DEFAULT '0',
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `slug`, `image`, `summary`, `detail`, `active`, `view`, `footer_hot`, `cate_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'SEO Website', 'seo-website', 'mVgH_image_cskh.jpg', '<p>Dịch vụ tạo website chất lượng tốt, <em>SEO website</em>&nbsp;b&aacute;n h&agrave;ng ch&iacute;nh l&agrave; giải ph&aacute;p gi&uacute;p website của bạn dễ d&agrave;ng đến được với kh&aacute;ch h&agrave;ng m&ocirc;t c&aacute;ch hiệu quả nhất.</p>', '<p>B&agrave;i viết&nbsp;Dịch vụ tạo website chất lượng tốt tại Web88.com.&nbsp;<em>SEO website</em>&nbsp;b&aacute;n h&agrave;ng ch&iacute;nh l&agrave; giải ph&aacute;p gi&uacute;p website của bạn dễ d&agrave;ng đến được với kh&aacute;ch h&agrave;ng m&ocirc;t c&aacute;ch hiệu quả nhất.</p>', 1, 0, 1, 1, 5, '2019-11-01 08:35:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogs_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `searchs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_blogs`
--

CREATE TABLE `cate_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_blogs`
--

INSERT INTO `cate_blogs` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Seo', 1, '2019-09-12 01:52:07', NULL),
(2, 'Thiết kế website', 1, '2019-09-12 01:52:19', NULL),
(3, 'Content', 1, '2019-10-31 10:27:37', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_web`
--

CREATE TABLE `cate_web` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_web`
--

INSERT INTO `cate_web` (`id`, `name`, `active`, `slug`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Mẫu Website Thương Mại Điện Tử', 1, 'mau-website-thuong-mai-dien-tu', 'cart.png', '2019-10-17 10:17:19', NULL),
(2, 'Mẫu Website Giới Thiệu Công Ty', 1, 'mau-website-gioi-thieu-cong-ty', 'intro-web.png', '2019-10-17 08:12:30', NULL),
(3, 'Mẫu Website Tin Tức', 1, 'mau-website-tin-tuc', 'news.png', '2019-10-17 10:17:36', NULL),
(4, 'Mẫu Website Âm Nhạc', 1, 'mau-website-am-nhac', 'music.png', '2019-10-17 10:17:57', NULL),
(5, 'Mẫu Website Ảnh Viện Áo Cưới', 1, 'mau-website-anh-vien-ao-cuoi', 'wbnw_icon_heart.png', '2019-10-17 10:18:19', NULL),
(6, 'Mẫu Website Bất Động Sản', 1, 'mau-website-bat-dong-san', 'yyDt_icon_real-estate.png', '2019-10-17 08:11:35', NULL),
(7, 'Mẫu Website Giáo Dục', 1, 'mau-website-giao-duc', 'education.png', '2019-10-17 08:12:07', NULL),
(8, 'Mẫu Website Cá Nhân', 1, 'mau-website-ca-nhan', '6IlC_icon_personal.png', '2019-10-17 08:11:52', NULL),
(9, 'Website Bán Hàng', 1, 'website-ban-hang', 'nXys_icon_Sale.png', '2019-10-14 04:42:29', NULL),
(10, 'Mẫu Website Nhà Hàng Khách Sạn', 1, 'mau-website-nha-hang-khach-san', 'xpIU_image_iconrestaurant1.png', '2019-10-17 08:09:53', NULL),
(11, 'Mẫu Website Du Lịch', 1, 'mau-website-du-lich', 'yPLE_image_icontravel.png', '2019-10-17 08:10:21', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masothue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `title`, `masothue`, `address`, `phone`, `email`, `website`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Công ty Công Nghệ & Dịch Vụ Talent Wins', '0108134425', 'CT2 Constrexim Thái Hà, 43 Phạm Văn Đồng, Bắc Từ Liêm, Hà Nội', '0927151535', 'contact@talentwins.co', 'Web88.vn', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_06_044041_warehouse_web_controller', 1),
(4, '2019_08_16_073840_create_images_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `other_service`
--

CREATE TABLE `other_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_hot` tinyint(4) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `other_service`
--

INSERT INTO `other_service` (`id`, `name`, `slug`, `title`, `description`, `image`, `summary`, `content`, `footer_hot`, `view`, `active`, `created_at`, `updated_at`) VALUES
(11, 'THIẾT KẾ WEBSITE DOANH NGHIỆP', 'thiet-ke-website-doanh-nghiep', 'THIẾT KẾ WEBSITE DOANH NGHIỆP', 'THIẾT KẾ WEBSITE DOANH NGHIỆP', 'eJdS_image_thietkeweb-halong-quangninh.jpg', '<p><span style=\"color:#27ae60\">► <span style=\"font-size:14px\">Thiết kế website doanh nghiệp giới thiệu c&ocirc;ng ty chuy&ecirc;n nghiệp</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">Thiết kế website doanh nghiệp mang lại lợi &iacute;ch g&igrave;?</span></span>\r\n\r\n	<ul>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">1. X&acirc;y dựng v&agrave; nhận diện thương hiệu c&ocirc;ng ty tr&ecirc;n Internet</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">2. Thể hiện sự chuy&ecirc;n nghiệp của c&ocirc;ng ty</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">3. Website doanh nghiệp gi&uacute;p tiết kiệm chi ph&iacute;</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">4. Tương t&aacute;c, chăm s&oacute;c kh&aacute;ch h&agrave;ng 24/7</span></span></li>\r\n	</ul>\r\n	</li>\r\n	<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">G&oacute;i thiết kế kế website doanh nghiệp của&nbsp;ch&uacute;ng t&ocirc;i c&oacute; g&igrave; kh&aacute;c biệt</span></span></li>\r\n</ul>', '<p><span style=\"color:#27ae60\">► <span style=\"font-size:14px\">Thiết kế website doanh nghiệp giới thiệu c&ocirc;ng ty chuy&ecirc;n nghiệp</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">Thiết kế website doanh nghiệp mang lại lợi &iacute;ch g&igrave;?</span></span>\r\n\r\n	<ul>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">1. X&acirc;y dựng v&agrave; nhận diện thương hiệu c&ocirc;ng ty tr&ecirc;n Internet</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">2. Thể hiện sự chuy&ecirc;n nghiệp của c&ocirc;ng ty</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">3. Website doanh nghiệp gi&uacute;p tiết kiệm chi ph&iacute;</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">4. Tương t&aacute;c, chăm s&oacute;c kh&aacute;ch h&agrave;ng 24/7</span></span></li>\r\n	</ul>\r\n	</li>\r\n	<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">G&oacute;i thiết kế kế website doanh nghiệp của&nbsp;ch&uacute;ng t&ocirc;i c&oacute; g&igrave; kh&aacute;c biệt</span></span></li>\r\n</ul>', 1, 19, 1, '2019-10-11 03:38:22', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `other_service_tags`
--

CREATE TABLE `other_service_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `searchs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `other_service_tags`
--

INSERT INTO `other_service_tags` (`id`, `name`, `other_service_id`, `created_at`, `updated_at`, `searchs`) VALUES
(18, 'Talentwins', 11, '2019-10-11 03:38:22', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id`, `name`, `logo`, `link`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Dunkin Donuts', '2-dunkin-donuts1.jpg', 'http://dunkindonuts.vn/', 1, NULL, NULL),
(2, 'Ánh Dương CO.,Ltd', 'anhduong.jpg', 'http://anhduongtn.vn/', 1, NULL, NULL),
(3, 'Bán giá tốt', 'bangiatot.jpg    ', 'http://bangiatot.vn/', 1, NULL, NULL),
(4, 'HLC.,JSC', 'ischool.png', 'http://www.ischool.vn/', 1, NULL, NULL),
(5, 'Thanh Thành Đạt', 'logo-bo-si-do-an-vat-2.png', 'http://thanhthanhdat.com.vn/', 1, NULL, NULL),
(6, 'Ngôi nhà xinh - Sáng Tạo Kiến Trúc Xinh - Kiến Trúc Nội Thất Đẹp Nhất', 'cua5f.png', 'https://www.ngoinhaxinh.com.vn/', 1, NULL, NULL),
(7, 'Thay pin điện thoại', 'thegioituixach1.jpg', 'http://thaypindienthoai.vn/', 1, NULL, NULL),
(8, 'Tâm khoa Shop', 'tamkhoashop1.jpg', 'http://tamkhoashop.com/', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Quản trị viên'),
(2, 'Cộng tác viên'),
(3, 'Người dùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `footer_hot` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id`, `name`, `slug`, `title`, `description`, `image`, `summary`, `content`, `view`, `active`, `footer_hot`, `created_at`, `updated_at`) VALUES
(13, 'Thiết Kế Web Giá Rẻ', 'thiet-ke-web-gia-re', 'THIẾT KẾ WEB GIÁ RẺ UY TÍN CHUYÊN NGHIỆP', 'Một website chuyên nghiệp cho việc bán hàng, bất động sản, du lịch, nhà hàng, khách sạn và quảng bá thương hiệu trở nên dễ dàng hơn', '2WjO_image_xxxx.png', '<p><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">► Thiết kế web gi&aacute; rẻ chuy&ecirc;n nghiệp</span></span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">► Dịch vụ l&agrave;m web gi&aacute; rẻ , uy t&iacute;n , chuy&ecirc;n nghiệp chuẩn SEO v&agrave; chất lượng</span></span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">► Quy tr&igrave;nh nhận thiết kế website chuy&ecirc;n nghiệp của ch&uacute;ng t&ocirc;i</span></span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">► Khi sử dụng dịch vụ thiết kế website của ch&uacute;ng t&ocirc;i sẽ mang lại cho bạn những lợi &iacute;ch tốt nhất</span></span></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">&diams; Ch&uacute;ng t&ocirc;i gi&uacute;p được g&igrave; cho bạn?</span></span></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">&diams; Website của bạn sẽ được thiết kế như thế n&agrave;o?</span></span></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">&diams; Tại sao bạn n&ecirc;n chọn dịch vụ thiết kế web gi&aacute; rẻ của ch&uacute;ng t&ocirc;i?</span></span></span></p>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">THIẾT KẾ WEBSITE GI&Aacute; RẺ CỦA THIẾT KẾ WEB NHANH CAM KẾT:</span></span></span></p>', '<p><a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\"><strong>Thiết kế web gi&aacute; rẻ</strong></a>&nbsp;tại&nbsp;<strong>thiết kế web nhanh</strong>&nbsp;bạn sẽ c&oacute; một website chất lượng,&nbsp;<strong>chuy&ecirc;n nghiệp</strong>&nbsp;,&nbsp;<strong>chuẩn SEO</strong>&nbsp;,&nbsp;<strong>giao diện đẹp</strong>&nbsp;v&agrave;&nbsp; th&acirc;n thiện với người sử dụng.</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\">►</span> Bạn đang muốn sở hữu một website để bắt đầu kinh doanh online?</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\">►</span> Bạn muốn sản phẩm , dịch vụ của m&igrave;nh được mọi người biết đến?</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\">►</span> Bạn muốn thương hiệu của m&igrave;nh được mọi người biết đến?</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\">►</span> Song nguồn vốn kinh doanh của bạn c&oacute; hạn n&ecirc;n bạn phải tiết kiệm chi ph&iacute; thiết kế website?</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\">►</span> Bạn đang băn khoăn kh&ocirc;ng biết&nbsp;<strong>dịch vụ thiết kế web gi&aacute; rẻ&nbsp;</strong>&nbsp;th&igrave; chất lượng website c&oacute; đảm bảo hay kh&ocirc;ng?</p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;</p>\r\n\r\n<p><a href=\"http://thietkewebnhanh247.com/thiet-ke-web-gia-re/\" rel=\"nofollow\"><img alt=\"thiết kế website giá rẻ\" src=\"http://thietkewebnhanh247.com/wp-content/uploads/2016/10/thiet-ke-web-gia-re.jpg\" style=\"height:331px; width:559px\" /></a></p>\r\n\r\n<p><em>thiết kế website gi&aacute; rẻ</em></p>\r\n\r\n<h2><strong>Thiết kế web gi&aacute; rẻ chuy&ecirc;n nghiệp</strong></h2>\r\n\r\n<p>Khi&nbsp;<strong>Thiết kế web gi&aacute; rẻ&nbsp;</strong>tại <strong>Web88</strong>, kh&aacute;ch h&agrave;ng sẽ nhận lại được sự y&ecirc;n t&acirc;m với những ti&ecirc;u ch&iacute; như:</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;&nbsp;</strong></span>Trang web đẹp hiệu ứng mượt</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;</strong></span>&nbsp;Website được code chuẩn SEO hỗ trợ dữ liệu cấu tr&uacute;c, AMP mobile Google</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;</strong></span> &nbsp;Kh&aacute;ch h&agrave;ng chọn lựa đa dạng mẫu giao diện c&oacute; sẵn)</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;</strong></span> Tốc độ website nhanh.</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;</strong></span> Quản l&yacute; dễ d&agrave;ng v&agrave; th&acirc;n thiện người d&ugrave;ng.</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;</strong></span>&nbsp;Web tương th&iacute;ch với c&aacute;c thiết bị di động v&agrave; m&aacute;y t&iacute;nh bảng.</p>\r\n\r\n<h3>Dịch vụ l&agrave;m&nbsp;web gi&aacute; rẻ , uy t&iacute;n , chuy&ecirc;n nghiệp chuẩn SEO v&agrave; chất lượng</h3>\r\n\r\n<p>Nếu bạn c&ograve;n băn khoăn về&nbsp;<a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\"><strong>dịch vụ thiết kế website gi&aacute; rẻ uy t&iacute;n</strong></a>&nbsp;. Đến với thiết kế web nhanh , bạn h&atilde;y y&ecirc;n t&acirc;m chỉ với mức gi&aacute; thiết kế thấp nhưng bạn sẽ c&oacute; một website đầy đủ t&iacute;nh năng cũng như l&agrave;m bạn h&agrave;i l&ograve;ng nhất .</p>\r\n\r\n<p>Với hơn 6 năm kinh nghiệm trong lĩnh vực&nbsp;<a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\"><strong>thiết kế website</strong></a>&nbsp;, chuy&ecirc;n nghiệp .&nbsp;<a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\"><strong>Thiết kế website nhanh</strong></a>&nbsp;sở hữu hơn 1000 giao diện cực đẹp v&agrave; li&ecirc;n tục cập nhật . Tất cả c&aacute;c mẫu website được ch&uacute;ng t&ocirc;i nghi&ecirc;n cứu v&agrave; chuẩn h&oacute;a từng ng&agrave;nh nghề cụ thể như :</p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-thuong-mai-dien-tu-1\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website b&aacute;n h&agrave;ng, thương mại điện tử</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-gioi-thieu-cong-ty-2\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website giới thiệu c&ocirc;ng ty</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-tin-tuc-3\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website tin tức</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-anh-vien-ao-cuoi-5\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website ảnh viện &aacute;o cưới</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-am-nhac-4\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website &acirc;m nhạc</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-ca-nhan-8\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website c&aacute; nh&acirc;n</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-giao-duc-7\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website gi&aacute;o dục</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-bat-dong-san-6\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website bất động sản</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-nha-hang-khach-san-10\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website nh&agrave; h&agrave;ng kh&aacute;ch sạn</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-du-lich-11\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website du lịch</span></a></p>\r\n\r\n<p>Với h&agrave;ng trăm mẫu website ph&ugrave; hợp với từng lĩnh vực , c&ocirc;ng ty của bạn.</p>\r\n\r\n<p><a href=\"http://thietkewebnhanh247.com/thiet-ke-web-gia-re/\" rel=\"nofollow\"><img alt=\"Thiết kế web giá rẻ tại Hồ Chí Minh\" src=\"http://thietkewebnhanh247.com/wp-content/uploads/2017/01/banner-web-gia-re.jpg\" style=\"height:373px; width:886px\" /></a></p>\r\n\r\n<h3>Quy tr&igrave;nh nhận thiết kế website chuy&ecirc;n nghiệp của ch&uacute;ng t&ocirc;i</h3>\r\n\r\n<p style=\"margin-left:40px\">Bước 1: tiếp nhận y&ecirc;u cầu từ kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 2: lựa chọn t&ecirc;n miền- web hosting.</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 3: thiết kế giao diện &nbsp;ph&ugrave; hợp</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 4: x&acirc;y dựng c&aacute;c t&iacute;nh năng cho trang web.</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 5: kiểm&nbsp; thử&nbsp; trang web</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 6: ho&agrave;n thiện trang web.</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 7: đ&agrave;o tạo sử dụng.</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 8: bảo tr&igrave;, n&acirc;ng cấp trang web.</p>\r\n\r\n<h3>Khi sử dụng dịch vụ thiết kế website của ch&uacute;ng t&ocirc;i sẽ mang lại cho bạn những lợi &iacute;ch tốt nhất</h3>\r\n\r\n<h3>Ch&uacute;ng t&ocirc;i gi&uacute;p được g&igrave; cho bạn?</h3>\r\n\r\n<p style=\"margin-left:40px\"><strong>Thiết kế web nhanh</strong>&nbsp;cung cấp những c&ocirc;ng cụ tuyệt vời gi&uacute;p bạn ph&aacute;t triển thương hiệu v&agrave; marketing online</p>\r\n\r\n<p style=\"margin-left:40px\">Với đội ngũ&nbsp;<a href=\"http://web88.vn/kho-giao-dien/mau-website-du-lich-11\"><strong>thiết kế website &nbsp;chuy&ecirc;n nghiệp</strong></a>&nbsp;sẽ mang đến cho bạn những sản phẩm tuyệt vời với phong c&aacute;ch . Từ đ&oacute; l&agrave;m nền tảng định h&igrave;nh thương hiệu , tăng th&ecirc;m uy t&iacute;n cho sản phẩm v&agrave; dịch vụ b&aacute;n ra cũng như tăng t&iacute;nh cạnh tranh với c&aacute;c doanh nghiệp kh&aacute;c .</p>\r\n\r\n<h3>Website của bạn sẽ được thiết kế như thế n&agrave;o?</h3>\r\n\r\n<p style=\"margin-left:40px\">Website của bạn sẽ được thiết kế chuẩn SEO , tối ưu với google . Gi&uacute;p trang web của bạn nằm ở vị tr&iacute; cao tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm , tăng lượng kh&aacute;ch h&agrave;ng cho doanh nghiệp</p>\r\n\r\n<p style=\"margin-left:40px\">T&iacute;ch hợp hiện thị website tr&ecirc;n thiết bị di động . Điều n&agrave;y gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể truy cập website của bạn dễ h&agrave;ng hơn . Website tương th&iacute;ch với thiết bị di động cũng l&agrave; điều kiện cần để trang web bạn l&ecirc;n Top</p>\r\n\r\n<p style=\"margin-left:40px\">Thường xuy&ecirc;n cập nhật v&agrave; ho&agrave;n thiện t&iacute;nh năng</p>\r\n\r\n<p style=\"margin-left:40px\">Website của bạn lu&ocirc;n được hoạt động ổn định</p>\r\n\r\n<h4>Tại sao bạn n&ecirc;n chọn dịch vụ thiết kế web gi&aacute; rẻ của ch&uacute;ng t&ocirc;i?</h4>\r\n\r\n<p style=\"margin-left:40px\">Ch&uacute;ng t&ocirc;i lu&ocirc;n đặt chất lượng l&ecirc;n h&agrave;ng đầu</p>\r\n\r\n<p style=\"margin-left:40px\">Đội ngũ thiết kế website d&agrave;y dặn kinh nghiệm</p>\r\n\r\n<p style=\"margin-left:40px\">Cam kết gi&aacute; thiết kế web hợp l&yacute; ,ph&ugrave; hợp với kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p style=\"margin-left:40px\">Thiết kế website chuẩn seo , chuẩn mobile</p>\r\n\r\n<p style=\"margin-left:40px\">Chế độ bảo mật website cao</p>\r\n\r\n<p style=\"margin-left:40px\">C&ocirc;ng nghệ thiết kế website hiện đại nhất</p>\r\n\r\n<p style=\"margin-left:40px\">Cam kết hỗ trợ 24/7</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/thiet-ke-web-magento(1).jpg\" style=\"height:320px; width:640px\" /></p>\r\n\r\n<h3><strong>THIẾT KẾ WEBSITE GI&Aacute; RẺ CỦA THIẾT KẾ WEB NHANH CAM KẾT:</strong></h3>\r\n\r\n<p style=\"margin-left:40px\">Mức chi ph&iacute; thiết kế web rẻ nhất: từ 3.500.000 cho một website chuy&ecirc;n nghiệp</p>\r\n\r\n<p style=\"margin-left:40px\">Hơn 1000 giao diện cực đẹp, li&ecirc;n tục cập nhật với h&agrave;ng trăm&nbsp;<a href=\"http://web88.vn/kho-giao-dien\">mẫu website chuy&ecirc;n nghiệp</a>&nbsp;tr&ecirc;n tất cả tr&ecirc;n cả c&aacute;c lĩnh vực, gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng lựa chọn mẫu website ưng &yacute; nhất</p>\r\n\r\n<p style=\"margin-left:40px\"><strong>Quy tr&igrave;nh l&agrave;m website gi&aacute; rẻ</strong>&nbsp;lu&ocirc;n đảm bảo được tiến độ sớm nhất</p>\r\n\r\n<p style=\"margin-left:40px\">Thiết kế website chuy&ecirc;n nghiệp uy t&iacute;n lu&ocirc;n đặt l&ecirc;n h&agrave;ng đầu</p>\r\n\r\n<p style=\"margin-left:40px\">Chỉnh sửa giao diện ph&ugrave; hợp với y&ecirc;u cầu v&agrave; đặc th&ugrave; nghề nghiệp của kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p style=\"margin-left:40px\">Trang web được t&iacute;ch hợp t&iacute;nh năng vượt trội gi&uacute;p việc b&aacute;n h&agrave;ng v&agrave; quảng b&aacute;n thương hiệu trở n&ecirc;n chuy&ecirc;n nghiệp v&agrave; dễ d&agrave;ng hơn</p>\r\n\r\n<p style=\"margin-left:40px\">Website được thiết kế chuy&ecirc;n nghiệp , hiện đại , theo chuẩn W3C</p>\r\n\r\n<p style=\"margin-left:40px\">Website được t&iacute;ch hợp c&ocirc;ng nghệ ti&ecirc;n tiến nhất như HTML5 , CSS5 &hellip; đảm bảo tốc độ nhanh khi truy cập</p>\r\n\r\n<p style=\"margin-left:40px\">Giao diện quản trị chuy&ecirc;n nghiệp , bạn kh&ocirc;ng cần phải am hiểu nhiều về lĩnh vực c&ocirc;ng nghệ th&ocirc;ng tin cũng dễ d&agrave;ng quản trị</p>\r\n\r\n<p style=\"margin-left:40px\">Hỗ trợ tư vấn c&aacute;c giải ph&aacute;p marketing online</p>\r\n\r\n<p style=\"margin-left:40px\">Website được thiết kế chuẩn SEO để dễ d&agrave;ng l&ecirc;n top tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm</p>\r\n\r\n<p style=\"margin-left:40px\">Website được thiết kế chuẩn mobile , gi&uacute;p kh&aacute;ch h&agrave;ng của bạn dễ d&agrave;ng truy cập v&agrave; mua h&agrave;ng dễ d&agrave;ng v&agrave; tiện lợi hơn</p>\r\n\r\n<p style=\"margin-left:40px\">Hỗ trợ tư vấn kỹ thuật v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng nhanh ch&oacute;ng v&agrave; nhiệt t&igrave;nh nhất</p>\r\n\r\n<p>H&atilde;y li&ecirc;n hệ với ch&uacute;ng t&ocirc;i ngay để được hỗ trợ v&agrave; tư vấn ho&agrave;n to&agrave;n miễn ph&iacute;</p>\r\n\r\n<p>Li&ecirc;n hệ: <strong>0927.15.15.35&nbsp; |&nbsp;</strong>email:<strong>&nbsp;contact@talentwins.co</strong></p>\r\n\r\n<p><strong>Xem th&ecirc;m:</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://web88.vn/dich-vu/thiet-ke-website-theo-mau\">Thiết kế website trọn g&oacute;i gi&aacute; rẻ</a></li>\r\n</ul>', 141, 1, 1, '2019-10-11 03:04:17', '2019-11-01 08:23:32'),
(14, 'Thiết Kế Website Theo mẫu', 'thiet-ke-website-theo-mau', 'THIẾT KẾ WEBSITE THEO MẪU', 'Một website chuyên nghiệp cho việc bán hàng và quảng bá thương hiệu trở nên dễ dàng hơn', 'yceq_image_cong-ty-thiet-ke-website-uy-tin-chuyen-nghiep-tai-tphcm-6.jpg', '<ul>\r\n	<li>Thiết kế web theo mẫu l&agrave; g&igrave;?</li>\r\n	<li>1/ Tại sao n&ecirc;n chọn dịch vụ thiết kế web theo mẫu?</li>\r\n	<li>2/ T&ocirc;i sợ c&oacute; sự tr&ugrave;ng lặp về &yacute; tưởng của dịch vụ thiết kế web theo mẫu?</li>\r\n	<li>3/ Chi ph&iacute; đầu tư cho một Web theo mẫu l&agrave; bao nhi&ecirc;u?</li>\r\n	<li>4/ Khi đăng k&yacute; dịch vụ thiết kế web theo mẫu t&ocirc;i sẽ nhận được g&igrave;?</li>\r\n	<li>5/ Thời gian để ho&agrave;n th&agrave;nh trang Web theo mẫu l&agrave; bao l&acirc;u?</li>\r\n	<li>6/ T&ocirc;i muốn trang web c&oacute; nhiều ng&ocirc;n ngữ th&igrave; c&oacute; được kh&ocirc;ng?</li>\r\n	<li>7/ Khi thiết kế xong trang web, ai l&agrave; người sẽ nhập dữ liệu v&agrave;o trang web?</li>\r\n	<li>8/ Quy tr&igrave;nh khởi tạo dịch vụ thiết kế web theo mẫu như thế n&agrave;o?</li>\r\n	<li>9/ Ưu điểm của &ldquo;Dịch vụ thiết kế web theo mẫu&rdquo; l&agrave; g&igrave;?</li>\r\n	<li>10/ &ldquo;Web theo mẫu&rdquo; c&oacute; ph&ugrave; hợp với Doanh nghiệp của t&ocirc;i kh&ocirc;ng?</li>\r\n	<li>11/ Nguy&ecirc;n nh&acirc;n n&agrave;o c&oacute; thể dẫn đến việc chậm trể thời gian so với dự kiến?</li>\r\n	<li>12/ T&ocirc;i muốn sử dụng dịch vụ thiết kế web theo mẫu ngay th&igrave;&nbsp;phải l&agrave;m sao?</li>\r\n</ul>', '<h2>Thiết kế web theo mẫu l&agrave; g&igrave;?</h2>\r\n\r\n<p><strong>Thiết kế web theo mẫu</strong>&nbsp;l&agrave; dịch vụ website được x&acirc;y dựng sẵn th&agrave;nh c&aacute;c g&oacute;i web theo từng ng&agrave;nh nghề cụ thể. Với những thiết kế hiện đại v&agrave; lu&ocirc;n được cập nhật những c&ocirc;ng nghệ mới nhất. Được nghi&ecirc;n cứu chuẩn h&oacute;a những chức năng cần thiết cho từng lĩnh vực<br />\r\n<strong>VD:</strong>&nbsp;Web b&aacute;n h&agrave;ng, Web tin tức, Web giới thiệu c&ocirc;ng ty, Web dạy học &hellip; Nhằm tiết kiệm chi ph&iacute;, thời gian v&agrave; n&acirc;ng gi&aacute; trị cho sản phẩm website của&nbsp;kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><a href=\"http://thietkewebnhanh247.com/thiet-ke-web-theo-mau/\" rel=\"nofollow\"><img alt=\"Thiết kế website theo mẫu\" src=\"http://thietkewebnhanh247.com/wp-content/uploads/2016/10/fd13ccf1a164bb85daf52fa0b7b10e68.jpg\" /></a><br />\r\n<em>Thiết kế website theo mẫu</em></p>\r\n\r\n<h2>1/ Tại sao n&ecirc;n chọn dịch vụ thiết kế web theo mẫu?</h2>\r\n\r\n<p><strong>Thiết kế web theo mẫu</strong>&nbsp;sử dụng những mẫu web m&agrave; c&aacute;c C&ocirc;ng ty&nbsp;<a href=\"http://web88.vn/\">thiết kế web chuy&ecirc;n nghiệp</a>&nbsp;đ&atilde; thiết kế sẵn cho kh&aacute;ch h&agrave;ng. Họ đ&atilde; nghi&ecirc;n cứu v&agrave; triển khai c&aacute;c g&oacute;i website chuẩn mực theo từng ng&agrave;nh nghề với những chức năng v&agrave; giao diện chuy&ecirc;n nghiệp. Nếu bạn chọn dịch vụ n&agrave;y th&igrave; chi ph&iacute; đầu tư l&agrave; cực kỳ thấp v&agrave; thời gian thực hiện sẽ rất nhanh ch&oacute;ng để c&oacute; được một website chuy&ecirc;n nghiệp.</p>\r\n\r\n<h2>2/ T&ocirc;i sợ c&oacute; sự tr&ugrave;ng lặp về &yacute; tưởng của dịch vụ thiết kế web theo mẫu?</h2>\r\n\r\n<p>Dịch vụ&nbsp;<strong><a href=\"http://web88.vn/\">thiết kế web theo mẫu</a></strong>&nbsp;chỉ sử dụng lại phần lập tr&igrave;nh, kh&ocirc;ng sử dụng lại phần thiết kế giao diện cho n&ecirc;n mỗi trang web được tạo ra c&oacute; giao diện kh&aacute;c biệt n&ecirc;n tr&aacute;nh được sự tr&ugrave;ng lặp. Hơn nữa khi sử dụng dịch vụ thiết kế web theo mẫu n&agrave;y bạn cũng c&oacute; thể thay đổi để c&oacute; phong c&aacute;ch ri&ecirc;ng cho m&igrave;nh.</p>\r\n\r\n<h2>3/ Chi ph&iacute; đầu tư cho một Web theo mẫu l&agrave; bao nhi&ecirc;u?</h2>\r\n\r\n<p>Chi ph&iacute; để c&oacute; được một trang&nbsp;<strong>web theo mẫu</strong>&nbsp;chỉ&nbsp;&nbsp;2.500.000 đồng&nbsp;, chi ph&iacute; đầu tư n&agrave;y tuy thấp nhưng bạn ho&agrave;n to&agrave;n c&oacute; thể sở hữu&nbsp;một website ri&ecirc;ng với đầy đủ c&aacute;c t&iacute;nh năng cần thiết v&igrave; đ&atilde; được c&aacute;c nh&agrave; ph&aacute;t triển nghi&ecirc;n cứu v&agrave; chuẩn h&oacute;a.</p>\r\n\r\n<h2>4/ Khi đăng k&yacute; dịch vụ thiết kế web theo mẫu t&ocirc;i sẽ nhận được g&igrave;?</h2>\r\n\r\n<p><em><strong>Khi đăng k&yacute; sử dụng dịch vụ&nbsp;<a href=\"http://web88.vn/\">thiết kế web theo mẫu</a>&nbsp;tại Thiết kế website88, kh&aacute;ch h&agrave;ng sẽ nhận được:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Được sở hữu một website chuy&ecirc;n nghiệp với đầy đủ c&aacute;c t&iacute;nh năng</li>\r\n	<li>Được quản l&yacute; to&agrave;n bộ m&atilde; nguồn để c&oacute; thể tự quản l&yacute; v&agrave; ph&aacute;t triển về sau</li>\r\n	<li>Được y&ecirc;u cầu chỉnh sửa những thay đổi cơ bản</li>\r\n	<li>Được miễn ph&iacute; 1 năm dịch vụ Hosting cơ bản (Dung lượng 250Mb v&agrave; 5000Gb băng th&ocirc;ng).</li>\r\n</ul>\r\n\r\n<h2>5/ Thời gian để ho&agrave;n th&agrave;nh trang Web theo mẫu l&agrave; bao l&acirc;u?</h2>\r\n\r\n<p>Khoảng từ 1 ng&agrave;y đến 5 ng&agrave;y từ l&uacute;c&nbsp;đăng k&yacute; dịch vụ</p>\r\n\r\n<h2>6/ T&ocirc;i muốn trang web c&oacute; nhiều ng&ocirc;n ngữ th&igrave; c&oacute; được kh&ocirc;ng?</h2>\r\n\r\n<p>Mỗi ng&ocirc;n ngữ cộng th&ecirc;m chi ph&iacute; 20% tương đương 500.000 đồng, bạn c&oacute; thể y&ecirc;u cầu nhiều ng&ocirc;n ngữ kh&aacute;c nhau như Tiếng Anh, Tiếng Ph&aacute;p, Tiếng Nhật,&hellip; nếu thiết kế nhiều ng&ocirc;n ngữ bạn phải cung cấp nội dung bằng ng&ocirc;n ngữ bạn cần thiết kế.</p>\r\n\r\n<h2>7/ Khi thiết kế xong trang web, ai l&agrave; người sẽ nhập dữ liệu v&agrave;o trang web?</h2>\r\n\r\n<p>Khi thiết kế website xong ch&uacute;ng t&ocirc;i sẽ hỗ trợ nhập nội dung mẫu v&agrave;o trang web cụ thể như sau, đối với phần nội dung sẽ nhập tối đa 10 trang, đối với phần sản phẩm sẽ hỗ trợ nhập tối đa 30 sản phẩm, nếu bạn c&oacute; th&ecirc;m sản phẩm th&igrave; c&oacute; thể tự nhập v&agrave;o trang web, ch&uacute;ng t&ocirc;i sẽ hướng dẫn c&aacute;ch quản l&yacute; dữ liệu tr&ecirc;n trang web, hoặc bạn c&oacute; thể thu&ecirc;&nbsp;<a href=\"http://web88.vn/\">dịch vụ nhập liệu</a>&nbsp;của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>8/ Quy tr&igrave;nh khởi tạo dịch vụ thiết kế web theo mẫu như thế n&agrave;o?</h2>\r\n\r\n<p><img alt=\"Thiết kế web theo mẫu\" src=\"http://thietkewebnhanh247.com/wp-content/uploads/2016/10/4buoc.png\" /><br />\r\nQuy tr&igrave;nh&nbsp;<strong><a href=\"http://web88.vn/\">thiết kế web theo mẫu</a></strong>&nbsp;của ch&uacute;ng t&ocirc;i kh&aacute; đơn giản, bạn chỉ mất 4 bước để c&oacute; 1 dịch vụ ho&agrave;n thiện</p>\r\n\r\n<ul>\r\n	<li>Bước 1: Lựa chọn giao diện web trong&nbsp;<a href=\"http://web88.vn/\" target=\"_blank\">Kho Giao Diện</a>&nbsp;của ch&uacute;ng t&ocirc;i (bạn c&oacute; thể d&ugrave;ng thử website trước khi lựa chọn)</li>\r\n	<li>Bước 2: Cung cấp th&ocirc;ng tin v&agrave; y&ecirc;u cầu chỉnh sửa của bạn cho ch&uacute;ng t&ocirc;i</li>\r\n	<li>Bước 3: Đội ngũ kỹ thuật của ch&uacute;ng t&ocirc;i sẽ chỉnh sửa những y&ecirc;u cầu m&agrave; bạn đưa ra</li>\r\n	<li>Bước 4: Đưa website v&agrave;o chạy thử nghiệm v&agrave; tiến h&agrave;nh b&agrave;n giao</li>\r\n</ul>\r\n\r\n<p>Sau khi bạn đăng k&yacute; dịch vụ, nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i sẽ qua gặp bạn trực tiếp hoặc li&ecirc;n hệ với bạn để lấy th&ocirc;ng tin v&agrave; k&yacute; kết hợp đồng.</p>\r\n\r\n<h2>9/ Ưu điểm của &ldquo;Dịch vụ thiết kế web theo mẫu&rdquo; l&agrave; g&igrave;?</h2>\r\n\r\n<p>Thời gian thiết kế nhanh từ 1 đến 5 ng&agrave;y, kh&ocirc;ng cần đầu tư chi ph&iacute; cao, kh&ocirc;ng cần quan t&acirc;m đến bất cứ chi ph&iacute; n&agrave;o ngo&agrave;i ph&iacute; thiết kế 2.500.000 đồng do được miễn ph&iacute; dịch vụ Hosting , c&oacute; thể xem trước những t&iacute;nh năng của trang web chuẩn bị thiết kế.</p>\r\n\r\n<h2>10/ &ldquo;Web theo mẫu&rdquo; c&oacute; ph&ugrave; hợp với Doanh nghiệp của t&ocirc;i kh&ocirc;ng?</h2>\r\n\r\n<p>Đối với những Doanh nghiệp nhỏ hoặc những Doanh nghiệp c&oacute; &iacute;t nội dung, h&igrave;nh ảnh hoặc Doanh nghiệp mới th&agrave;nh lập kinh ph&iacute; cho việc thiết kế trang web c&ograve;n hạn hẹp th&igrave; giải ph&aacute;p sử dụng Dịch vụ thiết kế web theo mẫu l&agrave; ph&ugrave; hợp nhất.</p>\r\n\r\n<h2>11/ Nguy&ecirc;n nh&acirc;n n&agrave;o c&oacute; thể dẫn đến việc chậm trể thời gian so với dự kiến?</h2>\r\n\r\n<p>Việc chậm trễ thường do nguy&ecirc;n nh&acirc;n như: kh&ocirc;ng c&oacute; thời gian kiểm duyệt, người c&oacute; quyền kiểm duyệt bận đi c&ocirc;ng t&aacute;c hoặc nguy&ecirc;n nh&acirc;n do chưa c&oacute; đủ dữ liệu để nhập v&agrave;o trang web, hoặc kh&ocirc;ng tự tin trong việc x&aacute;c nhận trang web đ&atilde; ho&agrave;n th&agrave;nh, sợ khi thanh to&aacute;n xong muốn sửa đổi sẽ gặp kh&oacute; khăn, nguy&ecirc;n nh&acirc;n nữa l&agrave; khi đăng k&yacute; dịch vụ &ldquo;Thiết kế web theo mẫu&rdquo; m&agrave; lại đưa ra qu&aacute; nhiều y&ecirc;u cầu kh&ocirc;ng ph&ugrave; hợp với quy định sử dụng dịch vụ &ldquo;Thiết kế web theo mẫu&rdquo; dẫn đến thời gian k&eacute;o d&agrave;i.</p>\r\n\r\n<p>Những nguy&ecirc;n nh&acirc;n tr&ecirc;n g&acirc;y n&ecirc;n việc chậm trễ v&igrave; vậy khi chấp nhận sử dụng dịch vụ &ldquo;Thiết kế web theo mẫu&rdquo; c&aacute;c b&ecirc;n phải tu&acirc;n thủ đ&uacute;ng nguy&ecirc;n tắc đ&atilde; thỏa thuận để trang web ho&agrave;n th&agrave;nh đ&uacute;ng tiến độ.</p>\r\n\r\n<h2>12/ T&ocirc;i muốn sử dụng dịch vụ thiết kế web theo mẫu ngay th&igrave;&nbsp;phải l&agrave;m sao?</h2>\r\n\r\n<p>Đơn giản l&agrave; bạn chỉ việc gọi đến số hotline của ch&uacute;ng t&ocirc;i:&nbsp;<strong>0927.15.15.35</strong>&nbsp;để được nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i tư vấn hoặc đặt lịch hẹn gặp để trao đổi về c&aacute;c &yacute; tưởng thiết kế.</p>', 26, 1, 1, '2019-10-17 07:46:46', '2019-10-17 07:56:33'),
(15, 'Dịch Vụ SEO Website', 'dich-vu-seo-website', 'Dịch Vụ SEO Website', 'Website được viết bài chuẩn SEO như bất động sản, bán hàng, du lịch, nhà hàng, khách sạn.. và lên top google nhanh hiệu quả trong kinh doanh', 'nPzP_image_JZKY_image_RASg_image_image_Bannerweb88.png', '<ul>\r\n	<li><strong>Dịch vụ SEO</strong> l&agrave; g&igrave;?</li>\r\n	<li>Tại sao n&ecirc;n v&agrave; phải sử dụng dịch vụ SEO ?</li>\r\n	<li>C&aacute;c <strong>dịch vụ SEO</strong> của ch&uacute;ng t&ocirc;i\r\n	<ul style=\"margin-left:40px\">\r\n		<li>Lợi &iacute;ch khi l&agrave;m SEO</li>\r\n		<li>Quy tr&igrave;nh l&agrave;m SEO</li>\r\n	</ul>\r\n	</li>\r\n</ul>', '<h3>1. Dịch vụ SEO l&agrave; g&igrave;?</h3>\r\n\r\n<p>Tối ưu h&oacute;a c&ocirc;ng cụ t&igrave;m kiếm, hay&nbsp;<a href=\"http://web88.vn/dich-vu/dich-vu-seo-website\" title=\"dịch vụ SEO\" type=\"Dich vu seo\"><strong>dịch vụ SEO</strong></a>&nbsp;(viết tắt Search Engine Optimization), l&agrave; một tập hợp c&aacute;c phương ph&aacute;p quảng b&aacute; nhằm n&acirc;ng cao thứ hạng một website trong c&aacute;c trang kết quả tr&ecirc;n c&aacute;c c&ocirc;ng cụ t&igrave;m kiếm &amp; c&oacute; thể được coi l&agrave; một lĩnh vực trong Marketing quảng b&aacute; web qua c&ocirc;ng cụ t&igrave;m kiếm.&nbsp;<strong><a href=\"http://web88.vn/dich-vu/dich-vu-seo-website\">Dịch vụ SEO</a></strong>&nbsp;đang l&agrave; giải ph&aacute;p marketing cực kỳ hiệu quả cho doanh nghiệp.&nbsp;<strong>Dịch vụ SEO TOP Google</strong>&nbsp;l&agrave; phương ph&aacute;p quảng b&aacute; website gi&uacute;p gia tăng lượng truy cập từ kh&aacute;ch h&agrave;ng tiềm năng đang được rất nhiều doanh nghiệp sử dụng để tăng khả năng cạnh tranh v&agrave; b&aacute;n h&agrave;ng của m&igrave;nh.</p>\r\n\r\n<h3>2. Tại sao n&ecirc;n v&agrave; phải sử dụng dịch vụ SEO ?</h3>\r\n\r\n<p>Ng&agrave;y nay, c&ugrave;ng với sự ph&aacute;t triển như vũ b&atilde;o của c&aacute;c c&ocirc;ng cụ t&igrave;m kiếm, việc người d&ugrave;ng Internet t&igrave;m kiếm tất cả c&aacute;c th&ocirc;ng tin bằng c&aacute;c c&ocirc;ng cụ n&agrave;y ng&agrave;y c&agrave;ng trở n&ecirc;n quen thuộc. Do đ&oacute;, nếu&nbsp;<a href=\"http://web88.vn/dich-vu/dich-vu-seo-website\">Thiết kế&nbsp;<strong>website</strong></a>&nbsp;của bạn c&oacute; thứ hạng cao tr&ecirc;n c&aacute;c trang kết quả t&igrave;m kiếm sẽ gi&uacute;p &iacute;ch cho doanh nghiệp của bạn rất nhiều trong việc tiếp cận thị trường tiềm năng tr&ecirc;n Internet.</p>\r\n\r\n<p>Đừng để Website của bạn được thiết kế một c&aacute;ch v&ocirc; &iacute;ch v&agrave; h&atilde;y li&ecirc;n hệ ngay với&nbsp;<strong>Thiết kế website</strong>, bạn sẽ được tư vấn v&agrave; đưa ra những giải ph&aacute;p ph&ugrave; hợp để giải quyết c&aacute;c vấn đề tr&ecirc;n. C&ugrave;ng với đội ngũ IT chuy&ecirc;n nghiệp v&agrave; nhiệt t&igrave;nh, những nhu cầu của bạn sẽ được giải quyết nhanh ch&oacute;ng v&agrave; hiệu quả. Bất kể khi n&agrave;o kh&aacute;ch h&agrave;ng cần tư vấn về Dịch vụ, ch&uacute;ng t&ocirc;i cũng sẵn s&agrave;ng đ&aacute;p ứng. Sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng l&agrave; điều kiện cần v&agrave; đủ để c&ocirc;ng ty ch&uacute;ng t&ocirc;i ph&aacute;t triển đi l&ecirc;n.</p>\r\n\r\n<h2>C&aacute;c dịch vụ SEO của ch&uacute;ng t&ocirc;i</h2>\r\n\r\n<p><strong>a.&nbsp;<a href=\"http://web88.vn/dich-vu/dich-vu-seo-website\" title=\"SEO Từ khoá\" type=\"Dịch vụ SEO Từ khoá\">SEO Từ kho&aacute;</a></strong></p>\r\n\r\n<p><em>Đặc điểm:</em>&nbsp;L&agrave; giải ph&aacute;p cho một số từ kho&aacute; chủ chốt của ng&agrave;nh, sản phẩm dịch vụ kinh doanh của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><em>Lợi &iacute;ch:</em>&nbsp;Tiết kiệm chi ph&iacute;, đem lại hiệu quả cao nhằm thu h&uacute;t mua h&agrave;ng v&agrave; n&acirc;ng cao thương hiệu sản phẩm, dịch vụ mũi nhọn m&agrave; Doanh nghiệp muốn tập trung ph&aacute;t triển.</p>\r\n\r\n<p><strong>b.&nbsp;<a href=\"http://web88.vn/dich-vu/dich-vu-seo-website\" title=\"SEO Tổng thể\" type=\"Dịch vụ SEO Tổng thể\">SEO Tổng thể</a></strong></p>\r\n\r\n<p><em>Đặc điểm:</em>&nbsp;Giải ph&aacute;p cho to&agrave;n bộ hệ thống c&aacute;c từ kho&aacute; bao tr&ugrave;m c&aacute;c sản phẩm/ dịch vụ kh&aacute;ch h&agrave;ng kinh doanh.</p>\r\n\r\n<p><em>Lợi &iacute;ch:</em></p>\r\n\r\n<p style=\"margin-left:40px\">&ndash; Thu h&uacute;t lượng truy cập ổn định v&agrave;o website.</p>\r\n\r\n<p style=\"margin-left:40px\">&ndash; C&aacute;c từ kho&aacute; bao phủ đảm bảo sản phẩm dịch vụ của Doanh nghiệp lu&ocirc;n xuất hiện khi kh&aacute;ch h&agrave;ng c&oacute; nhu cầu.</p>\r\n\r\n<p style=\"margin-left:40px\">&ndash; Từ kho&aacute; l&ecirc;n Top nhanh.</p>\r\n\r\n<p><strong>c. SEO Audit</strong></p>\r\n\r\n<p><em>Đặc điểm:&nbsp;</em>Giải ph&aacute;p nhằm thực hiện một đợt kiểm tra, đ&aacute;nh gi&aacute; t&igrave;nh trạng tổng thể của 1&nbsp;<a href=\"http://thietkewebnhanh247.com/dich-vu-seo-website/\" title=\"Công ty thiết kế web chuyên nghiệp chuẩn seo\" type=\"Dich vu thiet ke website chuyen nghiep chuan seo\">website</a>, từ đ&oacute; tư vấn kế hoạch thực hiện đảm bảo mục ti&ecirc;u của Doanh nghiệp.</p>\r\n\r\n<p><em>Lợi &iacute;ch:</em></p>\r\n\r\n<p style=\"margin-left:40px\">&ndash; Cung cấp c&aacute;i nh&igrave;n tổng thể cho chiến lược x&acirc;y dựng thương hiệu th&ocirc;ng qua phương ph&aacute;p SEO.</p>\r\n\r\n<p style=\"margin-left:40px\">&ndash; Doanh nghiệp chủ động trong việc quản l&yacute;.</p>\r\n\r\n<p style=\"margin-left:40px\">&ndash; Nắm bắt được chiến lược, kế hoạch v&agrave; đối thủ cạnh tranh.</p>\r\n\r\n<h3>Lợi &iacute;ch khi l&agrave;m SEO</h3>\r\n\r\n<p><a href=\"http://web88.vn/dich-vu/dich-vu-seo-website\" title=\"Dịch vụ SEO website chuyên nghiệp\" type=\"Dịch vụ SEO chuyên nghiệp\"><strong>Dịch vụ SEO</strong></a>&nbsp;của<strong>&nbsp;Thiết kế web88</strong>&nbsp;sẽ gi&uacute;p kh&aacute;ch h&agrave;ng n&acirc;ng cao thứ hạng từ kh&oacute;a đồng thời gia tặng lượng truy cập v&agrave; uy t&iacute;n của website. Trong v&ograve;ng từ 03 &ndash; 06 th&aacute;ng, kh&aacute;ch h&agrave;ng sẽ thấy sự thay đổi r&otilde; rệt về lượng truy cập cũng như tỉ lệ kh&aacute;ch h&agrave;ng li&ecirc;n hệ qua website tăng từ 30% &ndash; 200% nhờ tối ưu h&oacute;a c&ocirc;ng cụ t&igrave;m kiếm (SEO).</p>\r\n\r\n<ul>\r\n	<li>Tiết kiệm tối đa chi ph&iacute; v&agrave; thời gian.</li>\r\n	<li>Website được tối ưu h&oacute;a to&agrave;n bộ theo chuẩn SEO.</li>\r\n	<li>Website được ph&aacute;t triển to&agrave;n diện nhất.</li>\r\n	<li>Lượng truy cập tăng đều v&agrave; ổn định.</li>\r\n	<li>Tăng tỷ lệ chuyển đổi mục ti&ecirc;u của website (c&aacute;c truy cập đến từ c&aacute;c c&ocirc;ng cụ t&igrave;m kiếm thường c&oacute; tỷ lệ chuyển đổi cao hơn truy cập từ c&aacute;c nguồn kh&aacute;c)</li>\r\n	<li>Tiếp cận nhanh nhiều kh&aacute;ch h&agrave;ng mới.</li>\r\n	<li>Khả năng ph&acirc;n loại kh&aacute;ch h&agrave;ng cao. Nhắm đ&uacute;ng c&aacute;c kh&aacute;ch h&agrave;ng tiềm năng, mục ti&ecirc;u.</li>\r\n	<li>Gia tăng nhận diện thương hiệu.&nbsp;Khẳng định t&iacute;nh ch&iacute;nh thống v&agrave; vị thế thương hiệu</li>\r\n	<li>Mở rộng thị trường nhanh ch&oacute;ng.</li>\r\n	<li>Tăng doanh thu bền vững. Kiểm so&aacute;t chiến dịch kinh doanh hiệu quả.</li>\r\n</ul>\r\n\r\n<h3>Quy tr&igrave;nh l&agrave;m SEO</h3>\r\n\r\n<p>Đến với&nbsp;<a href=\"http://web88.vn/dich-vu/dich-vu-seo-website\"><strong>Thiết kế web88</strong></a>, qu&yacute; kh&aacute;ch sẽ cảm nhận được chất lượng từ một&nbsp;<strong>dịch vụ Seo</strong>&nbsp;ho&agrave;n hảo, hơn thế nữa trong qu&aacute; tr&igrave;nh hợp t&aacute;c với ch&uacute;ng t&ocirc;i, c&aacute;c bạn sẽ được training v&agrave; chuyển giao lại to&agrave;n bộ quy tr&igrave;nh Seo m&agrave; Thiết kế web nhanh 247 đ&atilde; thực hiện.</p>\r\n\r\n<ul>\r\n	<li>Tiếp nhận y&ecirc;u cầu của đối t&aacute;c, trao đổi với đối t&aacute;c về c&aacute;c y&ecirc;u cầu.</li>\r\n	<li>Tư vấn cho đối t&aacute;c c&aacute;c&nbsp;<strong>dịch vụ SEO</strong>, thống nhất&nbsp;<strong>dịch vụ SEO</strong>.</li>\r\n	<li>Ph&acirc;n t&iacute;ch thị trường, nhu cầu t&igrave;m kiếm từ kh&oacute;a của người d&ugrave;ng.</li>\r\n	<li>Khảo s&aacute;t, ph&acirc;n t&iacute;ch sơ bộ website của kh&aacute;ch h&agrave;ng.</li>\r\n	<li>Ph&acirc;n t&iacute;ch c&aacute;c đối thủ cạnh tranh.</li>\r\n	<li>Ph&acirc;n t&iacute;ch v&agrave; lựa chọn từ kh&oacute;a.</li>\r\n	<li>Đưa ra chiến lược SEO tốt nhất cho đối t&aacute;c.</li>\r\n	<li>Thống nhất c&aacute;c từ kh&oacute;a, chi ph&iacute;, thời gian SEO với đối t&aacute;c.</li>\r\n	<li>K&yacute; kết hợp đồng với đối t&aacute;c.</li>\r\n	<li>Tối ưu SEO onpage cho website.</li>\r\n	<li>Tạo backlink, Submit website l&ecirc;n c&aacute;c c&ocirc;ng cụ.</li>\r\n	<li>Tối ưu nội dung cho website.</li>\r\n	<li>Bắt đầu SEO từ kh&oacute;a.</li>\r\n	<li>Thống k&ecirc;, ph&acirc;n t&iacute;ch hiệu quả của qui tr&igrave;nh v&agrave; l&ecirc;n chiến lược mới.</li>\r\n	<li>B&aacute;o c&aacute;o h&agrave;ng tuần cho kh&aacute;ch h&agrave;ng.</li>\r\n	<li>B&agrave;n giao kết quả v&agrave; kết th&uacute;c hợp đồng. Tiết kiệm tối đa chi ph&iacute; v&agrave; thời gian.</li>\r\n</ul>\r\n\r\n<p><a href=\"http://web88.vn/dich-vu/dich-vu-viet-bai-chuan-seo\"><img alt=\"\" src=\"/ckfinder/userfiles/images/Content-b%E1%BB%A9t-ph%C3%A1-th%E1%BB%A9-h%E1%BA%A1ng-website-1024x536.png\" /></a><br />\r\n&nbsp;</p>\r\n\r\n<p>Thiết kế web nhanh&nbsp;tự h&agrave;o l&agrave; đơn vị số 1 về chất lượng với&nbsp;<strong><a href=\"http://web88.vn/dich-vu/dich-vu-seo-website\" title=\"Dịch vụ seo chuyên nghiệp\" type=\"Dịch vụ seo chuyên nghiệp\">dịch vụ SEO chuy&ecirc;n nghiệp</a></strong>&nbsp;gi&uacute;p website của qu&yacute; kh&aacute;ch đạt được lượng kh&aacute;ch truy cập như &yacute; muốn. Lợi thế của ch&uacute;ng t&ocirc;i&nbsp;am hiểu s&acirc;u về kỹ thuật coding, v&agrave; l&agrave; đơn vị đầu tư mạnh về c&ocirc;ng nghệ SEO với hệ thống triển khai&nbsp;<strong><a href=\"http://web88.vn/dich-vu/dich-vu-seo-website\" title=\"Dich vu seo\" type=\"Dich vu seo\">dich vu seo</a></strong>&nbsp;kh&eacute;p k&iacute;n từ nội dung, c&ocirc;ng nghệ, hạ tầng đến khai th&aacute;c SEO + hệ thống b&aacute;o c&aacute;o chuẩn h&oacute;a tự động.<br />\r\nThiết kế website lu&ocirc;n đồng h&agrave;nh c&ugrave;ng Qu&yacute; Kh&aacute;ch trong mọi chặng đường kinh doanh. Li&ecirc;n hệ ngay h&ocirc;m nay v&igrave; th&agrave;nh c&ocirc;ng của Doanh nghiệp!<br />\r\nHotline:&nbsp;<strong>0927.15.15.35</strong></p>', 70, 1, 1, '2019-10-31 07:50:03', '2019-11-02 09:52:39'),
(16, 'Dịch Vụ Viết Bài Chuẩn SEO', 'dich-vu-viet-bai-chuan-seo', 'Dịch VỤ Viết Bài Chuẩn SEO', 'Bạn có muốn tăng doanh thu cho doanh nghiệp thông qua các bài viết chất lượng trên website của mình', 'Ro4k_image_74Zb_image_2WjO_image_xxxx.png', '<ul>\r\n	<li>Ch&uacute;ng t&ocirc;i l&agrave; ai?</li>\r\n	<li>V&igrave; sao n&ecirc;n chọn ch&uacute;ng t&ocirc;i?\r\n	<ul>\r\n		<li>Hơn 6 năm kinh nghiệm dịch vụ SEO website</li>\r\n		<li>Đ&aacute;p ứng mọi lĩnh vực kinh doanh</li>\r\n		<li>Dịch vụ chuy&ecirc;n nghiệp nhất</li>\r\n		<li>Cam kết kh&ocirc;ng copy</li>\r\n		<li>Dịch vụ chất lượng</li>\r\n		<li>Tư vấn miễn ph&iacute;, gi&aacute; cả hợp l&yacute; nhất</li>\r\n	</ul>\r\n	</li>\r\n</ul>', '<p>Bạn c&oacute; muốn tăng doanh thu cho doanh nghiệp th&ocirc;ng qua c&aacute;c b&agrave;i viết chất lượng tr&ecirc;n website của m&igrave;nh? H&atilde;y đăng k&yacute; ngay&nbsp;<a href=\"http://web88.vn/dich-vu/dich-vu-viet-bai-chuan-seo\"><strong>dịch vụ viết b&agrave;i chuẩn SEO</strong></a>&nbsp;tại thiết kế web nhanh!</p>\r\n\r\n<ul>\r\n	<li>Bạn muốn ph&aacute;t triển marketing online song kh&ocirc;ng c&oacute; thời gian viết b&agrave;i</li>\r\n	<li>Bạn mệt mỏi v&igrave; cộng t&aacute;c vi&ecirc;n thu&ecirc; ngo&agrave;i viết b&agrave;i kh&ocirc;ng chất lượng cũng như hay nghỉ ngang</li>\r\n	<li>Bạn cần t&igrave;m kiếm một nơi viết b&agrave;i với nội dung chuẩn SEO v&agrave; tuyệt đối kh&ocirc;ng copy</li>\r\n	<li>C&oacute; thể viết b&agrave;i với nội dung chất lượng, hấp dẫn li&ecirc;n tục để hợp t&aacute;c l&acirc;u d&agrave;i.</li>\r\n</ul>\r\n\r\n<p><a href=\"http://web88.vn/dich-vu/dich-vu-viet-bai-chuan-seo\" title=\"Dịch vụ viết bài chuẩn SEO\">Dịch vụ viết b&agrave;i chuẩn SEO</a></p>\r\n\r\n<p>Khi sử dụng&nbsp;<strong>Dịch vụ viết b&agrave;i chuẩn SEO</strong>&nbsp;tại <a href=\"http://web88.vn/\">Web88</a>, kh&aacute;ch h&agrave;ng sẽ nhận lại được sự y&ecirc;n t&acirc;m với những ti&ecirc;u ch&iacute; như:</p>\r\n\r\n<ul>\r\n	<li>&nbsp;B&agrave;i viết chuẩn SEO chất lượng</li>\r\n	<li>&nbsp;Tuyệt đối kh&ocirc;ng copy b&agrave;i viết</li>\r\n	<li>&nbsp;Được hỗ trợ tối ưu code chuẩn SEO</li>\r\n	<li>&nbsp;Gi&aacute; cạnh tranh rẻ nhất.</li>\r\n	<li>&nbsp;Hỗ trợ một số backlink c&oacute; độ uy t&iacute;n cao.</li>\r\n</ul>\r\n\r\n<p><a href=\"http://web88.vn/dich-vu/dich-vu-viet-bai-chuan-seo\"><img alt=\"\" src=\"/ckfinder/userfiles/images/c%C3%A1ch-vi%E1%BA%BFt-conten-chu%E1%BA%A9n-seo1(1).png\" /></a></p>\r\n\r\n<p><a href=\"http://web88.vn/\"><strong>Thiết kế web nhanh</strong></a>&nbsp;sẽ giải quyết vấn đề n&agrave;y gi&uacute;p bạn với&nbsp;<strong>dịch vụ viết b&agrave;i chuẩn SEO gi&aacute; rẻ</strong></p>\r\n\r\n<h3><strong>Ch&uacute;ng t&ocirc;i l&agrave; ai?</strong></h3>\r\n\r\n<ul>\r\n	<li>Cộng t&aacute;c vi&ecirc;n của ch&uacute;ng t&ocirc;i l&agrave; c&aacute;c seoer với nhiều năm kinh nghiệm viết b&agrave;i SEO cho c&aacute;c c&ocirc;ng ty lớn nhỏ trong ngo&agrave;i nước v&agrave; thực hiện Seo th&agrave;nh c&ocirc;ng đưa website l&ecirc;n Top google</li>\r\n	<li>Tuyển chọn c&aacute;c bạn sinh vi&ecirc;n xuất sắc tốt nghiệp từ khoa văn hoặc từ học viện b&aacute;o ch&iacute; tuy&ecirc;n truyền</li>\r\n	<li>C&aacute;c cộng t&aacute;c vi&ecirc;n c&oacute; khả năng tư duy tốt, viết b&agrave;i tốt, t&acirc;m huyết, tr&aacute;ch nhiệm v&agrave; tinh thần học hỏi cao.</li>\r\n</ul>\r\n\r\n<h3><strong>V&igrave; sao n&ecirc;n chọn ch&uacute;ng t&ocirc;i?</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<h4><strong>Hơn 6 năm kinh nghiệm dịch vụ SEO website</strong></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p>Thiết kế web nhanh c&oacute; hơn 6 năm kinh nghiệm trong việc&nbsp;<a href=\"http://web88.vn/\">lập trang web</a>&nbsp;cũng như tư vấn v&agrave; x&acirc;y dựng nội dung website, b&agrave;i viết chuẩn SEO, &hellip; cho c&aacute;c đối t&aacute;c, kh&aacute;ch h&agrave;ng</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h4><strong>Đ&aacute;p ứng mọi lĩnh vực kinh doanh</strong></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p>Với đội ngũ c&ocirc;ng t&aacute;c vi&ecirc;n chuy&ecirc;n viết b&agrave;i chuẩn SEO, gi&agrave;u kinh nghiệm, tập hợp những c&acirc;y b&uacute;t giỏi, s&aacute;ng tạo chắc chắn sẽ l&agrave;m h&agrave;i l&ograve;ng qu&yacute; kh&aacute;ch d&ugrave; bất kỳ lĩnh vực kinh doanh n&agrave;o</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h4><strong>Dịch vụ chuy&ecirc;n nghiệp nhất</strong></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p>Quy tr&igrave;nh l&agrave;m việc chuy&ecirc;n nghiệp nhất từ kh&acirc;u tiếp cận kh&aacute;ch h&agrave;ng &ndash; lấy th&ocirc;ng tin &ndash; viết b&agrave;i &ndash; đưa kh&aacute;ch h&agrave;ng duyệt &ndash; đăng l&ecirc;n website.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h4><strong>Cam kết kh&ocirc;ng copy</strong></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng sử dụng&nbsp;<strong>dịch vụ viết b&agrave;i chuẩn SEO</strong>&nbsp;của thiết kế web nhanh, ch&uacute;ng t&ocirc;i cam kết sẽ kh&ocirc;ng copy paste bất kỳ một b&agrave;i viết n&agrave;o.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h4><strong>Dịch vụ chất lượng</strong></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cam kết sẽ mang đến những n&ocirc;i dung s&aacute;ng tạo, chất lượng, l&ocirc;i cuốn người đọc v&agrave; đặc biết hơn nữa l&agrave; hỗ trợ c&aacute;c dự &aacute;n SEO hiệu quả</p>\r\n\r\n<ul>\r\n	<li>\r\n	<h4><strong>Tư vấn miễn ph&iacute;, gi&aacute; cả hợp l&yacute; nhất</strong></h4>\r\n	</li>\r\n</ul>\r\n\r\n<p>Nhận tư vấn nội dung website, b&agrave;i viết chuẩn SEO cho c&aacute;c doanh nghiệp, c&aacute; nh&acirc;n, c&aacute;c dự &aacute;n SEO&hellip; với chi ph&iacute; hợp l&yacute; nhất mang lại giải ph&aacute;p marketing online hiệu quả nhất.</p>\r\n\r\n<p>Bạn đang quan tậm đến&nbsp;<strong>dịch vụ viết b&agrave;i SEO chuy&ecirc;n nghiệp</strong>&nbsp;của ch&uacute;ng t&ocirc;i, h&atilde;y li&ecirc;n hệ ngay với thiết kế web nhanh để được tư vấn miễn ph&iacute;. Ch&uacute;ng t&ocirc;i sẽ thực hiện đ&uacute;ng mong muốn của bạn với chi ph&iacute; hợp l&yacute; nhất.</p>\r\n\r\n<p>Li&ecirc;n hệ:&nbsp;<strong>0927.15.15.35 | E</strong>mail:<strong>&nbsp;contact@talentwins.co</strong></p>', 64, 1, 1, '2019-10-31 07:51:54', '2019-11-02 07:29:14');
INSERT INTO `service` (`id`, `name`, `slug`, `title`, `description`, `image`, `summary`, `content`, `view`, `active`, `footer_hot`, `created_at`, `updated_at`) VALUES
(20, 'Thiết Kế Website Theo Yêu Cầu', 'thiet-ke-website-theo-yeu-cau', 'Thiết Kế Website Theo Yêu Cầu', 'Một website chuyên nghiệp cho việc bán hàng và quảng bá thương hiệu trở nên dễ dàng hơn', '74Zb_image_2WjO_image_xxxx.png', '<ul>\r\n	<li>THIẾT KẾ WEBSITE THEO Y&Ecirc;U CẦU L&Agrave; G&Igrave;?</li>\r\n	<li>LỢI &Iacute;CH KHI&nbsp;THIẾT KẾ WEBSITE THEO Y&Ecirc;U CẦU</li>\r\n	<li>QUY TR&Igrave;NH THIẾT KẾ WEB THEO Y&Ecirc;U CẦU\r\n	<ul>\r\n		<li><a href=\"http://web88.vn/lien-he\">LI&Ecirc;N HỆ TƯ VẤN MIỄN PH&Iacute;&nbsp;</a>0927151535</li>\r\n	</ul>\r\n	</li>\r\n</ul>', '<p><em>T&ugrave;y theo từng nhu cầu của kh&aacute;ch h&agrave;ng trong từng lĩnh vực kinh doanh, ch&uacute;ng t&ocirc;i sẽ thiết kế website theo đặc điểm ng&agrave;nh h&agrave;ng để tạo ra những chức năng tối ưu nhất mang lại thật nhiều lợi &iacute;ch cho kh&aacute;ch h&agrave;ng nhất. Một website tốt sẽ mang lại cho kh&aacute;ch h&agrave;ng những gi&aacute; trị nhất định</em></p>\r\n\r\n<p>Nếu bạn đang cần một website như thế h&atilde;y đến với&nbsp;<strong><em><a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\">Thiết kế web88</a>&nbsp;</em></strong>, nơi ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn c&oacute; được một website với giao diện v&agrave; c&aacute;c chức năng tối ưu nhất, thu h&uacute;t kh&aacute;ch h&agrave;ng nhất v&agrave; đặc biệt hơn website ch&uacute;ng t&ocirc;i tạo ra theo y&ecirc;u cầu của bạn.</p>\r\n\r\n<h3>THIẾT KẾ WEBSITE THEO Y&Ecirc;U CẦU L&Agrave; G&Igrave;?</h3>\r\n\r\n<p>Vậy<a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\">&nbsp;<strong>thiết kế website</strong>&nbsp;<strong>theo y&ecirc;u cầu</strong></a>&nbsp;l&agrave; g&igrave;? Bạn c&oacute; thể h&igrave;nh dung website như một ng&ocirc;i nh&agrave; m&agrave; bạn sắp x&acirc;y dựng, bạn muốn ngồi nh&agrave; m&igrave;nh sẽ như thế n&agrave;o? Chắc chắn một điều rằng bạn th&iacute;ch ng&ocirc;i nh&agrave; của m&igrave;nh c&oacute; lối kiến tr&uacute;c độc đ&aacute;o, kh&ocirc;ng bị lỗi thời qua thời gian v&agrave; n&oacute; l&agrave; đặc biệt nhất.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ tư vấn giải đ&aacute;p gi&uacute;p qu&yacute; kh&aacute;ch x&acirc;y dựng một website đạt được hiệu quả tốt nhất. Ngo&agrave;i ra kh&aacute;ch h&agrave;ng c&ograve;n được nh&acirc;n vi&ecirc;n&nbsp;<a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\">Thiết kế web si&ecirc;u tốc </a>tư vấn về c&aacute;ch giới thiệu website đến với đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng v&agrave; để website trở th&agrave;nh một k&ecirc;nh quảng b&aacute; thương hiệu, tiếp thị sản phẩm dịch vụ tốt nhất cũng như gi&aacute; rẻ nhất.</p>\r\n\r\n<p><a href=\"http://thietkewebnhanh247.com/thiet-ke-web-theo-yeu-cau/\" rel=\"nofollow\"><img alt=\"THIẾT KẾ WEBSITE THEO YÊU CẦU\" src=\"http://thietkewebnhanh247.com/wp-content/uploads/2016/10/website-tran-cong-hieu.jpg\" /></a></p>\r\n\r\n<p><em>Thiết kế website theo y&ecirc;u cầu</em></p>\r\n\r\n<h3>LỢI &Iacute;CH KHI&nbsp;THIẾT KẾ WEBSITE THEO Y&Ecirc;U CẦU</h3>\r\n\r\n<p>T&ugrave;y theo từng nhu cầu của kh&aacute;ch h&agrave;ng trong từng lĩnh vực kinh doanh, ch&uacute;ng t&ocirc;i sẽ thiết kế website theo đặc điểm ng&agrave;nh h&agrave;ng để tạo ra những chức năng tối ưu nhất mang lại thật nhiều lợi &iacute;ch cho kh&aacute;ch h&agrave;ng nhất. Một website tốt sẽ mang lại cho kh&aacute;ch h&agrave;ng những lợi &iacute;ch sau:</p>\r\n\r\n<ul>\r\n	<li>Website l&agrave; nơi quảng b&aacute; thương hiệu, quảng c&aacute;o sản phẩm kh&ocirc;ng giới hạn, được v&iacute; von như một cửa h&agrave;ng kinh doanh mở cửa 24h/7. Đ&acirc;y c&ograve;n l&agrave; phương tiện tốt nhất để bạn tiếp thị sản phẩm, dịch vụ v&agrave; h&igrave;nh ảnh của m&igrave;nh theo một h&igrave;nh thức mới .</li>\r\n	<li>Tiết kiệm v&agrave; tối ưu: Bạn sẽ tiết kiệm được kh&aacute; nhiều chi ph&iacute; khi kh&ocirc;ng phải thu&ecirc; một đội ngũ nh&acirc;n vi&ecirc;n quản l&yacute; nhưng c&ocirc;ng việc của bạn vẫn hoạt động xuy&ecirc;n suốt, ch&iacute;nh x&aacute;c v&agrave; nhanh ch&oacute;ng. Ngo&agrave;i ra chi ph&iacute; để tạo n&ecirc;n một website thấp hơn so với c&aacute;c khoản chi ph&iacute; m&agrave; bạn bỏ ra để quảng b&aacute; c&aacute;c hoạt động của bạn bằng những phương tiện quảng c&aacute;o truyền thống.</li>\r\n	<li>Một website chuy&ecirc;n nghiệp sẽ gi&uacute;p bạn vượt l&ecirc;n tr&ecirc;n c&aacute;c đối thủ cạnh tranh trong một m&ocirc;i trường kinh doanh năng động v&agrave; c&oacute; sự cạnh tranh cao độ.</li>\r\n	<li>C&oacute; thể n&oacute;i website l&agrave; một trang thiết bị thiết yếu rất cần thiết đối với sự ph&aacute;t triển của một đơn vị. Đ&oacute; nơi m&agrave; h&igrave;nh ảnh về một c&aacute; nh&acirc;n, cơ quan, doanh nghiệp được tổ chức sắp xếp một khoa học v&agrave; hiệu quả nhất.</li>\r\n	<li>Bởi l&agrave; thiết kế Website theo y&ecirc;u cầu n&ecirc;n trang web của bạn l&agrave; độc nhất. Mỗi website sẽ l&agrave; nơi bạn thể hiện c&aacute; t&iacute;nh, mục ti&ecirc;u, đặc điểm, bản sắc ri&ecirc;ng v&agrave; n&oacute; l&agrave; độc nhất.</li>\r\n	<li>C&oacute; website đồng nghĩa với việc bạn sẽ c&oacute; th&ecirc;m h&agrave;ng ng&agrave;n kh&aacute;ch h&agrave;ng mới, tăng doanh thu v&agrave; sẽ đẩy mạnh sự ph&aacute;t triển của đơn vị bạn.</li>\r\n</ul>\r\n\r\n<p>Ngo&agrave;i dịch vụ thiết kế website theo y&ecirc;u cầu,&nbsp;<a href=\"http://web88.vn/dich-vu/thiet-ke-website-theo-mau\">Thiết kế web si&ecirc;u tốc</a>&nbsp;ch&uacute;ng t&ocirc;i c&ograve;n cung cấp dịch vụ&nbsp;<a href=\"http://web88.vn/dich-vu/thiet-ke-website-theo-mau\">thiết kế website gi&aacute; rẻ</a>&nbsp;với h&agrave;ng ngh&igrave;n mẫu website đẹp được dựng sẵn.</p>\r\n\r\n<p><a href=\"http://thietkewebnhanh247.com/thiet-ke-web-theo-yeu-cau/\"><img alt=\"Thiết kế website theo yêu cầu\" src=\"http://thietkewebnhanh247.com/wp-content/uploads/2016/10/doanh-nghiep-img1.png\" /></a></p>\r\n\r\n<p><em>Thiết kế website theo y&ecirc;u cầu</em></p>\r\n\r\n<h3><a href=\"http://thietkewebnhanh247.com/quy-trinh-thiet-ke-website/\">QUY TR&Igrave;NH THIẾT KẾ</a>&nbsp;WEB THEO Y&Ecirc;U CẦU</h3>\r\n\r\n<ul>\r\n	<li>Đầu ti&ecirc;n ch&uacute;ng t&ocirc;i sẽ lấy th&ocirc;ng tin nhu cầu thiết kế web của kh&aacute;ch h&agrave;ng v&agrave; ph&acirc;n t&iacute;ch t&iacute;nh khả thi của dự &aacute;n.</li>\r\n	<li>Tiếp theo đội tư vấn thiết kế sẽ ph&acirc;n t&iacute;ch y&ecirc;u cầu, trao đổi v&agrave; l&ecirc;n kế hoạch&nbsp;<a href=\"http://web88.vn/dich-vu/thiet-ke-website-theo-mau\">thiết kế website</a>&nbsp;với kh&aacute;ch h&agrave;ng.</li>\r\n	<li>Sau khi nắm r&otilde; y&ecirc;u cầu của kh&aacute;ch h&agrave;ng, đội kỹ thuật sẽ thiết kế giao diện demo.</li>\r\n	<li>Trong giai đoạn n&agrave;y kh&aacute;ch h&agrave;ng cần cung cấp th&ocirc;ng tin thật chuẩn x&aacute;c về đơn vị của m&igrave;nh để b&ecirc;n ch&uacute;ng t&ocirc;i x&acirc;y dựng cơ sở dữ liệu v&agrave; lập tr&igrave;nh website theo đ&uacute;ng y&ecirc;u cầu.</li>\r\n	<li>C&ocirc;ng ty ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc với kh&aacute;ch h&agrave;ng để gửi bản demo v&agrave; c&ugrave;ng kh&aacute;ch h&agrave;ng chạy thử kiểm tra chất lượng.</li>\r\n	<li>Cuối c&ugrave;ng kh&aacute;ch h&agrave;ng sẽ nghiệm thu v&agrave; c&ocirc;ng ty sẽ b&agrave;n giao website cho kh&aacute;ch h&agrave;ng trong thời gian đ&atilde; thỏa thuận.</li>\r\n	<li>Ch&iacute; ph&iacute; thiết kế một website theo y&ecirc;u cầu</li>\r\n</ul>\r\n\r\n<p>Đến với&nbsp;<strong>dịch vụ thiết kế website</strong>&nbsp;theo y&ecirc;u cầu của ch&uacute;ng t&ocirc;i, kh&aacute;ch h&agrave;ng sẽ c&oacute; cho ri&ecirc;ng m&igrave;nh một website với gi&aacute; cả cạnh tranh. Chi ph&iacute; cụ thể sẽ phụ thuộc v&agrave;o t&iacute;nh năng của website m&agrave; kh&aacute;ch h&agrave;ng lựa chọn.</p>\r\n\r\n<p>Với quy tr&igrave;nh&nbsp;<strong>thiết kế website theo y&ecirc;u cầu</strong>&nbsp;một c&aacute;ch khoa học v&agrave; chuy&ecirc;n nghiệp,&nbsp;&nbsp;ch&uacute;ng t&ocirc;i cam kết: sẽ đem đến cho kh&aacute;ch h&agrave;ng một sản phẩm chất lượng với một mức chi ph&iacute; hợp l&yacute; nhất; Thời gian ho&agrave;n th&agrave;nh website nhanh ch&oacute;ng đ&uacute;ng tiến độ; Dịch vụ hậu m&atilde;i tốt nhất c&ugrave;ng nhiều ưu đ&atilde;i đặc biệt kh&aacute;c sau khi website đ&atilde; ho&agrave;n th&agrave;nh v&agrave; đưa v&agrave;o sử dụng. Đối với ch&uacute;ng t&ocirc;i, chất lượng sản phẩm của bạn l&agrave; ưu ti&ecirc;n h&agrave;ng đầu trong việc thiết kế web.</p>\r\n\r\n<h4>LI&Ecirc;N HỆ TƯ VẤN MIỄN PH&Iacute;&nbsp;<strong><a href=\"mailto:thietkewebnhanh247@gmail.com\">0</a>927.15.15.35</strong></h4>\r\n\r\n<p>&nbsp;</p>', 28, 1, 1, '2019-10-31 07:58:09', '2019-10-31 08:25:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_tags`
--

CREATE TABLE `service_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `searchs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_tags`
--

INSERT INTO `service_tags` (`id`, `name`, `service_id`, `created_at`, `updated_at`, `searchs`) VALUES
(140, 'Talentwins', 14, '2019-10-17 07:56:33', NULL, 0),
(164, 'Talentwins', 20, '2019-10-31 08:25:53', NULL, 0),
(165, 'Website', 20, '2019-10-31 08:25:53', NULL, 0),
(166, 'ThietKeWeb', 20, '2019-10-31 08:25:53', NULL, 0),
(241, 'SEO', 16, '2019-11-02 07:29:14', NULL, 0),
(242, 'Content', 16, '2019-11-02 07:29:14', NULL, 0),
(251, 'content', 15, '2019-11-02 09:52:39', NULL, 0),
(252, 'Seo', 15, '2019-11-02 09:52:39', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `active`, `created_at`, `updated_at`) VALUES
(4, 'gF05_image_Banner web88.png', 'Web88.vn - Thiết Kế Chuyên Nghiệp', 1, '2019-10-14 04:47:49', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider_content`
--

CREATE TABLE `slider_content` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supports`
--

INSERT INTO `supports` (`id`, `name`, `image`, `phone`, `email`, `active`, `created_at`, `updated_at`) VALUES
(5, 'Lê Hồng Nhung - Nhân viên Kinh doanh', 'lugF_image_logo web88.png', '0927151535', 'Sale@talentwins.co', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'uỷeuiybwrywyr8', 'gyuruwyeuw', 'hgug@gmail.com', '0937285754', '2019-09-12 01:59:03', NULL),
(2, 'hihihihiiihii', 'jhsdgjsdgjksdkg', 'hi@gmail.com', '0738759875', '2019-09-12 02:01:14', NULL),
(3, 'cong duong', 'hai phong', 'duong.bjno@gmail.com', '091283781273', '2019-09-13 09:36:55', NULL),
(4, 'Ellsmogue', 'Tangier', 'ellDuct@daff.pw', '81918615111', '2019-09-18 23:19:57', NULL),
(5, 'Địt Mẹ Mày', 'Thằng Mặt LỒN', 'contact@talentwins.co', '0927151535', '2019-10-16 06:31:15', NULL),
(6, 'Cao Thế Dũng', '18 tố hữu, từ liêm, hà nội', 'caodung240494@gmail.com', '0965956204', '2019-10-16 09:18:42', NULL),
(7, 'Trịnh Thị Dương', 'Viet Nam', 'xxx@gmail.com', '98127127212', '2019-10-24 14:45:12', NULL),
(8, 'xin chào hải dớ', 'chungtoicamonhaido@gmail.com', 'chungtoicamonhaido@gmail.com', '0123456789', '2019-10-25 09:56:22', NULL),
(9, 'Ggghhhhh', 'Ftubcinm. Bcghbjnn', 'gabvfy@gmail.com', '838800', '2019-10-26 07:59:12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `web`
--

CREATE TABLE `web` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `web`
--

INSERT INTO `web` (`id`, `name`, `slug`, `image`, `link`, `cate_id`, `active`, `created_at`, `updated_at`) VALUES
(38, 'Web thực phẩm sạch', 'web-thuc-pham-sach', 'gGK0_image_thucpham.herokuapp.com.png', 'http://mytammart.com/', 9, 1, '2019-10-14 04:00:03', NULL),
(39, 'Web bán dụng cụ XD', 'web-ban-dung-cu-xd', 'JX03_image_httphaithu.com.png', 'http://haithu.com/', 9, 1, '2019-10-14 04:02:18', NULL),
(40, 'Web Thực Phẩm Chức Năng', 'web-thuc-pham-chuc-nang', '6Yzc_image_output-onlinepngtools.jpg', 'http://banhang1.web88.vn/', 1, 1, '2019-10-14 04:29:37', NULL),
(41, 'Web Thực Phẩm Chức Năng', 'web-thuc-pham-chuc-nang', 'YZva_image_banhang2.png', 'http://banhang2.web88.vn', 9, 1, '2019-10-14 04:49:59', NULL),
(42, 'Web Thực Phẩm Chức Năng', 'web-thuc-pham-chuc-nang', 'Uufp_image_banhang3.png', 'http://banhang3.web88.vn/', 9, 1, '2019-10-14 04:51:34', NULL),
(43, 'Web Bán Bánh Ngọt', 'web-ban-banh-ngot', 'BPgL_image_banhang4.png', 'http://banhang4.web88.vn/', 1, 1, '2019-10-14 04:52:55', NULL),
(44, 'Web Bán Sữa', 'web-ban-sua', 'qbjL_image_banhang5.png', 'http://banhang5.web88.vn/', 1, 1, '2019-10-14 04:55:40', NULL),
(45, 'Thời Trang Trẻ Em', 'thoi-trang-tre-em', 'lZJA_image_banhang6.png', 'http://banhang6.web88.vn/', 1, 1, '2019-10-14 04:57:11', NULL),
(46, 'Bán Mỹ Phẩm', 'ban-my-pham', 'b5KV_image_banhang7.png', 'http://banhang7.web88.vn/', 9, 1, '2019-10-14 05:03:25', NULL),
(47, 'Mỹ Phẩm Organic', 'my-pham-organic', 'zNEn_image_banhang8.png', 'http://banhang8.web88.vn/', 9, 1, '2019-10-14 05:04:58', NULL),
(48, 'Bán Nông Sản', 'ban-nong-san', 'NBf7_image_banhang9.png', 'http://banhang9.web88.vn/', 9, 1, '2019-10-14 05:07:13', NULL),
(49, 'Bán Mỹ Phẩm', 'ban-my-pham', 'x8Dk_image_banhang10.png', 'http://banhang10.web88.vn/', 9, 1, '2019-10-14 05:11:07', NULL),
(50, 'Bán Mỹ Phẩm', 'ban-my-pham', 'TK9e_image_banhang11.png', 'http://banhang11.web88.vn/', 9, 1, '2019-10-14 05:12:33', NULL),
(51, 'Bán Nước Hoa', 'ban-nuoc-hoa', 'LOQX_image_banhang12.png', 'http://banhang12.web88.vn/', 9, 1, '2019-10-14 05:13:49', NULL),
(52, 'Công Ty Sự Kiện Team Buiding', 'cong-ty-su-kien-team-buiding', 'V1qe_image_banhang13.png', 'http://banhang13.web88.vn/', 2, 1, '2019-10-14 05:20:06', NULL),
(53, 'Bán Mỹ Phẩm', 'ban-my-pham', 'XRWP_image_banhang14.png', 'http://banhang14.web88.vn/', 9, 1, '2019-10-14 05:21:13', NULL),
(54, 'Bán Hoa Tươi', 'ban-hoa-tuoi', 'Ypcr_image_banhang15.png', 'http://banhang15.web88.vn/', 9, 1, '2019-10-14 05:22:26', NULL),
(55, 'Bán Thiết Bị Nội Thất', 'ban-thiet-bi-noi-that', 'uSZW_image_banhang16.png', 'http://banhang16.web88.vn/', 9, 1, '2019-10-14 05:23:46', NULL),
(56, 'Bán Đồ Phong Thuỷ', 'ban-do-phong-thuy', 'rKI3_image_banhang17.png', 'http://banhang17.web88.vn/', 9, 1, '2019-10-14 05:25:25', NULL),
(57, 'Bán Giầy Dép', 'ban-giay-dep', 'YTnG_image_18.png', 'http://banhang18.web88.vn/', 9, 1, '2019-10-14 05:28:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `web_users`
--

CREATE TABLE `web_users` (
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `web_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `web_users`
--

INSERT INTO `web_users` (`users_id`, `web_id`, `status`, `title`, `content`, `created_at`, `updated_at`) VALUES
(5, 49, 0, 'ĐỊT MẸ MẸ MÀY', NULL, '2019-10-16 06:31:15', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_level_foreign` (`level`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_cate_id_foreign` (`cate_id`),
  ADD KEY `blogs_admin_id_foreign` (`admin_id`);

--
-- Chỉ mục cho bảng `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tags_blogs_id_foreign` (`blogs_id`);

--
-- Chỉ mục cho bảng `cate_blogs`
--
ALTER TABLE `cate_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cate_web`
--
ALTER TABLE `cate_web`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cate_web_name_unique` (`name`),
  ADD KEY `cate_web_active_index` (`active`),
  ADD KEY `cate_web_slug_index` (`slug`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_active_index` (`active`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `other_service`
--
ALTER TABLE `other_service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `other_service_name_unique` (`name`);

--
-- Chỉ mục cho bảng `other_service_tags`
--
ALTER TABLE `other_service_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `other_service_tags_other_service_id_foreign` (`other_service_id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_name_unique` (`name`);

--
-- Chỉ mục cho bảng `service_tags`
--
ALTER TABLE `service_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_tags_service_id_foreign` (`service_id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider_content`
--
ALTER TABLE `slider_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supports_email_unique` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id`),
  ADD KEY `web_cate_id_foreign` (`cate_id`),
  ADD KEY `web_slug_index` (`slug`),
  ADD KEY `web_active_index` (`active`);

--
-- Chỉ mục cho bảng `web_users`
--
ALTER TABLE `web_users`
  ADD KEY `web_users_users_id_foreign` (`users_id`),
  ADD KEY `web_users_web_id_foreign` (`web_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cate_blogs`
--
ALTER TABLE `cate_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cate_web`
--
ALTER TABLE `cate_web`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `other_service`
--
ALTER TABLE `other_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `other_service_tags`
--
ALTER TABLE `other_service_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `service_tags`
--
ALTER TABLE `service_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slider_content`
--
ALTER TABLE `slider_content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `web`
--
ALTER TABLE `web`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_level_foreign` FOREIGN KEY (`level`) REFERENCES `role` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `cate_blogs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD CONSTRAINT `blog_tags_blogs_id_foreign` FOREIGN KEY (`blogs_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `other_service_tags`
--
ALTER TABLE `other_service_tags`
  ADD CONSTRAINT `other_service_tags_other_service_id_foreign` FOREIGN KEY (`other_service_id`) REFERENCES `other_service` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_tags`
--
ALTER TABLE `service_tags`
  ADD CONSTRAINT `service_tags_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `web`
--
ALTER TABLE `web`
  ADD CONSTRAINT `web_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `cate_web` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `web_users`
--
ALTER TABLE `web_users`
  ADD CONSTRAINT `web_users_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `web_users_web_id_foreign` FOREIGN KEY (`web_id`) REFERENCES `web` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
