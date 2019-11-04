-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 30, 2019 lúc 02:34 PM
-- Phiên bản máy phục vụ: 5.6.42
-- Phiên bản PHP: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `admin_web88`
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
(4, 'admin', 'admin@gmail.com', '$2y$12$2yswUYIHRzYyB38a8xXL5efirAI0xTO06icdVQyHn5ITkVlv5Wi9m', '1962123325', 1, 1, NULL, NULL);

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
(2, 'Thiết kế website', 1, '2019-09-12 01:52:19', NULL);

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
(11, 'THIẾT KẾ WEBSITE DOANH NGHIỆP', 'thiet-ke-website-doanh-nghiep', 'THIẾT KẾ WEBSITE DOANH NGHIỆP', 'THIẾT KẾ WEBSITE DOANH NGHIỆP', 'eJdS_image_thietkeweb-halong-quangninh.jpg', '<p><span style=\"color:#27ae60\">► <span style=\"font-size:14px\">Thiết kế website doanh nghiệp giới thiệu c&ocirc;ng ty chuy&ecirc;n nghiệp</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">Thiết kế website doanh nghiệp mang lại lợi &iacute;ch g&igrave;?</span></span>\r\n\r\n	<ul>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">1. X&acirc;y dựng v&agrave; nhận diện thương hiệu c&ocirc;ng ty tr&ecirc;n Internet</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">2. Thể hiện sự chuy&ecirc;n nghiệp của c&ocirc;ng ty</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">3. Website doanh nghiệp gi&uacute;p tiết kiệm chi ph&iacute;</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">4. Tương t&aacute;c, chăm s&oacute;c kh&aacute;ch h&agrave;ng 24/7</span></span></li>\r\n	</ul>\r\n	</li>\r\n	<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">G&oacute;i thiết kế kế website doanh nghiệp của&nbsp;ch&uacute;ng t&ocirc;i c&oacute; g&igrave; kh&aacute;c biệt</span></span></li>\r\n</ul>', '<p><span style=\"color:#27ae60\">► <span style=\"font-size:14px\">Thiết kế website doanh nghiệp giới thiệu c&ocirc;ng ty chuy&ecirc;n nghiệp</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">Thiết kế website doanh nghiệp mang lại lợi &iacute;ch g&igrave;?</span></span>\r\n\r\n	<ul>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">1. X&acirc;y dựng v&agrave; nhận diện thương hiệu c&ocirc;ng ty tr&ecirc;n Internet</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">2. Thể hiện sự chuy&ecirc;n nghiệp của c&ocirc;ng ty</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">3. Website doanh nghiệp gi&uacute;p tiết kiệm chi ph&iacute;</span></span></li>\r\n		<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">4. Tương t&aacute;c, chăm s&oacute;c kh&aacute;ch h&agrave;ng 24/7</span></span></li>\r\n	</ul>\r\n	</li>\r\n	<li><span style=\"font-size:14px\"><span style=\"color:#27ae60\">G&oacute;i thiết kế kế website doanh nghiệp của&nbsp;ch&uacute;ng t&ocirc;i c&oacute; g&igrave; kh&aacute;c biệt</span></span></li>\r\n</ul>', 1, 17, 1, '2019-10-11 03:38:22', NULL);

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
(13, 'Thiết Kế Web Giá Rẻ', 'thiet-ke-web-gia-re', 'THIẾT KẾ WEB GIÁ RẺ UY TÍN CHUYÊN NGHIỆP', 'Một website chuyên nghiệp cho việc bán hàng, bất động sản, du lịch, nhà hàng, khách sạn và quảng bá thương hiệu trở nên dễ dàng hơn', '2WjO_image_xxxx.png', '<p><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">► Thiết kế web gi&aacute; rẻ chuy&ecirc;n nghiệp</span></span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">► Dịch vụ l&agrave;m web gi&aacute; rẻ , uy t&iacute;n , chuy&ecirc;n nghiệp chuẩn SEO v&agrave; chất lượng</span></span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">► Quy tr&igrave;nh nhận thiết kế website chuy&ecirc;n nghiệp của ch&uacute;ng t&ocirc;i</span></span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">► Khi sử dụng dịch vụ thiết kế website của ch&uacute;ng t&ocirc;i sẽ mang lại cho bạn những lợi &iacute;ch tốt nhất</span></span></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">&diams; Ch&uacute;ng t&ocirc;i gi&uacute;p được g&igrave; cho bạn?</span></span></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">&diams; Website của bạn sẽ được thiết kế như thế n&agrave;o?</span></span></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">&diams; Tại sao bạn n&ecirc;n chọn dịch vụ thiết kế web gi&aacute; rẻ của ch&uacute;ng t&ocirc;i?</span></span></span></p>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\">THIẾT KẾ WEBSITE GI&Aacute; RẺ CỦA THIẾT KẾ WEB NHANH CAM KẾT:</span></span></span></p>', '<p><a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\"><strong>Thiết kế web gi&aacute; rẻ</strong></a>&nbsp;tại&nbsp;<strong>thiết kế web nhanh</strong>&nbsp;bạn sẽ c&oacute; một website chất lượng,&nbsp;<strong>chuy&ecirc;n nghiệp</strong>&nbsp;,&nbsp;<strong>chuẩn SEO</strong>&nbsp;,&nbsp;<strong>giao diện đẹp</strong>&nbsp;v&agrave;&nbsp; th&acirc;n thiện với người sử dụng.</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\">►</span> Bạn đang muốn sở hữu một website để bắt đầu kinh doanh online?</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\">►</span> Bạn muốn sản phẩm , dịch vụ của m&igrave;nh được mọi người biết đến?</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\">►</span> Bạn muốn thương hiệu của m&igrave;nh được mọi người biết đến?</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\">►</span> Song nguồn vốn kinh doanh của bạn c&oacute; hạn n&ecirc;n bạn phải tiết kiệm chi ph&iacute; thiết kế website?</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\">►</span> Bạn đang băn khoăn kh&ocirc;ng biết&nbsp;<strong>dịch vụ thiết kế web gi&aacute; rẻ&nbsp;</strong>&nbsp;th&igrave; chất lượng website c&oacute; đảm bảo hay kh&ocirc;ng?</p>\r\n\r\n<p style=\"margin-left:40px\">&nbsp;</p>\r\n\r\n<p><a href=\"http://thietkewebnhanh247.com/thiet-ke-web-gia-re/\" rel=\"nofollow\"><img alt=\"thiết kế website giá rẻ\" src=\"http://thietkewebnhanh247.com/wp-content/uploads/2016/10/thiet-ke-web-gia-re.jpg\" style=\"height:331px; width:559px\" /></a></p>\r\n\r\n<p><em>thiết kế website gi&aacute; rẻ</em></p>\r\n\r\n<h2><strong>Thiết kế web gi&aacute; rẻ chuy&ecirc;n nghiệp</strong></h2>\r\n\r\n<p>Khi&nbsp;<strong>Thiết kế web gi&aacute; rẻ&nbsp;</strong>tại <strong>Web88</strong>, kh&aacute;ch h&agrave;ng sẽ nhận lại được sự y&ecirc;n t&acirc;m với những ti&ecirc;u ch&iacute; như:</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;&nbsp;</strong></span>Trang web đẹp hiệu ứng mượt</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;</strong></span>&nbsp;Website được code chuẩn SEO hỗ trợ dữ liệu cấu tr&uacute;c, AMP mobile Google</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;</strong></span> &nbsp;Kh&aacute;ch h&agrave;ng chọn lựa đa dạng mẫu giao diện c&oacute; sẵn)</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;</strong></span> Tốc độ website nhanh.</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;</strong></span> Quản l&yacute; dễ d&agrave;ng v&agrave; th&acirc;n thiện người d&ugrave;ng.</p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#27ae60\"><strong>&divide;&nbsp;</strong></span>&nbsp;Web tương th&iacute;ch với c&aacute;c thiết bị di động v&agrave; m&aacute;y t&iacute;nh bảng.</p>\r\n\r\n<h3>Dịch vụ l&agrave;m&nbsp;web gi&aacute; rẻ , uy t&iacute;n , chuy&ecirc;n nghiệp chuẩn SEO v&agrave; chất lượng</h3>\r\n\r\n<p>Nếu bạn c&ograve;n băn khoăn về&nbsp;<a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\"><strong>dịch vụ thiết kế website gi&aacute; rẻ uy t&iacute;n</strong></a>&nbsp;. Đến với thiết kế web nhanh , bạn h&atilde;y y&ecirc;n t&acirc;m chỉ với mức gi&aacute; thiết kế thấp nhưng bạn sẽ c&oacute; một website đầy đủ t&iacute;nh năng cũng như l&agrave;m bạn h&agrave;i l&ograve;ng nhất .</p>\r\n\r\n<p>Với hơn 6 năm kinh nghiệm trong lĩnh vực&nbsp;<a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\"><strong>thiết kế website</strong></a>&nbsp;, chuy&ecirc;n nghiệp .&nbsp;<a href=\"http://web88.vn/dich-vu/thiet-ke-web-gia-re\"><strong>Thiết kế website nhanh</strong></a>&nbsp;sở hữu hơn 1000 giao diện cực đẹp v&agrave; li&ecirc;n tục cập nhật . Tất cả c&aacute;c mẫu website được ch&uacute;ng t&ocirc;i nghi&ecirc;n cứu v&agrave; chuẩn h&oacute;a từng ng&agrave;nh nghề cụ thể như :</p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-thuong-mai-dien-tu-1\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website b&aacute;n h&agrave;ng, thương mại điện tử</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-gioi-thieu-cong-ty-2\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website giới thiệu c&ocirc;ng ty</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-tin-tuc-3\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website tin tức</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-anh-vien-ao-cuoi-5\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website ảnh viện &aacute;o cưới</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-am-nhac-4\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website &acirc;m nhạc</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-ca-nhan-8\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website c&aacute; nh&acirc;n</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-giao-duc-7\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website gi&aacute;o dục</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-bat-dong-san-6\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website bất động sản</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-nha-hang-khach-san-10\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website nh&agrave; h&agrave;ng kh&aacute;ch sạn</span></a></p>\r\n\r\n<p style=\"margin-left:40px\"><a href=\"http://web88.vn/kho-giao-dien/mau-website-du-lich-11\" rel=\"nofollow\"><span style=\"color:#3498db\">Mẫu website du lịch</span></a></p>\r\n\r\n<p>Với h&agrave;ng trăm mẫu website ph&ugrave; hợp với từng lĩnh vực , c&ocirc;ng ty của bạn.</p>\r\n\r\n<p><a href=\"http://thietkewebnhanh247.com/thiet-ke-web-gia-re/\" rel=\"nofollow\"><img alt=\"Thiết kế web giá rẻ tại Hồ Chí Minh\" src=\"http://thietkewebnhanh247.com/wp-content/uploads/2017/01/banner-web-gia-re.jpg\" style=\"height:373px; width:886px\" /></a></p>\r\n\r\n<h3>Quy tr&igrave;nh nhận thiết kế website chuy&ecirc;n nghiệp của ch&uacute;ng t&ocirc;i</h3>\r\n\r\n<p style=\"margin-left:40px\">Bước 1: tiếp nhận y&ecirc;u cầu từ kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 2: lựa chọn t&ecirc;n miền- web hosting.</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 3: thiết kế giao diện &nbsp;ph&ugrave; hợp</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 4: x&acirc;y dựng c&aacute;c t&iacute;nh năng cho trang web.</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 5: kiểm&nbsp; thử&nbsp; trang web</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 6: ho&agrave;n thiện trang web.</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 7: đ&agrave;o tạo sử dụng.</p>\r\n\r\n<p style=\"margin-left:40px\">Bước 8: bảo tr&igrave;, n&acirc;ng cấp trang web.</p>\r\n\r\n<h3>Khi sử dụng dịch vụ thiết kế website của ch&uacute;ng t&ocirc;i sẽ mang lại cho bạn những lợi &iacute;ch tốt nhất</h3>\r\n\r\n<h3>Ch&uacute;ng t&ocirc;i gi&uacute;p được g&igrave; cho bạn?</h3>\r\n\r\n<p style=\"margin-left:40px\"><strong>Thiết kế web nhanh</strong>&nbsp;cung cấp những c&ocirc;ng cụ tuyệt vời gi&uacute;p bạn ph&aacute;t triển thương hiệu v&agrave; marketing online</p>\r\n\r\n<p style=\"margin-left:40px\">Với đội ngũ&nbsp;<a href=\"http://web88.vn/kho-giao-dien/mau-website-du-lich-11\"><strong>thiết kế website &nbsp;chuy&ecirc;n nghiệp</strong></a>&nbsp;sẽ mang đến cho bạn những sản phẩm tuyệt vời với phong c&aacute;ch . Từ đ&oacute; l&agrave;m nền tảng định h&igrave;nh thương hiệu , tăng th&ecirc;m uy t&iacute;n cho sản phẩm v&agrave; dịch vụ b&aacute;n ra cũng như tăng t&iacute;nh cạnh tranh với c&aacute;c doanh nghiệp kh&aacute;c .</p>\r\n\r\n<h3>Website của bạn sẽ được thiết kế như thế n&agrave;o?</h3>\r\n\r\n<p style=\"margin-left:40px\">Website của bạn sẽ được thiết kế chuẩn SEO , tối ưu với google . Gi&uacute;p trang web của bạn nằm ở vị tr&iacute; cao tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm , tăng lượng kh&aacute;ch h&agrave;ng cho doanh nghiệp</p>\r\n\r\n<p style=\"margin-left:40px\">T&iacute;ch hợp hiện thị website tr&ecirc;n thiết bị di động . Điều n&agrave;y gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể truy cập website của bạn dễ h&agrave;ng hơn . Website tương th&iacute;ch với thiết bị di động cũng l&agrave; điều kiện cần để trang web bạn l&ecirc;n Top</p>\r\n\r\n<p style=\"margin-left:40px\">Thường xuy&ecirc;n cập nhật v&agrave; ho&agrave;n thiện t&iacute;nh năng</p>\r\n\r\n<p style=\"margin-left:40px\">Website của bạn lu&ocirc;n được hoạt động ổn định</p>\r\n\r\n<h4>Tại sao bạn n&ecirc;n chọn dịch vụ thiết kế web gi&aacute; rẻ của ch&uacute;ng t&ocirc;i?</h4>\r\n\r\n<p style=\"margin-left:40px\">Ch&uacute;ng t&ocirc;i lu&ocirc;n đặt chất lượng l&ecirc;n h&agrave;ng đầu</p>\r\n\r\n<p style=\"margin-left:40px\">Đội ngũ thiết kế website d&agrave;y dặn kinh nghiệm</p>\r\n\r\n<p style=\"margin-left:40px\">Cam kết gi&aacute; thiết kế web hợp l&yacute; ,ph&ugrave; hợp với kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p style=\"margin-left:40px\">Thiết kế website chuẩn seo , chuẩn mobile</p>\r\n\r\n<p style=\"margin-left:40px\">Chế độ bảo mật website cao</p>\r\n\r\n<p style=\"margin-left:40px\">C&ocirc;ng nghệ thiết kế website hiện đại nhất</p>\r\n\r\n<p style=\"margin-left:40px\">Cam kết hỗ trợ 24/7</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/thiet-ke-web-magento(1).jpg\" style=\"height:320px; width:640px\" /></p>\r\n\r\n<h3><strong>THIẾT KẾ WEBSITE GI&Aacute; RẺ CỦA THIẾT KẾ WEB NHANH CAM KẾT:</strong></h3>\r\n\r\n<p style=\"margin-left:40px\">Mức chi ph&iacute; thiết kế web rẻ nhất: từ 3.500.000 cho một website chuy&ecirc;n nghiệp</p>\r\n\r\n<p style=\"margin-left:40px\">Hơn 1000 giao diện cực đẹp, li&ecirc;n tục cập nhật với h&agrave;ng trăm&nbsp;<a href=\"http://web88.vn/kho-giao-dien\">mẫu website chuy&ecirc;n nghiệp</a>&nbsp;tr&ecirc;n tất cả tr&ecirc;n cả c&aacute;c lĩnh vực, gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng lựa chọn mẫu website ưng &yacute; nhất</p>\r\n\r\n<p style=\"margin-left:40px\"><strong>Quy tr&igrave;nh l&agrave;m website gi&aacute; rẻ</strong>&nbsp;lu&ocirc;n đảm bảo được tiến độ sớm nhất</p>\r\n\r\n<p style=\"margin-left:40px\">Thiết kế website chuy&ecirc;n nghiệp uy t&iacute;n lu&ocirc;n đặt l&ecirc;n h&agrave;ng đầu</p>\r\n\r\n<p style=\"margin-left:40px\">Chỉnh sửa giao diện ph&ugrave; hợp với y&ecirc;u cầu v&agrave; đặc th&ugrave; nghề nghiệp của kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p style=\"margin-left:40px\">Trang web được t&iacute;ch hợp t&iacute;nh năng vượt trội gi&uacute;p việc b&aacute;n h&agrave;ng v&agrave; quảng b&aacute;n thương hiệu trở n&ecirc;n chuy&ecirc;n nghiệp v&agrave; dễ d&agrave;ng hơn</p>\r\n\r\n<p style=\"margin-left:40px\">Website được thiết kế chuy&ecirc;n nghiệp , hiện đại , theo chuẩn W3C</p>\r\n\r\n<p style=\"margin-left:40px\">Website được t&iacute;ch hợp c&ocirc;ng nghệ ti&ecirc;n tiến nhất như HTML5 , CSS5 &hellip; đảm bảo tốc độ nhanh khi truy cập</p>\r\n\r\n<p style=\"margin-left:40px\">Giao diện quản trị chuy&ecirc;n nghiệp , bạn kh&ocirc;ng cần phải am hiểu nhiều về lĩnh vực c&ocirc;ng nghệ th&ocirc;ng tin cũng dễ d&agrave;ng quản trị</p>\r\n\r\n<p style=\"margin-left:40px\">Hỗ trợ tư vấn c&aacute;c giải ph&aacute;p marketing online</p>\r\n\r\n<p style=\"margin-left:40px\">Website được thiết kế chuẩn SEO để dễ d&agrave;ng l&ecirc;n top tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm</p>\r\n\r\n<p style=\"margin-left:40px\">Website được thiết kế chuẩn mobile , gi&uacute;p kh&aacute;ch h&agrave;ng của bạn dễ d&agrave;ng truy cập v&agrave; mua h&agrave;ng dễ d&agrave;ng v&agrave; tiện lợi hơn</p>\r\n\r\n<p style=\"margin-left:40px\">Hỗ trợ tư vấn kỹ thuật v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng nhanh ch&oacute;ng v&agrave; nhiệt t&igrave;nh nhất</p>\r\n\r\n<p>H&atilde;y li&ecirc;n hệ với ch&uacute;ng t&ocirc;i ngay để được hỗ trợ v&agrave; tư vấn ho&agrave;n to&agrave;n miễn ph&iacute;</p>\r\n\r\n<p>Li&ecirc;n hệ: <strong>0927.15.15.35&nbsp; |&nbsp;</strong>email:<strong>&nbsp;contact@talentwins.co</strong></p>\r\n\r\n<p><strong>Xem th&ecirc;m:</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"http://web88.vn/dich-vu/thiet-ke-website-theo-mau\">Thiết kế website trọn g&oacute;i gi&aacute; rẻ</a></li>\r\n</ul>', 125, 1, 1, '2019-10-11 03:04:17', '2019-10-17 10:59:22'),
(14, 'Thiết Kế Website Theo mẫu', 'thiet-ke-website-theo-mau', 'THIẾT KẾ WEBSITE THEO MẪU', 'Một website chuyên nghiệp cho việc bán hàng và quảng bá thương hiệu trở nên dễ dàng hơn', 'yceq_image_cong-ty-thiet-ke-website-uy-tin-chuyen-nghiep-tai-tphcm-6.jpg', '<ul>\r\n	<li>Thiết kế web theo mẫu l&agrave; g&igrave;?</li>\r\n	<li>1/ Tại sao n&ecirc;n chọn dịch vụ thiết kế web theo mẫu?</li>\r\n	<li>2/ T&ocirc;i sợ c&oacute; sự tr&ugrave;ng lặp về &yacute; tưởng của dịch vụ thiết kế web theo mẫu?</li>\r\n	<li>3/ Chi ph&iacute; đầu tư cho một Web theo mẫu l&agrave; bao nhi&ecirc;u?</li>\r\n	<li>4/ Khi đăng k&yacute; dịch vụ thiết kế web theo mẫu t&ocirc;i sẽ nhận được g&igrave;?</li>\r\n	<li>5/ Thời gian để ho&agrave;n th&agrave;nh trang Web theo mẫu l&agrave; bao l&acirc;u?</li>\r\n	<li>6/ T&ocirc;i muốn trang web c&oacute; nhiều ng&ocirc;n ngữ th&igrave; c&oacute; được kh&ocirc;ng?</li>\r\n	<li>7/ Khi thiết kế xong trang web, ai l&agrave; người sẽ nhập dữ liệu v&agrave;o trang web?</li>\r\n	<li>8/ Quy tr&igrave;nh khởi tạo dịch vụ thiết kế web theo mẫu như thế n&agrave;o?</li>\r\n	<li>9/ Ưu điểm của &ldquo;Dịch vụ thiết kế web theo mẫu&rdquo; l&agrave; g&igrave;?</li>\r\n	<li>10/ &ldquo;Web theo mẫu&rdquo; c&oacute; ph&ugrave; hợp với Doanh nghiệp của t&ocirc;i kh&ocirc;ng?</li>\r\n	<li>11/ Nguy&ecirc;n nh&acirc;n n&agrave;o c&oacute; thể dẫn đến việc chậm trể thời gian so với dự kiến?</li>\r\n	<li>12/ T&ocirc;i muốn sử dụng dịch vụ thiết kế web theo mẫu ngay th&igrave;&nbsp;phải l&agrave;m sao?</li>\r\n</ul>', '<h2>Thiết kế web theo mẫu l&agrave; g&igrave;?</h2>\r\n\r\n<p><strong>Thiết kế web theo mẫu</strong>&nbsp;l&agrave; dịch vụ website được x&acirc;y dựng sẵn th&agrave;nh c&aacute;c g&oacute;i web theo từng ng&agrave;nh nghề cụ thể. Với những thiết kế hiện đại v&agrave; lu&ocirc;n được cập nhật những c&ocirc;ng nghệ mới nhất. Được nghi&ecirc;n cứu chuẩn h&oacute;a những chức năng cần thiết cho từng lĩnh vực<br />\r\n<strong>VD:</strong>&nbsp;Web b&aacute;n h&agrave;ng, Web tin tức, Web giới thiệu c&ocirc;ng ty, Web dạy học &hellip; Nhằm tiết kiệm chi ph&iacute;, thời gian v&agrave; n&acirc;ng gi&aacute; trị cho sản phẩm website của&nbsp;kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><a href=\"http://thietkewebnhanh247.com/thiet-ke-web-theo-mau/\" rel=\"nofollow\"><img alt=\"Thiết kế website theo mẫu\" src=\"http://thietkewebnhanh247.com/wp-content/uploads/2016/10/fd13ccf1a164bb85daf52fa0b7b10e68.jpg\" /></a><br />\r\n<em>Thiết kế website theo mẫu</em></p>\r\n\r\n<h2>1/ Tại sao n&ecirc;n chọn dịch vụ thiết kế web theo mẫu?</h2>\r\n\r\n<p><strong>Thiết kế web theo mẫu</strong>&nbsp;sử dụng những mẫu web m&agrave; c&aacute;c C&ocirc;ng ty&nbsp;<a href=\"http://web88.vn/\">thiết kế web chuy&ecirc;n nghiệp</a>&nbsp;đ&atilde; thiết kế sẵn cho kh&aacute;ch h&agrave;ng. Họ đ&atilde; nghi&ecirc;n cứu v&agrave; triển khai c&aacute;c g&oacute;i website chuẩn mực theo từng ng&agrave;nh nghề với những chức năng v&agrave; giao diện chuy&ecirc;n nghiệp. Nếu bạn chọn dịch vụ n&agrave;y th&igrave; chi ph&iacute; đầu tư l&agrave; cực kỳ thấp v&agrave; thời gian thực hiện sẽ rất nhanh ch&oacute;ng để c&oacute; được một website chuy&ecirc;n nghiệp.</p>\r\n\r\n<h2>2/ T&ocirc;i sợ c&oacute; sự tr&ugrave;ng lặp về &yacute; tưởng của dịch vụ thiết kế web theo mẫu?</h2>\r\n\r\n<p>Dịch vụ&nbsp;<strong><a href=\"http://web88.vn/\">thiết kế web theo mẫu</a></strong>&nbsp;chỉ sử dụng lại phần lập tr&igrave;nh, kh&ocirc;ng sử dụng lại phần thiết kế giao diện cho n&ecirc;n mỗi trang web được tạo ra c&oacute; giao diện kh&aacute;c biệt n&ecirc;n tr&aacute;nh được sự tr&ugrave;ng lặp. Hơn nữa khi sử dụng dịch vụ thiết kế web theo mẫu n&agrave;y bạn cũng c&oacute; thể thay đổi để c&oacute; phong c&aacute;ch ri&ecirc;ng cho m&igrave;nh.</p>\r\n\r\n<h2>3/ Chi ph&iacute; đầu tư cho một Web theo mẫu l&agrave; bao nhi&ecirc;u?</h2>\r\n\r\n<p>Chi ph&iacute; để c&oacute; được một trang&nbsp;<strong>web theo mẫu</strong>&nbsp;chỉ&nbsp;&nbsp;2.500.000 đồng&nbsp;, chi ph&iacute; đầu tư n&agrave;y tuy thấp nhưng bạn ho&agrave;n to&agrave;n c&oacute; thể sở hữu&nbsp;một website ri&ecirc;ng với đầy đủ c&aacute;c t&iacute;nh năng cần thiết v&igrave; đ&atilde; được c&aacute;c nh&agrave; ph&aacute;t triển nghi&ecirc;n cứu v&agrave; chuẩn h&oacute;a.</p>\r\n\r\n<h2>4/ Khi đăng k&yacute; dịch vụ thiết kế web theo mẫu t&ocirc;i sẽ nhận được g&igrave;?</h2>\r\n\r\n<p><em><strong>Khi đăng k&yacute; sử dụng dịch vụ&nbsp;<a href=\"http://web88.vn/\">thiết kế web theo mẫu</a>&nbsp;tại Thiết kế website88, kh&aacute;ch h&agrave;ng sẽ nhận được:</strong></em></p>\r\n\r\n<ul>\r\n	<li>Được sở hữu một website chuy&ecirc;n nghiệp với đầy đủ c&aacute;c t&iacute;nh năng</li>\r\n	<li>Được quản l&yacute; to&agrave;n bộ m&atilde; nguồn để c&oacute; thể tự quản l&yacute; v&agrave; ph&aacute;t triển về sau</li>\r\n	<li>Được y&ecirc;u cầu chỉnh sửa những thay đổi cơ bản</li>\r\n	<li>Được miễn ph&iacute; 1 năm dịch vụ Hosting cơ bản (Dung lượng 250Mb v&agrave; 5000Gb băng th&ocirc;ng).</li>\r\n</ul>\r\n\r\n<h2>5/ Thời gian để ho&agrave;n th&agrave;nh trang Web theo mẫu l&agrave; bao l&acirc;u?</h2>\r\n\r\n<p>Khoảng từ 1 ng&agrave;y đến 5 ng&agrave;y từ l&uacute;c&nbsp;đăng k&yacute; dịch vụ</p>\r\n\r\n<h2>6/ T&ocirc;i muốn trang web c&oacute; nhiều ng&ocirc;n ngữ th&igrave; c&oacute; được kh&ocirc;ng?</h2>\r\n\r\n<p>Mỗi ng&ocirc;n ngữ cộng th&ecirc;m chi ph&iacute; 20% tương đương 500.000 đồng, bạn c&oacute; thể y&ecirc;u cầu nhiều ng&ocirc;n ngữ kh&aacute;c nhau như Tiếng Anh, Tiếng Ph&aacute;p, Tiếng Nhật,&hellip; nếu thiết kế nhiều ng&ocirc;n ngữ bạn phải cung cấp nội dung bằng ng&ocirc;n ngữ bạn cần thiết kế.</p>\r\n\r\n<h2>7/ Khi thiết kế xong trang web, ai l&agrave; người sẽ nhập dữ liệu v&agrave;o trang web?</h2>\r\n\r\n<p>Khi thiết kế website xong ch&uacute;ng t&ocirc;i sẽ hỗ trợ nhập nội dung mẫu v&agrave;o trang web cụ thể như sau, đối với phần nội dung sẽ nhập tối đa 10 trang, đối với phần sản phẩm sẽ hỗ trợ nhập tối đa 30 sản phẩm, nếu bạn c&oacute; th&ecirc;m sản phẩm th&igrave; c&oacute; thể tự nhập v&agrave;o trang web, ch&uacute;ng t&ocirc;i sẽ hướng dẫn c&aacute;ch quản l&yacute; dữ liệu tr&ecirc;n trang web, hoặc bạn c&oacute; thể thu&ecirc;&nbsp;<a href=\"http://web88.vn/\">dịch vụ nhập liệu</a>&nbsp;của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>8/ Quy tr&igrave;nh khởi tạo dịch vụ thiết kế web theo mẫu như thế n&agrave;o?</h2>\r\n\r\n<p><img alt=\"Thiết kế web theo mẫu\" src=\"http://thietkewebnhanh247.com/wp-content/uploads/2016/10/4buoc.png\" /><br />\r\nQuy tr&igrave;nh&nbsp;<strong><a href=\"http://web88.vn/\">thiết kế web theo mẫu</a></strong>&nbsp;của ch&uacute;ng t&ocirc;i kh&aacute; đơn giản, bạn chỉ mất 4 bước để c&oacute; 1 dịch vụ ho&agrave;n thiện</p>\r\n\r\n<ul>\r\n	<li>Bước 1: Lựa chọn giao diện web trong&nbsp;<a href=\"http://web88.vn/\" target=\"_blank\">Kho Giao Diện</a>&nbsp;của ch&uacute;ng t&ocirc;i (bạn c&oacute; thể d&ugrave;ng thử website trước khi lựa chọn)</li>\r\n	<li>Bước 2: Cung cấp th&ocirc;ng tin v&agrave; y&ecirc;u cầu chỉnh sửa của bạn cho ch&uacute;ng t&ocirc;i</li>\r\n	<li>Bước 3: Đội ngũ kỹ thuật của ch&uacute;ng t&ocirc;i sẽ chỉnh sửa những y&ecirc;u cầu m&agrave; bạn đưa ra</li>\r\n	<li>Bước 4: Đưa website v&agrave;o chạy thử nghiệm v&agrave; tiến h&agrave;nh b&agrave;n giao</li>\r\n</ul>\r\n\r\n<p>Sau khi bạn đăng k&yacute; dịch vụ, nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i sẽ qua gặp bạn trực tiếp hoặc li&ecirc;n hệ với bạn để lấy th&ocirc;ng tin v&agrave; k&yacute; kết hợp đồng.</p>\r\n\r\n<h2>9/ Ưu điểm của &ldquo;Dịch vụ thiết kế web theo mẫu&rdquo; l&agrave; g&igrave;?</h2>\r\n\r\n<p>Thời gian thiết kế nhanh từ 1 đến 5 ng&agrave;y, kh&ocirc;ng cần đầu tư chi ph&iacute; cao, kh&ocirc;ng cần quan t&acirc;m đến bất cứ chi ph&iacute; n&agrave;o ngo&agrave;i ph&iacute; thiết kế 2.500.000 đồng do được miễn ph&iacute; dịch vụ Hosting , c&oacute; thể xem trước những t&iacute;nh năng của trang web chuẩn bị thiết kế.</p>\r\n\r\n<h2>10/ &ldquo;Web theo mẫu&rdquo; c&oacute; ph&ugrave; hợp với Doanh nghiệp của t&ocirc;i kh&ocirc;ng?</h2>\r\n\r\n<p>Đối với những Doanh nghiệp nhỏ hoặc những Doanh nghiệp c&oacute; &iacute;t nội dung, h&igrave;nh ảnh hoặc Doanh nghiệp mới th&agrave;nh lập kinh ph&iacute; cho việc thiết kế trang web c&ograve;n hạn hẹp th&igrave; giải ph&aacute;p sử dụng Dịch vụ thiết kế web theo mẫu l&agrave; ph&ugrave; hợp nhất.</p>\r\n\r\n<h2>11/ Nguy&ecirc;n nh&acirc;n n&agrave;o c&oacute; thể dẫn đến việc chậm trể thời gian so với dự kiến?</h2>\r\n\r\n<p>Việc chậm trễ thường do nguy&ecirc;n nh&acirc;n như: kh&ocirc;ng c&oacute; thời gian kiểm duyệt, người c&oacute; quyền kiểm duyệt bận đi c&ocirc;ng t&aacute;c hoặc nguy&ecirc;n nh&acirc;n do chưa c&oacute; đủ dữ liệu để nhập v&agrave;o trang web, hoặc kh&ocirc;ng tự tin trong việc x&aacute;c nhận trang web đ&atilde; ho&agrave;n th&agrave;nh, sợ khi thanh to&aacute;n xong muốn sửa đổi sẽ gặp kh&oacute; khăn, nguy&ecirc;n nh&acirc;n nữa l&agrave; khi đăng k&yacute; dịch vụ &ldquo;Thiết kế web theo mẫu&rdquo; m&agrave; lại đưa ra qu&aacute; nhiều y&ecirc;u cầu kh&ocirc;ng ph&ugrave; hợp với quy định sử dụng dịch vụ &ldquo;Thiết kế web theo mẫu&rdquo; dẫn đến thời gian k&eacute;o d&agrave;i.</p>\r\n\r\n<p>Những nguy&ecirc;n nh&acirc;n tr&ecirc;n g&acirc;y n&ecirc;n việc chậm trễ v&igrave; vậy khi chấp nhận sử dụng dịch vụ &ldquo;Thiết kế web theo mẫu&rdquo; c&aacute;c b&ecirc;n phải tu&acirc;n thủ đ&uacute;ng nguy&ecirc;n tắc đ&atilde; thỏa thuận để trang web ho&agrave;n th&agrave;nh đ&uacute;ng tiến độ.</p>\r\n\r\n<h2>12/ T&ocirc;i muốn sử dụng dịch vụ thiết kế web theo mẫu ngay th&igrave;&nbsp;phải l&agrave;m sao?</h2>\r\n\r\n<p>Đơn giản l&agrave; bạn chỉ việc gọi đến số hotline của ch&uacute;ng t&ocirc;i:&nbsp;<strong>0927.15.15.35</strong>&nbsp;để được nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i tư vấn hoặc đặt lịch hẹn gặp để trao đổi về c&aacute;c &yacute; tưởng thiết kế.</p>', 24, 1, 1, '2019-10-17 07:46:46', '2019-10-17 07:56:33');

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
(150, 'Talentwins', 13, '2019-10-17 10:59:22', NULL, 0);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cate_blogs`
--
ALTER TABLE `cate_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cate_web`
--
ALTER TABLE `cate_web`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `service_tags`
--
ALTER TABLE `service_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slider_content`
--
ALTER TABLE `slider_content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
