-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 27, 2019 lúc 02:03 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_sneaker`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Nguyễn Ngọc Bảo', 'admin@gmail.com', '$2y$10$YSP9C3TnNDxRxZ/pqlQKUOktMh5ipdHnNG6GGoMOV70pUDxanxi66', '2019-03-26 06:16:29', '2019-03-26 06:16:29', 1),
(2, 'Alo Xe Ôm', 'alo_xeom@gmail.com', '$2y$10$PreQznRz5/fEd..vloimDurlMETE0hiN.5mq5/4ZkH4IWIA0ad.CO', '2019-03-25 16:40:56', '2019-03-25 16:40:56', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand_label`
--

CREATE TABLE `brand_label` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand_label`
--

INSERT INTO `brand_label` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Sneaker', '2019-03-07 03:01:07', '0000-00-00 00:00:00', 1),
(2, 'Running', '2019-03-07 03:01:07', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Adidas', '2019-03-07 02:54:32', '0000-00-00 00:00:00', 1),
(2, 'Nike', '2019-03-07 02:54:42', '0000-00-00 00:00:00', 1),
(3, 'Balenciaga', '2019-03-07 02:54:46', '0000-00-00 00:00:00', 1),
(4, 'Vans', '2019-03-07 02:54:48', '0000-00-00 00:00:00', 1),
(5, 'Reebok', '2019-03-15 03:31:46', '2019-03-15 03:31:46', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `infor`
--

CREATE TABLE `infor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hotline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `infor`
--

INSERT INTO `infor` (`id`, `name`, `title`, `logo`, `hotline`, `fax`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'TB-Sneaker123', 'Sneaker is my life.', 'logo2.png', '+84 33 6776 007', '+84 1900 58 58 10', 'tb-sneaker@gmail.com', '475A Điện Biên Phủ, Q.BT, Tp.HCM', '2019-03-24 10:37:21', '2019-03-17 03:43:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder`
--

CREATE TABLE `oder` (
  `id` int(11) NOT NULL,
  `t_id` int(11) DEFAULT NULL,
  `p_id` int(11) NOT NULL,
  `size` decimal(10,1) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` float(15,1) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oder`
--

INSERT INTO `oder` (`id`, `t_id`, `p_id`, `size`, `qty`, `price`, `amount`, `created_at`, `updated_at`) VALUES
(1, 9, 16, '8.0', 1, 65.0, '65.00', '2019-03-24 05:43:26', '2019-03-23 04:34:28'),
(2, 9, 20, '7.5', 1, 295.0, '295.00', '2019-03-24 05:43:34', '2019-03-23 04:34:28'),
(3, 10, 12, '9.0', 1, 95.0, '95.00', '2019-03-24 05:43:37', '2019-03-24 03:53:06'),
(4, 10, 11, '8.5', 2, 325.0, '650.00', '2019-03-24 05:43:43', '2019-03-24 03:53:06'),
(5, 11, 13, '10.0', 1, 495.0, '495.00', '2019-03-24 05:43:46', '2019-03-24 05:41:43'),
(6, 12, 35, NULL, 1, 245.0, '245.00', '2019-03-25 16:37:02', '2019-03-25 16:37:02'),
(7, 13, 10, NULL, 1, 595.0, '595.00', '2019-03-27 02:39:28', '2019-03-27 02:39:28'),
(8, 13, 30, NULL, 1, 65.0, '65.00', '2019-03-27 02:39:28', '2019-03-27 02:39:28'),
(9, 14, 6, NULL, 4, 75.0, '300.00', '2019-03-27 02:45:51', '2019-03-27 02:45:51'),
(10, 15, 22, NULL, 1, 800.0, '800.00', '2019-03-27 02:49:42', '2019-03-27 02:49:42'),
(11, 16, 33, NULL, 4, 85.0, '340.00', '2019-03-27 02:52:39', '2019-03-27 02:52:39'),
(12, 16, 1, NULL, 2, 230.0, '460.00', '2019-03-27 02:52:39', '2019-03-27 02:52:39'),
(13, 17, 6, NULL, 1, 75.0, '75.00', '2019-03-27 03:38:33', '2019-03-27 03:38:33'),
(14, 18, 33, NULL, 4, 85.0, '340.00', '2019-03-27 03:41:58', '2019-03-27 03:41:58'),
(15, 19, 42, NULL, 1, 250.0, '250.00', '2019-03-27 04:05:40', '2019-03-27 04:05:40'),
(16, 19, 7, NULL, 2, 125.0, '250.00', '2019-03-27 04:05:40', '2019-03-27 04:05:40'),
(17, 20, 32, NULL, 1, 285.0, '285.00', '2019-03-27 07:24:05', '2019-03-27 07:24:05'),
(18, 21, 31, NULL, 3, 65.0, '195.00', '2019-03-27 07:34:42', '2019-03-27 07:34:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `price` decimal(15,1) NOT NULL,
  `price_sale` decimal(15,1) DEFAULT '0.0',
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `c_id`, `b_id`, `price`, `price_sale`, `avatar`, `qty`, `admin_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 'AIR JORDAN 1 RETRO HIGH OG \"PHANTOM\"', 2, 1, '230.0', '170.0', 'jd1.jpg', 20, 0, '2019-03-11 04:44:45', '2019-03-11 04:44:45', 1),
(3, 'Nike AirMax 90 \"Off-White\"', 2, 1, '1395.0', '0.0', 'am90-offwhite.jpg', 12, 1, '2019-03-10 07:22:30', '2019-03-10 07:18:32', 1),
(4, 'Ultra Boost \"Oreo\"', 1, 1, '180.0', '0.0', 'ub-oreo.jpg', 15, 1, '2019-03-10 07:25:20', '2019-03-10 07:24:17', 1),
(5, 'Air Force 1 \"Fo Fi Fo\"', 2, 1, '120.0', '110.0', 'af1-fifo.jpg', 30, 1, '2019-03-10 07:35:47', '2019-03-10 07:34:51', 1),
(6, 'Adidas SuperStar', 1, 1, '75.0', '0.0', 'ss.jpg', 16, 1, '2019-03-11 03:23:58', '2019-03-11 03:10:37', 0),
(7, 'Nike AirMax 90 Premium', 2, 1, '125.0', '95.0', 'am90-premium.jpg', 30, 1, '2019-03-11 03:40:50', '2019-03-11 03:38:53', 1),
(8, 'NMD R1', 1, 1, '95.0', '0.0', 'nmdr1.jpg', 45, 1, '2019-03-11 05:00:52', '2019-03-11 03:42:55', 1),
(10, 'Yeezy 700 \"WAVE RUNNER\"', 1, 1, '595.0', '550.0', 'yzy700.jpg', 15, 1, '2019-03-11 15:42:01', '2019-03-11 15:38:58', 1),
(11, 'AIR JORDAN 4 RETRO', 2, 1, '325.0', '0.0', '011607_1.jpg', 30, 1, '2019-03-12 09:26:32', '2019-03-12 08:56:51', 1),
(12, 'EQT SUPPORT 93/17', 1, 2, '95.0', '85.0', 'eqt1.jpg', 40, 1, '2019-03-12 09:26:22', '2019-03-12 09:04:28', 1),
(13, 'YEEZY  350 \"BELUGA 2.0\"', 1, 1, '495.0', '470.0', 'Yt4N_802389.jpg', 20, 1, '2019-03-13 14:43:50', '2019-03-13 14:43:50', 1),
(14, 'JORDAN 11 RETRO', 2, 1, '315.0', '0.0', 'hsmW_805882.jpg', 40, 1, '2019-03-14 03:19:12', '2019-03-14 03:19:12', 1),
(15, 'VANS OLD SKOOL', 4, 1, '60.0', '0.0', '2Ba6_806969.jpg', 150, 1, '2019-03-14 03:23:56', '2019-03-14 03:23:56', 1),
(16, 'AUTHENTIC \"FLAME WALL\"', 4, 1, '65.0', '0.0', 'wRPn_806692.jpg', 120, 1, '2019-03-14 03:28:11', '2019-03-14 03:28:11', 1),
(20, 'YEEZY  350  \"FROZEN YELLOW\"', 1, 1, '295.0', '0.0', 'RrkqWK_01.jpg', 120, 1, '2019-03-14 14:56:14', '2019-03-14 14:56:14', 1),
(21, 'BALENCIAGA TRIPLE S', 3, 1, '1200.0', '0.0', 'UQg8Qo_803611_01.jpg', 50, 1, '2019-03-25 02:30:07', '2019-03-25 02:30:07', 1),
(22, 'BALENCIAGA TRIPLE S', 3, 1, '800.0', '0.0', 'HpzW7i_803626_01.jpg', 35, 1, '2019-03-25 02:33:56', '2019-03-25 02:33:56', 1),
(23, 'BALENCIAGA TRIPLE S', 3, 1, '1000.0', '0.0', 'ziKMWz_803690_01.jpg', 30, 1, '2019-03-25 02:41:04', '2019-03-25 02:41:04', 1),
(24, 'BALENCIAGA TRIPLE S', 3, 1, '1100.0', '0.0', 'pdsnSY_803860_01.jpg', 45, 1, '2019-03-25 02:42:25', '2019-03-25 02:42:25', 1),
(25, 'BALENCIAGA TRIPLE S', 3, 1, '900.0', '0.0', 'ELWdkF_804124_01.jpg', 30, 1, '2019-03-25 02:44:12', '2019-03-25 02:44:12', 1),
(26, 'INSTAPUMP FURY OG \"PACKERS\"', 5, 1, '135.0', '0.0', '9SAzfV_801137_01.jpg', 50, 1, '2019-03-25 02:49:09', '2019-03-25 02:49:09', 1),
(27, 'QUESTION MID CURRENSY \"JETLIFE\"', 5, 1, '55.0', '0.0', 'tNWJ6a_803892_01.jpg', 30, 1, '2019-03-25 02:50:32', '2019-03-25 02:50:32', 1),
(28, 'ROYAL NYLON', 5, 1, '55.0', '0.0', '6e7fqS_992242_1.jpg', 20, 1, '2019-03-25 02:51:49', '2019-03-25 02:51:49', 1),
(29, 'AUTHENTIC LX \"COMME DES GARCONS\"', 4, 1, '275.0', '0.0', '6acNtb_806518_01.jpg', 35, 1, '2019-03-25 03:01:18', '2019-03-25 03:01:18', 1),
(30, 'VANS OLD SKOOL', 4, 1, '65.0', '0.0', 'q2fIav_806954_01.jpg', 150, 1, '2019-03-25 03:03:22', '2019-03-25 03:03:22', 1),
(31, 'SWIFT RUN M', 1, 2, '65.0', '0.0', 'GnPHFc_802671_01.jpg', 50, 1, '2019-03-25 03:11:23', '2019-03-25 03:11:23', 1),
(32, 'NEMEZIZ TANGO 17+ 360AGILI', 1, 2, '285.0', '0.0', 'W0Xk8X_801400_1.jpg', 50, 1, '2019-03-25 03:12:26', '2019-03-25 03:12:26', 1),
(33, 'INIKI RUNNER W', 1, 2, '85.0', '0.0', 'VN1ljv_800646_01.jpg', 50, 1, '2019-03-25 03:13:16', '2019-03-25 03:13:16', 1),
(34, 'ARSHAM FUTURE RUNNER 4D \"DANIEL ARSHAM\"', 1, 2, '1240.0', '0.0', 'MNBQRk_805317_01.jpg', 30, 1, '2019-03-25 03:14:39', '2019-03-25 03:14:39', 1),
(35, 'SOLAR HU GLIDE M', 1, 2, '245.0', '0.0', 'JMPzlg_804970_01.jpg', 30, 1, '2019-03-25 03:16:16', '2019-03-25 03:16:16', 1),
(43, 'Gucci', 1, 2, '255.0', '0.0', 'hGS6qz_54516709_1081737338675345_4580421474011054080_n.jpg', 2, 1, '2019-03-27 07:21:18', '2019-03-27 07:21:18', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_img`
--

CREATE TABLE `product_img` (
  `id` int(11) NOT NULL,
  `img_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_img`
--

INSERT INTO `product_img` (`id`, `img_1`, `img_2`, `img_3`, `created_at`, `updated_at`) VALUES
(1, 'NVDjRY_135738_02.jpg', '7eKfEy_135738_03.jpg', 'Hll03G_135738_04.jpg', '2019-03-25 02:12:08', '2019-03-25 02:12:08'),
(3, 'TPsWmY_801893_2.jpg', 'C0XoKf_801893_3.jpg', 'mKSg8G_801893_4.jpg', '2019-03-25 02:11:56', '2019-03-25 02:11:56'),
(4, 'I8CBEz_800247_2.jpg', 'n6fDjx_800247_3.jpg', 'YjTXVQ_800247_4.jpg', '2019-03-25 02:11:38', '2019-03-25 02:11:38'),
(5, 'JDcjeO_804143_02.jpg', '8foCPX_804143_03.jpg', 'HH65Xu_804143_04.jpg', '2019-03-25 02:11:22', '2019-03-25 02:11:22'),
(6, 'SPCM3J_63600386460-adidas-superstar-ftwht-cblack-ftwht-201048_2.jpg', 'xrEUP5_63600386460-adidas-superstar-ftwht-cblack-ftwht-201048_3.jpg', 'sxnN64_63600386460-adidas-superstar-ftwht-cblack-ftwht-201048_4.jpg', '2019-03-25 02:11:02', '2019-03-25 02:11:02'),
(7, 'CYiEUz_805628_02.jpg', 'F7fOLD_805628_03.jpg', 'FDAi5K_805628_04.jpg', '2019-03-25 02:10:44', '2019-03-25 02:10:44'),
(8, '33BK99_805661_02.jpg', 'mImfR7_805661_03.jpg', 'F40X4L_805661_04.jpg', '2019-03-25 02:10:28', '2019-03-25 02:10:28'),
(10, 'koPL3Q_802501_02.jpg', 'iuy493_802501_03.jpg', 'JMFk3c_802501_04.jpg', '2019-03-25 02:10:12', '2019-03-25 02:10:12'),
(11, 'LxM1ay_011607_2.jpg', 'dikQ6d_011607_3.jpg', 'MGHT0q_011607_4.jpg', '2019-03-25 02:05:38', '2019-03-25 02:05:38'),
(12, 'RtmzCW_802277_02.jpg', 'dT2S8c_802277_03.jpg', 'G0EomE_802277_04.jpg', '2019-03-25 02:05:25', '2019-03-25 02:05:25'),
(13, 'VC2IHA_802389_02.jpg', 'YRAHvU_802389_03.jpg', 'noGdwN_802389_04.jpg', '2019-03-25 02:05:05', '2019-03-25 02:05:05'),
(14, 'OEJCVm_805882_1.jpg', '38x1ps_805882_4.jpg', 'V4DEb0_805882_3.jpg', '2019-03-25 02:04:51', '2019-03-25 02:04:51'),
(15, 'klJpol_806969_02.jpg', 'W1m7ZF_806969_03.jpg', 'SOeXF5_806969_04.jpg', '2019-03-25 02:04:29', '2019-03-25 02:04:29'),
(16, 'r7Tp2O_806692_02.jpg', 'KFVNKi_806692_03.jpg', 'pMmg8u_806692_04.jpg', '2019-03-25 02:01:14', '2019-03-25 02:01:14'),
(20, 'wyfGxZ_802388.jpg', 'NFt8vv_80238803.jpg', 'BtmS7T_01.jpg', '2019-03-14 14:43:00', '2019-03-14 14:43:00'),
(21, 'uKFR9O_803611_02.jpg', 'ebcVZ3_803611_03.jpg', 'cDKFlm_803611_04.jpg', '2019-03-25 02:31:05', '2019-03-25 02:31:05'),
(22, 'jqBTEm_803626_02.jpg', 'GBGuc5_803626_03.jpg', 'PcbUSk_803626_04.jpg', '2019-03-25 02:34:38', '2019-03-25 02:34:38'),
(23, 'O5G0ip_803690_02.jpg', 'qlCiUR_803690_03.jpg', 'UMfI5h_803690_04.jpg', '2019-03-25 02:41:15', '2019-03-25 02:41:15'),
(24, 'uHC2bR_803860_02.jpg', 'LVGA1Q_803860_03.jpg', 'ik7rzZ_803860_04.jpg', '2019-03-25 02:42:45', '2019-03-25 02:42:45'),
(25, 'D7sCKi_804124_02.jpg', 'uRsvGT_804124_03.jpg', 'qHu2rV_804124_04.jpg', '2019-03-25 02:44:23', '2019-03-25 02:44:23'),
(26, 'tDlPAZ_801137_02.jpg', 'rquo7Y_801137_03.jpg', 'lj6nMN_801137_04.jpg', '2019-03-25 02:49:45', '2019-03-25 02:49:45'),
(27, 'O7enDH_803892_02.jpg', 'IOWGQf_803892_03.jpg', 'yd5S5v_803892_04.jpg', '2019-03-25 02:51:04', '2019-03-25 02:51:04'),
(28, 'IKv3HC_992242_2.jpg', 'h4IcjD_992242_3.jpg', '9HpRVm_992242_4.jpg', '2019-03-25 02:52:28', '2019-03-25 02:52:28'),
(29, '3mvgLm_806518_02.jpg', 'J6iE6k_806518_03.jpg', 'lCOxrF_806518_04.jpg', '2019-03-25 03:01:28', '2019-03-25 03:01:28'),
(30, '254K0W_806954_02.jpg', 'phT7Es_806954_03.jpg', 'ue5OdH_806954_04.jpg', '2019-03-25 03:03:32', '2019-03-25 03:03:32'),
(31, '0jx5SG_802671_02.jpg', 'T0vyVl_802671_03.jpg', 'W5vgu0_802671_04.jpg', '2019-03-25 03:11:35', '2019-03-25 03:11:35'),
(32, 'I7zuHi_801400_2.jpg', 'YVuDwn_801400_3.jpg', '40cBoR_801400_4.jpg', '2019-03-25 03:12:35', '2019-03-25 03:12:35'),
(33, NULL, NULL, NULL, '2019-03-25 03:13:16', '2019-03-25 03:13:16'),
(34, 'UHLFpW_805317_02.jpg', 'lgAbHa_805317_03.jpg', 'ZMHZgJ_805317_04.jpg', '2019-03-25 03:14:49', '2019-03-25 03:14:49'),
(35, 'Vp9PNK_804970_02.jpg', '9rzRXV_804970_03.jpg', 'asyFLi_804970_04.jpg', '2019-03-25 03:16:27', '2019-03-25 03:16:27'),
(43, NULL, NULL, NULL, '2019-03-27 07:21:18', '2019-03-27 07:21:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `size` decimal(10,1) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`id`, `p_id`, `size`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, '6.0', 3, '2019-03-12 04:16:31', '2019-03-12 04:16:31'),
(2, 2, '7.5', 4, '2019-03-12 07:56:58', '2019-03-12 07:56:58'),
(3, 3, '7.5', 12, '2019-03-25 02:23:46', '2019-03-25 02:23:46'),
(4, 4, '6.5', 12, '2019-03-25 02:23:07', '2019-03-25 02:23:07'),
(5, 5, '7.0', 12, '2019-03-25 02:22:38', '2019-03-25 02:22:38'),
(6, 6, NULL, NULL, '2019-03-11 16:13:27', '0000-00-00 00:00:00'),
(7, 7, '7.5', 12, '2019-03-25 02:22:15', '2019-03-25 02:22:15'),
(8, 8, '6.0', 12, '2019-03-25 02:21:27', '2019-03-25 02:21:27'),
(9, 10, '8.0', 10, '2019-03-25 02:20:46', '2019-03-25 02:20:46'),
(10, 1, '9.0', 8, '2019-03-21 04:48:50', '2019-03-21 04:48:50'),
(12, 2, '7.0', 3, '2019-03-12 03:07:07', '2019-03-12 03:07:07'),
(13, 2, '8.0', 3, '2019-03-12 03:08:38', '2019-03-12 03:08:38'),
(14, 5, '8.5', 4, '2019-03-12 03:11:18', '2019-03-12 03:11:18'),
(15, 5, '9.0', 3, '2019-03-25 02:22:50', '2019-03-25 02:22:50'),
(16, 5, '11.0', 1, '2019-03-12 03:15:39', '2019-03-12 03:15:39'),
(17, 1, '9.0', 7, '2019-03-21 04:51:13', '2019-03-21 04:51:13'),
(18, 11, '7.0', 12, '2019-03-25 02:20:25', '2019-03-25 02:20:25'),
(19, 12, '7.0', 7, '2019-03-25 02:19:45', '2019-03-25 02:19:45'),
(20, 13, '6.0', 10, '2019-03-25 02:19:10', '2019-03-25 02:19:10'),
(21, 14, '6.0', 10, '2019-03-25 02:16:47', '2019-03-25 02:16:47'),
(22, 15, '6.0', 10, '2019-03-25 02:14:41', '2019-03-25 02:14:41'),
(23, 16, '5.0', 3, '2019-03-25 02:13:39', '2019-03-25 02:13:39'),
(24, 17, NULL, NULL, '2019-03-14 06:59:11', '2019-03-14 06:59:11'),
(25, 18, NULL, NULL, '2019-03-14 07:02:20', '2019-03-14 07:02:20'),
(26, 19, NULL, NULL, '2019-03-14 07:04:01', '2019-03-14 07:04:01'),
(27, 20, '6.0', 5, '2019-03-21 04:58:45', '2019-03-21 04:58:45'),
(28, 20, '7.0', 6, '2019-03-21 04:58:57', '2019-03-21 04:58:57'),
(29, 20, '7.5', 4, '2019-03-21 04:59:08', '2019-03-21 04:59:08'),
(30, 20, '8.0', 10, '2019-03-21 04:59:19', '2019-03-21 04:59:19'),
(31, 16, '6.0', 12, '2019-03-25 02:14:00', '2019-03-25 02:14:00'),
(32, 16, '6.5', 10, '2019-03-25 02:14:11', '2019-03-25 02:14:11'),
(33, 16, '7.0', 12, '2019-03-25 02:14:20', '2019-03-25 02:14:20'),
(34, 16, '8.0', 15, '2019-03-25 02:14:26', '2019-03-25 02:14:26'),
(35, 15, '7.0', 10, '2019-03-25 02:15:51', '2019-03-25 02:15:51'),
(36, 15, '7.5', 10, '2019-03-25 02:15:58', '2019-03-25 02:15:58'),
(37, 15, '8.0', 8, '2019-03-25 02:16:03', '2019-03-25 02:16:03'),
(38, 15, '9.0', 12, '2019-03-25 02:16:10', '2019-03-25 02:16:10'),
(39, 15, '10.0', 10, '2019-03-25 02:16:15', '2019-03-25 02:16:15'),
(40, 14, '7.0', 10, '2019-03-25 02:16:42', '2019-03-25 02:16:42'),
(41, 14, '8.0', 10, '2019-03-25 02:18:47', '2019-03-25 02:18:47'),
(42, 14, '8.5', 10, '2019-03-25 02:18:52', '2019-03-25 02:18:52'),
(43, 13, '7.0', 10, '2019-03-25 02:19:21', '2019-03-25 02:19:21'),
(44, 13, '8.0', 8, '2019-03-25 02:19:26', '2019-03-25 02:19:26'),
(45, 12, '8.0', 8, '2019-03-25 02:19:51', '2019-03-25 02:19:51'),
(46, 12, '9.0', 12, '2019-03-25 02:19:58', '2019-03-25 02:19:58'),
(47, 11, '8.0', 8, '2019-03-25 02:20:14', '2019-03-25 02:20:14'),
(48, 11, '9.0', 12, '2019-03-25 02:20:21', '2019-03-25 02:20:21'),
(49, 10, '9.0', 12, '2019-03-25 02:20:54', '2019-03-25 02:20:54'),
(50, 10, '9.5', 12, '2019-03-25 02:21:03', '2019-03-25 02:21:03'),
(51, 8, '7.0', 8, '2019-03-25 02:21:33', '2019-03-25 02:21:33'),
(52, 8, '8.0', 13, '2019-03-25 02:21:40', '2019-03-25 02:21:40'),
(53, 7, '8.0', 10, '2019-03-25 02:22:20', '2019-03-25 02:22:20'),
(54, 7, '9.0', 15, '2019-03-25 02:22:24', '2019-03-25 02:22:24'),
(55, 4, '7.0', 5, '2019-03-25 02:23:15', '2019-03-25 02:23:15'),
(56, 4, '8.0', 12, '2019-03-25 02:23:22', '2019-03-25 02:23:22'),
(57, 3, '8.0', 10, '2019-03-25 02:23:42', '2019-03-25 02:23:42'),
(58, 3, '9.0', 10, '2019-03-25 02:23:51', '2019-03-25 02:23:51'),
(59, 21, '8.0', 10, '2019-03-25 02:30:31', '2019-03-25 02:30:31'),
(60, 21, '9.0', 12, '2019-03-25 02:30:39', '2019-03-25 02:30:39'),
(61, 21, '9.5', 15, '2019-03-25 02:30:45', '2019-03-25 02:30:45'),
(62, 21, '10.0', 20, '2019-03-25 02:30:50', '2019-03-25 02:30:50'),
(63, 22, '8.0', 10, '2019-03-25 02:34:03', '2019-03-25 02:34:03'),
(64, 22, '9.0', 15, '2019-03-25 02:34:10', '2019-03-25 02:34:10'),
(65, 22, '10.0', 10, '2019-03-25 02:34:14', '2019-03-25 02:34:14'),
(66, 23, '7.0', 10, '2019-03-25 02:41:23', '2019-03-25 02:41:23'),
(67, 23, '8.0', 10, '2019-03-25 02:41:32', '2019-03-25 02:41:32'),
(68, 23, '9.0', 10, '2019-03-25 02:41:37', '2019-03-25 02:41:37'),
(69, 24, '7.5', 10, '2019-03-25 02:42:56', '2019-03-25 02:42:56'),
(70, 24, '8.0', 15, '2019-03-25 02:43:02', '2019-03-25 02:43:02'),
(71, 24, '8.5', 15, '2019-03-25 02:43:24', '2019-03-25 02:43:24'),
(72, 24, '9.0', 5, '2019-03-25 02:43:41', '2019-03-25 02:43:41'),
(73, 25, '7.0', 10, '2019-03-25 02:44:32', '2019-03-25 02:44:32'),
(74, 25, '8.0', 10, '2019-03-25 02:44:36', '2019-03-25 02:44:36'),
(75, 25, '9.0', 10, '2019-03-25 02:44:40', '2019-03-25 02:44:40'),
(76, 26, '7.0', 15, '2019-03-25 02:49:23', '2019-03-25 02:49:23'),
(77, 26, '8.0', 15, '2019-03-25 02:49:17', '2019-03-25 02:49:17'),
(78, 26, '9.0', 10, '2019-03-25 02:49:31', '2019-03-25 02:49:31'),
(79, 26, '10.0', 10, '2019-03-25 02:49:35', '2019-03-25 02:49:35'),
(80, 27, '8.0', 10, '2019-03-25 02:50:43', '2019-03-25 02:50:43'),
(81, 27, '9.0', 10, '2019-03-25 02:50:48', '2019-03-25 02:50:48'),
(82, 27, '10.0', 10, '2019-03-25 02:50:51', '2019-03-25 02:50:51'),
(83, 28, '7.0', 10, '2019-03-25 02:52:38', '2019-03-25 02:52:38'),
(84, 28, '8.0', 10, '2019-03-25 02:52:44', '2019-03-25 02:52:44'),
(85, 28, '9.0', 10, '2019-03-25 02:52:50', '2019-03-25 02:52:50'),
(86, 29, '7.0', 10, '2019-03-25 03:01:35', '2019-03-25 03:01:35'),
(87, 29, '8.0', 10, '2019-03-25 03:01:45', '2019-03-25 03:01:45'),
(88, 29, '9.0', 15, '2019-03-25 03:01:50', '2019-03-25 03:01:50'),
(89, 30, '6.0', 20, '2019-03-25 03:03:45', '2019-03-25 03:03:45'),
(90, 30, '7.0', 20, '2019-03-25 03:03:50', '2019-03-25 03:03:50'),
(91, 30, '7.5', 20, '2019-03-25 03:03:59', '2019-03-25 03:03:59'),
(92, 30, '8.0', 20, '2019-03-25 03:04:08', '2019-03-25 03:04:08'),
(93, 30, '8.5', 30, '2019-03-25 03:04:17', '2019-03-25 03:04:17'),
(94, 30, '9.0', 40, '2019-03-25 03:04:27', '2019-03-25 03:04:27'),
(95, 31, '6.0', 20, '2019-03-25 03:11:44', '2019-03-25 03:11:44'),
(96, 31, '7.0', 15, '2019-03-25 03:11:52', '2019-03-25 03:11:52'),
(97, 31, '8.0', 15, '2019-03-25 03:11:56', '2019-03-25 03:11:56'),
(98, 32, '7.0', 20, '2019-03-25 03:12:43', '2019-03-25 03:12:43'),
(99, 32, '8.0', 15, '2019-03-25 03:12:48', '2019-03-25 03:12:48'),
(100, 32, '9.0', 15, '2019-03-25 03:12:51', '2019-03-25 03:12:51'),
(101, 33, '7.0', 20, '2019-03-25 03:13:24', '2019-03-25 03:13:24'),
(102, 33, '8.0', 10, '2019-03-25 03:13:29', '2019-03-25 03:13:29'),
(103, 33, '9.0', 10, '2019-03-25 03:13:40', '2019-03-25 03:13:40'),
(104, 33, '10.0', 10, '2019-03-25 03:13:44', '2019-03-25 03:13:44'),
(105, 34, '6.5', 10, '2019-03-25 03:15:43', '2019-03-25 03:15:43'),
(106, 34, '7.0', 10, '2019-03-25 03:15:29', '2019-03-25 03:15:29'),
(107, 34, '8.0', 10, '2019-03-25 03:15:38', '2019-03-25 03:15:38'),
(108, 35, '6.0', 10, '2019-03-25 03:16:38', '2019-03-25 03:16:38'),
(109, 35, '7.0', 10, '2019-03-25 03:16:46', '2019-03-25 03:16:46'),
(110, 35, '8.0', 10, '2019-03-25 03:16:49', '2019-03-25 03:16:49'),
(111, 36, '7.0', 10, '2019-03-25 03:17:45', '2019-03-25 03:17:45'),
(112, 36, '8.0', 10, '2019-03-25 03:17:50', '2019-03-25 03:17:50'),
(113, 36, '9.0', 10, '2019-03-25 03:17:55', '2019-03-25 03:17:55'),
(115, 42, '7.0', 19, '2019-03-27 07:18:43', '2019-03-27 07:18:43'),
(117, 42, '9.0', 20, '2019-03-26 07:35:57', '2019-03-26 07:35:57'),
(118, 42, '10.0', 5, '2019-03-27 06:05:38', '2019-03-27 06:05:38'),
(119, 43, NULL, NULL, '2019-03-27 07:21:18', '2019-03-27 07:21:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `img`, `title`, `title2`, `text`, `created_at`, `updated_at`) VALUES
(1, 'jT52tW_jd1-chicago.png', 'Jordan 1', 'Chicago', '\"A player must wear shoes that not only matched their uniforms, but matched the shoes worn by their teammates\"', '2019-03-16 04:35:18', '2019-03-16 04:35:18'),
(2, 'yeezy.png', 'Yeezy 350', 'Zabra', 'The Yeezy 350 Zebra is one of several major styles to launch before the end of 2018 from adidas and Kanye West.', '2019-03-26 11:39:11', '2019-03-26 11:39:11'),
(3, 'af1.png', 'Air Force 1', 'Smile', 'The Nike Air Force 1 Low Flax Wheat is scheduled to release shortly via the listed retailers. Keep it locked to our social media channels for more updates on the run up to launch.', '2019-03-26 11:46:33', '2019-03-26 11:46:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `payment` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_info` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  `security` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `u_id`, `name`, `email`, `phone`, `address`, `amount`, `payment`, `payment_info`, `message`, `security`, `created_at`, `updated_at`, `status`) VALUES
(9, NULL, 'tran huu thang', 'tranhuuthang97py@gmail.com', '0913431529', '1 Nguyễn Cư Trinh, Quận 1', '360.00', NULL, NULL, NULL, NULL, '2019-03-24 04:07:31', '2019-03-24 04:07:31', 1),
(10, NULL, 'Trung Quân Idol', 'trungquan123@gmail.com', '0989999999', '1 Nguyễn Cư Trinh, Quận 1', '745.00', NULL, NULL, NULL, NULL, '2019-03-24 03:53:06', '2019-03-24 03:53:06', 0),
(11, NULL, 'Alo Xe Ôm', 'alo_xeom@gmail.com', '01234564561', 'Quận 7', '495.00', NULL, NULL, NULL, NULL, '2019-03-24 05:41:43', '2019-03-24 05:41:43', 0),
(12, NULL, 'Jack Willan', 'blackjack@gmail.com', '0123123451', 'London', '245.00', NULL, NULL, NULL, NULL, '2019-03-25 16:37:02', '2019-03-25 16:37:02', 0),
(13, NULL, 'Tran Hữu Thắng', 'admin@gmail.com', '01234567890', '475A Điện Biên Phủ', '660.00', NULL, NULL, NULL, NULL, '2019-03-27 02:39:28', '2019-03-27 02:39:28', 0),
(14, NULL, 'Tran Hữu Thắng', 'admin@gmail.com', '01234567890', '475A Điện Biên Phủ', '300.00', NULL, NULL, NULL, NULL, '2019-03-27 02:45:51', '2019-03-27 02:45:51', 0),
(15, NULL, 'Tran Hữu Thắng', 'admin@gmail.com', '01234567890', '475A Điện Biên Phủ', '800.00', NULL, NULL, NULL, NULL, '2019-03-27 02:49:42', '2019-03-27 02:49:42', 0),
(16, NULL, 'Tran Hữu Thắng', 'admin@gmail.com', '01234567890', '475A Điện Biên Phủ', '800.00', NULL, NULL, NULL, NULL, '2019-03-27 02:52:39', '2019-03-27 02:52:39', 0),
(17, NULL, 'Tran Hữu Thắng', 'admin@gmail.com', '01234567890', '475A Điện Biên Phủ', '75.00', NULL, NULL, NULL, NULL, '2019-03-27 03:38:33', '2019-03-27 03:38:33', 0),
(18, NULL, 'Tran Hữu Thắng', 'admin@gmail.com', '01234567890', '475A Điện Biên Phủ', '340.00', NULL, NULL, NULL, NULL, '2019-03-27 03:41:58', '2019-03-27 03:41:58', 0),
(19, NULL, 'Tran Hữu Thắng', 'admin@gmail.com', '01234567890', '475A Điện Biên Phủ', '500.00', NULL, NULL, NULL, NULL, '2019-03-27 04:05:40', '2019-03-27 04:05:40', 0),
(20, NULL, 'Tran Hữu Thắng', 'admin@gmail.com', '01234567890', '475A Điện Biên Phủ', '285.00', NULL, NULL, NULL, NULL, '2019-03-27 07:24:05', '2019-03-27 07:24:05', 0),
(21, NULL, 'Tran Hữu Thắng', 'admin@gmail.com', '01234567890', '475A Điện Biên Phủ', '195.00', NULL, NULL, NULL, NULL, '2019-03-27 07:34:42', '2019-03-27 07:34:42', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Tran Hữu Thắng', 'admin@gmail.com', '$2y$10$UBMEEQZBkD0akL8iHyObPOujXi7uLBQPAyRdeZru.W/rkV/snnij6', '01234567890', '475A Điện Biên Phủ', '', '2019-03-26 11:27:08', '2019-03-25 16:43:36', 2),
(2, 'Cao Phương Nam', 'namcao@gmail.com', '$2y$10$FoC.lqBo09amn.4Nk1uL6OV91HvxXiaWTXCVpKDpoqi3FgOPNJkKO', '01234564561', 'Biên Hòa', NULL, '2019-03-25 16:43:44', '2019-03-25 16:43:44', 1),
(3, 'Trung Quân Idol', 'trungquan123@gmail.com', '$2y$10$j8w08szx881qlzVwsRJrIuwZfSawDLeSgc/DwABWrInMg/8av/R8G', '0913431529', 'Quận 7', NULL, '2019-03-27 07:05:59', '2019-03-27 07:05:59', 1),
(4, 'Quốc Quang', 'quanghuynh2201@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01234564561', '475A Điện Biên Phủ', NULL, '2019-03-20 07:09:40', '2019-03-20 07:09:40', 0),
(5, 'Alo Xe Ôm', 'alo_xeom113@gmail.com', '$2y$10$RxeZiR5ZQ.ps4a7j1h07hef36lls6TQg/xG4iVPOIOfNYSLGkb372', '0913431529', '475A Điện Biên Phủ', NULL, '2019-03-25 16:41:43', '2019-03-25 16:41:43', 1),
(6, 'Kim Nguyên Bảo', 'vinagame@kimnguyenbao.vn', 'e10adc3949ba59abbe56e057f20f883e', '0913431529', '475A Điện Biên Phủ', NULL, '2019-03-27 04:08:17', '2019-03-27 04:08:17', 1),
(7, 'Tâm Võ', 'acyakatt@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0989999999', '1 Lê Lợi, Quận 1, Tp. HCM', NULL, '2019-03-27 04:08:10', '2019-03-27 04:08:10', 1),
(8, 'Minh Huy Đặng', 'b2cgfam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0913431529', '475A Điện Biên Phủ', NULL, '2019-03-27 04:08:21', '2019-03-27 04:08:21', 0),
(9, 'Minh Nguyệt', 'minhnguyen2201@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0989999989', '1 Nguyễn Cư Trinh, Quận 1', NULL, '2019-03-20 07:10:48', '2019-03-20 07:10:48', 1),
(10, 'Bảo Nguyễn', 'kingman1109@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0913889889', '685 XVNT, Quận Bình Thạnh', NULL, '2019-03-20 07:11:02', '2019-03-20 07:11:02', 1),
(11, 'Nhâm Trần', 'tranvannham@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '033123456', 'Quận 7', NULL, '2019-03-20 07:11:33', '2019-03-20 07:11:33', 1),
(12, 'Bao Nho', 'baonho@gmail.com', '$2y$10$YaGz3BSXqe1w2JqjDfS1kenGhHbdNchzSE.FplJRMffNgbHlR1a7q', '0123456321', '4', NULL, '2019-03-25 16:41:58', '2019-03-25 16:41:58', 1),
(13, 'Jack Willan', 'blackjack@gmail.com', '$2y$10$A4hwEjVaphH7atgkquvbuePolgzLTP.bRziPknwCet.4tM/KOMyMm', '0123123451', 'London', NULL, '2019-03-25 16:16:36', '2019-03-25 16:16:19', 1),
(14, 'Quốc Quang', 'quocquang97@gmail.com', '$2y$10$c8szE/F7Cn30Pr4HQfGJmu7Pf8Zrpc8LPifox88ldp.4mE7EsBAlm', '0913431529', 'Quận 2', NULL, '2019-03-27 06:28:10', '2019-03-27 06:28:10', 0),
(15, 'tran huu thang', 'alo_xeom@gmail.com', '$2y$10$yE91J6TDTweIMLq2tx9ITeRisVCC7JYsAlBpLokfJItmKlY.llx6a', '0913431529', '1 Nguyễn Cư Trinh, Quận 1', NULL, '2019-03-27 07:32:04', '2019-03-27 07:32:04', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand_label`
--
ALTER TABLE `brand_label`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `infor`
--
ALTER TABLE `infor`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `brand_label`
--
ALTER TABLE `brand_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oder`
--
ALTER TABLE `oder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
