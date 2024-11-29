-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 04:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hien`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$12$LpYOufLb/Qsyl/NrlBKY4uP4sk9u8EOc2oGENE2tmCKFbvygRPgUq', '0348871009', NULL, '20CT1', 'TP Đà Nẵng', 1, 1, '2024-11-27__10c4060037488d16d459.jpg', NULL, '2024-11-20 00:43:20'),
(6, 'Nhân Viên', 'nhanvien@gmail.com', '$2y$10$2Btw2.RpZgDGwgw0yeTSdeyy.md58ZxQD.k.XNhUjFT3zRoD76YVu', '012345678', NULL, NULL, NULL, 2, 1, NULL, NULL, '2024-10-06 05:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) NOT NULL,
  `a_slug` varchar(191) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext DEFAULT NULL,
  `a_avatar` varchar(191) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(6, 'Nước Súc Miệng Listerine Hơi Thở Thơm Mát Không Cay 750ml Cool Mint Zero Alcohol Mouthwash', 'nuoc-suc-mieng-listerine-hoi-tho-thom-mat-khong-cay-750ml-cool-mint-zero-alcohol-mouthwash', 1, 1, 1, 0, NULL, '2024-11-18__tai-xuong-9.jpg', '<p><strong>Nước S&uacute;c Miệng&nbsp;<strong>Listerine&nbsp;</strong>Hơi Thở Thơm M&aacute;t Cool Mint Mouthwash&nbsp;</strong>l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/cham-soc-rang-mieng-c323.html\" target=\"_blank\">chăm s&oacute;c răng miệng</a>&nbsp;đến từ<a href=\"https://hasaki.vn/thuong-hieu/listerine.html\" target=\"_blank\"><strong>&nbsp;thương hiệu Listerine&nbsp;</strong></a>nổi tiếng thuộc&nbsp;<strong>tập đo&agrave;n Johnson &amp; Johnson&nbsp;</strong>l&acirc;u đời của Mỹ. Với c&ocirc;ng thức độc đ&aacute;o chứa 4 loại tinh dầu tự nhi&ecirc;n, nước s&uacute;c miệng Listerine c&oacute; khả năng ti&ecirc;u diệt đến 99.9% vi khuẩn g&acirc;y h&ocirc;i miệng, mảng b&aacute;m v&agrave; vi&ecirc;m nướu, gi&uacute;p l&agrave;m sạch khoang miệng to&agrave;n diện, mang lại cho bạn hơi thở thơm m&aacute;t v&agrave; tự tin hơn trong giao tiếp mỗi ng&agrave;y.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Súc Miệng Listerine Cool Mint Mouthwash phù hợp cho người lớn và trẻ em từ 6 tuổi trở lên\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-suc-mieng-listerine-hoi-tho-thom-mat-5.jpg\" style=\"width:800px\" title=\"Nước Súc Miệng Listerine Cool Mint Mouthwash vị Bạc Hà Mát Lạnh và vị Bạc Hà Không Cay\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hiện sản phẩm&nbsp;<strong>Nước S&uacute;c Miệng&nbsp;<strong>Listerine&nbsp;</strong>Cool Mint Mouthwash&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<strong>Hasaki&nbsp;</strong>với c&aacute;c ph&acirc;n loại sau cho bạn lựa chọn:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Nước S&uacute;c Miệng Listerine Cool Mint Mouthwash</strong>&nbsp;&ndash; vị Bạc H&agrave; the cay m&aacute;t lạnh, cho cảm gi&aacute;c sảng kho&aacute;i sau mỗi lần sử dụng, th&iacute;ch hợp cho người lớn. C&aacute;c dung t&iacute;ch: 100ml, 250ml, 500ml, 750ml, combo 2 chai 250ml; combo 2 chai 750ml</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nước S&uacute;c Miệng Listerine Cool Mint Zero Alcohol Mouthwash &ndash;&nbsp;</strong>vị Bạc H&agrave; kh&ocirc;ng cay, d&ugrave;ng được cho người lớn v&agrave; trẻ em tr&ecirc;n 6 tuổi, rất th&iacute;ch hợp cho cả gia đ&igrave;nh. C&aacute;c dung t&iacute;ch: 250ml, 750ml&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Đối tượng sử dụng:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Cool Mint Mouthwash:&nbsp;</strong>D&agrave;nh cho người lớn v&agrave; trẻ em tr&ecirc;n 12 tuổi.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong><strong>Cool Mint&nbsp;<strong>Zero Alcohol&nbsp;</strong>Mouthwash:&nbsp;</strong></strong>D&agrave;nh cho người lớn v&agrave; trẻ em tr&ecirc;n 6 tuổi.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Gi ải ph&aacute;p t&igrave;nh trạng:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Răng miệng được l&agrave;m sạch kh&ocirc;ng tối ưu, c&oacute; mảng b&aacute;m v&agrave; dễ s&acirc;u răng.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Răng miệng c&oacute; m&ugrave;i h&ocirc;i, hơi thở c&oacute; m&ugrave;i khiến thiếu tự tin trong giao tiếp.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Thành phần Nước Súc Miệng Listerine Hơi Thở Thơm Mát Cool Mint Mouthwash\" src=\"https://media.hcdn.vn/wysiwyg/minhchau/nuoc-suc-mieng-listerine-hoi-tho-thom-mat-1.jpg\" title=\"Thành phần Nước Súc Miệng Listerine Hơi Thở Thơm Mát Cool Mint\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Ưu thế nổi bật:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>S&aacute;t khuẩn v&agrave; l&agrave;m sạch khoang miệng, loại bỏ 99.9% vi khuẩn t&iacute;ch tụ, ngăn ngừa nhiễm bệnh v&agrave; g&oacute;p phần n&acirc;ng cao sức khỏe.</p>\r\n	</li>\r\n	<li>\r\n	<p>Ngăn ngừa s&acirc;u răng hiệu quả, đồng thời gi&uacute;p răng chắc khỏe hơn, bảo vệ men răng kh&ocirc;ng bị tổn hại.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hỗ trợ loại bỏ v&agrave; ngăn ngừa h&igrave;nh th&agrave;nh mảng b&aacute;m răng, hạn chế răng xỉn m&agrave;u.</p>\r\n	</li>\r\n	<li>\r\n	<p>Ngăn ngừa c&aacute;c bệnh về nướu như vi&ecirc;m nướu, chảy m&aacute;u nướu&hellip;</p>\r\n	</li>\r\n	<li>\r\n	<p>Hương Bạc H&agrave; tự nhi&ecirc;n gi&uacute;p mang lại hơi thở thơm m&aacute;t v&agrave; cảm gi&aacute;c sảng kho&aacute;i sau khi sử dụng, ngừa h&ocirc;i miệng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chiết xuất từ 4 loại tinh dầu tự nhi&ecirc;n: Khuynh Diệp, Cỏ Xạ Hương, Bạc H&agrave;, Lộc Đề Xanh c&oacute; đặc t&iacute;nh s&aacute;t khuẩn, kh&aacute;ng khuẩn vượt trội gi&uacute;p loại bỏ m&ugrave;i h&ocirc;i một c&aacute;ch tự nhi&ecirc;n.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Súc Miệng Listerine Cool Mint Zero Alcohol Mouthwash\" src=\"https://media.hcdn.vn/wysiwyg/minhchau/nuoc-suc-mieng-listerine-hoi-tho-thom-mat-2.jpg\" title=\"Nước Súc Miệng Listerine Hơi Thở Thơm Mát Không Cay\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Bảo quản:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;100ml, 250ml, 2 x 250ml; 500ml, 750ml; 2 x 750ml</p>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Listerine (thuộc tập đo&agrave;n Johnson &amp; Johnson)</p>\r\n\r\n<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Mỹ</p>\r\n\r\n<p><strong>Sản xuất tại:</strong>&nbsp;Th&aacute;i Lan</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/vogVSgTBQnk\" width=\"425\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/krg7DGogoJQ\" width=\"425\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', '2024-11-18 05:50:57', 0, 1, '2024-11-18 05:51:31'),
(7, 'Kem Dưỡng Ẩm Neutrogena Cấp Nước Cho Da Dầu 50g Hydro Boost Hyaluronic Acid Water Gel', 'kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-50g-hydro-boost-hyaluronic-acid-water-gel', 1, 1, 1, 0, NULL, '2024-11-18__tai-xuong.jpg', '<p><strong>Neutrogena Hydro Boost Water Gel</strong>&nbsp;l&agrave; d&ograve;ng sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/kem-duong-dau-duong-c9.html\" target=\"_blank\">kem dưỡng&nbsp;ẩm&nbsp;da</a>&nbsp;nổi tiếng đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/neutrogena.html\" target=\"_blank\">thương hiệu Neutrogena</a>&nbsp;của Mỹ, nay được cải tiến với diện mạo mới &amp; c&ocirc;ng thức mới - bổ sung th&ecirc;m 20% Hyaluronic Acid, kết hợp 9 loại Amino Acid kh&aacute;c nhau, từ đ&oacute; tăng cường cấp ẩm cho da gấp 5 lần so với c&ocirc;ng thức cũ, mang lại hiệu quả dưỡng ẩm s&acirc;u suốt 72 giờ, cho&nbsp;l&agrave;n da căng b&oacute;ng, s&aacute;ng mịn v&agrave; đ&agrave;n hồi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Neutrogena Hydro Boost Hyaluronic Acid Water Gel\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-1.jpg\" style=\"width:600px\" title=\"Kem Dưỡng Ẩm Neutrogena Cấp Nước Cho Da Dầu\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Natural Moisturising Factor (NMF)<strong>&nbsp;</strong>l&agrave; những th&agrave;nh phần dưỡng ẩm tự nhi&ecirc;n sẵn c&oacute; trong da, gi&uacute;p duy tr&igrave; độ ẩm v&agrave; độ đ&agrave;n hồi của l&agrave;n da. Lượng NMF trong da dễ bị suy giảm theo tuổi t&aacute;c v&agrave; dưới sự t&aacute;c động của c&aacute;c yếu tố đến từ m&ocirc;i trường b&ecirc;n ngo&agrave;i. C&ocirc;ng thức của<strong>&nbsp;Neutrogena&nbsp;Hydro Boost Hyaluronic Acid Water Gel</strong>&nbsp;được tăng cường với&nbsp;<strong>1% phức hợp dưỡng chất NMF&nbsp;(Hyaluronic acid, Amino acid &amp; c&aacute;c chất điện giải)</strong>&nbsp;- m&ocirc; phỏng c&aacute;c chất dưỡng ẩm tự nhi&ecirc;n của l&agrave;n da từ đ&oacute; gi&uacute;p l&agrave;n da trở n&ecirc;n căng mọng, mềm mại v&agrave; s&aacute;ng khỏe tự nhi&ecirc;n l&acirc;u d&agrave;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel Cấp Nước Cho Da Dầu\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-5.jpg\" style=\"width:600px\" title=\"Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chất gel tươi m&aacute;t v&agrave; mỏng nhẹ, thẩm thấu nhanh, đặc biệt&nbsp;l&yacute; tưởng cho l&agrave;n da dầu đang gặp t&igrave;nh trạng thiếu nước.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel có kết cấu dạng gel tươi mát và mỏng nhẹ.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-2.jpg\" style=\"width:600px\" title=\"Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel kết cấu dạng gel\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>D&ograve;ng sản phẩm&nbsp;<strong>Kem Dưỡng Ẩm Neutrogena&nbsp;Hydro Boost Water Gel&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với c&aacute;c dung t&iacute;ch cho bạn lựa chọn:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Hũ full size 50g</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tu&yacute;p mini size 15g</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo hũ 50g + tu&yacute;p 15g</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 2 tu&yacute;p 15gx2</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 2 hũ 50gx2</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Loại da ph&ugrave; hợp:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm ph&ugrave; hợp cho da từ thường đến dầu.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Giải ph&aacute;p cho t&igrave;nh trạng da:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da kh&ocirc; thiếu ẩm hoặc da dầu thiếu nước.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da&nbsp;<a href=\"https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html\" target=\"_blank\">dầu thừa - lỗ ch&acirc;n l&ocirc;ng to</a>, kh&ocirc;ng th&iacute;ch cảm gi&aacute;c nhờn d&iacute;nh khi sử dụng kem dưỡng ẩm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng thức được tăng cường&nbsp;<strong>1%&nbsp;</strong><strong>phức hợp dưỡng chất NMF</strong>&nbsp;- m&ocirc; phỏng c&aacute;c chất dưỡng ẩm tự nhi&ecirc;n của l&agrave;n da,&nbsp;từ đ&oacute; gi&uacute;p l&agrave;n da trở n&ecirc;n căng mọng, mềm mại v&agrave; s&aacute;ng khỏe tự nhi&ecirc;n l&acirc;u d&agrave;i:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><strong>Th&ecirc;m 20%</strong>&nbsp;<strong>Hyaluronic Acid&nbsp;</strong>so với phi&ecirc;n bản cũ,&nbsp;gi&uacute;p cấp ẩm v&agrave; kh&oacute;a ẩm l&agrave;m cho d&agrave;n da căn mọng d&agrave;i l&acirc;u.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>9 loại Amino Acid&nbsp;</strong>hỗ trợ h&agrave;ng r&agrave;o da khỏe mạnh, ngăn tho&aacute;t nước qua da.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Chất điện giải</strong>&nbsp;để tăng cường hấp thụ th&agrave;nh phần dưỡng da.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Chất kem dạng gel si&ecirc;u mỏng nhẹ v&agrave; tươi m&aacute;t v&agrave; mịn dễ thẩm thấu, kh&ocirc;ng g&acirc;y bết d&iacute;nh, kh&ocirc;ng g&acirc;y b&iacute;t tắc lỗ ch&acirc;n l&ocirc;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gel th&iacute;ch hợp d&ugrave;ng cả ng&agrave;y v&agrave; đ&ecirc;m, c&oacute; thể d&ugrave;ng trước makeup.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel giúp da căng mọng và sáng khỏe\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-3.jpg\" style=\"width:600px\" title=\"Kem Dưỡng Ẩm Neutrogena giúp da căng mọng và sáng khỏe\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kết hợp Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel vào quy trình chăm sóc da hàng ngày để cung cấp độ ẩm tối ưu cho da.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-4.jpg\" style=\"width:600px\" title=\"Quy trình chăm sóc da với Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel\" /></p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<h2>Độ an to&agrave;n:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đ&atilde; được chuy&ecirc;n gia da liễu thử nghiệm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng g&acirc;y mụn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng dầu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng m&ugrave;i.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>&nbsp;Bảo quản</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i:</strong>&nbsp;Hũ 50g / Tu&yacute;p 15g</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;Neutrogena&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Mỹ&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nơi sản xuất:</strong>&nbsp;H&agrave;n Quốc</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>HSD:</strong>&nbsp;3 năm kể từ ng&agrave;y sản xuất</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>NSX/ Số l&ocirc;/ HSD:</strong>&nbsp;xem tr&ecirc;n bao b&igrave; sản phẩm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', '2024-11-18 06:03:49', 0, 1, '2024-11-18 06:03:55'),
(8, 'Kem Dưỡng GoodnDoc Rau Má Dưỡng Ẩm Phục Hồi Da 50ml Centella Repair Cream', 'kem-duong-goodndoc-rau-ma-duong-am-phuc-hoi-da-50ml-centella-repair-cream', 1, 1, 1, 0, NULL, '2024-11-18__tai-xuong-1.jpg', '<p><strong>Kem Dưỡng GoodnDoc Rau M&aacute; Dưỡng Ẩm Phục Hồi Da 50ml&nbsp;</strong>l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/kem-duong-dau-duong-c9.html\" target=\"_blank\">kem dưỡng</a>&nbsp;đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/goodndoc.html\" target=\"_blank\">thương hiệu mỹ phẩm&nbsp;GoodnDoc</a>&nbsp;của H&agrave;n Quốc, với th&agrave;nh phần ch&iacute;nh l&agrave; tinh chất rau m&aacute; gi&uacute;p k&iacute;ch th&iacute;ch tổng hợp callogen nội sinh, gi&uacute;p da s&aacute;ng mịn m&agrave;ng, tăng t&aacute;i tạo, phục hồi tế b&agrave;o da. Ngo&agrave;i ra sản phẩm c&ograve;n bổ sung Ceramic, Beta glucan, Hyaluronic&nbsp;Acid tạo lớp m&agrave;ng ẩm bảo vệ da, cung cấp dưỡng chất cho da gi&uacute;p da khỏe mạnh.</p>\r\n\r\n<p>Hiện sản phẩm&nbsp;<strong>Kem Dưỡng GoodnDoc&nbsp;<strong>Centella Repair Cream</strong>&nbsp;50ml</strong><strong>&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Dưỡng GoodnDoc Rau Má Dưỡng Ẩm Phục Hồi Da 50ml \" src=\"https://media.hcdn.vn/wysiwyg/Chau/kem-duong-goodndoc-rau-ma-duong-am-phuc-hoi-da-50ml-1.jpg\" style=\"width:800px\" title=\"Kem Dưỡng GoodnDoc Rau Má Dưỡng Ẩm Phục Hồi Da \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Loại da ph&ugrave; hợp:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm th&iacute;ch hợp cho mọi loại da.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Giải ph&aacute;p cho t&igrave;nh trạng da:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Muốn kh&ocirc;i phục, t&aacute;i tạo l&agrave;n da bị tổn thương do UV, h&oacute;a chất.</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/lao-hoa-nep-nhan-c1881.html\" target=\"_blank\">Da nếp nhăn, l&atilde;o h&oacute;a</a>.</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/xin-mau-tham-sam-c1887.html\" target=\"_blank\">Da th&acirc;m sạm, xỉn m&agrave;u</a>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da thường gặp c&aacute;c vấn đề về&nbsp;<a href=\"https://hasaki.vn/danh-muc/mun-c1877.html\" target=\"_blank\">mụn</a>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da nhạy cảm, k&iacute;ch ứng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da thiếu ẩm, thiếu nước.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Dưỡng GoodnDoc Rau Má Dưỡng Ẩm Phục Hồi Da\" src=\"https://media.hcdn.vn/wysiwyg/Chau/kem-duong-goodndoc-rau-ma-duong-am-phuc-hoi-da-50ml-2.jpg\" style=\"width:800px\" title=\"Kem Dưỡng GoodnDoc Rau Má Dưỡng Ẩm Phục Hồi Da 50ml \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Ưu thế nổi bật:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Tinh chất rau m&aacute; Centella asiatica</strong>&nbsp;k&iacute;ch th&iacute;ch tổng hợp callogen nội sinh, gi&uacute;p da trắng, mịn m&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chiết xuất c&acirc;y Ho&agrave;ng cầm thảo dược qu&iacute;</strong>&nbsp;để gi&uacute;p da đẹp v&agrave; s&aacute;ng hơn.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chiết xuất hoa lưu ly chứa Gamma Linolenic Acid (GLA)</strong>&nbsp;t&aacute;c dụng dưỡng ẩm, t&aacute;i tạo tế b&agrave;o, tăng tổng hợp collagen.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Allantoin</strong>&nbsp;giữ ẩm, tẩy lớp sừng h&oacute;a, tăng sinh, t&aacute;i tạo lại tế b&agrave;o, ngăn k&iacute;ch ứng, phục hồi, tạo sự mềm mại, mịn m&agrave;ng cho da.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ceramide</strong>&nbsp;giữ ẩm cho da, bảo vệ tế b&agrave;o da khỏi c&aacute;c t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i, gi&uacute;p l&agrave;n da mịn m&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hyaluronic Acid</strong>&nbsp;dưỡng ẩm, ngăn ngừa l&atilde;o h&oacute;a, l&agrave;m s&aacute;ng v&agrave; mịn m&agrave;ng, căng da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Bảo quản:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Dung t&iacute;ch:&nbsp;</strong>50ml&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:&nbsp;</strong>GoodnDoc&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>H&agrave;n Quốc</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất tại:</strong>.&nbsp;H&agrave;n Quốc.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', '2024-11-18 06:19:23', 0, 1, '2024-11-18 06:19:37');
INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(9, 'Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay', 'top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay', 1, 1, 1, 0, NULL, '2024-11-23__tai-xuong-1.jpg', '<p>vivi- 2024-08-02 09:28:16</p>\r\n\r\n<p><strong>Sữa tắm H&agrave;n Quốc</strong>&nbsp;l&agrave; lựa chọn h&agrave;ng đầu hiện nay của rất nhiều người Việt, v&igrave; chất lượng cao, hiệu quả tốt, ngo&agrave;i&nbsp; việc l&agrave;m sạch da, sản phẩm c&ograve;n nu&ocirc;i dưỡng, chăm s&oacute;c da với nhiều c&ocirc;ng dụng đặc biệt k&egrave;m theo m&agrave; kh&ocirc;ng phải sữa tắm n&agrave;o cũng c&oacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">B&agrave;i viết n&agrave;y, Hasaki sẽ chọn lọc v&agrave; gửi đến bạn top 7 sữa tắm H&agrave;n Quốc đang nhận được nhiều review t&iacute;ch cực v&agrave; tốt nhất, để bạn c&oacute; được người bạn đồng h&agrave;nh&nbsp;<a href=\"https://hasaki.vn/danh-muc/cham-soc-co-the-c12.html\" target=\"_blank\">chăm s&oacute;c cơ thể</a>&nbsp;ph&ugrave; hợp nhất nh&eacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" id=\"64cc72211fd2b\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g_Fo1H73sQKHmAZEe7_img_300x300_b798dd_fit_center.png\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-1687928482_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" id=\"64cc72211fd2b\" target=\"_blank\">Mua 1 Tặng 1 Sữa Tắm On The Body Classic Pink (SL C&oacute; Hạn)</a></p>\r\n	<a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" id=\"64cc72211fd2b\" target=\"_blank\"><img alt=\"Mua 1 Tặng 1 Sữa Tắm On The Body Classic Pink (SL Có Hạn)\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g_Fo1H73sQKHmAZEe7.png\" /></a>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\"><strong>184.000 ₫</strong>12%209.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\"><strong>ON:THE BODY</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">Sữa Tắm On: The Body Dưỡng Ẩm Hương Tinh Tế 1000g</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">Perfume Shower Body Wash #Classic Pink</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">(15) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;424</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">45%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" id=\"64cc722121ba3\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-kem-tam-secret-key-snow-white-duong-sang-da-200g_yniorxnopZY4Rdf9_img_300x300_b798dd_fit_center.png\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-kem-tam-secret-key-snow-white-duong-sang-da-200g-1670582226_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" id=\"64cc722121ba3\" target=\"_blank\">Tặng: B&ocirc;ng Tẩy Trang Hotosu Cao Cấp 150 Miếng (Hết qu&agrave; tặng 15K)</a></p>\r\n	<a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" id=\"64cc722121ba3\" target=\"_blank\"><img alt=\"Tặng: Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng (Hết quà tặng 15K)\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-bong-tay-trang-hotosu-cao-cap-150-mieng-1684466443.jpg\" /></a>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\"><strong>239.000 ₫</strong>46%440.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\"><strong>SECRET KEY</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">Kem Tắm Secret Key Dưỡng S&aacute;ng Da Mặt V&agrave; Cơ Thể 200g</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">Snow White Milky Pack</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">(7) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;199</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">97%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" id=\"64cc7221252ec\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-some-by-mi-lam-giam-mun-400g_img_300x300_b798dd_fit_center.jpg\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu-345800038-16625343102767_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\"><strong>257.000 ₫</strong>35%395.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\"><strong>SOME BY MI</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">Sữa Tắm Some By Mi AHA-BHA-PHA L&agrave;m Giảm Mụn 400g</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">AHA-BHA-PHA 30 Days Miracle Acne Clear Body Cleanser</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">(3) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;111</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">45%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" id=\"64cc722126ef4\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g_f9vvC4ErnRg3dmCQ_img_300x300_b798dd_fit_center.png\" /><img alt=\"Hình giấy chứng nhận đại lý\" src=\"https://media.hasaki.vn/catalog/product/certificate/double-rich_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\"><strong>115.000 ₫</strong>24%151.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\"><strong>DOUBLE RICH</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">Sữa Tắm Double Rich Hoa Iris Huyền B&iacute; Dreamy Romance 800g</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">Body Shower - Dreamy Romance</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">(6) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;124</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">71%</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">H&oacute;a Đơn 219k Double Rich Tặng 1 Sữa tắm Double Rich Hoa Hồng 200g - SL C&oacute; Hạn</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" id=\"64cc722128487\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu-422209571-1665118443_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\"><strong>325.000 ₫</strong>41%550.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\"><strong>De Memoria</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\">Sữa Tắm D​e M​emoria S&aacute;ng Da Hương Rose On Venus 300ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\">Scented W​hitening B​ody Cleanser #Rose On Venus</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;4</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" id=\"64cc7221296aa\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu_422210412-1670986064_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\"><strong>119.000 ₫</strong>30%170.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\"><strong>Jmella</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\">Sữa Tắm Jmella Hương Cam Qu&yacute;t V&agrave; Mẫu Đơn Sang Trọng 500ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\">Body Wash #No. 1 BLooming Peony</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;7</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" id=\"64cc72212aade\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu_422210431-1670987077_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\"><strong>273.000 ₫</strong>30%390.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\"><strong>Jmella</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\">Bom Tắm Jmella Hương Hoa Hồng Ngọt Ng&agrave;o 200g x 2 Vi&ecirc;n</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\">Bath Bomb #No.5 Sparkling Rose</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;2</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\">4%</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#\">Previous</a></li>\r\n	<li><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#\">Next</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nội Dung Ch&iacute;nh B&agrave;i Viết</p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu1\">1. Sữa Tắm ON: THE BODY Perfume Shower Body Wash - Classic Pink</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu2\">2. Kem Tắm S&aacute;ng Da Secret Key Snow White Milky Pack&nbsp;</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu3\">3. Sữa Tắm Some By Mi AHA-BHA-PHA 30 Days Miracle Acne Clear Body Cleanser&nbsp;</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu4\">4. Sữa Tắm Double Rich - Hương hoa Iris</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu5\">5. Sữa Tắm De Memoria Scented Whitening Body Cleanser - Rose On Venus</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu6\">6. Sữa Tắm Jmella Body Wash - Blooming Peony</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu7\">7. Bom Tắm Jmella Bath Bomb - Sparkling Rose</a></p>\r\n\r\n<h2 dir=\"ltr\"><strong>1. Sữa Tắm ON: THE BODY Perfume Shower Body Wash - Classic Pink</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\"><img alt=\"Sữa Tắm On: The Body Dưỡng Ẩm Hương Tinh Tế 1000g\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g_Fo1H73sQKHmAZEe7_img_800x800_eb97c5_fit_center.png\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">Sữa Tắm On: The Body Dưỡng Ẩm Hương Tinh Tế 1000g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\"><strong>184.000 ₫&nbsp;</strong>&nbsp;&nbsp;209.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://hasaki.vn/thuong-hieu/on-the-body.html\" target=\"_blank\">ON: THE BODY</a>&nbsp;l&agrave; thương hiệu chuy&ecirc;n c&aacute;c d&ograve;ng sữa tắm hương nước hoa độc đ&aacute;o, ri&ecirc;ng biệt của h&atilde;ng. Đặc biệt l&agrave; ON: THE BODY Perfume Shower Body Wash, sản phẩm được y&ecirc;u th&iacute;ch với khả năng nhẹ nh&agrave;ng l&agrave;m sạch cơ thể, dưỡng ẩm mịn m&agrave;ng v&agrave; hương thơm nước hoa từ thi&ecirc;n nhi&ecirc;n l&ocirc;i cuốn, lưu hương suốt cả ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\">Nếu n&agrave;ng lần đầu sử dụng v&agrave; ph&acirc;n v&acirc;n lựa chọn m&ugrave;i hương th&igrave; d&ugrave;ng thử best seller của h&atilde;ng m&ugrave;i Classic Pink mang m&agrave;u sắc tinh tế, thanh lịch nh&eacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;hoa cam, hoa bưởi , hoa mẫu đơn, hương gỗ đ&agrave;n hương |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;ON: THE BODY |&nbsp;<strong>Trọng lượng:</strong>&nbsp;1000g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 1\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-11.jpg\" title=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 1\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>2. Kem Tắm S&aacute;ng Da Secret Key Snow White Milky Pack&nbsp;</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\"><img alt=\"Kem Tắm Secret Key Dưỡng Sáng Da Mặt Và Cơ Thể 200g\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-kem-tam-secret-key-snow-white-duong-sang-da-200g_yniorxnopZY4Rdf9_img_800x800_eb97c5_fit_center.png\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">Kem Tắm Secret Key Dưỡng S&aacute;ng Da Mặt V&agrave; Cơ Thể 200g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\"><strong>239.000 ₫&nbsp;</strong>&nbsp;&nbsp;440.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Một dạng&nbsp;<a href=\"https://hasaki.vn/danh-muc/sua-tam-xa-bong-tam-c26.html\" target=\"_blank\">sữa tắm</a>&nbsp;mới lạ lại nằm ở vị tr&iacute; thứ hai sữa tắm H&agrave;n Quốc được review tốt n&agrave;y nhờ c&ocirc;ng thức đặc biệt ủ s&aacute;ng da d&agrave;nh cho những n&agrave;ng muốn c&oacute; được l&agrave;n da trắng s&aacute;ng tự nhi&ecirc;n, an to&agrave;n.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Đồng thời Secret Key Snow White Milky Pack c&ograve;n cấp nước v&agrave; dưỡng ẩm cho da rất tốt nhờ bảng th&agrave;nh phần bao gồm c&aacute;c hoạt chất &ldquo;xịn s&ograve;&rdquo; m&agrave; &iacute;t sữa tắm n&agrave;o c&oacute; được.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sản phẩm d&ugrave;ng cho da mặt v&agrave; cơ thế, sử dụng đều đặn 3 lần/tuần để c&oacute; hiệu quả cao.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Niacinamide, Sodium Hyaluronate, Kho&aacute;ng chất Magie, Propylene Glycol, Chiết xuất dầu hoa tr&agrave;, centella asiatica, axit glyoerophosphoric, B-glucan|&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;SECRET KEY |&nbsp;<strong>Trọng lượng:</strong>&nbsp;200g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 2\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-2.jpg\" title=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 2\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>3. Sữa Tắm Some By Mi AHA-BHA-PHA 30 Days Miracle Acne Clear Body Cleanser&nbsp;</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\"><img alt=\"Sữa Tắm Some By Mi AHA-BHA-PHA Làm Giảm Mụn 400g\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-some-by-mi-lam-giam-mun-400g_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">Sữa Tắm Some By Mi AHA-BHA-PHA L&agrave;m Giảm Mụn 400g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\"><strong>257.000 ₫&nbsp;</strong>&nbsp;&nbsp;395.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">N&agrave;ng n&agrave;o gặp vấn đề da mụn ở lưng, ngực; da dầu, lỗ ch&acirc;n l&ocirc;ng to hay da sần s&ugrave;i, th&ocirc; r&aacute;p th&igrave; sữa tắm Some By Mi AHA-BHA-PHA 30 Days Miracle Acne Clear Body Cleanser ch&iacute;nh l&agrave; &ldquo;cứu tinh&rdquo; tuyệt vời d&agrave;nh cho n&agrave;ng.</p>\r\n\r\n<p dir=\"ltr\">Some By Mi vốn đ&atilde; nổi tiếng với bộ sản phẩm chăm s&oacute;c da d&agrave;nh cho da mụn của m&igrave;nh từ nhiều năm nay, vậy n&ecirc;n sữa tắm của h&atilde;ng cũng được tin d&ugrave;ng v&agrave; hiệu quả chẳng k&eacute;m cạnh.</p>\r\n\r\n<p dir=\"ltr\">Với c&ocirc;ng dụng ch&iacute;nh l&agrave; l&agrave;m sạch lỗ ch&acirc;n l&ocirc;ng v&agrave; kiểm so&aacute;t dầu; đồng thời ngăn ngừa v&agrave; cải thiện t&igrave;nh trạng mụn xuất hiện tr&ecirc;n c&aacute;c v&ugrave;ng cơ thể. Sản phẩm c&oacute; kết cấu dạng gel trong, mỏng nhẹ, dễ d&agrave;ng sử dụng cho mọi người d&ugrave;ng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;AHA-BHA-PHA, Rau m&aacute;, Truecica&trade;, tr&agrave;m tr&agrave; 10.000ppm |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Some By Mi |&nbsp;<strong>Trọng lượng:</strong>&nbsp;400g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 3\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-3.png\" title=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 3\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>4. Sữa Tắm Double Rich - Hương hoa Iris</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\"><img alt=\"Sữa Tắm Double Rich Hoa Iris Huyền Bí Dreamy Romance 800g\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g_f9vvC4ErnRg3dmCQ_img_800x800_eb97c5_fit_center.png\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">Sữa Tắm Double Rich Hoa Iris Huyền B&iacute; Dreamy Romance 800g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\"><strong>115.000 ₫&nbsp;</strong>&nbsp;&nbsp;151.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Quay trở lại với d&ograve;ng sữa tắm nước hoa, điều m&agrave; bất kỳ người d&ugrave;ng n&agrave;o cũng mong muốn sau mỗi lần tắm l&agrave; hương thơm cơ thể thơm m&aacute;t d&agrave;i l&acirc;u.</p>\r\n\r\n<p dir=\"ltr\">Sữa tắm Double Rich sẽ mang đến cho bạn một trải nghiệm ho&agrave;n to&agrave;n kh&aacute;c biệt nhờ tinh chất Jojoba, nha đam v&agrave; hương hoa thi&ecirc;n nhi&ecirc;n gi&uacute;p lấy đi mọi bụi bẩn, cung cấp độ ẩm, hỗ trợ l&agrave;m s&aacute;ng, đều m&agrave;u da v&agrave; hương thơm tươi s&aacute;ng, rạng rỡ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Tinh dầu Jojoba, nha đam |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Double Rich |&nbsp;<strong>Trọng lượng:</strong>&nbsp;800g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 4\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-7.jpg\" title=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 4\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>5. Sữa Tắm De Memoria Scented Whitening Body Cleanser - Rose On Venus</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\"><img alt=\"Sữa Tắm D​e M​emoria Sáng Da Hương Rose On Venus 300ml\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-1664869888_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\">Sữa Tắm D​e M​emoria S&aacute;ng Da Hương Rose On Venus 300ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\"><strong>325.000 ₫&nbsp;</strong>&nbsp;&nbsp;550.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Tuy l&agrave; sản phẩm &ldquo;sinh sau đẻ muộn&rdquo; từ thương hiệu nước hoa De Memoria, nhưng sữa tắm De Memoria Scented Whitening Body Cleanser đ&atilde; thu h&uacute;t sự ch&uacute; &yacute; lớn tr&ecirc;n thị trường nhờ thiết kế bao b&igrave; sang trọng, đa dạng m&ugrave;i hương v&agrave; l&agrave;m rất tốt khả năng l&agrave;m sạch da, lớp bọt mịn c&ugrave;ng hương thơm tinh tế, thư gi&atilde;n, l&yacute; tưởng cho người d&ugrave;ng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Với 3 m&ugrave;i hương đang c&oacute; hiện nay, bạn c&oacute; thể d&ugrave;ng thử Rose On Venus - hương hoa hồng mang đến sự mềm mại v&agrave; thu h&uacute;t cho ph&aacute;i đẹp.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;1% AHA, Vitamin C |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;De Memoria |&nbsp;<strong>Dung t&iacute;ch:</strong>300ml</p>\r\n\r\n<p dir=\"ltr\">Xem th&ecirc;m:&nbsp;<a href=\"https://hasaki.vn/cam-nang/review-bo-sua-tam-duong-the-de-memoria-moi-nhat-hien-nay-2503.html\" target=\"_blank\">Review Bộ Sữa Tắm - Dưỡng Thể De Memoria Mới Nhất Hiện Nay</a></p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 5\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-8.jpg\" title=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 5\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>6. Sữa Tắm Jmella Body Wash - Blooming Peony</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\"><img alt=\"Sữa Tắm Jmella Hương Cam Quýt Và Mẫu Đơn Sang Trọng 500ml\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-1669797911_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\">Sữa Tắm Jmella Hương Cam Qu&yacute;t V&agrave; Mẫu Đơn Sang Trọng 500ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\"><strong>119.000 ₫&nbsp;</strong>&nbsp;&nbsp;170.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sữa Tắm Jmella Body Wash d&agrave;nh cho mọi loại da, được sản xuất bởi nh&agrave; điều chế nước hoa Argeville của Ph&aacute;p với 100 năm truyền thống chế tạo m&ugrave;i hương v&agrave; đạt ti&ecirc;u chuẩn quốc tế - một sản phẩm uy t&iacute;n cho mọi nh&agrave;.</p>\r\n\r\n<p dir=\"ltr\">Được chiết xuất từ l&aacute; hoa hồng sa mạc c&ugrave;ng dầu dừa v&agrave; hơn 5 loại dầu dưỡng ẩm gốc thực vật gi&uacute;p mang lại l&agrave;n da mịn m&agrave;ng, sạch s&acirc;u v&agrave; hương thơm bền l&acirc;u.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Th&agrave;nh phần l&agrave;m sạch c&oacute; nguồn gốc từ dừa, 5 loại dầu dưỡng ẩm từ thực vật, 30 chất chiết xuất từ thực vật, chiết xuất từ l&aacute; của hoa hồng sa mạc |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Jmella |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;500ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 6\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-9.jpg\" title=\"Top 7 Sữa Tắm Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 6\" /></p>', '2024-11-23 01:26:00', 1, 1, '2024-11-23 01:29:20');
INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(10, 'Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng', 'top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung', 1, 1, 1, 0, NULL, '2024-11-23__tai-xuong-2.jpg', '<p dir=\"ltr\">D&ograve;ng sữa tắm Nhật Bản &ldquo;quốc d&acirc;n&rdquo; m&agrave; chị em n&agrave;o cũng biết, kh&ocirc;ng chỉ được khen ngợi về hiệu quả dưỡng ẩm v&agrave; l&agrave;m s&aacute;ng da nhờ chiết xuất &yacute; dĩ m&agrave; c&ograve;n rất được l&ograve;ng người d&ugrave;ng nhờ mức gi&aacute; b&igrave;nh d&acirc;n, dung t&iacute;ch lớn, tiết kiệm chi ph&iacute;.</p>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, sản phẩm c&oacute; m&ugrave;i hương sữa, gạo, &yacute; dĩ nhẹ nh&agrave;ng mang đến cảm gi&aacute;c thư gi&atilde;n khi tắm.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Chiết xuất &yacute; dĩ, enzyme ph&acirc;n giải protein |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;HATOMUGI |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;800ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 1\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-1.jpg\" title=\"Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 1\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>2.&nbsp;Sữa Tắm To&agrave;n Th&acirc;n Cur&eacute;l Cấp Ẩm Chuy&ecirc;n S&acirc;u</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-toan-than-curel-cap-am-chuyen-sau-420ml-71129.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=331300012\" target=\"_blank\"><img alt=\"Sữa Tắm Toàn Thân Curél Cấp Ẩm Chuyên Sâu 420ml\" src=\"https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-sua-tam-toan-than-curel-cap-am-chuyen-sau-420ml-1717381689_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-toan-than-curel-cap-am-chuyen-sau-420ml-71129.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=331300012\" target=\"_blank\">Sữa Tắm To&agrave;n Th&acirc;n Cur&eacute;l Cấp Ẩm Chuy&ecirc;n S&acirc;u 420ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-toan-than-curel-cap-am-chuyen-sau-420ml-71129.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=331300012\" target=\"_blank\"><strong>247.000 ₫&nbsp;</strong>&nbsp;&nbsp;339.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-toan-than-curel-cap-am-chuyen-sau-420ml-71129.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=331300012\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Nếu bạn n&agrave;ng c&oacute; l&agrave;n da hơi xỉn m&agrave;u, kh&ocirc;ng đều m&agrave;u th&igrave; d&ugrave;ng ngay&nbsp;Cur&eacute;l Intensive Moisture Care Body Wash&nbsp;- d&ograve;ng&nbsp;<strong><a href=\"https://hasaki.vn/cam-nang/top-5-sua-tam-lam-trang-da-an-toan-cua-nhat-ban-2673.html\" target=\"_blank\">sữa tắm trắng da của Nhật</a></strong>&nbsp;n&agrave;y rất hiệu quả.</p>\r\n\r\n<p dir=\"ltr\">Sữa Tắm To&agrave;n Th&acirc;n Cấp Ẩm Chuy&ecirc;n S&acirc;u Cur&eacute;l Intensive Moisture Care Body Wash l&agrave; sản phẩm chuy&ecirc;n biệt d&agrave;nh cho l&agrave;n da kh&ocirc; v&agrave; nhạy cảm từ thương hiệu Cur&eacute;l. C&ocirc;ng thức độc đ&aacute;o chứa Ceramide chức năng v&agrave; chiết xuất Eucalyptus, sản phẩm gi&uacute;p cấp ẩm v&agrave; thẩm thấu s&acirc;u v&agrave;o lớp biểu b&igrave;, mang lại hiệu quả dưỡng ẩm tối ưu v&agrave; tăng cường h&agrave;ng r&agrave;o bảo vệ da</p>\r\n\r\n<p dir=\"ltr\">Nhờ sự chăm s&oacute;c dịu nhẹ v&agrave; khả năng duy tr&igrave; độ ẩm l&yacute; tưởng, sản phẩm kh&ocirc;ng chỉ l&agrave;m sạch m&agrave; c&ograve;n gi&uacute;p da khỏe mạnh, mềm mịn v&agrave; giảm thiểu nguy cơ k&iacute;ch ứng từ c&aacute;c t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Ceramide&nbsp;|&nbsp;<strong>Loại da:</strong>&nbsp;da kh&ocirc; v&agrave; da nhạy cảm&nbsp;|&nbsp;<strong>Thương hiệu:</strong>&nbsp;Cur&eacute;l&nbsp;|&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;420ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"sữa tắm toàn thân Curél\" src=\"https://media.hasaki.vn/hsk/sua-tam-toan-than-Curel.png\" title=\"sữa tắm toàn thân Curél\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>3. Sữa Tắm SENKA Perfect Bubble For Body Sweet Floral</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong><a href=\"https://hasaki.vn/thuong-hieu/senka.html\" target=\"_blank\">Senka</a></strong>&nbsp;l&agrave; thương hiệu chuy&ecirc;n c&aacute;c sản phẩm chăm s&oacute;c da,&nbsp;<strong><a href=\"https://hasaki.vn/danh-muc/cham-soc-co-the-c12.html\" target=\"_blank\">chăm s&oacute;c cơ thể</a></strong>&nbsp;rất quen thuộc với thị trường Việt Nam. Mỗi sản phẩm đều c&oacute; c&ocirc;ng dụng, sứ mệnh ri&ecirc;ng nổi bật, đ&aacute;p ứng nhu cầu của từng kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p dir=\"ltr\">Với sữa tắm, best seller của h&atilde;ng hiện nay l&agrave; SENKA Perfect Bubble For Body Sweet Floral - sản phẩm gi&uacute;p l&agrave;m sạch da, dưỡng ẩm kết hợp hương nước hoa sử dụng c&ocirc;ng nghệ mới l&agrave;m thay đổi m&ugrave;i hương độc đ&aacute;o từ h&atilde;ng, tạo n&ecirc;n một em sữa tắm l&yacute; tưởng cho mọi c&ocirc; n&agrave;ng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Chiết xuất Tơ tằm trắng, gấp đ&ocirc;i Hyaluronic acid, Glycerin, chiết xuất vỏ c&acirc;y Ho&agrave;ng B&aacute;, Hương Linh Lan &amp; Hoa Nh&agrave;i |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;SENKA |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;500ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 3\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-4.jpg\" title=\"Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 3\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>4. Sữa Tắm SHC Hatomugi The Body Soap&nbsp;</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\"><img alt=\"Sữa Tắm SHC Hatomugi Cấp Ẩm &amp; Dưỡng Da Sáng Mịn 800ml\" src=\"https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-1727147580_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\">Sữa Tắm SHC Hatomugi Cấp Ẩm &amp; Dưỡng Da S&aacute;ng Mịn 800ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\"><strong>105.000 ₫&nbsp;</strong>&nbsp;&nbsp;169.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">C&aacute;c thương hiệu Nhật Bản rất ch&uacute; trọng v&agrave; đặc biệt y&ecirc;u th&iacute;ch c&aacute;c c&ocirc;ng dụng từ hạt &yacute; dĩ mang đến cho l&agrave;n da, v&igrave; thế bạn sẽ bắt gặp sữa tắm của đất nước hoa anh đ&agrave;o thường c&oacute; th&agrave;nh phần n&agrave;y.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Một đại diện kh&aacute;c từ nguy&ecirc;n liệu n&agrave;y m&agrave; bạn cũng n&ecirc;n một lần trải nghiệm&nbsp;l&agrave; SHC Hatomugi The Body Soap. Sản phẩm cấp ẩm v&agrave; l&agrave;m mềm da hiệu quả, đồng thời nhẹ nh&agrave;ng loại bỏ tạp chất, mồ h&ocirc;i, b&atilde; nhờn&hellip; mang lại l&agrave;n da th&ocirc;ng tho&aacute;ng, tươi m&aacute;t.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Chiết xuất hạt &yacute; dĩ, Vitamin C Derivative |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;SHC |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;800ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"sữa tắm SHC Hatomugi\" src=\"https://media.hasaki.vn/hsk/sua-tam-SHC-Hatomugi.png\" title=\"sữa tắm SHC Hatomugi Nhật Bản \" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>5. Sữa Tắm Avatar Jojoba B&ocirc;ng Hoa Shower Gel</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\"><img alt=\"Sữa Tắm Avatar Thơm Mịn Da Jojoba Bông Hoa 900ml\" src=\"https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-303700002-1703585799_img_800x800_eb97c5_fit_center.png\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\">Sữa Tắm Avatar Thơm Mịn Da Jojoba B&ocirc;ng Hoa 900ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\"><strong>141.000 ₫&nbsp;</strong>&nbsp;&nbsp;189.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sữa Tắm Avatar Jojoba B&ocirc;ng Hoa Shower Gel d&agrave;nh cho những n&agrave;ng c&oacute; l&agrave;n da kh&ocirc; r&aacute;p, thiếu ẩm, thiếu độ đ&agrave;n hồi. Sản phẩm l&agrave;m mềm mịn da, bổ sung nước cho da căng mướt, c&ugrave;ng m&ugrave;i hương quyến rũ, l&ocirc;i cuốn bền l&acirc;u.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Một item được đ&aacute;nh gi&aacute; 4.9/5 rất đặc biệt m&agrave; bạn kh&ocirc;ng thể bỏ qua. B&ecirc;n cạnh đ&oacute; c&ograve;n được ra mắt tới tận 4 dung t&iacute;ch kh&aacute;c nhau n&ecirc;n bạn c&oacute; thể thoải m&aacute;i lựa chọn cho m&igrave;nh v&agrave; gia đ&igrave;nh sử dụng.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Tinh dầu Jojoba, Anh đ&agrave;o |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;AVATAR |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;900ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 5\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-6.jpg\" title=\"Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 5\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>6.&nbsp;Sữa Tắm Selsun L&agrave;m Sạch V&agrave; Kh&aacute;ng Khuẩn&nbsp;</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-selsun-lam-sach-va-khang-khuan-150ml-117149.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422218082\" target=\"_blank\"><img alt=\"Sữa Tắm Selsun Làm Sạch Và Kháng Khuẩn 150ml\" src=\"https://media.hcdn.vn/catalog/product/p/r/promotions-auto-sua-tam-selsun-lam-sach-va-khang-khuan-150ml_ieps118C31ZfwDkB_img_800x800_eb97c5_fit_center.png\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-selsun-lam-sach-va-khang-khuan-150ml-117149.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422218082\" target=\"_blank\">Sữa Tắm Selsun L&agrave;m Sạch V&agrave; Kh&aacute;ng Khuẩn 150ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-selsun-lam-sach-va-khang-khuan-150ml-117149.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422218082\" target=\"_blank\"><strong>100.000 ₫&nbsp;</strong>&nbsp;&nbsp;119.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-selsun-lam-sach-va-khang-khuan-150ml-117149.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422218082\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sữa tắm Selsun Fungi Shower L&agrave;m Sạch V&agrave; Kh&aacute;ng Khuẩn l&agrave; sản phẩm sữa tắm chuy&ecirc;n dụng từ thương hiệu Selsun của Nhật Bản, mang đến giải ph&aacute;p cho l&agrave;n da dễ bị c&aacute;c vấn đề về nấm. Với th&agrave;nh phần ch&iacute;nh l&agrave; Miconazole Nitrate, sữa tắm c&oacute; khả năng kh&aacute;ng nấm hiệu quả, gi&uacute;p ngăn ngừa v&agrave; l&agrave;m sạch t&igrave;nh trạng nấm da v&agrave; gi&uacute;p duy tr&igrave; l&agrave;n da khỏe mạnh&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, sản phẩm c&ograve;n chứa Dipotassium Glycyrrhizate, gi&uacute;p giảm ngứa v&agrave; kh&aacute;ng vi&ecirc;m, mang lại cảm gi&aacute;c dễ chịu cho l&agrave;n da nhạy cảm. Sữa tắm Selsun ph&ugrave; hợp cho việc hỗ trợ chăm s&oacute;c v&agrave; bảo vệ da khỏi c&aacute;c vấn đề về nấm v&agrave; duy tr&igrave; l&agrave;n da khỏe mạnh</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Dẫn xuất Amino Acid,&nbsp;3 loại HA (HA, Super HA, Nano HA)​&nbsp;|&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Selsun |&nbsp;<strong>Trọng lượng:</strong>&nbsp;150ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"sữa tắm Selsun Nhật Bản\" src=\"https://media.hasaki.vn/hsk/sua-tam-selsun-nhat-ban.png\" title=\"sữa tắm Selsun Nhật Bản\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>7. Sữa Tắm Oxy Deep Shower</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\"><img alt=\"Sữa Tắm Oxy Tác Động Sâu Dành Cho Nam 500ml\" src=\"https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-422206614-1702353326_img_800x800_eb97c5_fit_center.png\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\">Sữa Tắm Oxy Tác Đ&ocirc;̣ng S&acirc;u D&agrave;nh Cho Nam 500ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\"><strong>111.000 ₫&nbsp;</strong>&nbsp;&nbsp;152.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sữa tắm Nhật Bản cũng c&oacute; những d&ograve;ng d&agrave;nh ri&ecirc;ng cho nam giới thường xuy&ecirc;n lọt top y&ecirc;u th&iacute;ch hiện nay. Trong đ&oacute;, Oxy Deep Shower nổi bật hơn cả nhờ khả năng l&agrave;m sạch s&acirc;u, ngăn m&ugrave;i mạnh mẽ v&agrave; c&ograve;n mang đến cảm gi&aacute;c sảng kho&aacute;i, m&aacute;t lạnh tức th&igrave; sau mỗi lần sử dụng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Than tre hoạt t&iacute;nh, 2X Deep Cylic |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:&nbsp;</strong>Oxy |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;500ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 7\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-9.jpg\" title=\"Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 7\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>8.&nbsp;Sữa Tắm Bior&eacute; Dưỡng Ẩm Hương Hoa Anh Đ&agrave;o</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-biore-duong-am-huong-hoa-anh-dao-thu-gian-1kg-117151.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422218083\" target=\"_blank\"><img alt=\"Sữa Tắm Bioré Dưỡng Ẩm Hương Hoa Anh Đào Thư Giãn 1kg\" src=\"https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-sua-tam-biore-duong-am-huong-hoa-anh-dao-thu-gian-1kg-1706676743_img_800x800_eb97c5_fit_center.png\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-biore-duong-am-huong-hoa-anh-dao-thu-gian-1kg-117151.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422218083\" target=\"_blank\">Sữa Tắm Bior&eacute; Dưỡng Ẩm Hương Hoa Anh Đ&agrave;o Thư Gi&atilde;n 1kg</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-biore-duong-am-huong-hoa-anh-dao-thu-gian-1kg-117151.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422218083\" target=\"_blank\"><strong>181.000 ₫&nbsp;</strong>&nbsp;&nbsp;182.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-biore-duong-am-huong-hoa-anh-dao-thu-gian-1kg-117151.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422218083\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sữa Tắm Dưỡng Ẩm Bior&eacute; Hương Hoa Anh Đ&agrave;o l&agrave; sản phẩm chăm s&oacute;c da từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/biore.html\" target=\"_blank\"><strong>thương hiệu Bior&eacute;</strong></a>&nbsp;Nhật Bản, kết hợp tinh chất sữa chua gi&agrave;u dưỡng chất c&ugrave;ng c&aacute;c Vitamin, gi&uacute;p cung cấp độ ẩm duy tr&igrave; sự tươi trẻ cho l&agrave;n da. Sản phẩm mang đến trải nghiệm thư gi&atilde;n với hương thơm dịu nhẹ v&agrave; ngọt ng&agrave;o của hoa anh đ&agrave;o, cho bạn cảm gi&aacute;c thư th&aacute;i, l&agrave;m dịu căng thẳng sau một ng&agrave;y d&agrave;i, đồng thời gi&uacute;p l&agrave;n da lu&ocirc;n thơm m&aacute;t v&agrave; mềm mịn như c&aacute;nh hoa anh đ&agrave;o</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Chiết xuất sữa chua, hoa anh đ&agrave;o&nbsp;|&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Bior&eacute; |&nbsp;<strong>Trọng lượng:</strong>&nbsp;800g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"sữa tắm dưỡng ẩm Biore hưng hoa anh đào \" src=\"https://media.hasaki.vn/hsk/sua-tam-duong-am-biore-huong-hoa-anh-dao-thu-gian-1.jpg\" title=\"hình 8\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>9. Sữa Tắm Naris Purece Medicated Body Soap LS</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\"><img alt=\"Sữa Tắm Naris Dưỡng Ẩm Da Hương Cam Quýt 550ml\" src=\"https://media.hcdn.vn/catalog/product/f/a/facebook-dynamic-422202747-1728978518_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\">Sữa Tắm Naris Dưỡng Ẩm Da Hương Cam Qu&yacute;t 550ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\"><strong>387.000 ₫&nbsp;</strong>&nbsp;&nbsp;595.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Cuối c&ugrave;ng, chẳng thế bỏ qu&ecirc;n người bạn sữa tắm c&oacute; vẻ ngo&agrave;i nhẹ nh&agrave;ng nhưng xinh đẹp l&agrave; Naris Purece Medicated Body Soap LS.</p>\r\n\r\n<p dir=\"ltr\">Sản phẩm mang đến sự ẩm mượt, dưỡng ẩm cho l&agrave;n da c&ugrave;ng m&ugrave;i hương cam qu&yacute;t tươi mới, tr&agrave;n đầy sức sống c&ugrave;ng với chiết xuất từ 7 loại thảo mộc gi&uacute;p nu&ocirc;i dưỡng da khỏe mạnh, tươi trẻ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;7 loại thảo mộc&nbsp;|&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Naris Cosmetics |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;550ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 9\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-12.jpg\" title=\"Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 9\" /></p>\r\n\r\n<p dir=\"ltr\">Qua b&agrave;i&nbsp;<strong>Top 9 Sữa Tắm Nhật Bản Được Hội Chị Em Tin D&ugrave;ng</strong>&nbsp;tr&ecirc;n, hy vọng rằng bạn đ&atilde; c&oacute; được th&ocirc;ng tin cần thiết trong việc sử dụng v&agrave; lựa chọn sản phẩm ph&ugrave; hợp.</p>\r\n\r\n<p dir=\"ltr\">Sản phẩm&nbsp;<strong>Sữa Tắm Nhật Bản</strong>&nbsp;n&ecirc;u tr&ecirc;n đều được ph&acirc;n phối rộng khắp to&agrave;n quốc. Bạn c&oacute; thể dễ d&agrave;ng mua sản p hẩm ở c&aacute;c đơn vị đối t&aacute;c ch&iacute;nh h&atilde;ng, cửa h&agrave;ng chuy&ecirc;n cung cấp c&aacute;c sản phẩm l&agrave;m đẹp. Tuy nhi&ecirc;n với thị trường h&agrave;ng giả ng&agrave;y c&agrave;ng nhiều, bạn cần t&igrave;m đến những cơ sở cung cấp sản phẩm ch&iacute;nh h&atilde;ng để th&ecirc;m phần an t&acirc;m khi sử dụng.</p>\r\n\r\n<p dir=\"ltr\">Hiện nay tại c&aacute;c cửa h&agrave;ng của Hasaki đ&atilde; c&oacute; c&aacute;c sản phẩm&nbsp;<strong>Sữa Tắm Nhật Bản</strong>&nbsp;vừa review ở tr&ecirc;n ho&agrave;n to&agrave;n ch&iacute;nh h&atilde;ng. Số lượng sản phẩm v&agrave; dịch vụ lớn nhất với chủng loại đa dạng, phong ph&uacute; sẽ đ&aacute;p ứng tất cả nhu cầu mua sắm của bạn.</p>\r\n\r\n<p dir=\"ltr\">Với phương ch&acirc;m&nbsp;<strong>&quot;Chất lượng thật - Gi&aacute; trị thật&rdquo;</strong>,&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\"><strong>Hasaki.vn</strong></a>&nbsp;lu&ocirc;n nỗ lực kh&ocirc;ng ngừng nhằm n&acirc;ng cao chất lượng sản phẩm &amp; dịch vụ để kh&aacute;ch h&agrave;ng c&oacute; được những trải nghiệm mua sắm tốt nhất.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>', '2024-11-23 01:28:32', 1, 1, '2024-11-23 01:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) NOT NULL,
  `atb_slug` varchar(191) NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'L\'OREAL', 'loreal', 1, 1, '2024-09-04 02:34:52', NULL),
(2, 'Pháp', 'phap', 2, 1, '2024-09-04 02:37:13', NULL),
(3, 'Trung Quốc', 'trung-quoc', 3, 1, '2024-09-04 02:37:24', NULL),
(4, 'Nam & Nữ', 'nam-nu', 4, 1, '2024-09-04 02:37:35', NULL),
(5, 'BIODERMA', 'bioderma', 1, 1, '2024-09-04 02:46:06', NULL),
(6, 'Việt Nam', 'viet-nam', 3, 1, '2024-09-04 02:46:13', NULL),
(7, 'Nhật Bản', 'nhat-ban', 3, 1, '2024-09-04 02:47:50', NULL),
(8, 'LA ROCHE-POSAY', 'la-roche-posay', 1, 1, '2024-09-04 02:47:40', NULL),
(9, 'France', 'france', 3, 1, '2024-09-04 02:47:49', NULL),
(10, 'Cannada', 'cannada', 2, 1, '2024-09-04 02:52:17', NULL),
(11, 'Hoa Kỳ', 'hoa-ky', 2, 1, '2024-09-04 02:52:24', NULL),
(12, 'Cosrx', 'cosrx', 1, 1, '2024-09-04 02:55:35', NULL),
(13, 'Hàn Quốc', 'han-quoc', 2, 1, '2024-09-04 02:55:45', NULL),
(14, 'Korea', 'korea', 3, 1, '2024-09-04 02:55:55', NULL),
(15, 'CeraVe', 'cerave', 1, 1, '2024-09-04 02:58:08', NULL),
(16, 'Mỹ', 'my', 2, 1, '2024-09-04 02:58:16', NULL),
(17, 'SVR', 'svr', 1, 1, '2024-09-04 03:00:09', NULL),
(18, 'SIMPLE', 'simple', 1, 1, '2024-09-04 03:02:25', NULL),
(19, 'Anh', 'anh', 2, 1, '2024-09-04 03:02:33', NULL),
(20, 'Poland', 'poland', 3, 1, '2024-09-04 03:02:43', NULL),
(21, 'Klairs', 'klairs', 1, 1, '2024-09-04 03:07:02', NULL),
(22, 'Neutrogena', 'neutrogena', 1, 1, '2024-09-04 03:09:27', NULL),
(23, 'DHC', 'dhc', 1, 1, '2024-09-04 03:19:32', NULL),
(24, 'Japan', 'japan', 2, 1, '2024-09-04 03:19:38', NULL),
(25, 'Black Rouge', 'black-rouge', 1, 1, '2024-09-04 07:02:15', NULL),
(26, 'Nam', 'nam', 4, 1, '2023-08-04 07:02:23', NULL),
(27, 'Nữ', 'nu', 4, 1, '2023-08-04 07:02:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) NOT NULL,
  `c_slug` varchar(191) NOT NULL,
  `c_avatar` varchar(191) DEFAULT NULL,
  `c_banner` varchar(191) DEFAULT NULL,
  `c_description` varchar(191) DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Tẩy trang mặt', 'tay-trang-mat', '2024-11-20__tai-xuong.jpg', NULL, NULL, 0, 1, 1, '2024-09-06 02:30:43', NULL),
(2, 'Sửa rửa mặt', 'sua-rua-mat', '2024-11-21__shopping.webp', NULL, NULL, 0, 1, 1, '2024-09-06 02:31:08', '2024-11-20 23:11:43'),
(3, 'Kem Dầu Dưỡng', 'kem-dau-duong', '2024-11-21__tai-xuong-1.jpg', NULL, NULL, 0, 1, 1, '2024-09-06 02:31:26', '2024-11-20 23:12:46'),
(5, 'Bông Tẩy Trang', 'bong-tay-trang', '2024-11-21__tai-xuong-2.jpg', NULL, NULL, 0, 1, 1, '2024-09-06 02:32:19', '2024-11-20 23:14:02'),
(6, 'Son Kem', 'son-kem', '2024-11-21__tai-xuong-3.jpg', NULL, NULL, 0, 0, 1, '2024-09-06 02:32:40', '2024-11-20 23:14:31'),
(7, 'Dầu gội', 'dau-goi', '2024-11-21__tai-xuong-4.jpg', NULL, NULL, 0, 0, 1, '2024-09-06 02:32:57', '2024-11-20 23:15:04'),
(8, 'Dầu xả', 'dau-xa', '2024-11-21__tai-xuong-5.jpg', NULL, NULL, 0, 0, 1, '2024-09-06 02:33:24', '2024-11-20 23:15:38'),
(9, 'Thực phẩm chức năng', 'thuc-pham-chuc-nang', '2024-11-21__images.jpg', NULL, NULL, 0, 1, 1, '2024-09-06 02:33:45', '2024-11-20 23:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) DEFAULT NULL,
  `cmt_email` varchar(191) DEFAULT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(5, NULL, NULL, 'sản phẩm oke', 0, 53, 0, 5, 0, 0, '2024-11-21 00:30:49', NULL),
(6, NULL, NULL, 'sản phẩm chất lượng', 0, 53, 0, 5, 0, 0, '2024-11-21 00:38:04', NULL),
(7, NULL, NULL, 'sản phẩm chất lượng', 0, 51, 0, 5, 0, 0, '2024-11-21 00:38:39', NULL),
(8, NULL, NULL, 'sản phẩm oke', 0, 53, 0, 16, 0, 0, '2024-11-26 03:27:06', NULL),
(9, NULL, NULL, 'oke', 0, 51, 0, 17, 0, 0, '2024-11-26 03:40:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) DEFAULT NULL,
  `c_phone` char(11) DEFAULT NULL,
  `c_email` varchar(191) DEFAULT NULL,
  `c_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(1, 'gg', '0348871009', 'danghien2802123@gmail.com', 'dfgd', '2024-11-20 00:48:37', NULL),
(2, 'saSS', '0348871009', 'danghien2802123@gmail.com', 'Sản phẩm vừa ý', '2024-11-26 03:27:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thành Phố Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'Ưu đãi tháng 11', 10, '2024-12-01 08:24:00', '2024-12-31 08:12:00', 10, '2024-09-05 01:12:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) DEFAULT NULL,
  `e_banner` varchar(191) DEFAULT NULL,
  `e_link` varchar(191) DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', '2024-11-21__1-340-251-hinh-anh-quang-cao-pham-dep-nhat-nam-2017-san-pham-lam-dep-khong-thieu-cua-chi-em-phu-nu-1.jpg', 'https://images.', 1, 0, 0, 0, '2024-11-20 23:21:41', '2024-11-20 23:21:41'),
(2, 'Event 2', '2024-11-21__images-1.jpg', 'https://images.', 0, 1, 0, 0, '2024-11-20 23:22:52', '2024-11-20 23:22:52'),
(3, 'Event 3', '2024-11-21__kem-han-quoc-chong-lao-hoa.jpg', 'https://images.', 0, 0, 1, 0, '2024-11-20 23:24:00', '2024-11-20 23:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `w_order_id` int(11) NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT 0,
  `w_qty` int(11) NOT NULL DEFAULT 0,
  `w_time_exports` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) NOT NULL,
  `k_slug` varchar(191) NOT NULL,
  `k_description` varchar(191) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) NOT NULL,
  `mn_slug` varchar(191) NOT NULL,
  `mn_avatar` varchar(191) DEFAULT NULL,
  `mn_banner` varchar(191) DEFAULT NULL,
  `mn_description` varchar(191) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Cẩm nang làm đẹp', 'cam-nang-lam-dep', NULL, NULL, NULL, 0, 1, '2024-08-04 03:36:14', '2024-11-21 00:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(26, 15, 48, 15, 1, 510000, NULL, NULL),
(27, 16, 53, 5, 1, 94050, NULL, NULL),
(28, 17, 51, 10, 1, 107100, NULL, NULL),
(29, 19, 48, 15, 1, 510000, NULL, NULL),
(30, 20, 51, 10, 1, 107100, NULL, NULL),
(34, 24, 53, 5, 1, 94050, NULL, NULL),
(36, 27, 51, 10, 1, 107100, NULL, NULL),
(38, 29, 53, 5, 1, 94050, NULL, NULL),
(39, 57, 36, 15, 1, 424150, NULL, NULL),
(40, 58, 36, 15, 1, 424150, NULL, NULL),
(41, 59, 31, 15, 1, 355300, NULL, NULL),
(42, 60, 51, 10, 1, 107100, NULL, NULL),
(43, 61, 53, 5, 1, 94050, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('danghien2802123@gmail.com', '$2y$12$bCC/zJRuQfzvjuPNNYMOLuRrrs8x7TN.x3/ZxBfd6jG.WAnqsb7Hq', '2024-11-23 01:11:06'),
('danghien2802123@gmail.com', '$2y$12$iX2q2xKFwjzs7Q50apHDveLwENRZTjOdy7Ad3EWSaYpZ5bxsjqPC6', '2024-11-23 01:14:11'),
('danghien2802123@gmail.com', '$2y$12$/jp0NizYv2ZXJnLa.aHz5e6Gjdx1gmt7s4ofPtivxniCQrBl/TKjC', '2024-11-23 01:14:57'),
('danghien2802123@gmail.com', '$2y$12$CC1Z2SK257Ra6Vt5tzuKY.VJnEmCYiFqoO1bu74vn0N1XKQRocfHe', '2024-11-23 01:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` decimal(18,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) NOT NULL,
  `p_vnp_response_code` varchar(255) DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `p_transaction_id`, `p_user_id`, `p_money`, `p_note`, `p_transaction_code`, `p_vnp_response_code`, `p_code_vnpay`, `p_code_bank`, `p_time`, `created_at`, `updated_at`) VALUES
(5, 8, 2, 978840.00, 'OKKK', 'jZbg5342JwWpa7g', '00', '14458839', 'NCB', '2024-06-14 10:32:00', NULL, NULL),
(6, 9, 3, 1660700.00, 'Thanh toán nước hoa', '0if6phNM104AKwt', '00', '14459941', 'NCB', '2024-06-14 20:25:00', NULL, NULL),
(7, 10, 4, 900080.00, 'Thanh Toán Mỹ Phẩm', '0eHNk8tAuWBWMS3', '00', '14459945', 'NCB', '2024-06-14 20:37:00', NULL, NULL),
(8, 13, 11, 134400.00, 'dhdhd', 'uarp7FQlBmH3wGP', '00', '14622327', 'NCB', '2024-10-20 03:35:00', NULL, NULL),
(9, 14, 5, 178400.00, 'gggg', 'SHeQazZEH7gz0Q4', '00', '14682200', 'NCB', '2024-11-19 14:19:00', NULL, NULL),
(10, 21, 5, 355300.00, 'sd', 'HM5jBCJnPps0z7p', '00', '14699572', 'NCB', '2024-11-26 17:10:00', NULL, NULL),
(11, 23, 15, 94050.00, 'ừe', 'cEUIllsq5GSgpgi', '00', '14699579', 'NCB', '2024-11-26 17:14:00', NULL, NULL),
(12, 25, 16, 107100.00, 'dê', 'OneVGXLd0mDOErI', '00', '14699597', 'NCB', '2024-11-26 17:22:00', NULL, NULL),
(13, 26, 16, 107100.00, 'dê', 'OneVGXLd0mDOErI', '00', '14699597', 'NCB', '2024-11-26 17:22:00', NULL, NULL),
(14, 28, 17, 424150.00, 'dfer', 'j3gytWdoFzs2d7k', '00', '14699632', 'NCB', '2024-11-26 17:40:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ph_code` varchar(191) NOT NULL,
  `ph_user_id` int(10) UNSIGNED NOT NULL,
  `ph_credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_debit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_meta_detail` text DEFAULT NULL,
  `ph_status` tinyint(4) NOT NULL DEFAULT 0,
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_histories`
--

INSERT INTO `pay_histories` (`id`, `ph_code`, `ph_user_id`, `ph_credit`, `ph_debit`, `ph_balance`, `ph_meta_detail`, `ph_status`, `ph_month`, `ph_year`, `created_at`, `updated_at`) VALUES
(1, 'PAYOUT1', 1, 0, 885540, 0, NULL, 1, 8, 2024, '2024-08-04 08:51:48', NULL),
(2, 'PAYOUT2', 2, 0, 1654628, 0, NULL, 1, 8, 2024, '2024-08-05 01:13:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `pi_user_id` int(10) UNSIGNED NOT NULL,
  `pi_admin_id` int(10) UNSIGNED NOT NULL,
  `pi_provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_fee` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_meta_detail` text DEFAULT NULL,
  `pi_status` tinyint(4) NOT NULL DEFAULT 0,
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_user_id` int(10) UNSIGNED NOT NULL,
  `po_transaction_id` int(10) UNSIGNED NOT NULL,
  `po_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `po_meta_detail` text NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT 0,
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_outs`
--

INSERT INTO `pay_outs` (`id`, `po_user_id`, `po_transaction_id`, `po_money`, `po_meta_detail`, `po_status`, `po_month`, `po_year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 885540, '', 1, 8, 2024, '2024-08-04 08:51:48', NULL),
(2, 2, 3, 1654628, '', 1, 8, 2024, '2024-08-05 01:13:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) DEFAULT NULL,
  `pro_slug` varchar(191) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_file` varchar(255) DEFAULT NULL,
  `pro_avatar` varchar(191) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) DEFAULT NULL,
  `pro_energy` varchar(191) DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(29, 'Sữa Rửa Mặt CeraVe Sạch Sâu Cho Da Thường Đến Da Dầu 473ml Foaming Cleanser', 'sua-rua-mat-cerave-sach-sau-cho-da-thuong-den-da-dau-473ml-foaming-cleanser', 334000, 0, 2, 1, 0, 20, NULL, '2024-11-20__tai-xuong-23.jpg', 0, 0, 1, 0, NULL, '<p><strong><strong>Sữa Rửa Mặt Cerave Sạch S&acirc;u&nbsp;</strong></strong>l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/sua-rua-mat-c19.html\" target=\"_blank\">sữa rửa mặt</a>&nbsp;đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/cerave.html\" target=\"_blank\">thương hiệu mỹ phẩm Cerave</a>&nbsp;của Mỹ,&nbsp;với sự kết hợp của ba Ceramides thiết yếu, Hyaluronic Acid sản phẩm gi&uacute;p l&agrave;m sạch v&agrave; giữ ẩm cho l&agrave;n da m&agrave; kh&ocirc;ng ảnh hưởng đến h&agrave;ng r&agrave;o bảo vệ da mặt v&agrave; cơ thể.</p>\r\n\r\n<p>Hiện sản phẩm&nbsp;<strong>Sữa Rửa Mặt Cerave Sạch S&acirc;u&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\"><strong>Hasaki</strong></a>&nbsp;với 2 loại v&agrave; 3 dung t&iacute;ch (88ml; 236ml; 473ml):</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Sữa Rửa Mặt Cerave Sạch S&acirc;u Cho Da Thường Đến Da Dầu</strong><strong>&nbsp;</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sữa Rửa Mặt Cerave Sạch S&acirc;u Cho Da Thường Đến Da Kh&ocirc;</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>1.&nbsp;<strong>Sữa Rửa Mặt Cerave Sạch S&acirc;u Cho Da Thường Đến Da Dầu</strong><strong>&nbsp;</strong></strong></h2>\r\n\r\n<p><strong>Sữa Rửa Mặt Cerave&nbsp;Foaming Cleanser&nbsp;</strong>kết cấu dạng gel tạo bọt rất l&yacute; tưởng để loại bỏ dầu thừa, bụi bẩn v&agrave; lớp trang điểm với c&ocirc;ng thức nhẹ nh&agrave;ng, kh&ocirc;ng ph&aacute; vỡ h&agrave;ng r&agrave;o bảo vệ tự nhi&ecirc;n của da v&agrave; chứa c&aacute;c th&agrave;nh phần gi&uacute;p duy tr&igrave; độ ẩm c&acirc;n bằng da. Cerave Foaming Cleanser<strong>&nbsp;</strong>chứa&nbsp;<strong>Ceramides, Axit Hyaluronic v&agrave; Niacinamide</strong>&nbsp;gi&uacute;p duy tr&igrave; h&agrave;ng r&agrave;o bảo vệ da, kh&oacute;a ẩm v&agrave; l&agrave;m dịu l&agrave;n da của bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Dầu\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/sua-rua-mat-cerave-sach-sau-cho-da-thuong-den-da-dau.jpg\" style=\"height:800px; width:800px\" title=\"Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Dầu 473ml\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Loại da ph&ugrave; hợp:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm th&iacute;ch hợp cho da thường đến dầu.</p>\r\n	</li>\r\n	<li>\r\n	<p>C&oacute; thể sử dụng cho mặt v&agrave; to&agrave;n th&acirc;n.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Giải ph&aacute;p cho t&igrave;nh trạng da:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da thường tiết b&atilde; nhờn,&nbsp;<a href=\"https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html\" target=\"_blank\">dầu thừa, lỗ ch&acirc;n l&ocirc;ng to</a>.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"Kết cấu Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Dầu\" src=\"https://media.hcdn.vn/wysiwyg/Chau/sua-rua-mat-cerave-tao-bot-cho-da-thuong-den-da-dau-3.jpg\" style=\"width:800px\" title=\"Kết cấu Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Dầu 473ml\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Ưu thế nổi bật:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>3 loại Ceramides (1, 3, 6-II)</strong>&nbsp;thiết yếu gi&uacute;p kh&ocirc;i phục h&agrave;ng r&agrave;o độ ẩm da.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hyaluronic Acid</strong>&nbsp;gi&uacute;p duy tr&igrave; độ ẩm tự nhi&ecirc;n của da.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Niacinamide</strong>&nbsp;gi&uacute;p l&agrave;m dịu, nu&ocirc;i dưỡng, củng cố h&agrave;ng r&agrave;o da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết cấu dạng gel tạo bọt gi&uacute;p l&agrave;m sạch s&acirc;u, loại bỏ dầu thừa, th&ocirc;ng tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng nhưng vẫn duy tr&igrave; độ ẩm tự nhi&ecirc;n của da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sữa Rửa Mặt Cerave Foaming Cleanser\" src=\"https://media.hcdn.vn/wysiwyg/Chau/sua-rua-mat-cerave-tao-bot-cho-da-thuong-den-da-dau-1.jpg\" style=\"width:800px\" title=\"Sữa Rửa Mặt Cerave Foaming Cleanser 473ml\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>2.&nbsp;<strong>Sữa Rửa Mặt Cerave Cho Da Thường Đến Kh&ocirc;&nbsp;</strong></h2>\r\n\r\n<p><strong>Sữa Rửa Mặt Cerave&nbsp;Hydrating Cleanser&nbsp;</strong>gi&uacute;p loại bỏ bụi bẩn, dầu thừa, nhẹ nh&agrave;ng lấy đi lớp kem chống nắng, trang điểm nhưng vẫn giữ h&agrave;ng r&agrave;o bảo vệ da v&agrave; kh&ocirc;ng l&agrave;m mất đi độ ẩm tự nhi&ecirc;n. Sữa rửa mặt dịu nhẹ với c&aacute;c th&agrave;nh phần như&nbsp;<strong>Ceramides&nbsp;</strong>v&agrave;<strong>&nbsp;Axit Hyaluronic</strong>&nbsp;c&oacute; t&aacute;c dụng kh&ocirc;i phục h&agrave;ng r&agrave;o tự nhi&ecirc;n của da v&agrave; dưỡng da ẩm mịn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"Sữa Rửa Mặt Cerave Cho Da Thường Đến Khô \" src=\"https://media.hcdn.vn/wysiwyg/Chau/sua-rua-mat-cerave-cho-da-thuong-den-kho-1.jpg\" style=\"width:800px\" title=\"Sữa Rửa Mặt Cerave Cho Da Thường Đến Khô 473ml\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Loại da ph&ugrave; hợp:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm th&iacute;ch hợp cho da thường đến kh&ocirc;.</p>\r\n	</li>\r\n	<li>\r\n	<p>C&oacute; thể sử dụng cho mặt v&agrave; to&agrave;n th&acirc;n.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sản phẩm th&iacute;ch hợp cho cả người lớn v&agrave; trẻ em.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Giải ph&aacute;p cho t&igrave;nh trạng da:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da&nbsp;<a href=\"https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html\" target=\"_blank\">thiếu nước, thiếu ẩm</a>.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Da kh&ocirc; r&aacute;p, sần s&ugrave;i, bong tr&oacute;c.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sữa Rửa Mặt Cerave Hydrating Cleanser\" src=\"https://media.hcdn.vn/wysiwyg/Chau/sua-rua-mat-cerave-cho-da-thuong-den-kho-2.jpg\" style=\"width:800px\" title=\"Sữa Rửa Mặt Cerave Hydrating Cleanser 473ml\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Ưu thế nổi bật:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm gi&uacute;p l&agrave;m sạch bụi bẩn, dầu thừa, lấy đi cặn b&atilde; lớp trang điểm c&ograve;n s&oacute;t tr&ecirc;n da v&agrave; l&agrave;m th&ocirc;ng tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng nhưng vẫn duy tr&igrave; độ ẩm cho da.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>3 loại Ceramides (1, 3, 6-II)</strong>&nbsp;thiết yếu gi&uacute;p kh&ocirc;i phục h&agrave;ng r&agrave;o độ ẩm da.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&ocirc;ng nghệ MVE độc quyền</strong>&nbsp;kho&aacute; ẩm cho da suốt 24 giờ.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hyaluronic Acid</strong>&nbsp;gi&uacute;p duy tr&igrave; độ ẩm tự nhi&ecirc;n của da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Độ an to&agrave;n:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kh&ocirc;ng x&agrave; ph&ograve;ng&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng hương liệu&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa paraben&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng b&iacute;t tắc lỗ ch&acirc;n l&ocirc;ng&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Đ&atilde; được kiểm nghiệm kh&ocirc;ng g&acirc;y k&iacute;ch ứng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Bảo quản:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Th&ocirc;ng số sản phẩm:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Dung t&iacute;ch:&nbsp;</strong>88ml; 236ml; 473ml</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:&nbsp;</strong>Cerave&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Mỹ.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất tại:</strong>&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>\r\n	<ul>\r\n		<li>\r\n		<p>Phi&ecirc;n bản cũ: Ph&aacute;p&nbsp;</p>\r\n		</li>\r\n		<li>\r\n		<p>Phi&ecirc;n bản mới: Trung Quốc.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>*&nbsp;<strong><em>Lưu &yacute;: Hiện tại Hasaki đang b&aacute;n song song mẫu cũ v&agrave; mới.</em></strong></p>\r\n\r\n<p><strong><em>TH&Ocirc;NG B&Aacute;O VỀ THAY ĐỔI BAO B&Igrave;:</em></strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hcdn.vn/wysiwyg/Chau/sua-rua-mat-cerave-sach-sau-1.jpg\" style=\"width:800px\" /><img alt=\"\" src=\"https://media.hcdn.vn/wysiwyg/Chau/sua-rua-mat-cerave-sach-sau-2.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:09:22', 50, NULL, NULL, 0, '2024-11-19 23:37:25', NULL),
(30, 'Sữa Rửa Mặt Cetaphil Dịu Lành Cho Da Nhạy Cảm 500ml (Mới) Gentle Skin Cleanser (New)', 'sua-rua-mat-cetaphil-diu-lanh-cho-da-nhay-cam-500ml-moi-gentle-skin-cleanser-new', 302000, 0, 2, 1, 0, 15, NULL, '2024-11-20__tai-xuong-24.jpg', 0, 0, 1, 0, NULL, '<p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser</strong>&nbsp;phi&ecirc;n bản mới ra mắt năm 2022 từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/cetaphil.html\" target=\"_blank\">thương hiệu Cetaphil</a>&nbsp;với c&ocirc;ng thức khoa học mới cho l&agrave;n da nhạy cảm,&nbsp;gi&uacute;p l&agrave;m sạch da, loại bỏ bụi bẩn, ph&ugrave; hợp cho mọi loại da, kh&ocirc;ng l&agrave;m kh&ocirc; da v&agrave; duy tr&igrave; h&agrave;ng r&agrave;o bảo vệ da suốt ng&agrave;y d&agrave;i.</p>\r\n\r\n<p>Được chứng minh l&acirc;m s&agrave;ng c&oacute; khả năng l&agrave;m sạch s&acirc;u, loại bỏ ho&agrave;n to&agrave;n bụi bẩn, v&agrave; tạp chất tr&ecirc;n da một c&aacute;ch dịu nhẹ nhưng vẫn duy tr&igrave; độ ẩm tự nhi&ecirc;n để bảo vệ da khỏi t&igrave;nh trạng kh&ocirc; r&aacute;p,&nbsp;<strong><a href=\"https://hasaki.vn/danh-muc/sua-rua-mat-c19.html\" target=\"_blank\">Sữa Rửa Mặt</a>&nbsp;Cetaphil Mới&nbsp;</strong>với c&ocirc;ng thức l&agrave;nh t&iacute;nh kh&ocirc;ng g&acirc;y k&iacute;ch ứng sẽ an to&agrave;n cho mọi loại da, kể cả da nhạy cảm.</p>\r\n\r\n<p><strong>Sữa Rửa Mặt Dịu L&agrave;nh Cho Da Nhạy Cảm Cetaphil Gentle Skin Cleanser</strong>&nbsp;hiện đ&atilde; c&oacute; mặt tại<strong>&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;</strong>với 6 dung t&iacute;ch cho bạn lựa chọn:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 59ml</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 125ml</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 250ml</strong></strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong><strong><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 473ml</strong></strong></strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 500ml</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 1000ml</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 473ml (Mới)\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen1/sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-moi-1.jpg\" style=\"width:800px\" title=\"Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 473ml\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Loại da ph&ugrave; hợp:</h2>\r\n\r\n<ul>\r\n	<li>Sản phẩm d&agrave;nh cho mọi loại da, đặc biệt l&agrave; da nhạy cảm.</li>\r\n</ul>\r\n\r\n<h2>Giải ph&aacute;p cho t&igrave;nh trạng da:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da kh&ocirc;,&nbsp;<a href=\"https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html\" target=\"_blank\">thiếu độ ẩm - thiếu nước</a>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da nhạy cảm, dễ k&iacute;ch ứng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng thức khoa học mới với sự kết hợp 3 th&agrave;nh phần l&agrave;nh t&iacute;nh:&nbsp;<strong>Niacinamide (Vitamin B3), Panthenol (Pro-vitamin B5)</strong>&nbsp;v&agrave;&nbsp;<strong>Glycerin</strong>&nbsp;đ&atilde; tạo ra cơ chế đặc biệt gi&uacute;p th&uacute;c đẩy qu&aacute; tr&igrave;nh sản sinh Ceramides tự nhi&ecirc;n của da v&agrave; tổng hợp Fillaggrin c&oacute; dụng bảo vệ h&agrave;ng r&agrave;o tự nhi&ecirc;n của da gi&uacute;p cải thiện khả năng phục hồi của l&agrave;n da nhạy cảm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sản phẩm nổi bật với 6 KH&Ocirc;NG: Kh&ocirc;ng x&agrave; ph&ograve;ng, kh&ocirc;ng paraben, kh&ocirc;ng sulfat, kh&ocirc;ng hương liệu, kh&ocirc;ng dầu kho&aacute;ng &amp; kh&ocirc;ng thử nghiệm tr&ecirc;n động vật.</p>\r\n	</li>\r\n	<li>\r\n	<p>95% người d&ugrave;ng cảm thấy l&agrave;n da của họ được l&agrave;m sạch nhưng kh&ocirc;ng g&acirc;y kh&ocirc; da sau khi d&ugrave;ng sản phẩm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tăng cường lipid v&agrave; protein c&oacute; trong h&agrave;ng r&agrave;o bảo vệ tự nhi&ecirc;n của da - những th&agrave;nh phần quan trọng trong việc duy tr&igrave; h&agrave;ng r&agrave;o bảo vệ da lu&ocirc;n khỏe mạnh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sản phẩm được kiểm nghiệm l&acirc;m s&agrave;ng l&agrave; an to&agrave;n với&nbsp;<a href=\"https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html\" target=\"_blank\">da nhạy cảm</a>&nbsp;&amp; được tin d&ugrave;ng bởi c&aacute;c b&aacute;c sĩ da liễu.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 473ml phiên bản mới với công thức cải tiến giúp cung cấp độ ẩm liên tục nhằm bảo vệ làn da khỏi tình trạng khô căng, thô ráp, đồng thời giữ da ẩm mịn sau khi rửa mặt.\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen1/sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-moi-2.jpg\" style=\"width:800px\" title=\"Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 473ml phiên bản mới\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser hỗ trợ sản sinh ceramide trên da, duy trì hàng rào bảo vệ da khoẻ mạnh, ngăn ngừa mất nước.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen1/sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-moi-5.jpg\" style=\"height:800px; width:800px\" title=\"Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser hỗ trợ sản sinh ceramide trên da.\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser duy trì và bảo vệ màng ẩm tự nhiên trên da sau khi sử dụng.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen1/sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-moi-4.jpg\" style=\"height:800px; width:800px\" title=\"Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser duy trì và bảo vệ màng ẩm tự nhiên trên da.\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Độ an to&agrave;n:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kh&ocirc;ng hương liệu</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng paraben</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng sulfat</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng dầu kho&aacute;ng</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng x&agrave; ph&ograve;ng</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng g&acirc;y k&iacute;ch ứng</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 473ml đã qua kiểm nghiệm của bác sĩ da liễu, được chứng minh lâm sàng về độ dịu nhẹ trên làn da nhạy cảm.\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen1/sua-rua-mat-cetaphil-diu-nhe-khong-xa-phong-moi-3.jpg\" style=\"width:800px\" title=\"Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 473ml an toàn cho làn da nhạy cảm\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp hoặc nơi c&oacute; nhiệt độ cao / ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh xa tầm tay trẻ em.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Thương hiệu:&nbsp;</strong>Cetaphil</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>Canada</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất tại:&nbsp;</strong>Canada</p>\r\n	</li>\r\n	<li>\r\n	<p><strong><strong>Dung t&iacute;ch:&nbsp;</strong></strong>59ml /<strong><strong>&nbsp;</strong></strong>125ml / 250ml /<strong><strong>&nbsp;</strong></strong>473ml / 500ml / 1000ml</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hạn sử dụng:&nbsp;</strong>30 th&aacute;ng kể từ ng&agrave;y sản xuất</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:14:01', 50, NULL, NULL, 0, '2024-11-19 23:37:43', NULL),
(31, 'Gel Rửa Mặt La Roche-Posay Dành Cho Da Dầu, Nhạy Cảm 400ml Effaclar Purifying Foaming Gel', 'gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-400ml-effaclar-purifying-foaming-gel', 418000, 0, 2, 1, 0, 15, NULL, '2024-11-20__tai-xuong-34.jpg', 5, 1, 1, 3, NULL, '<p><strong>Gel Rửa Mặt La Roche-Posay&nbsp;Effaclar Purifying Foaming Gel For Oily Sensitive Skin</strong>&nbsp;l&agrave; d&ograve;ng sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/sua-rua-mat-c19.html\" target=\"_blank\">sữa rửa mặt</a>&nbsp;chuy&ecirc;n biệt d&agrave;nh cho l&agrave;n da dầu, mụn, nhạy cảm&nbsp;đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/la-roche-posay.html\" target=\"_blank\">thương hiệu dược mỹ phẩm La Roche-Posay</a>&nbsp;nổi tiếng của Ph&aacute;p, với kết cấu dạng gel tạo bọt nhẹ nh&agrave;ng&nbsp;gi&uacute;p loại bỏ bụi bẩn, tạp chất v&agrave; b&atilde; nhờn dư thừa tr&ecirc;n da hiệu quả, mang đến l&agrave;n da sạch mịn, tho&aacute;ng nhẹ v&agrave; tươi m&aacute;t. C&ocirc;ng thức sản phẩm an to&agrave;n, l&agrave;nh t&iacute;nh, giảm thiểu t&igrave;nh trạng k&iacute;ch ứng đối với l&agrave;n da nhạy cảm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-01.jpg\" style=\"width:800px\" title=\"La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gel Rửa Mặt La Roche-Posay&nbsp;Effaclar Purifying Foaming Gel For Oily Sensitive Skin&nbsp;D&agrave;nh Cho Da Dầu, Nhạy Cảm&nbsp;</strong>hiện đ&atilde; c&oacute; mặt tại<strong>&nbsp;Hasaki</strong>&nbsp;với 4 dung t&iacute;ch đa dạng ph&ugrave; hợp với từng nhu cầu:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Dạng tu&yacute;p 50ml:&nbsp;</strong>thiết kế nhỏ gọn, ph&ugrave; hợp mang theo b&ecirc;n người khi đi du lịch hoặc c&ocirc;ng t&aacute;c.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dạng tu&yacute;p 200ml:&nbsp;</strong>ph&ugrave; hợp cho nhu cầu sử dụng hằng ng&agrave;y tại nh&agrave;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dạng chai v&ograve;i nhấn 400ml:&nbsp;</strong>dung t&iacute;ch lớn hơn, tiết kiệm hơn c&ugrave;ng thiết kế v&ograve;i nhấn tiện lợi.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>T&uacute;i refill 400ml:&nbsp;</strong>thiết kế dạng t&uacute;i&nbsp;mới tiện lợi để refill lại v&agrave;o chai với mục đ&iacute;ch bảo vệ m&ocirc;i trường v&agrave; tiết kiệm gi&aacute; th&agrave;nh.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin có 3 dung tích đa dạng phù hợp với từng nhu cầu riêng biệt.\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-05.jpg\" style=\"width:800px\" title=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin có 3 dung tích\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng b&aacute;o thay đổi bao b&igrave; sản phẩm:</strong></h2>\r\n\r\n<p>D&ograve;ng sản phẩm<strong>&nbsp;Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin&nbsp;</strong>c&oacute; sự thay đổi về bao b&igrave; sản phẩm trong năm 2024 như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin bao bì mới 2024\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam_doi-mau-2024.jpg\" style=\"height:418px; width:800px\" title=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin bao bì mới\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Lưu &yacute;:</strong>&nbsp;C&ocirc;ng thức v&agrave; kết cấu sản phẩm b&ecirc;n trong kh&ocirc;ng thay đổi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hiện tại Hasaki đang b&aacute;n song song cả hai phi&ecirc;n bản bao b&igrave; cũ v&agrave; mới.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Loại da ph&ugrave; hợp:</h2>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp cho&nbsp;<a href=\"https://hasaki.vn/danh-muc/da-dau-c90.html\" target=\"_blank\">da dầu</a>, da mụn, da nhạy cảm.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin không gây kích ứng đối với làn da nhạy cảm\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-tao-bot-la-roche-posay-danh-cho-da-dau-nhay-cam-4.jpg\" style=\"width:800px\" title=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin dành cho da dầu, mụn, nhạy cảm\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Giải ph&aacute;p cho t&igrave;nh trạng da:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Dầu thừa - lỗ ch&acirc;n l&ocirc;ng to</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/da-mun-c44.html\" target=\"_blank\">Da mụn</a>&nbsp;c&aacute;m, đầu đen, đầu trắng v&agrave; sưng vi&ecirc;m từ trung b&igrave;nh đến nặng vừa</p>\r\n	</li>\r\n	<li>\r\n	<p>Da nhạy cảm, dễ k&iacute;ch ứng</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Ưu thế nổi bật:</h2>\r\n\r\n<p><strong>&nbsp;La Roche-Posay&nbsp;Effaclar Purifying Foaming Gel For Oily Sensitive Skin&nbsp;</strong>c&oacute; c&ocirc;ng thức được lựa chọn kĩ c&agrave;ng với c&aacute;c th&agrave;nh phần hoạt t&iacute;nh dịu nhẹ, ph&ugrave; hợp cho l&agrave;n da dầu, mụn &amp; nhạy cảm:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Nước kho&aacute;ng thi&ecirc;n nhi&ecirc;n La Roche-Posay</strong>&nbsp;c&oacute; t&aacute;c dụng l&agrave;m dịu da v&agrave; giảm k&iacute;ch ứng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>ZinC PCA</strong>&nbsp;gi&uacute;p điều tiết lượng dầu tiết ra tr&ecirc;n da, từ đ&oacute; kiểm so&aacute;t b&oacute;ng dầu v&agrave; b&atilde; nhờn dư thừa hiệu quả, giảm h&igrave;nh th&agrave;nh mụn đầu đen.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Độ pH 5.5</strong>&nbsp;giống với độ pH tự nhi&ecirc;n tr&ecirc;n da, gi&uacute;p củng cố h&agrave;ng r&agrave;o bảo vệ da, kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&ocirc; căng, kh&oacute; chịu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết cấu sản phẩm dạng gel tạo bọt, nhẹ nh&agrave;ng loại bỏ những tạp chất, bụi bẩn v&agrave; &ocirc; nhiễm tr&ecirc;n da,&nbsp;mang đến cảm gi&aacute;c tươi m&aacute;t đầy sảng kho&aacute;i sau khi rửa mặt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hương thơm hoa c&uacute;c dịu nhẹ sẽ gi&uacute;p bạn thư gi&atilde;n trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin có công thức được lựa chọn kĩ càng với các thành phần hoạt tính dịu nhẹ, phù hợp cho làn da dầu, mụn &amp; nhạy cảm.\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-02.jpg\" style=\"width:800px\" title=\"La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin bao gồm các thành phần hoạt tính được chọn lọc kĩ càng.\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin hiện đã có mặt tại Hasaki\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-03.jpg\" style=\"width:800px\" title=\"Mua La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Quy trình làm sạch cho da sáng khỏe với La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin.\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-04.jpg\" style=\"width:800px\" title=\"Quy trình sử dụng La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Độ an to&agrave;n:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa Paraben, chất tạo m&agrave;u, x&agrave; ph&ograve;ng, cồn, an to&agrave;n cho l&agrave;n da nhạy cảm.</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng thức kh&ocirc;ng chứa dầu (oil-free) n&ecirc;n rất th&iacute;ch hợp cho da dầu.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp hoặc nơi c&oacute; nhiệt độ cao / ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh xa tầm tay trẻ em.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-06.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>\r\n\r\n<p><strong>Thương hiệu:&nbsp;</strong>La Roche-Posay</p>\r\n\r\n<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>Ph&aacute;p</p>\r\n\r\n<p><strong>Sản xuất tại:&nbsp;</strong>Ph&aacute;p</p>\r\n\r\n<p><strong>Dung t&iacute;ch:&nbsp;</strong>50ml / 200ml / 400ml/ T&uacute;i refill 400ml/ 2x50ml/ 3x50ml/ 4x50ml</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/Uw-qLmf9TJs\" width=\"425\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>*Lưu &yacute;: T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:16:25', 50, NULL, NULL, 0, '2024-11-28 20:15:41', NULL),
(32, 'Combo 3 Gel Rửa Mặt La Roche-Posay Cho Da Dầu Nhạy Cảm 50ml Effaclar Purifying Foaming Gel', 'combo-3-gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam-50ml-effaclar-purifying-foaming-gel', 339000, 0, 2, 1, 0, 20, NULL, '2024-11-20__tai-xuong-40.jpg', 1, 0, 1, 0, NULL, '<p><strong>Gel Rửa Mặt La Roche-Posay&nbsp;Effaclar Purifying Foaming Gel For Oily Sensitive Skin</strong>&nbsp;l&agrave; d&ograve;ng sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/sua-rua-mat-c19.html\" target=\"_blank\">sữa rửa mặt</a>&nbsp;chuy&ecirc;n biệt d&agrave;nh cho l&agrave;n da dầu, mụn, nhạy cảm&nbsp;đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/la-roche-posay.html\" target=\"_blank\">thương hiệu dược mỹ phẩm La Roche-Posay</a>&nbsp;nổi tiếng của Ph&aacute;p, với kết cấu dạng gel tạo bọt nhẹ nh&agrave;ng&nbsp;gi&uacute;p loại bỏ bụi bẩn, tạp chất v&agrave; b&atilde; nhờn dư thừa tr&ecirc;n da hiệu quả, mang đến l&agrave;n da sạch mịn, tho&aacute;ng nhẹ v&agrave; tươi m&aacute;t. C&ocirc;ng thức sản phẩm an to&agrave;n, l&agrave;nh t&iacute;nh, giảm thiểu t&igrave;nh trạng k&iacute;ch ứng đối với l&agrave;n da nhạy cảm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-01.jpg\" style=\"width:800px\" title=\"La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gel Rửa Mặt La Roche-Posay&nbsp;Effaclar Purifying Foaming Gel For Oily Sensitive Skin&nbsp;D&agrave;nh Cho Da Dầu, Nhạy Cảm&nbsp;</strong>hiện đ&atilde; c&oacute; mặt tại<strong>&nbsp;Hasaki</strong>&nbsp;với 4 dung t&iacute;ch đa dạng ph&ugrave; hợp với từng nhu cầu:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Dạng tu&yacute;p 50ml:&nbsp;</strong>thiết kế nhỏ gọn, ph&ugrave; hợp mang theo b&ecirc;n người khi đi du lịch hoặc c&ocirc;ng t&aacute;c.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dạng tu&yacute;p 200ml:&nbsp;</strong>ph&ugrave; hợp cho nhu cầu sử dụng hằng ng&agrave;y tại nh&agrave;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dạng chai v&ograve;i nhấn 400ml:&nbsp;</strong>dung t&iacute;ch lớn hơn, tiết kiệm hơn c&ugrave;ng thiết kế v&ograve;i nhấn tiện lợi.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>T&uacute;i refill 400ml:&nbsp;</strong>thiết kế dạng t&uacute;i&nbsp;mới tiện lợi để refill lại v&agrave;o chai với mục đ&iacute;ch bảo vệ m&ocirc;i trường v&agrave; tiết kiệm gi&aacute; th&agrave;nh.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin có 3 dung tích đa dạng phù hợp với từng nhu cầu riêng biệt.\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-05.jpg\" style=\"width:800px\" title=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin có 3 dung tích\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng b&aacute;o thay đổi bao b&igrave; sản phẩm:</strong></h2>\r\n\r\n<p>D&ograve;ng sản phẩm<strong>&nbsp;Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin&nbsp;</strong>c&oacute; sự thay đổi về bao b&igrave; sản phẩm trong năm 2024 như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin bao bì mới 2024\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam_doi-mau-2024.jpg\" style=\"height:418px; width:800px\" title=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin bao bì mới\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Lưu &yacute;:</strong>&nbsp;C&ocirc;ng thức v&agrave; kết cấu sản phẩm b&ecirc;n trong kh&ocirc;ng thay đổi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hiện tại Hasaki đang b&aacute;n song song cả hai phi&ecirc;n bản bao b&igrave; cũ v&agrave; mới.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Loại da ph&ugrave; hợp:</h2>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp cho&nbsp;<a href=\"https://hasaki.vn/danh-muc/da-dau-c90.html\" target=\"_blank\">da dầu</a>, da mụn, da nhạy cảm.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin không gây kích ứng đối với làn da nhạy cảm\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-tao-bot-la-roche-posay-danh-cho-da-dau-nhay-cam-4.jpg\" style=\"width:800px\" title=\"Gel Rửa Mặt La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin dành cho da dầu, mụn, nhạy cảm\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Giải ph&aacute;p cho t&igrave;nh trạng da:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Dầu thừa - lỗ ch&acirc;n l&ocirc;ng to</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/da-mun-c44.html\" target=\"_blank\">Da mụn</a>&nbsp;c&aacute;m, đầu đen, đầu trắng v&agrave; sưng vi&ecirc;m từ trung b&igrave;nh đến nặng vừa</p>\r\n	</li>\r\n	<li>\r\n	<p>Da nhạy cảm, dễ k&iacute;ch ứng</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Ưu thế nổi bật:</h2>\r\n\r\n<p><strong>&nbsp;La Roche-Posay&nbsp;Effaclar Purifying Foaming Gel For Oily Sensitive Skin&nbsp;</strong>c&oacute; c&ocirc;ng thức được lựa chọn kĩ c&agrave;ng với c&aacute;c th&agrave;nh phần hoạt t&iacute;nh dịu nhẹ, ph&ugrave; hợp cho l&agrave;n da dầu, mụn &amp; nhạy cảm:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Nước kho&aacute;ng thi&ecirc;n nhi&ecirc;n La Roche-Posay</strong>&nbsp;c&oacute; t&aacute;c dụng l&agrave;m dịu da v&agrave; giảm k&iacute;ch ứng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>ZinC PCA</strong>&nbsp;gi&uacute;p điều tiết lượng dầu tiết ra tr&ecirc;n da, từ đ&oacute; kiểm so&aacute;t b&oacute;ng dầu v&agrave; b&atilde; nhờn dư thừa hiệu quả, giảm h&igrave;nh th&agrave;nh mụn đầu đen.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Độ pH 5.5</strong>&nbsp;giống với độ pH tự nhi&ecirc;n tr&ecirc;n da, gi&uacute;p củng cố h&agrave;ng r&agrave;o bảo vệ da, kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&ocirc; căng, kh&oacute; chịu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết cấu sản phẩm dạng gel tạo bọt, nhẹ nh&agrave;ng loại bỏ những tạp chất, bụi bẩn v&agrave; &ocirc; nhiễm tr&ecirc;n da,&nbsp;mang đến cảm gi&aacute;c tươi m&aacute;t đầy sảng kho&aacute;i sau khi rửa mặt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hương thơm hoa c&uacute;c dịu nhẹ sẽ gi&uacute;p bạn thư gi&atilde;n trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin có công thức được lựa chọn kĩ càng với các thành phần hoạt tính dịu nhẹ, phù hợp cho làn da dầu, mụn &amp; nhạy cảm.\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-02.jpg\" style=\"width:800px\" title=\"La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin bao gồm các thành phần hoạt tính được chọn lọc kĩ càng.\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin hiện đã có mặt tại Hasaki\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-03.jpg\" style=\"width:800px\" title=\"Mua La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Quy trình làm sạch cho da sáng khỏe với La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin.\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-04.jpg\" style=\"width:800px\" title=\"Quy trình sử dụng La Roche-Posay Effaclar Purifying Foaming Gel For Oily Sensitive Skin\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Độ an to&agrave;n:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa Paraben, chất tạo m&agrave;u, x&agrave; ph&ograve;ng, cồn, an to&agrave;n cho l&agrave;n da nhạy cảm.</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng thức kh&ocirc;ng chứa dầu (oil-free) n&ecirc;n rất th&iacute;ch hợp cho da dầu.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp hoặc nơi c&oacute; nhiệt độ cao / ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh xa tầm tay trẻ em.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/gel-rua-mat-la-roche-posay-danh-cho-da-dau-nhay-cam-06.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>\r\n\r\n<p><strong>Thương hiệu:&nbsp;</strong>La Roche-Posay</p>\r\n\r\n<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>Ph&aacute;p</p>\r\n\r\n<p><strong>Sản xuất tại:&nbsp;</strong>Ph&aacute;p</p>\r\n\r\n<p><strong>Dung t&iacute;ch:&nbsp;</strong>50ml / 200ml / 400ml/ T&uacute;i refill 400ml/ 2x50ml/ 3x50ml/ 4x50ml</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/Uw-qLmf9TJs\" width=\"425\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:18:45', 50, NULL, NULL, 0, '2024-11-19 23:37:50', NULL);
INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(33, 'Nước Tẩy Trang L\'Oreal Tươi Mát Cho Da Dầu, Hỗn Hợp 400ml Micellar Water 3-in-1 Refreshing Even For Sensitive Skin', 'nuoc-tay-trang-loreal-tuoi-mat-cho-da-dau-hon-hop-400ml-micellar-water-3-in-1-refreshing-even-for-sensitive-skin', 239000, 0, 1, 1, 0, 15, NULL, '2024-11-20__tai-xuong-45.jpg', 1, 0, 1, 0, NULL, '<p><strong>Nước Tẩy Trang L&#39;Or&eacute;al</strong>&nbsp;l&agrave; d&ograve;ng sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/tay-trang-c37.html\" target=\"_blank\">tẩy trang</a>&nbsp;dạng nước đến từ<a href=\"https://hasaki.vn/thuong-hieu/l-oreal.html\" target=\"_blank\">&nbsp;thương hiệu L&#39;Oreal Paris</a>, được ứng dụng c&ocirc;ng nghệ Micellar dịu nhẹ gi&uacute;p l&agrave;m sạch da, lấy đi bụi bẩn, dầu thừa v&agrave; cặn trang điểm chỉ trong một bước, mang lại l&agrave;n da th&ocirc;ng tho&aacute;ng, mềm mượt m&agrave; kh&ocirc;ng hề kh&ocirc; căng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang L\'Oreal Micellar Water 3-In-1\" src=\"https://media.hasaki.vn/wysiwyg/nhphuong/PhuongSmall/nuoc-tay-trang-l-oreal-3-in-1.jpg\" style=\"height:438px; width:800px\" title=\"Nước Tẩy Trang L\'Oreal Micellar Water\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang L\'Oreal Micellar Water 3-In-1 ứng dụng công nghệ Micellar mới chứa các phân tử mi-xen độc đáo hoạt động như một thỏi nam châm giúp loại bỏ hoàn toàn bụi bẩn và lớp trang điểm\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-l-oreal-3-in-1-6.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang L\'Oreal Micellar Water 3-In-1 ứng dụng công nghệ Micellar\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>D&ograve;ng sản phẩm&nbsp;<strong>Nước Tẩy Trang L&#39;Or&eacute;al Paris&nbsp;</strong>hiện đ&atilde; c&oacute; mặt tại<strong><strong>&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;</strong></strong>với 5 ph&acirc;n loại ph&ugrave; hợp cho từng nhu cầu kh&aacute;c nhau cho bạn lựa chọn:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong><strong>L&#39;Or&eacute;al Paris&nbsp;Micellar Water 3-in-1 Refreshing Even For Sensitive Skin&nbsp;(Xanh dương nhạt)</strong>:&nbsp;</strong>Gi&uacute;p l&agrave;m sạch lớp trang điểm v&agrave; l&agrave;m tươi m&aacute;t da.&nbsp;D&agrave;nh cho da dầu/da hỗn hợp. Ph&ugrave; hợp với cả da nhạy cảm.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>L&#39;Or&eacute;al Paris&nbsp;Micellar Water 3-in-1 Moisturizing Even For Sensitive Skin (Hồng):</strong>&nbsp;Gi&uacute;p l&agrave;m sạch lớp trang điểm v&agrave; dưỡng ẩm da.&nbsp;D&agrave;nh cho da thường/da kh&ocirc;. Ph&ugrave; hợp với cả da nhạy cảm.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong><strong>L&#39;Or&eacute;al Paris&nbsp;Micellar Water 3-in-1 Deep Cleansing Even For Sensitive Skin (Xanh dương đậm)</strong>:</strong>&nbsp;C&oacute; hai lớp chất lỏng gi&uacute;p h&ograve;a tan chất bẩn v&agrave; loại bỏ to&agrave;n bộ lớp trang điểm hiệu quả, kể cả lớp trang điểm l&acirc;u tr&ocirc;i v&agrave; kh&ocirc;ng thấm nước chỉ trong một bước.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>L&#39;Or&eacute;al Paris&nbsp;Revitalift Crystal Purifying Micellar Water (Trắng):&nbsp;</strong>L&agrave;m sạch s&acirc;u lỗ ch&acirc;n l&ocirc;ng v&agrave;&nbsp;kiềm dầu cho l&agrave;n da s&aacute;ng mịn rạng rỡ. D&agrave;nh cho da dầu.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>L&#39;Oreal Paris Revitalift Hyaluronic Acid Hydrating Micellar Water (T&iacute;m):</strong>&nbsp;L&agrave;m sạch v&agrave; cấp ẩm cho&nbsp;l&agrave;n da căng mịn từ b&ecirc;n trong. D&agrave;nh cho&nbsp;da kh&ocirc; &amp; hỗn hợp.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>1.&nbsp;Nước Tẩy Trang L&#39;Oreal Micellar Water 3-in-1 Refreshing Even For Sensitive Skin&nbsp;Tươi M&aacute;t Cho Da Dầu, Hỗn Hợp</h2>\r\n\r\n<p>Với c&ocirc;ng nghệ mới nhất, nước l&agrave;m sạch v&agrave; tẩy trang<strong>&nbsp;L&#39;Or&eacute;al Paris 3-in-1 Micellar Water Refreshing Even For Sensitive Skin</strong>&nbsp;đa t&aacute;c dụng vừa gi&uacute;p l&agrave;m sạch lấy đi sạch cặn trang điểm những vẫn gi&uacute;p da giữ ẩm, th&ocirc;ng tho&aacute;ng v&agrave; mềm mượt chỉ trong một bước.</p>\r\n\r\n<p><strong><strong><strong>Nước Tẩy Trang&nbsp;</strong>L&#39;Or&eacute;al Paris 3-in-1 Micellar Water Refreshing</strong>&nbsp;(xanh dương nhạt)&nbsp;</strong>ứng dụng c&ocirc;ng nghệ Micellar mới chứa c&aacute;c ph&acirc;n tử mi-xen độc đ&aacute;o&nbsp;hoạt động như một thỏi nam ch&acirc;m gi&uacute;p loại bỏ ho&agrave;n to&agrave;n bụi bẩn v&agrave; lớp trang điểm, đồng thời l&agrave;m dịu da nhờ th&agrave;nh phần nước kho&aacute;ng từ những ngọn n&uacute;i ở Ph&aacute;p, mang lại l&agrave;n da tươi tắn hơn sau khi tẩy trang. Kết cấu dạng nước tươi m&aacute;t, dễ sử dụng, kh&ocirc;ng cần rửa lại với nước m&agrave; vẫn kh&ocirc;ng g&acirc;y nhờn d&iacute;nh da.</p>\r\n\r\n<p>C&ocirc;ng thức kh&ocirc;ng chứa dầu, hương liệu v&agrave; Ethanol. D&agrave;nh cho da dầu/da hỗn hợp. Ph&ugrave; hợp với cả da nhạy cảm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang L\'Oreal Micellar Water 3-in-1 Refreshing Even For Sensitive Skin Tươi Mát Cho Da Dầu, Hỗn Hợp\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-l-oreal-3-in-1-2.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang L\'Oreal Micellar Water 3-in-1 Refreshing Even For Sensitive Skin\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Loại da ph&ugrave; hợp:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm ph&ugrave; hợp cho da dầu/da hỗn hợp, kể cả da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Giải ph&aacute;p cho t&igrave;nh trạng da:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html\" target=\"_blank\">Da dầu nhờn</a>&nbsp;muốn t&igrave;m một sản phẩm tẩy trang tho&aacute;ng nhẹ, kh&ocirc;ng để lại cảm gi&aacute;c nhờn d&iacute;nh sau khi l&agrave;m sạch.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Ưu thế nổi bật:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>C&ocirc;ng nghệ Mi-xen</strong>&nbsp;đột ph&aacute; gi&uacute;p h&uacute;t sạch cặn trang điểm, bụi bẩn m&agrave; kh&ocirc;ng l&agrave;m kh&ocirc; căng da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&agrave;nh phần&nbsp;<strong>Nước kho&aacute;ng lấy từ những ngọn n&uacute;i ở Ph&aacute;p</strong>&nbsp;gi&uacute;p l&agrave;m tươi m&aacute;t l&agrave;n da sau khi tẩy trang.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa cồn, hương liệu v&agrave; paraben, an to&agrave;n cho l&agrave;n da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>2. Nước Tẩy Trang L&#39;Oreal Micellar Water 3-in-1 Moisturizing Even For Sensitive Skin&nbsp;Dưỡng Ẩm Cho Da Thường, Kh&ocirc;</h2>\r\n\r\n<p>Với c&ocirc;ng nghệ mới nhất, nước l&agrave;m sạch v&agrave; tẩy trang<strong>&nbsp;L&#39;Or&eacute;al Paris 3-in-1 Micellar Water&nbsp;<strong>Moisturizing&nbsp;</strong>Even For Sensitive Skin</strong>&nbsp;đa t&aacute;c dụng vừa gi&uacute;p l&agrave;m sạch lấy đi sạch cặn trang điểm những vẫn gi&uacute;p da giữ ẩm, th&ocirc;ng tho&aacute;ng v&agrave; mềm mượt chỉ trong một bước.</p>\r\n\r\n<p><strong>Nước Tẩy Trang L&#39;Oreal Micellar Water 3-in-1 Moisturizing Even For Sensitive Skin&nbsp;</strong>ứng dụng c&ocirc;ng nghệ Micellar mới chứa c&aacute;c ph&acirc;n tử mi-xen độc đ&aacute;o&nbsp;hoạt động như một thỏi nam ch&acirc;m gi&uacute;p loại bỏ ho&agrave;n to&agrave;n bụi bẩn v&agrave; lớp trang điểm, đồng thời dưỡng da ẩm mượt nhờ th&agrave;nh phần chiết xuất hoa hồng Ph&aacute;p, gi&uacute;p duy tr&igrave; độ ẩm cần thiết cho da sau khi tẩy trang.&nbsp;Kết cấu dạng nước tươi m&aacute;t, dễ sử dụng, kh&ocirc;ng cần rửa lại với nước,&nbsp;gi&uacute;p da trở n&ecirc;n sạch sẽ, tươi s&aacute;ng v&agrave; c&oacute; đủ độ ẩm.</p>\r\n\r\n<p>C&ocirc;ng thức kh&ocirc;ng chứa dầu, hương liệu v&agrave; Ethanol. D&agrave;nh cho da thường/da kh&ocirc;. Ph&ugrave; hợp với cả da nhạy cảm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang L\'Oreal Micellar Water 3-in-1 Moisturizing Even For Sensitive Skin Dưỡng Ẩm Cho Da Thường, Khô\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-l-oreal-3-in-1-3.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang L\'Oreal Micellar Water 3-in-1 Moisturizing Even For Sensitive Skin\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Loại da ph&ugrave; hợp:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm ph&ugrave; hợp cho&nbsp;da thường/da kh&ocirc;, kể cả da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Giải ph&aacute;p cho t&igrave;nh trạng da:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html\" target=\"_blank\">Da thiếu độ ẩm - thiếu nước</a>, thường xuy&ecirc;n c&oacute; cảm gi&aacute;c kh&ocirc; căng, bong tr&oacute;c sau khi l&agrave;m sạch.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Ưu thế nổi bật:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>C&ocirc;ng nghệ Mi-xen</strong>&nbsp;đột ph&aacute; gi&uacute;p h&uacute;t sạch cặn trang điểm, bụi bẩn m&agrave; kh&ocirc;ng l&agrave;m kh&ocirc; căng da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&agrave;nh phần&nbsp;chiết xuất hoa hồng Ph&aacute;p gi&uacute;p cấp ẩm cho l&agrave;n da ẩm mượt sau khi tẩy trang.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa cồn, hương liệu v&agrave; paraben, an to&agrave;n cho l&agrave;n da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>3.&nbsp;Nước Tẩy Trang L&#39;Oreal Micellar Water 3-in-1 Deep Cleansing Even For Sensitive Skin&nbsp;L&agrave;m Sạch S&acirc;u Trang Điểm</h2>\r\n\r\n<p><strong>Nước Tẩy Trang L&#39;Oreal Micellar Water 3-in-1 Deep Cleansing&nbsp;Even For Sensitive Skin&nbsp;</strong>c&oacute; hai lớp chất lỏng gi&uacute;p h&ograve;a tan chất bẩn v&agrave; loại bỏ to&agrave;n bộ lớp trang điểm hiệu quả, kể cả lớp trang điểm l&acirc;u tr&ocirc;i v&agrave; kh&ocirc;ng thấm nước chỉ trong một bước.</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>(1) Lớp Micellar:</strong>&nbsp;Lớp n&agrave;y chứa c&aacute;c hạt mixen si&ecirc;u nhỏ để len lỏi s&acirc;u v&agrave; dễ d&agrave;ng lấy đi bụi bẩn, dầu thừa, lớp trang điểm v&agrave; chất bẩn kh&aacute;c m&agrave; kh&ocirc;ng l&agrave;m kh&ocirc; da. Ch&uacute;ng c&oacute; t&aacute;c dụng như một thỏi nam ch&acirc;m h&uacute;t hết chất bẩn, trả lại cho bạn l&agrave;n da sạch sẽ ho&agrave;n to&agrave;n m&agrave; kh&ocirc;ng cần phải rửa lại th&ecirc;m với nước. Với hiệu quả của c&ocirc;ng nghệ mixen đột ph&aacute; n&agrave;y, bạn chỉ cần nhẹ nh&agrave;ng rửa m&agrave; kh&ocirc;ng phải ch&agrave; x&aacute;t mạnh kể cả với lớp trang điểm đậm!</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>(2) Lớp nước tẩy trang:</strong>&nbsp;Nhẹ nh&agrave;ng loại bỏ lớp trang điểm kh&ocirc;ng thấm nước đồng thời cấp nước v&agrave; dưỡng ẩm cho da. Điều tuyệt vời nhất l&agrave; c&ocirc;ng thức kh&ocirc;ng chứa c&aacute;c &ldquo;chất độc hại&rdquo; &ndash; kh&ocirc;ng chứa dầu, hương liệu hay cồn &ndash; c&oacute; khả năng g&acirc;y k&iacute;ch ứng cho hầu hết c&aacute;c loại da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Sản phẩm th&iacute;ch hợp cho mọi loại da, an to&agrave;n khi sử dụng cho to&agrave;n bộ khu&ocirc;n mặt, kể cả da nhạy cảm v&agrave;&nbsp;v&ugrave;ng da quanh mắt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang L\'Oreal Micellar Water 3-in-1 Deep Cleansing Even For Sensitive Skin Làm Sạch Sâu Trang Điểm\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-l-oreal-3-in-1-1.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang L\'Oreal Micellar Water 3-in-1 Deep Cleansing Even For Sensitive Skin\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Loại da ph&ugrave; hợp:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm ph&ugrave; hợp cho mọi loại da, kể cả da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Giải ph&aacute;p cho t&igrave;nh trạng da:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da thường xuy&ecirc;n&nbsp;<a href=\"https://hasaki.vn/danh-muc/trang-diem-c23.html\" target=\"_blank\">trang điểm</a>, đặc biệt l&agrave; lớp trang điểm l&igrave;, l&acirc;u tr&ocirc;i.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Ưu thế nổi bật:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>C&ocirc;ng nghệ Mi-xen</strong>&nbsp;đột ph&aacute; gi&uacute;p h&uacute;t sạch cặn trang điểm, bụi bẩn m&agrave; kh&ocirc;ng l&agrave;m kh&ocirc; căng da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hai lớp chất lỏng độc đ&aacute;o gi&uacute;p loại bỏ lớp trang điểm hiệu quả, kể cả sản phẩm chống thấm nước / l&acirc;u tr&ocirc;i như son l&igrave;, mascara.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa cồn, hương liệu v&agrave; paraben, an to&agrave;n cho l&agrave;n da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>4. Nước Tẩy Trang&nbsp;<strong>L&#39;Or&eacute;al Paris&nbsp;Revitalift Crystal Purifying Micellar Water&nbsp;L&agrave;m Sạch S&acirc;u Cho Da Dầu</strong></strong></h2>\r\n\r\n<p><strong>Nước Tẩy Trang L&#39;Or&eacute;al Paris Revitalift Crystal Purifying Micellar Water</strong>&nbsp;l&agrave; d&ograve;ng nước&nbsp;tẩy trang được thương hiệu L&#39;Or&eacute;al thiết kế d&agrave;nh ri&ecirc;ng cho l&agrave;n da dầu, với&nbsp;c&ocirc;ng nghệ đột ph&aacute; Oil-free đem đến sức mạnh l&agrave;m sạch s&acirc;u gấp 5 lần.&nbsp;Sản phẩm chứa c&aacute;c ph&acirc;n tử mixen&nbsp;hoạt động như một nam ch&acirc;m l&agrave;m sạch, loại bỏ 5 loại tạp chất c&oacute; tr&ecirc;n da bạn hằng ng&agrave;y, gi&uacute;p lỗ ch&acirc;n l&ocirc;ng tho&aacute;ng sạch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang L\'Oréal Paris Revitalift Crystal Purifying Micellar Water Dành Cho Da Dầu\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-l-oreal-paris-danh-cho-da-dau-400ml.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang L\'Oréal Paris Revitalift Crystal Purifying Micellar Water\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Loại da ph&ugrave; hợp:</h3>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp cho&nbsp;da dầu, hỗn hợp thi&ecirc;n dầu.</li>\r\n</ul>\r\n\r\n<h3>Giải ph&aacute;p cho t&igrave;nh trạng da:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da dầu thừa - lỗ ch&acirc;n l&ocirc;ng to, dễ b&iacute;t tắc, dễ nổi mụn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da thiếu nước - thiếu ẩm, th&ocirc; r&aacute;p, sần s&ugrave;i.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da xỉn m&agrave;u &amp; th&acirc;m sạm, k&eacute;m rạng rỡ.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Ưu thế nổi bật:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>C&ocirc;ng nghệ Micellar</strong>&nbsp;hoạt động như một nam ch&acirc;m l&agrave;m sạch, c&oacute; khả năng loại bỏ gấp 5 lần tạp chất c&oacute; tr&ecirc;n da bạn hằng ng&agrave;y, gi&uacute;p lỗ ch&acirc;n l&ocirc;ng trở n&ecirc;n tho&aacute;ng sạch, ngăn ngừa nguy cơ b&iacute;t tắc.</p>\r\n	</li>\r\n	<li>\r\n	<p>Khả năng l&agrave;m sạch s&acirc;u hiệu quả nhưng vẫn nhẹ nh&agrave;ng, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mang lại l&agrave;n da sạch mịn, tươi m&aacute;t v&agrave; trong trẻo như pha l&ecirc;.</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng thức kh&ocirc;ng chứa dầu, kh&ocirc;ng g&acirc;y nhờn d&iacute;nh.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng cần rửa lại với nước sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>5. Nước Tẩy Trang L&#39;Oreal Paris Revitalift Hyaluronic Acid Hydrating Micellar Water L&agrave;m Sạch&nbsp;V&agrave; Cấp Ẩm</strong></h2>\r\n\r\n<p><strong>Nước Tẩy Trang L&#39;Oreal Paris Revitalift Hyaluronic Acid Hydrating Micellar Water&nbsp;</strong>với c&ocirc;ng nghệ Micellar gi&uacute;p l&agrave;m sạch da v&agrave;&nbsp;loại bỏ triệt để bụi bẩn, b&atilde; nhờn, tế b&agrave;o chết v&agrave; lớp trang điểm. B&ecirc;n cạnh đ&oacute;, th&agrave;nh phần Hyaluronic Acid&nbsp;gi&uacute;p l&agrave;n da được cấp ẩm căng mịn từ b&ecirc;n trong. Ngay lập tức, l&agrave;n da được sạch m&aacute;t, thanh khiết v&agrave; mềm mịn, kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&ocirc; r&iacute;t tr&ecirc;n da.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang L\'Oreal Paris Làm Sạch Và Cấp Ẩm 400ml\" src=\"https://media.hcdn.vn/wysiwyg/Chau/nuoc-tay-trang-l-oreal-paris-lam-sach-va-cap-am-400ml-1.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang L\'Oreal Paris Làm Sạch Và Cấp Ẩm\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Loại da ph&ugrave; hợp:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm d&agrave;nh cho da kh&ocirc; &amp; hỗn hợp.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Giải ph&aacute;p cho t&igrave;nh trạng da:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da thiếu nước - thiếu ẩm.</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/lao-hoa-nep-nhan-c1881.html\" target=\"_blank\">Da l&atilde;o ho&aacute;, nếp nhăn</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Ưu thế nổi bật:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>C&ocirc;ng nghệ Mi-xen</strong>&nbsp;đột ph&aacute; gi&uacute;p h&uacute;t sạch cặn trang điểm, bụi bẩn m&agrave; kh&ocirc;ng l&agrave;m kh&ocirc; căng da.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Độ pH = 6</strong>&nbsp;trung t&iacute;nh, dịu nhẹ &amp; kh&ocirc;ng g&acirc;y k&iacute;ch ứng da.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tinh chất nước kho&aacute;ng</strong>&nbsp;từ n&uacute;i Vosges - Ph&aacute;p gi&uacute;p nu&ocirc;i dưỡng l&agrave;n da.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&ocirc;ng nghệ Micro-Hyaluron</strong>&nbsp;thẩm thấu s&acirc;u v&agrave;o da, gi&uacute;p cấp ẩm cho da căng mịn từ b&ecirc;n trong.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa cồn, hương liệu v&agrave; paraben, an to&agrave;n cho l&agrave;n da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Bảo quản:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Hướng dẫn sử dụng Nước Tẩy Trang L\'Oreal Micellar Water 3-In-1\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-l-oreal-3-in-1-7.jpg\" style=\"width:800px\" title=\"Cách sử dụng Nước Tẩy Trang L\'Oreal Micellar Water 3-In-1\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng số sản phẩm:&nbsp;</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Thương hiệu:&nbsp;</strong>L&#39;Oreal Paris</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Ph&aacute;p</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất tại:</strong>&nbsp;Trung Quốc</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dung t&iacute;ch:</strong>&nbsp;30ml / 95ml / 400ml</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:21:10', 50, NULL, NULL, 0, '2024-11-19 23:37:38', NULL),
(34, 'Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm 500ml Sensibio H2O', 'nuoc-tay-trang-bioderma-danh-cho-da-nhay-cam-500ml-sensibio-h2o', 359000, 0, 1, 1, 0, 15, NULL, '2024-11-20__tai-xuong-47.jpg', 2, 0, 1, 0, NULL, '<p><strong>Nước Tẩy Trang Bioderma&nbsp;</strong>bao gồm 2 ph&acirc;n loại:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Nước Tẩy Trang Bioderma D&agrave;nh Cho Da Nhạy Cảm:</strong>&nbsp;100ml; 250ml; 500ml; Combo 1000ml (2x500ml)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nước Tẩy Trang Bioderma D&agrave;nh Cho Da Dầu &amp; Hỗn Hợp:&nbsp;</strong>100ml; 250ml; 500ml; Combo 1000ml (2x500ml)</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>TH&Ocirc;NG TIN SẢN PHẨM</h2>\r\n\r\n<h2>1.&nbsp;Nước Tẩy Trang Bioderma D&agrave;nh Cho Da Nhạy Cảm</h2>\r\n\r\n<p><strong>D&agrave;nh Cho Da Nhạy Cảm&nbsp;Bioderma&nbsp;Sensibio H2O</strong>&nbsp;l&agrave; sản phẩm&nbsp;<strong><em>nước tẩy trang c&ocirc;ng nghệ Micellar đầu ti&ecirc;n tr&ecirc;n thế giới</em></strong>, do thương hiệu&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/bioderma.html\" target=\"_blank\">dược mỹ phẩm Bioderma</a>&nbsp;nổi tiếng của Ph&aacute;p ph&aacute;t minh.&nbsp;Dung dịch gi&uacute;p l&agrave;m sạch s&acirc;u da v&agrave; loại bỏ lớp trang điểm nhanh ch&oacute;ng m&agrave; kh&ocirc;ng cần rửa lại bằng nước. C&ocirc;ng thức dịu nhẹ, kh&ocirc;ng k&iacute;ch ứng, kh&ocirc;ng g&acirc;y kh&ocirc; căng da, đặc biệt ph&ugrave; hợp với l&agrave;n da nhạy cảm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-nhay-cam-1_1.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm Tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&ocirc;ng nghệ micellar sử dụng c&aacute;c hạt micelles &quot;thần k&igrave;&quot; tương th&iacute;ch ho&agrave;n hảo với lớp lipid tự nhi&ecirc;n của da.&nbsp;Yếu tố cấu th&agrave;nh n&ecirc;n hạt micelle l&agrave; c&aacute;c ester acid b&eacute;o, tương tự như cấu tr&uacute;c lớp phospholipid của m&agrave;ng tế b&agrave;o da, gi&uacute;p t&aacute;i tạo lớp m&agrave;ng hydrolipid của da một c&aacute;ch tự nhi&ecirc;n. Nhờ v&agrave;o cấu tr&uacute;c n&agrave;y, c&aacute;c hạt micelle sẽ&nbsp;gi&uacute;p lấy đi c&aacute;c yếu tố c&oacute; hại cho l&agrave;n da như:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>98% bụi si&ecirc;u mịn khỏi bề mặt da v&agrave; s&acirc;u b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>78% kim loại nặng v&agrave; độc tố g&acirc;y hại.</p>\r\n	</li>\r\n	<li>\r\n	<p>99% lớp trang điểm s&acirc;u b&ecirc;n trong.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"Mua Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-nhay-cam-3_1.jpg\" style=\"width:800px\" title=\"Mua Ngay Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sensibio H2O được b&agrave;o chế với độ pH sinh l&yacute; khoảng 5.5 tương tự như độ pH của l&agrave;n da, do đ&oacute; gi&uacute;p n&acirc;ng niu sự c&acirc;n bằng về mặt sinh học - điều cần thiết để duy tr&igrave; l&agrave;n da khỏe mạnh. B&ecirc;n cạnh đ&oacute;, sản phẩm&nbsp;chứa th&agrave;nh phần nước tinh khiết, đạt chuẩn dược phẩm v&agrave; một hợp chất bao gồm 3 loại đường m&ocirc; phỏng sinh học c&oacute; c&ocirc;ng dụng l&agrave;m dịu v&agrave; ngăn ngừa c&aacute;c phản ứng vi&ecirc;m.&nbsp;Việc lựa chọn cẩn thận c&aacute;c th&agrave;nh phần đảm bảo khả năng dung nạp ho&agrave;n hảo v&agrave; loại bỏ bất kỳ nguy cơ g&acirc;y tổn thương da n&agrave;o của sản phẩm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sản Phẩm Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-nhay-cam-2_1.jpg\" style=\"width:800px\" title=\"Mua Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm Ngay\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng chỉ sử dụng để tẩy trang v&agrave;o buổi tối, bạn c&ograve;n c&oacute; thể sử dụng&nbsp;Bioderma&nbsp;Sensibio H2O&nbsp;như bước&nbsp;l&agrave;m sạch s&acirc;u dịu nhẹ cho da v&agrave;o buổi s&aacute;ng, gi&uacute;p loại bỏ b&atilde; nhờn v&agrave; bụi bẩn t&iacute;ch tụ tr&ecirc;n da sau một đ&ecirc;m d&agrave;i.&nbsp;</p>\r\n\r\n<p><strong>Nước Tẩy Trang D&agrave;nh Cho Da Nhạy Cảm&nbsp;Bioderma&nbsp;Sensibio H2O</strong>&nbsp;hiện đ&atilde; c&oacute; mặt tại&nbsp;<strong>Hasaki</strong>&nbsp;với c&aacute;c loại cho bạn lựa chọn:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>100ml</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>250ml</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>500ml</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>2x500ml</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Loại da ph&ugrave; hợp:</h3>\r\n\r\n<ul>\r\n	<li>Sản phẩm&nbsp;d&agrave;nh cho da thường, da nhạy cảm v&agrave; da k&eacute;m dung nạp.</li>\r\n</ul>\r\n\r\n<h3>C&ocirc;ng dụng:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Ph&ugrave; hợp với mọi loại da v&agrave; dung nạp tốt.</p>\r\n	</li>\r\n	<li>\r\n	<p>L&agrave;m sạch, loại bỏ lớp trang điểm cho mặt v&agrave; mắt.</p>\r\n	</li>\r\n	<li>\r\n	<p>L&agrave;m dịu v&agrave; xua tan cảm gi&aacute;c kh&oacute; chịu đối với da đang k&iacute;ch ứng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Duy tr&igrave; độ c&acirc;n bằng của l&agrave;n da, cung cấp đủ độ ẩm cho da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mang lại cảm gi&aacute;c sảng kho&aacute;i &amp; tươi mới tức th&igrave;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng cần rửa lại với nước.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Kết quả tức th&igrave;:</h3>\r\n\r\n<p><strong>Tẩy trang:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>99% lớp trang điểm được loại bỏ (1)</li>\r\n</ul>\r\n\r\n<p><strong>L&agrave;m sạch:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>99% c&aacute;c hạt &ocirc; nhiễm được loại bỏ (2)</p>\r\n	</li>\r\n	<li>\r\n	<p>78% kim loại nặng được l&agrave;m sạch (3)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>(1) Nghi&ecirc;n cứu in vivo tr&ecirc;n 10 t&igrave;nh nguyện vi&ecirc;n tuổi từ 25 đến 49.</p>\r\n\r\n<p>(2) Nghi&ecirc;n cứu in vivo tr&ecirc;n 11 t&igrave;nh nguyện vi&ecirc;n tuổi từ 18 đến 48.</p>\r\n\r\n<p>(3) Nghi&ecirc;n cứu in vivo tr&ecirc;n 20 t&igrave;nh nguyện vi&ecirc;n tuổi từ 40 đến 70.&nbsp;</p>\r\n\r\n<h3>Độ an to&agrave;n:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa hương liệu, cồn, paraben.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng g&acirc;y k&iacute;ch ứng, kh&ocirc;ng g&acirc;y mụn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Được thử nghiệm dưới sự kiểm so&aacute;t da liễu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tất cả c&aacute;c sản phẩm của BIODERMA đều được b&agrave;o chế theo nguy&ecirc;n tắc sinh học tự nhi&ecirc;n, l&agrave; chiến lược trọng t&acirc;m của NAOS trong việc bảo vệ v&agrave; t&ocirc;n vinh hệ sinh học của l&agrave;n da bạn.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>2.&nbsp;Nước Tẩy Trang Bioderma D&agrave;nh Cho Da Dầu &amp; Hỗn Hợp</h2>\r\n\r\n<p><strong>Nước Tẩy Trang Bioderma S&eacute;bium H2O</strong>&nbsp;l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/tay-trang-c37.html\" target=\"_blank\">tẩy trang</a>&nbsp;d&agrave;nh cho da dầu, da hỗn hợp đến từ thương hiệu dược mỹ phẩm Bioderma, được ứng dụng c&ocirc;ng nghệ Micellar đ&igrave;nh đ&aacute;m gi&uacute;p loại bỏ lớp trang điểm c&ugrave;ng bụi bẩn v&agrave; dầu thừa tr&ecirc;n da hiệu quả m&agrave; kh&ocirc;ng g&acirc;y kh&ocirc; căng hay nhờn r&iacute;t, tạo cảm gi&aacute;c th&ocirc;ng tho&aacute;ng cho da sau một ng&agrave;y d&agrave;i mệt mỏi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-dau-hon-hop-01.jpg\" style=\"width:800px\" title=\"Mua Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nước Tẩy Trang Bioderma S&eacute;bium H2O&nbsp;</strong>được b&agrave;o chế chuy&ecirc;n biệt d&agrave;nh cho l&agrave;n da dầu &amp; hỗn hợp, c&oacute; khả năng &quot;bắt chước&quot; c&aacute;c th&agrave;nh phần tự nhi&ecirc;n của l&agrave;n da để loại bỏ lớp trang điểm một c&aacute;ch tối ưu nhất, trong khi vẫn duy tr&igrave; được độ c&acirc;n bằng pH v&agrave; độ ẩm tự nhi&ecirc;n của da, bảo đảm an to&agrave;n cho kể cả những l&agrave;n da nhạy cảm nhất.</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp Tại Hasaki\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen/nuoc-tay-trang-bioderma-danh-cho-da-dau-hon-hop-02.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp Đã Có Tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt, c&ocirc;ng nghệ Micellar Water sử dụng c&aacute;c hạt ph&acirc;n tử mi-xen với 2 đầu ưa dầu - nước, gi&uacute;p&nbsp;h&uacute;t hết b&atilde; nhờn, bụi bẩn của da,&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">mỹ phẩm</a>&nbsp;trang điểm v&agrave; &ocirc; nhiễm kh&ocirc;ng kh&iacute; b&aacute;m lại tr&ecirc;n da sau một ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng hề để lại cảm gi&aacute;c b&oacute;ng nhờn, d&iacute;nh r&iacute;t như nhiều loại nước tẩy trang th&ocirc;ng thường kh&aacute;c.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, S&eacute;bium H2O c&ograve;n được l&agrave;m gi&agrave;u th&ecirc;m với c&aacute;c hoạt chất thanh lọc l&agrave;n da, kẽm gluconate v&agrave; đồng sunfat gi&uacute;p l&agrave;m sạch s&acirc;u v&agrave; loại bỏ b&atilde; nhờn, hạn chế lượng dầu thừa tiết ra, mang lại l&agrave;n da th&ocirc;ng tho&aacute;ng sạch mịn.</p>\r\n\r\n<h3>Loại da ph&ugrave; hợp:</h3>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp cho da hỗn hợp đến da dầu.</li>\r\n</ul>\r\n\r\n<h3>Giải ph&aacute;p cho t&igrave;nh trạng da:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html\" target=\"_blank\">Dầu thừa - lỗ ch&acirc;n l&ocirc;ng to</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Da mụn hoặc dễ nổi mụn</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>C&ocirc;ng dụng:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nhẹ nh&agrave;ng l&agrave;m sạch m&agrave; kh&ocirc;ng l&agrave;m kh&ocirc; da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Thanh lọc da v&agrave; hạn chế b&atilde; nhờn với phức&nbsp;hợp điều chỉnh b&atilde; nhờn &ndash; Fluidactiv&reg;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mang lại cảm gi&aacute;c tươi m&aacute;t tức th&igrave;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bỏ lớp trang điểm hiệu quả.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung nạp tốt - Kh&ocirc;ng g&acirc;y mụn - Kh&ocirc;ng cần rửa lại với nước.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Kết quả tức th&igrave;:</h3>\r\n\r\n<p><strong>L&agrave;m sạch m&agrave; kh&ocirc;ng l&agrave;m kh&ocirc; da</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sự dịu nhẹ của qu&aacute; tr&igrave;nh l&agrave;m sạch: 95% (1)</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bỏ 93% vi hạt tr&ecirc;n da (2)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Thanh lọc da</strong></p>\r\n\r\n<ul>\r\n	<li>Da tinh khiết: 95% (1)</li>\r\n</ul>\r\n\r\n<p><em>(1) Thử nghiệm tr&ecirc;n 20 t&igrave;nh nguyện vi&ecirc;n tuổi từ 19 đến 46, c&oacute; da hỗn hợp hoặc da dầu, trong 7 ng&agrave;y.</em></p>\r\n\r\n<p><em>(2) Nghi&ecirc;n cứu tr&ecirc;n 33 t&igrave;nh nguyện vi&ecirc;n tuổi từ 18 đến 67, c&oacute; da b&igrave;nh thường.</em></p>\r\n\r\n<h3>Độ an to&agrave;n:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Th&agrave;nh phần kh&ocirc;ng chứa cồn, kh&ocirc;ng chứa m&ugrave;i hương c&oacute; khả năng g&acirc;y k&iacute;ch ứng da, Paraben.</p>\r\n	</li>\r\n	<li>\r\n	<p>Được thử nghiệm dưới sự kiểm so&aacute;t da liễu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tất cả c&aacute;c sản phẩm của BIODERMA đều được b&agrave;o chế theo nguy&ecirc;n tắc sinh học tự nhi&ecirc;n, l&agrave; chiến lược trọng t&acirc;m của NAOS trong việc bảo vệ v&agrave; t&ocirc;n vinh hệ sinh học của l&agrave;n da bạn.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>TH&Ocirc;NG B&Aacute;O:&nbsp;</strong></h2>\r\n\r\n<p>Bắt đầu từ ng&agrave;y 19/07/2021, sản phẩm nước tẩy trang H2O thuộc nh&atilde;n hiệu Bioderma được nhập khẩu v&agrave;o Việt Nam sẽ được gắn th&ecirc;m tem qu&eacute;t m&atilde; QR. Như vậy, tr&ecirc;n nắp/th&acirc;n chai sản phẩm tẩy trang H2O sẽ được d&aacute;n 02 loại tem sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp Có Tại Hasaki\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen/Bioderma-H2O-tem-quet-ma-QR.jpg\" style=\"height:321px; width:800px\" title=\"Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp - Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;C&aacute;c sản phẩm nước tẩy trang H2O kh&ocirc;ng c&oacute; tem qu&eacute;t m&atilde; QR nhưng c&oacute; một trong hai loại tem giấy với th&ocirc;ng tin Việt Nữ l&agrave; Nh&agrave; Ph&acirc;n Phối hoặc Minthacare l&agrave;&nbsp;Nh&agrave; Ph&acirc;n Phối vẫn được lưu th&ocirc;ng tr&ecirc;n thị trường song song với sản phẩm c&oacute; tem qu&eacute;t m&atilde; QR như được th&ocirc;ng b&aacute;o tại đ&acirc;y, v&agrave; tất cả đều l&agrave; sản phẩm ch&iacute;nh h&atilde;ng Bioderma.&nbsp;<strong>HASAKI HIỆN ĐANG B&Aacute;N SONG SONG CẢ HAI LOẠI TEM GIẤY V&Agrave; TEM QU&Eacute;T M&Atilde; QR MỚI,&nbsp;<strong>&Aacute;P DỤNG CHO DUNG T&Iacute;CH 500ML.</strong></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp Đã Có Tại Hasaki\" src=\"https://media.hcdn.vn/wysiwyg/minhchau/nuoc-tay-trang-bioderma-danh-cho-da-dau-hon-hop-1.png\" style=\"width:800px\" title=\"Mua Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp Tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp Có Mặt Tại Hasaki\" src=\"https://media.hcdn.vn/wysiwyg/minhchau/nuoc-tay-trang-bioderma-danh-cho-da-dau-hon-hop-2.png\" style=\"width:800px\" title=\"Sản Phẩm Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sản Phẩm Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp\" src=\"https://media.hcdn.vn/wysiwyg/minhchau/nuoc-tay-trang-bioderma-danh-cho-da-dau-hon-hop-3.png\" style=\"width:800px\" title=\"Sản Phẩm Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp Tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Mua Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp\" src=\"https://media.hcdn.vn/wysiwyg/minhchau/nuoc-tay-trang-bioderma-danh-cho-da-dau-hon-hop-5.png\" style=\"width:800px\" title=\"Mua Sản Phẩm Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp Đã Có Mặt Tại Hasaki\" src=\"https://media.hcdn.vn/wysiwyg/minhchau/nuoc-tay-trang-bioderma-danh-cho-da-dau-hon-hop-6.png\" style=\"width:800px\" title=\"Mua Nước Tẩy Trang Bioderma Dành Cho Da Dầu &amp; Hỗn Hợp Tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/q_5Efxg8nSM\" width=\"425\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Bảo quản:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n	</li>\r\n	<li>\r\n	<p>Để xa tầm tay trẻ em.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Th&ocirc;ng số sản phẩm:&nbsp;</strong></p>\r\n\r\n<p><strong>Dung t&iacute;ch:&nbsp;</strong>100ml; 250ml; 500ml; Combo 1000ml (2x500ml)</p>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Bioderma</p>\r\n\r\n<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>Ph&aacute;p</p>\r\n\r\n<p><strong>Sản xuất tại:</strong>&nbsp;Ph&aacute;p</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:25:03', 50, NULL, NULL, 0, '2024-11-19 23:37:34', NULL),
(35, 'Nước Tẩy Trang La Roche-Posay Dành Cho Da Nhạy Cảm 400ml Toleriane Eau Micellar Water', 'nuoc-tay-trang-la-roche-posay-danh-cho-da-nhay-cam-400ml-toleriane-eau-micellar-water', 525000, 0, 1, 1, 0, 15, NULL, '2024-11-20__tai-xuong-58.jpg', 0, 0, 1, 0, NULL, '<p><strong>Nước Tẩy Trang La Roche-Posay D&agrave;nh Cho Da Nhạy Cảm</strong>&nbsp;đến từ thương hiệu&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/la-roche-posay.html\" target=\"_blank\"><strong>dược mỹ phẩm La Roche-Posay</strong></a>&nbsp;của Ph&aacute;p l&agrave; d&ograve;ng sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/tay-trang-mat-c48.html\" target=\"_blank\"><strong>tẩy trang</strong></a>&nbsp;d&agrave;nh cho da mặt, v&ugrave;ng mắt v&agrave; m&ocirc;i, ứng dụng c&ocirc;ng nghệ Glyco Micellar gi&uacute;p l&agrave;m sạch s&acirc;u lớp trang điểm v&agrave; bụi bẩn, b&atilde; nhờn tr&ecirc;n da vượt trội m&agrave;&nbsp;vẫn &ecirc;m dịu, kh&ocirc;ng g&acirc;y căng r&aacute;t hay k&iacute;ch ứng da; đồng thời cung cấp độ ẩm, mang đến l&agrave;n da mềm mại &amp; tho&aacute;ng nhẹ sau khi sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Dành Cho Da Nhạy Cảm La Roche-Posay Micellar Water Ultra Sensitive Skin\" src=\"https://media.hcdn.vn/wysiwyg/Chau/nuoc-tay-trang-la-roche-posay-danh-cho-da-nhay-cam-1.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang La Roche-Posay Micellar Water Ultra Sensitive Skin\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><strong>Nước Tẩy Trang&nbsp;</strong>La Roche-Posay Toleriane Eau Micellar Water&nbsp;</strong>hiện đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với c&aacute;c quy c&aacute;ch đ&oacute;ng g&oacute;i:<strong>&nbsp;50ml; 100ml, 200ml, 400ml, 400mlx2.</strong></p>\r\n\r\n<h2>Loại da ph&ugrave; hợp:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm ph&ugrave; hợp cho da thường v&agrave;&nbsp;<a href=\"https://hasaki.vn/danh-muc/da-nhay-cam-c20.html\" target=\"_blank\"><strong>da nhạy cảm</strong></a>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ugrave; hợp để tẩy trang cho v&ugrave;ng mặt, mắt v&agrave; m&ocirc;i.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Giải ph&aacute;p cho t&igrave;nh trạng da:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html\" target=\"_blank\"><strong>Da nhạy cảm - k&iacute;ch ứng</strong></a></p>\r\n	</li>\r\n	<li>\r\n	<p>Da thiếu nước - thiếu ẩm</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ đột ph&aacute;<strong>&nbsp;Glyco Micellar</strong>&nbsp;mang lại hiệu quả l&agrave;m sạch s&acirc;u vượt trội gi&uacute;p lấy đi bụi bẩn, b&atilde; nhờn v&agrave; lớp trang điểm nhưng vẫn an to&agrave;n cho l&agrave;n da nhạy cảm.</p>\r\n	</li>\r\n	<li>\r\n	<p>L&agrave;m sạch đến 99% lớp trang điểm, 70% mascara v&agrave; c&aacute;c hạt bụi si&ecirc;u nhỏ c&oacute; trong kh&oacute;i xe v&agrave; m&ocirc;i trường &ocirc; nhiễm chỉ sau một lượt b&ocirc;ng cotton*.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chứa<strong>&nbsp;nước kho&aacute;ng La Roche-Posay</strong>&nbsp;c&oacute; nồng độ Selenium tự nhi&ecirc;n cao, với đặc t&iacute;nh l&agrave;m dịu da, giảm k&iacute;ch ứng v&agrave; chống oxi h&oacute;a,&nbsp;gi&uacute;p bảo vệ da trước m&ocirc;i trường &ocirc; nhiễm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Cung cấp độ ẩm với&nbsp;<strong>Glycerin,&nbsp;</strong>giảm thiểu ma s&aacute;t g&acirc;y tổn thương da trong qu&aacute; tr&igrave;nh l&agrave;m sạch.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mang lại l&agrave;n da sạch mịn m&agrave;ng, tho&aacute;ng nhẹ sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang La Roche-Posay Micellar Water Ultra Sensitive Skin làm sạch bụi mịn PM2.5\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-tay-trang-la-roche-posay-danh-cho-da-nhay-cam-400ml.jpg\" style=\"height:800px; width:800px\" title=\"Nước Tẩy Trang La Roche-Posay Micellar Water Ultra Sensitive Skin giúp loại bỏ bụi mịn\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Độ an to&agrave;n:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kh&ocirc;ng paraben / Kh&ocirc;ng chất tạo m&agrave;u / Kh&ocirc;ng cồn / Kh&ocirc;ng chứa x&agrave; ph&ograve;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Duy tr&igrave; độ pH tự nhi&ecirc;n của da n&ecirc;n an to&agrave;n với mọi loại da, kể cả da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang La Roche-Posay Micellar Water Ultra Sensitive Skin không chứa paraben, chất tạo màu, cồn, xà phòng.\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-la-roche-posay-danh-cho-da-nhay-cam-3_1.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang La Roche-Posay Micellar Water Ultra Sensitive Skin an toàn cho làn da nhạy cảm.\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>TH&Ocirc;NG B&Aacute;O:</strong>&nbsp;Về việc thay đổi bao b&igrave; sản phẩm</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hcdn.vn/wysiwyg/Chau/nuoc-tay-trang-la-roche-posay-danh-cho-da-nhay-cam-2.jpg\" style=\"width:800px\" />&nbsp;</p>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n	</li>\r\n	<li>\r\n	<p>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;50ml / 100ml / 200ml / 400ml / 400mlx2</p>\r\n\r\n<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Ph&aacute;p</p>\r\n\r\n<p><strong>Nơi sản xuất:</strong>&nbsp;Ph&aacute;p</p>\r\n\r\n<p><strong>Hạn sử dụng:</strong>&nbsp;3 năm kể từ ng&agrave;y sản xuất</p>\r\n\r\n<p><strong>Ng&agrave;y sản xuất:</strong>&nbsp;Xem tr&ecirc;n bao b&igrave; sản phẩm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/2_Nq8ePKpeo\" width=\"425\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:29:35', 50, NULL, NULL, 0, '2024-11-19 23:37:31', NULL);
INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(36, 'ước Tẩy Trang Garnier Làm Sạch Sâu Lớp Trang Điểm 400ml Micellar Oil Infused Cleansing Water', 'uoc-tay-trang-garnier-lam-sach-sau-lop-trang-diem-400ml-micellar-oil-infused-cleansing-water', 499000, 0, 1, 1, 0, 15, NULL, '2024-11-20__tai-xuong-63.jpg', 3, 1, 1, 3, NULL, '<p><strong>Nước Tẩy Trang&nbsp;<strong>Garnier Micellar Cleansing Water&nbsp;</strong></strong>l&agrave; d&ograve;ng sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/tay-trang-c37.html\" target=\"_blank\">tẩy trang</a>&nbsp;nổi tiếng đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/garnier.html\" target=\"_blank\">thương hiệu Garnier</a>&nbsp;của Ph&aacute;p, sử dụng c&ocirc;ng nghệ Micelles (Micellar Technology) c&oacute; chứa c&aacute;c ph&acirc;n tử mi-xen hoạt động theo cơ chế nam ch&acirc;m gi&uacute;p nhẹ nh&agrave;ng&nbsp;<a href=\"https://hasaki.vn/danh-muc/lam-sach-c1855.html\" target=\"_blank\">l&agrave;m sạch da</a>&nbsp;v&agrave; lấy đi bụi bẩn, cặn&nbsp;trang điểm v&agrave; dầu thừa s&acirc;u b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng m&agrave; kh&ocirc;ng g&acirc;y kh&ocirc; da.</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Garnier Làm Sạch Sâu Lớp Trang Điểm\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-tay-trang-garnier-400ml-moi.jpg\" style=\"height:800px; width:800px\" title=\"Mua Nước Tẩy Trang Garnier Làm Sạch Sâu Lớp Trang Điểm\" /></p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Nước L&agrave;m Sạch V&agrave; Tẩy Trang Cho Mọi Loại Da Garnier Micellar Cleansing Water 400ml</strong>&nbsp;hiện đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với 4 ph&acirc;n loại d&agrave;nh cho từng vấn đề da ri&ecirc;ng biệt:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Nước Tẩy Trang Garnier&nbsp;Micellar Oil Infused Cleansing Water 400ml:&nbsp;</strong>d&agrave;nh cho da trang điểm, gi&uacute;p l&agrave;m sạch s&acirc;u da.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nước Tẩy Trang Garnier Micellar Cleansing Water Vitamin C&nbsp;400ml:&nbsp;</strong>d&agrave;nh cho da sạm m&agrave;u,&nbsp;gi&uacute;p l&agrave;m s&aacute;ng da, hỗ trợ mờ th&acirc;m n&aacute;m.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nước Tẩy Trang Garnier&nbsp;Micellar Cleansing Water For Oily &amp; Acne-Prone Skin&nbsp;400ml:&nbsp;</strong>d&agrave;nh cho da dầu &amp; mụn.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nước Tẩy Trang Garnier&nbsp;Micellar Cleansing Water For Sensitive Skin&nbsp;400ml:&nbsp;</strong>d&agrave;nh cho da nhạy cảm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Garnier Làm Sạch Sâu Lớp Trang Điểm Hasaki\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-garnier-125ml-4.jpg\" style=\"width:800px\" title=\"Mua Nước Tẩy Trang Garnier Làm Sạch Sâu Lớp Trang Điểm Tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>1.&nbsp;Nước Tẩy Trang Garnier&nbsp;Micellar Oil Infused Cleansing Water</strong></h2>\r\n\r\n<p>Việc tẩy trang sau một ng&agrave;y d&agrave;i mệt mỏi giờ đ&acirc;y thật dễ d&agrave;ng với&nbsp;<strong>Garnier Micellar Oil Infused Cleansing Water with Argan Oil!</strong>&nbsp;Sản phẩm ứng dụng c&ocirc;ng nghệ Micelles kết hợp c&ugrave;ng dầu Argan gi&uacute;p l&agrave;m sạch s&acirc;u v&agrave; loại bỏ to&agrave;n bộ lớp trang điểm, kể cả lớp trang điểm kh&ocirc;ng thấm nước cứng đầu nhất. C&ocirc;ng thức độc đ&aacute;o dễ d&agrave;ng thẩm thấu, gi&uacute;p nu&ocirc;i dưỡng l&agrave;n da mềm mại v&agrave; ẩm mịn sau khi tẩy trang m&agrave; kh&ocirc;ng để lại cảm gi&aacute;c nhờn d&iacute;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"Mua Nước Tẩy Trang Garnier Làm Sạch Sâu Lớp Trang Điểm Ngay\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-garnier-lam-sach-sau-lop-trang-diem-400ml-1.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang Garnier Làm Sạch Sâu Lớp Trang Điểm Có Tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Loại da ph&ugrave; hợp:</strong></h3>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp cho mọi loại da, đặc biệt l&agrave;&nbsp;<a href=\"https://hasaki.vn/san-pham/anh-muc/da-kho-c21.html\" target=\"_blank\">da kh&ocirc;</a>.</li>\r\n</ul>\r\n\r\n<h3><strong>Giải ph&aacute;p cho t&igrave;nh trạng da:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html\" target=\"_blank\">Da thiếu ẩm - thiếu nước</a>, dễ kh&ocirc; căng, th&ocirc; r&aacute;p sau khi tẩy trang.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da trang điểm, đặc biệt l&agrave; sản phẩm trang điểm l&acirc;u tr&ocirc;i, chống thấm nước.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Ưu thế nổi bật:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sử dụng&nbsp;<strong>c&ocirc;ng nghệ Micelles (Micellar Technology)</strong>&nbsp;- ph&acirc;n tử Micelles lấy đi bụi bẩn s&acirc;u b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng theo cơ chế hoạt động của nam ch&acirc;m khi lau nhẹ tr&ecirc;n da m&agrave; kh&ocirc;ng cần ch&agrave; x&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bổ sung&nbsp;<strong>dầu hạt Argan thi&ecirc;n nhi&ecirc;n</strong>&nbsp;c&oacute; t&aacute;c dụng&nbsp;lấy đi cặn bẩn trang điểm v&agrave;&nbsp;dưỡng ẩm cho da.</p>\r\n	</li>\r\n	<li>\r\n	<p>L&agrave;m sạch hiệu quả kể cả lớp trang điểm kh&ocirc;ng thấm nước (waterproof).</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết cấu kh&ocirc;ng nhờn, kh&ocirc;ng bết d&iacute;nh, ph&ugrave; hợp với mọi loại da.</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng thức kh&ocirc;ng chứa cồn, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>2.&nbsp;Nước Tẩy Trang Garnier Micellar Cleansing Water Vitamin C</strong></h2>\r\n\r\n<p>Lần đầu ti&ecirc;n, thương hiệu Garnier cho ra đời d&ograve;ng sản phẩm nước tẩy trang mới với sự kết hợp giữa c&ocirc;ng nghệ Micelles (Micellar Technology) v&agrave; th&agrave;nh phần l&agrave;m s&aacute;ng da Vitamin C -&nbsp;<strong>Garnier Vitamin C Micellar Water</strong>&nbsp;gi&uacute;p loại bỏ lớp trang điểm v&agrave; l&agrave;m sạch da chỉ trong 1 lần sử dụng, mang lại l&agrave;n da tươi s&aacute;ng v&agrave; rạng rỡ hơn tức th&igrave;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Garnier Micellar Cleansing Water Vitamin C\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen1/nuoc-tay-trang-garnier-2.jpg\" style=\"width:800px\" title=\"Nước Tẩy Trang Garnier Dưỡng Sáng Da\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&ocirc;ng thức chứa c&aacute;c ph&acirc;n tử mi-xen hoạt động như một thỏi nam ch&acirc;m tự động gi&uacute;p h&uacute;t&nbsp;sạch cặn trang điểm, bụi bẩn v&agrave; dầu thừa; c&ugrave;ng Vitamin C gi&uacute;p loại bỏ t&igrave;nh trạng xỉn m&agrave;u &amp; th&acirc;m sạm, nu&ocirc;i dưỡng da s&aacute;ng mịn. Ngay từ lần sử dụng đầu ti&ecirc;n, bạn sẽ cảm nhận được một l&agrave;n da sạch ho&agrave;n hảo, mịn m&agrave;ng, rạng rỡ v&agrave; tươi s&aacute;ng hơn tức th&igrave;.&nbsp;</p>\r\n\r\n<p>Đặc biệt, sản phẩm kh&ocirc;ng chứa cồn v&agrave; hương liệu, kh&ocirc;ng g&acirc;y k&iacute;ch ứng khi sử dụng.</p>\r\n\r\n<h3><strong>Loại da ph&ugrave; hợp:</strong></h3>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp cho mọi loại da, kể cả da nhạy cảm.</li>\r\n</ul>\r\n\r\n<h3><strong>Giải ph&aacute;p cho t&igrave;nh trạng da:</strong></h3>\r\n\r\n<ul>\r\n	<li><a href=\"https://hasaki.vn/danh-muc/xin-mau-tham-sam-c1887.html\" target=\"_blank\">Da xỉn m&agrave;u &amp; th&acirc;m sạm</a></li>\r\n</ul>\r\n\r\n<h3><strong>Ưu thế nổi bật:</strong></h3>\r\n\r\n<ul>\r\n	<li>Sử dụng&nbsp;<strong>c&ocirc;ng nghệ Micelles (Micellar Technology) -</strong>&nbsp;ph&acirc;n tử Micelles lấy đi bụi bẩn s&acirc;u b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng theo cơ chế hoạt động của nam ch&acirc;m khi lau nhẹ tr&ecirc;n da m&agrave; kh&ocirc;ng cần ch&agrave; x&aacute;t.</li>\r\n	<li>\r\n	<p>Bổ sung&nbsp;<strong>Vitamin C&nbsp;chiết xuất từ quả Yuzu tự nhi&ecirc;n&nbsp;</strong>gi&uacute;p dưỡng s&aacute;ng da, cải thiện t&igrave;nh trạng da tối xỉn v&agrave; kh&ocirc;ng đều m&agrave;u, hỗ trợ l&agrave;m mờ vết th&acirc;m.</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng thức kh&ocirc;ng chứa cồn v&agrave; hương liệu, kh&ocirc;ng g&acirc;y k&iacute;ch ứng đối với l&agrave;n da nhạy cảm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết cấu kh&ocirc;ng nhờn, kh&ocirc;ng bết d&iacute;nh, ph&ugrave; hợp với mọi loại da.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>3.&nbsp;Nước Tẩy Trang Garnier&nbsp;Micellar Cleansing Water For Oily &amp; Acne-Prone Skin</strong></h2>\r\n\r\n<p><strong>Garnier Micellar Cleansing Water&nbsp;For Oily &amp; Acne-Prone Skin&nbsp;</strong>l&agrave; d&ograve;ng sản phẩm nước l&agrave;m sạch v&agrave; tẩy trang đa năng được thiết kế chuy&ecirc;n biệt d&agrave;nh cho da dầu &amp; mụn, gi&uacute;p l&agrave;m sạch hiệu quả m&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng hay tổn thương cho l&agrave;n da của bạn. Với c&ocirc;ng dụng chăm s&oacute;c da 3 trong 1, bạn c&oacute; thể sử dụng&nbsp;<strong>Garnier Micellar Water&nbsp;</strong>như một sản phẩm l&agrave;m sạch da, toner hoặc tẩy trang. Sản phẩm d&ugrave;ng được cho da mặt, mắt &amp; m&ocirc;i.</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Garnier Micellar Cleansing Water For Oily &amp; Acne-Prone Skin\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-tay-trang-garnier-400ml-moi-11.jpg\" style=\"height:800px; width:800px\" title=\"Nước Tẩy Trang Garnier Micellar Cleansing Water For Oily &amp; Acne-Prone Skin 400ml\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&ocirc;ng thức chứa c&aacute;c ph&acirc;n tử mi-xen hoạt động như một thỏi nam ch&acirc;m tự động gi&uacute;p h&uacute;t&nbsp;sạch cặn trang điểm, bụi bẩn v&agrave; dầu thừa hiệu quả m&agrave; kh&ocirc;ng cần ch&agrave; x&aacute;t mạnh, kh&ocirc;ng cần rửa lại với nước. L&agrave;n da sau khi được l&agrave;m sạch trở n&ecirc;n tho&aacute;ng nhẹ, tươi m&aacute;t, kh&ocirc;ng hề nhờn d&iacute;nh m&agrave; vẫn duy tr&igrave; được độ ẩm tự nhi&ecirc;n, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da.&nbsp;</p>\r\n\r\n<h3><strong>Loại da ph&ugrave; hợp:</strong></h3>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp cho&nbsp;<a href=\"https://hasaki.vn/danh-muc/da-dau-c90.html\" target=\"_blank\">da dầu</a>, hỗn hợp thi&ecirc;n dầu.</li>\r\n</ul>\r\n\r\n<h3><strong>Giải ph&aacute;p cho t&igrave;nh trạng da:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html\" target=\"_blank\">Da dầu thừa - lỗ ch&acirc;n l&ocirc;ng to</a></p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/da-mun-c44.html\" target=\"_blank\">Da mụn</a>&nbsp;hoặc dễ nổi mụn</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Ưu thế nổi bật:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sử dụng&nbsp;<strong>c&ocirc;ng nghệ Micelles (Micellar Technology) -</strong>&nbsp;ph&acirc;n tử Micelles lấy đi bụi bẩn s&acirc;u b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng theo cơ chế hoạt động của nam ch&acirc;m khi lau nhẹ tr&ecirc;n da m&agrave; kh&ocirc;ng cần ch&agrave; x&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Th&agrave;nh phần BHA Salicylic Acid:</strong>&nbsp;Gi&uacute;p kiểm so&aacute;t dầu thừa v&agrave; hỗ trợ cải thiện t&igrave;nh trạng mụn.</p>\r\n	</li>\r\n	<li>\r\n	<p>L&agrave;m sạch s&acirc;u da v&agrave; loại bỏ dầu thừa hiệu quả - một trong những nguy&ecirc;n nh&acirc;n g&acirc;y n&ecirc;n t&igrave;nh trạng mụn, gi&uacute;p lỗ ch&acirc;n l&ocirc;ng th&ocirc;ng tho&aacute;ng, giảm thiểu b&iacute;t tắc.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa hương liệu, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết cấu lỏng nhẹ, tươi m&aacute;t, kh&ocirc;ng bết d&iacute;nh, kh&ocirc;ng cần rửa lại với nước.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>4.&nbsp;Nước Tẩy Trang Garnier&nbsp;Micellar Cleansing Water For Sensitive Skin&nbsp;400ml</strong></h3>\r\n\r\n<p><strong><strong>Garnier Micellar Cleansing Water For Sensitive Skin</strong>&nbsp;</strong>l&agrave; d&ograve;ng sản phẩm nước l&agrave;m sạch v&agrave; tẩy trang đa năng được thiết kế chuy&ecirc;n biệt d&agrave;nh cho l&agrave;n da nhạy cảm, gi&uacute;p l&agrave;m sạch hiệu quả m&agrave; kh&ocirc;ng g&acirc;y tổn hại cho l&agrave;n da của bạn. Sản phẩm chăm s&oacute;c da 3 trong 1 n&agrave;y c&oacute; thể được sử dụng như một sản phẩm l&agrave;m sạch, toner hoặc tẩy trang - với c&ocirc;ng nghệ Micelles chứa c&aacute;c hạt ph&acirc;n tử mi-xen gi&uacute;p loại bỏ bụi bẩn, dầu thừa v&agrave; lớp trang điểm theo cơ chế hoạt động của nam ch&acirc;m m&agrave; kh&ocirc;ng cần ch&agrave; x&aacute;t mạnh, kh&ocirc;ng cần rửa lại với nước. C&ocirc;ng thức kh&ocirc;ng chứa cồn &amp; hương liệu, kh&ocirc;ng g&acirc;y dị ứng, th&iacute;ch hợp cho da nhạy cảm.</p>\r\n\r\n<p>&nbsp;<img alt=\"Nước Tẩy Trang Garnier Micellar Cleansing Water For Sensitive Skin\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/nuoc-tay-trang-garnier-danh-cho-da-nhay-cam-400ml-1.jpg\" style=\"width:800px\" title=\"Mua Nước Tẩy Trang Garnier Micellar Cleansing Water For Sensitive Skin\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Loại da ph&ugrave; hợp:</strong></h3>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp cho&nbsp;<a href=\"https://hasaki.vn/danh-muc/da-nhay-cam-c20.html\" target=\"_blank\">da nhạy cảm</a>.</li>\r\n</ul>\r\n\r\n<h3><strong>Giải ph&aacute;p cho t&igrave;nh trạng da:</strong></h3>\r\n\r\n<ul>\r\n	<li><a href=\"https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html\" target=\"_blank\">Da nhạy cảm - k&iacute;ch ứng</a></li>\r\n</ul>\r\n\r\n<h3><strong>Ưu thế nổi bật:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sử dụng&nbsp;<strong>c&ocirc;ng nghệ Micelles (Micellar Technology)</strong>&nbsp;- ph&acirc;n tử Micelles lấy đi bụi bẩn s&acirc;u b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng theo cơ chế hoạt động của nam ch&acirc;m khi lau nhẹ tr&ecirc;n da m&agrave; kh&ocirc;ng cần ch&agrave; x&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>L&agrave;m sạch da dịu nhẹ, loại bỏ bụi bẩn, dầu thừa v&agrave; lớp trang điểm hiệu quả.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa cồn &amp; hương liệu, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết cấu lỏng nhẹ, tươi m&aacute;t, kh&ocirc;ng bết d&iacute;nh, kh&ocirc;ng cần rửa lại với nước.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Th&ocirc;ng số sản phẩm:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Thương hiệu:&nbsp;</strong>Garnier</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>Ph&aacute;p</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nơi sản xuất:&nbsp;</strong>Indonesia / China</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dung t&iacute;ch:&nbsp;</strong>400ml</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ng&agrave;y sản xuất:</strong>&nbsp;Xem tr&ecirc;n bao b&igrave;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hạn sử dụng:</strong>&nbsp;3 năm kể từ ng&agrave;y sản xuất</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Tẩy Trang Garnier Dành Cho Da Nhạy Cảm 400ml\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen1/nuoc-tay-trang-garnier-3.jpg\" style=\"width:800px\" title=\"Mua Nước Tẩy Trang Garnier Dành Cho Da Nhạy Cảm 400ml\" /></p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:34:12', 50, NULL, NULL, 0, '2024-11-28 20:09:20', NULL),
(37, 'Kem Dưỡng Ẩm Neutrogena Cấp Nước Cho Da Dầu 50g Hydro Boost Hyaluronic Acid Water Gel', 'kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-50g-hydro-boost-hyaluronic-acid-water-gel', 265000, 0, 3, 1, 0, 15, NULL, '2024-11-20__tai-xuong-66.jpg', 1, 1, 1, 0, NULL, '<p><strong>Neutrogena Hydro Boost Water Gel</strong>&nbsp;l&agrave; d&ograve;ng sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/kem-duong-dau-duong-c9.html\" target=\"_blank\">kem dưỡng&nbsp;ẩm&nbsp;da</a>&nbsp;nổi tiếng đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/neutrogena.html\" target=\"_blank\">thương hiệu Neutrogena</a>&nbsp;của Mỹ, nay được cải tiến với diện mạo mới &amp; c&ocirc;ng thức mới - bổ sung th&ecirc;m 20% Hyaluronic Acid, kết hợp 9 loại Amino Acid kh&aacute;c nhau, từ đ&oacute; tăng cường cấp ẩm cho da gấp 5 lần so với c&ocirc;ng thức cũ, mang lại hiệu quả dưỡng ẩm s&acirc;u suốt 72 giờ, cho&nbsp;l&agrave;n da căng b&oacute;ng, s&aacute;ng mịn v&agrave; đ&agrave;n hồi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Neutrogena Hydro Boost Hyaluronic Acid Water Gel\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-1.jpg\" style=\"width:600px\" title=\"Kem Dưỡng Ẩm Neutrogena Cấp Nước Cho Da Dầu\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Natural Moisturising Factor (NMF)<strong>&nbsp;</strong>l&agrave; những th&agrave;nh phần dưỡng ẩm tự nhi&ecirc;n sẵn c&oacute; trong da, gi&uacute;p duy tr&igrave; độ ẩm v&agrave; độ đ&agrave;n hồi của l&agrave;n da. Lượng NMF trong da dễ bị suy giảm theo tuổi t&aacute;c v&agrave; dưới sự t&aacute;c động của c&aacute;c yếu tố đến từ m&ocirc;i trường b&ecirc;n ngo&agrave;i. C&ocirc;ng thức của<strong>&nbsp;Neutrogena&nbsp;Hydro Boost Hyaluronic Acid Water Gel</strong>&nbsp;được tăng cường với&nbsp;<strong>1% phức hợp dưỡng chất NMF&nbsp;(Hyaluronic acid, Amino acid &amp; c&aacute;c chất điện giải)</strong>&nbsp;- m&ocirc; phỏng c&aacute;c chất dưỡng ẩm tự nhi&ecirc;n của l&agrave;n da từ đ&oacute; gi&uacute;p l&agrave;n da trở n&ecirc;n căng mọng, mềm mại v&agrave; s&aacute;ng khỏe tự nhi&ecirc;n l&acirc;u d&agrave;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel Cấp Nước Cho Da Dầu\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-5.jpg\" style=\"width:600px\" title=\"Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chất gel tươi m&aacute;t v&agrave; mỏng nhẹ, thẩm thấu nhanh, đặc biệt&nbsp;l&yacute; tưởng cho l&agrave;n da dầu đang gặp t&igrave;nh trạng thiếu nước.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel có kết cấu dạng gel tươi mát và mỏng nhẹ.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-2.jpg\" style=\"width:600px\" title=\"Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel kết cấu dạng gel\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>D&ograve;ng sản phẩm&nbsp;<strong>Kem Dưỡng Ẩm Neutrogena&nbsp;Hydro Boost Water Gel&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với c&aacute;c dung t&iacute;ch cho bạn lựa chọn:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Hũ full size 50g</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tu&yacute;p mini size 15g</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo hũ 50g + tu&yacute;p 15g</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 2 tu&yacute;p 15gx2</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 2 hũ 50gx2</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Loại da ph&ugrave; hợp:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm ph&ugrave; hợp cho da từ thường đến dầu.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Giải ph&aacute;p cho t&igrave;nh trạng da:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da kh&ocirc; thiếu ẩm hoặc da dầu thiếu nước.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da&nbsp;<a href=\"https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html\" target=\"_blank\">dầu thừa - lỗ ch&acirc;n l&ocirc;ng to</a>, kh&ocirc;ng th&iacute;ch cảm gi&aacute;c nhờn d&iacute;nh khi sử dụng kem dưỡng ẩm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&ocirc;ng thức được tăng cường&nbsp;<strong>1%&nbsp;</strong><strong>phức hợp dưỡng chất NMF</strong>&nbsp;- m&ocirc; phỏng c&aacute;c chất dưỡng ẩm tự nhi&ecirc;n của l&agrave;n da,&nbsp;từ đ&oacute; gi&uacute;p l&agrave;n da trở n&ecirc;n căng mọng, mềm mại v&agrave; s&aacute;ng khỏe tự nhi&ecirc;n l&acirc;u d&agrave;i:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p><strong>Th&ecirc;m 20%</strong>&nbsp;<strong>Hyaluronic Acid&nbsp;</strong>so với phi&ecirc;n bản cũ,&nbsp;gi&uacute;p cấp ẩm v&agrave; kh&oacute;a ẩm l&agrave;m cho d&agrave;n da căn mọng d&agrave;i l&acirc;u.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>9 loại Amino Acid&nbsp;</strong>hỗ trợ h&agrave;ng r&agrave;o da khỏe mạnh, ngăn tho&aacute;t nước qua da.</p>\r\n		</li>\r\n		<li>\r\n		<p><strong>Chất điện giải</strong>&nbsp;để tăng cường hấp thụ th&agrave;nh phần dưỡng da.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Chất kem dạng gel si&ecirc;u mỏng nhẹ v&agrave; tươi m&aacute;t v&agrave; mịn dễ thẩm thấu, kh&ocirc;ng g&acirc;y bết d&iacute;nh, kh&ocirc;ng g&acirc;y b&iacute;t tắc lỗ ch&acirc;n l&ocirc;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gel th&iacute;ch hợp d&ugrave;ng cả ng&agrave;y v&agrave; đ&ecirc;m, c&oacute; thể d&ugrave;ng trước makeup.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel giúp da căng mọng và sáng khỏe\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-3.jpg\" style=\"width:600px\" title=\"Kem Dưỡng Ẩm Neutrogena giúp da căng mọng và sáng khỏe\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kết hợp Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel vào quy trình chăm sóc da hàng ngày để cung cấp độ ẩm tối ưu cho da.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-am-neutrogena-cap-nuoc-cho-da-dau-4.jpg\" style=\"width:600px\" title=\"Quy trình chăm sóc da với Kem Dưỡng Ẩm Neutrogena Hydro Boost Hyaluronic Acid Water Gel\" /></p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<h2>Độ an to&agrave;n:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đ&atilde; được chuy&ecirc;n gia da liễu thử nghiệm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng g&acirc;y mụn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng dầu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng m&ugrave;i.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>&nbsp;Bảo quản</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i:</strong>&nbsp;Hũ 50g / Tu&yacute;p 15g</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;Neutrogena&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Mỹ&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nơi sản xuất:</strong>&nbsp;H&agrave;n Quốc</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>HSD:</strong>&nbsp;3 năm kể từ ng&agrave;y sản xuất</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>NSX/ Số l&ocirc;/ HSD:</strong>&nbsp;xem tr&ecirc;n bao b&igrave; sản phẩm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:37:00', 50, NULL, NULL, 0, '2024-11-19 23:37:20', NULL),
(38, 'Kem Dưỡng Forencos Dầu Marula Nâng Tông Da Ban Ngày 50ml Wonderwerk Marula Tone Up', 'kem-duong-forencos-dau-marula-nang-tong-da-ban-ngay-50ml-wonderwerk-marula-tone-up', 169000, 0, 3, 1, 0, 15, NULL, '2024-11-20__tai-xuong-71.jpg', 0, 0, 1, 0, NULL, '<p dir=\"ltr\"><strong>Kem Dưỡng Forencos</strong>&nbsp;l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/kem-duong-dau-duong-c9.html\" target=\"_blank\">kem dưỡng</a>&nbsp;da mặt đến từ thương hiệu&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/forencos.html\" target=\"_blank\">FORENCOS</a>&nbsp;- H&agrave;n Quốc. Kem dưỡng Forencos ban ng&agrave;y v&agrave; ban đ&ecirc;m được đ&aacute;nh gi&aacute; cao bởi khả năng dưỡng da tươi s&aacute;ng rạng rỡ, ngăn ngừa l&atilde;o h&oacute;a tốt với th&agrave;nh phần peptide, dầu marula ch&ocirc;́ng oxi hóa, dưỡng ẩm hiệu quả.</p>\r\n\r\n<p dir=\"ltr\"><strong>Kem Dưỡng Forencos</strong>&nbsp;hiện đ&atilde; c&oacute; tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với 3 ph&acirc;n loại:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Kem Dưỡng Forencos Wonderwerk Marula Tone Up Dầu Marula N&acirc;ng T&ocirc;ng Da Ban Ng&agrave;y&nbsp;</strong>với&nbsp;3&nbsp;dung t&iacute;ch: 10ml, 15ml, 50ml</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Kem Dưỡng Forencos Peptide Redensifying Intensive Cream S&aacute;ng Da, Giảm Nhăn Ban Đ&ecirc;m&nbsp;</strong>với 3&nbsp;dung t&iacute;ch:&nbsp;10ml, 15ml, 50ml</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Kem Dưỡng Forencos Wonderwerk Marula Cream Dầu Marula Dưỡng S&aacute;ng Da Ban Đ&ecirc;m&nbsp;</strong>với&nbsp;3&nbsp;dung t&iacute;ch:&nbsp;10ml, 15ml, 50ml</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Th&ocirc;ng tin sản phẩm:</h2>\r\n\r\n<h2 dir=\"ltr\">1. Kem Dưỡng Forencos Wonderwerk Marula Tone Up Dầu Marula N&acirc;ng T&ocirc;ng Da Ban Ng&agrave;y</h2>\r\n\r\n<p dir=\"ltr\"><strong>Kem Dưỡng Da Forencos Wonderwerk Marula Tone Up Cream</strong>&nbsp;l&agrave; sản phẩm cấp ẩm v&agrave; cải thiện t&ocirc;ng da ngay lập tức, duy tr&igrave; l&agrave;n da trắng, mịn mướt suốt cả ng&agrave;y, đồng thời gi&uacute;p nu&ocirc;i dưỡng l&agrave;n da s&aacute;ng khỏe l&ecirc;n từng ng&agrave;y hạn chế c&aacute;c dấu hiệu l&atilde;o h&oacute;a sớm, l&agrave;m mờ nếp nhăn cho bạn một l&agrave;n da tươi trẻ.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Kem Dưỡng Da Forencos Wonderwerk Marula Tone Up Cream\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/kem-duong-forencos-10ml-50ml-2.jpg\" style=\"height:800px; width:800px\" title=\"Mua Kem Dưỡng Da Forencos Wonderwerk Marula Tone Up Cream\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\">Đối tượng sử dụng:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sản phẩm th&iacute;ch hợp với mọi loại da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Da xỉn m&agrave;u, đốm n&acirc;u,&nbsp;<a href=\"https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html\" target=\"_blank\">da l&atilde;o h&oacute;a</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Dưỡng ẩm thần kỳ tự nhi&ecirc;n từ Marula: Chứa axit oleic, axit b&eacute;o thiết yếu v&agrave; chất chống l&atilde;o h&oacute;a phong ph&uacute;, dầu Marula kiểm so&aacute;t c&aacute;c yếu tố c&oacute; hại cho da, v&agrave; dưỡng ẩm s&acirc;u.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Dinh dưỡng từ mật ong, keo ong duy tr&igrave; độ ẩm cho da: Cung cấp dinh dưỡng v&agrave; độ ẩm phong ph&uacute; với th&agrave;nh phần chống oxy h&oacute;a, vitamin gi&uacute;p duy tr&igrave; l&agrave;n da khỏe khoắn, mịn m&agrave;ng.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Chiết xuất từ c&acirc;y Baobab vừa cấp ẩm tự nhi&ecirc;n cho da, đồng thời h&igrave;nh th&agrave;nh một lớp kh&oacute;a ẩm mỏng nhẹ tr&ecirc;n da, cho da mềm mịn suốt cả ng&agrave;y.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Chiết xuất từ thảo dược c&acirc;y Ho&agrave;ng Li&ecirc;n c&oacute; t&aacute;c dụng giải nhiệt, l&agrave;m dịu da mẫn cảm v&agrave; ngăn ngừa, điều trị da mụn, da khuyết điểm.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Chất kem mịn kh&ocirc;ng g&acirc;y bết d&iacute;nh, thẩm thấu nhanh, cấp đủ độ ẩm cho da trước khi trang điểm v&agrave; c&oacute; thể sử dụng như kem dưỡng kết hợp kem nền.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kem gồm hai chức năng dưỡng s&aacute;ng v&agrave; n&acirc;ng t&ocirc;ng, đồng thời cải thiện nếp nhăn một c&aacute;ch hiệu quả bằng c&aacute;ch bổ sung độ ẩm cho l&agrave;n da kh&ocirc;, thẩm thấu v&agrave; dưỡng ẩm s&acirc;u b&ecirc;n trong da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">2. Kem Dưỡng Forencos Peptide Redensifying Intensive Cream S&aacute;ng Da, Giảm Nhăn Ban Đ&ecirc;m</h2>\r\n\r\n<p dir=\"ltr\"><strong>Kem Dưỡng Forencos Peptide Redensifying Intensive Cream</strong>&nbsp;chứa 4 loại Peptide qu&yacute; v&agrave; h&agrave;m lượng cao li&ecirc;n kết chặt chẽ l&agrave;m tăng cường chức năng bảo vệ da, gi&uacute;p ngăn ngừa những yếu tố g&acirc;y l&atilde;o h&oacute;a tuổi t&aacute;c v&agrave; m&ocirc;i trường b&ecirc;n ngo&agrave;i. Kem dưỡng c&oacute; t&aacute;c dụng tăng độ đ&agrave;n hồi, duy tr&igrave; sự tươi trẻ v&agrave; săn chắc của l&agrave;n da.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Kem Dưỡng Forencos Peptide Redensifying Intensive Cream\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/kem-duong-trang-da-ban-dem-forencos-peptide-redensifying-intensive-cream-50ml-kx.jpg\" style=\"height:1000px; width:1000px\" title=\"Mua Kem Dưỡng Forencos Peptide Redensifying Intensive Cream\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\">Đối tượng sử dụng:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sản phẩm th&iacute;ch hợp với mọi loại da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Da xỉn m&agrave;u, da l&atilde;o h&oacute;a,&nbsp;<a href=\"https://hasaki.vn/danh-muc/lao-hoa-nep-nhan-c1881.html\" target=\"_blank\">da kh&ocirc;</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Phục hồi l&agrave;n da ngay sau 10s: Với khả năng thẩm thấu nhanh chỉ 10s v&agrave;o c&aacute;c lỗ ch&acirc;n l&ocirc;ng, sản phẩm gi&uacute;p tăng độ đ&agrave;n hồi v&agrave; l&agrave;m mờ vết nhăn.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Th&agrave;nh phần an to&agrave;n &amp; đ&atilde; được cấp bằng s&aacute;ng chế: Chứa chất bảo quản tự nhi&ecirc;n, an to&agrave;n th&acirc;n thiện với l&agrave;n da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Với th&agrave;nh phần Peptide 14% gi&uacute;p tăng cường sự đ&agrave;n hồi cho da, giảm triệu chứng nổi mẩn đỏ tr&ecirc;n da, c&oacute; đặc t&iacute;nh chống oxy h&oacute;a cực tốt, gi&uacute;p ức chế qu&aacute; tr&igrave;nh vi&ecirc;m nhiễm tr&ecirc;n da, chống l&atilde;o h&oacute;a v&agrave; mờ c&aacute;c vết th&acirc;m n&aacute;m hiệu quả.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sản phẩm c&oacute; chiết xuất th&ocirc;ng đỏ c&oacute; h&agrave;m lượng vitamin E cực cao, gi&uacute;p l&agrave;m mềm mượt da, trị sẹo, dưỡng ẩm s&acirc;u, bảo vệ da tốt trước tia UV v&agrave; giảm sự h&igrave;nh th&agrave;nh hắc tố melanin tr&ecirc;n da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Rau m&aacute; c&oacute; c&ocirc;ng dụng kh&aacute;ng vi&ecirc;m, kh&aacute;ng khuẩn, ngăn ngừa mụn cao v&agrave; thu hẹp lỗ ch&acirc;n l&ocirc;ng.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kết cấu sản phẩm kem mỏng mịn, thấm nhanh v&agrave;o da, kh&ocirc;ng g&acirc;y bết d&iacute;nh, kh&oacute; chịu cho da. C&oacute; cảm gi&aacute;c the m&aacute;t v&agrave; cực kỳ tho&aacute;ng cho da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">3. Kem Dưỡng Forencos Wonderwerk Marula Cream Dầu Marula Dưỡng S&aacute;ng Da Ban Đ&ecirc;m</h2>\r\n\r\n<p dir=\"ltr\"><strong>Kem Dưỡng Forencos Wonderwerk Marula Cream</strong>&nbsp;với chiết xuất từ dầu marula gi&uacute;p l&agrave;n da trở n&ecirc;n ẩm mượt chỉ sau lần đầu sử dụng. Đ&ocirc;̀ng thời d&acirc;̀u Marula chứa thành ph&acirc;̀n ch&ocirc;́ng oxi hóa nhi&ecirc;̀u hơn d&acirc;̀u Agan l&ecirc;n tới 60% với khả năng nu&ocirc;i dưỡng l&agrave;n da s&aacute;ng mịn hiệu quả.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Kem Dưỡng Forencos Wonderwerk Marula Cream\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/kem-duong-forencos-10ml-50ml-1.jpg\" style=\"height:800px; width:800px\" title=\"Mua Kem Dưỡng Forencos Wonderwerk Marula Cream\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\">Đối tượng sử dụng:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sản phẩm th&iacute;ch hợp da kh&ocirc;,&nbsp;<a href=\"https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html\">da nhạy cảm</a>.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><a href=\"https://hasaki.vn/danh-muc/xin-mau-tham-sam-c1887.html\" target=\"_blank\">Da xỉn m&agrave;u</a>, da l&atilde;o h&oacute;a.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Th&agrave;nh phần thực vật l&agrave;nh t&iacute;nh như chiết xuất keo ong, chiết xuất mật ong, dầu hạt Jojoba, Shea Butter, dầu Marula, th&agrave;nh phần chất chống oxy h&oacute;a tăng cường độ ẩm v&agrave; h&igrave;nh th&agrave;nh m&agrave;ng bảo vệ cho da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Th&agrave;nh phần dinh dưỡng thực vật như dầu hạt Sclerocarya birrea gi&uacute;p l&agrave;m dịu l&agrave;n da nhạy cảm v&agrave; cung cấp dưỡng chất cho da bảo vệ lớp da bị tổn thương.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Gi&uacute;p da được cải thiện một c&aacute;ch khỏe khoắn v&agrave; săn chắc do bị mất nước, stress, v&agrave; những k&iacute;ch th&iacute;ch từ b&ecirc;n ngo&agrave;i.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 dir=\"ltr\">Bảo quản:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 dir=\"ltr\">Th&ocirc;ng số sản phẩm:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Dung t&iacute;ch:</strong>&nbsp;10ml, 15ml, 50ml</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Thương hiệu:</strong>&nbsp;Forencos</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Xuất xứ thương hiệu:</strong>&nbsp;H&agrave;n Quốc</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Nơi sản xuất:</strong>&nbsp;H&agrave;n Quốc</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:40:50', 50, NULL, NULL, 0, NULL, NULL),
(39, 'Kem Dưỡng Eucerin Giúp Làm Giảm Dầu & Mụn 50ml Pro ACNE Solution A.I. Matt Fluid', 'kem-duong-eucerin-giup-lam-giam-dau-mun-50ml-pro-acne-solution-ai-matt-fluid', 290000, 0, 3, 1, 0, 15, NULL, '2024-11-20__tai-xuong-78.jpg', 0, 0, 1, 0, NULL, '<p><strong>Kem Dưỡng&nbsp;Kiểm So&aacute;t Nhờn &amp; Giảm Mụn Eucerin ProAcne A.I. Matt Fluid</strong>&nbsp;đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/eucerin.html\" target=\"_blank\">thương hiệu dược mỹ phẩm Eucerin</a>&nbsp;của Đức l&agrave;&nbsp;<a href=\"https://hasaki.vn/danh-muc/kem-duong-da-c9.html\" target=\"_blank\">kem dưỡng</a>&nbsp;được thiết kế d&agrave;nh cho l&agrave;n da dầu, mụn v&agrave; nhạy cảm, với c&ocirc;ng thức&nbsp;đ&atilde; được nghi&ecirc;n cứu v&agrave; chứng minh l&acirc;m s&agrave;ng gi&uacute;p giảm đồng thời 5 vấn đề về mụn: Mụn, dầu thừa, vi khuẩn mụn, th&acirc;m mụn v&agrave; lỗ ch&acirc;n l&ocirc;ng to.&nbsp;Đồng thời, sản phẩm gi&uacute;p duy tr&igrave; l&agrave;n da kh&ocirc; tho&aacute;ng, kh&ocirc;ng b&oacute;ng nhờn trong suốt 8 giờ, kh&ocirc;ng g&acirc;y b&iacute;t tắc lỗ ch&acirc;n l&ocirc;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Dưỡng Kiểm Soát Nhờn &amp; Giảm Mụn Eucerin ProAcne A.I Matt Fluid\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/kem-duong-eucerin-lam-giam-tham-mun-dau-thua-50ml-5.gif\" style=\"height:800px; width:800px\" title=\"Kem Dưỡng Eucerin ProAcne A.I Matt Fluid\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Dưỡng Kiểm Soát Nhờn &amp; Giảm Mụn Eucerin ProAcne A.I Matt Fluid hiện đã có mặt tại Hasaki\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/kem-duong-eucerin-lam-giam-tham-mun-dau-thua-50ml-4.gif\" style=\"height:800px; width:800px\" title=\"Mua Kem Dưỡng Eucerin ProAcne A.I Matt Fluid tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;<strong>Kem Dưỡng&nbsp;Kiểm So&aacute;t Nhờn &amp; Giảm Mụn Eucerin ProAcne A.I. Matt Fluid</strong>&nbsp;50ml&nbsp;</strong>c&oacute; sự thay đổi th&ocirc;ng tin mặt b&ecirc;n h&ocirc;ng v&agrave; mặt đ&aacute;y, đồng thời c&oacute; sẵn nh&atilde;n phụ tiếng Việt tr&ecirc;n bao b&igrave;. Hiện tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;đang b&aacute;n song song cả hai phi&ecirc;n bản cũ v&agrave; mới, khi kh&aacute;ch đặt h&agrave;ng sẽ giao ngẫu nhi&ecirc;n một trong hai phi&ecirc;n bản.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Dưỡng Eucerin Pro ACNE Solution A.I. Matt Fluid Giúp Làm Giảm Dầu &amp; Mụn 50ml mẫu mới 2024 hiện đã có mặt tại Hasaki.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/kem-duong-eucerin-lam-giam-tham-mun-dau-thua-50ml-mau-moi.jpg\" style=\"height:800px; width:800px\" title=\"Kem Dưỡng Eucerin Giúp Làm Giảm Dầu &amp; Mụn 50ml mẫu mới 2024\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Loại da ph&ugrave; hợp:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm ph&ugrave; hợp cho mọi loại da, đặc biệt l&agrave; da dầu / hỗn hợp dầu.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Giải ph&aacute;p cho t&igrave;nh trạng da:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da dầu nhờn nhiều, lỗ ch&acirc;n l&ocirc;ng to</p>\r\n	</li>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/da-mun-c44.html\" target=\"_blank\">Da mụn</a>&nbsp;hoặc da dễ nổi mụn</p>\r\n	</li>\r\n	<li>\r\n	<p>Da xỉn m&agrave;u, th&acirc;m sạm</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>C&ocirc;ng dụng:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Salicylic Acid&nbsp;</strong>gi&uacute;p loại bỏ tế b&agrave;o chết v&agrave; b&atilde; nhờn b&iacute;t tắc, đồng thời kh&aacute;ng&nbsp;khuẩn, hỗ trợ l&agrave;m giảm&nbsp;mụn v&agrave; ngăn ngừa h&igrave;nh th&agrave;nh mụn đầu đen, mụn trứng c&aacute;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Licochalcone&nbsp;A&nbsp;</strong>gi&uacute;p kh&aacute;ng vi&ecirc;m, l&agrave;m dịu da, giảm&nbsp;tấy&nbsp;đỏ v&agrave; k&iacute;ch ứng.</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ kiểm so&aacute;t dầu thừa&nbsp;v&agrave; ph&acirc;n&nbsp;tử&nbsp;Mattifying&nbsp;gi&uacute;p&nbsp;kiểm&nbsp;so&aacute;t&nbsp;lượng dầu thừa &amp;&nbsp;b&atilde;&nbsp;nhờn tr&ecirc;n da hiệu quả,&nbsp;cho&nbsp;l&agrave;n da kh&ocirc; tho&aacute;ng,&nbsp;kh&ocirc;ng&nbsp;b&oacute;ng&nbsp;nhờn l&ecirc;n đến&nbsp;8&nbsp;giờ.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dưỡng s&aacute;ng da, mờ th&acirc;m mụn, l&agrave;m mịn v&agrave; cải thiện bề mặt da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết cấu mỏng nhẹ v&agrave; dễ thẩm thấu, kh&ocirc;ng g&acirc;y b&iacute;t tắc lỗ ch&acirc;n l&ocirc;ng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Độ an to&agrave;n:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản&nbsp;phẩm&nbsp;được&nbsp;chứng&nbsp;minh&nbsp;l&agrave;&nbsp;ph&ugrave;&nbsp;hợp&nbsp;với&nbsp;l&agrave;n&nbsp;da&nbsp;nhạy&nbsp;cảm, da&nbsp;mụn&nbsp;v&agrave;&nbsp;da&nbsp;dễ&nbsp;nổi&nbsp;mụn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sản&nbsp;phẩm&nbsp;c&oacute;&nbsp;thể&nbsp;sử&nbsp;dụng&nbsp;ở&nbsp;phụ&nbsp;nữ&nbsp;mang&nbsp;thai.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đ&oacute;ng nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Dung t&iacute;ch:</strong>&nbsp;50ml</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;Eucerin</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>Đức</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nơi sản xuất:</strong>&nbsp;Th&aacute;i Lan</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/HFov8sWF0q0\" width=\"425\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><a href=\"javascript:;\">X</a></p>', 0, 0, 0, '2024-11-19 23:43:00', 50, NULL, NULL, 0, NULL, NULL);
INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(40, 'Combo Fino Kem Ủ Và Dầu Dưỡng Cải Thiện Tóc Hư Tổn 230g+70ml Premium Touch + Premium Touch Hair Oil B', 'combo-fino-kem-u-va-dau-duong-cai-thien-toc-hu-ton-230g70ml-premium-touch-premium-touch-hair-oil-b', 459000, 0, 3, 1, 0, 15, NULL, '2024-11-20__tai-xuong-85.jpg', 0, 0, 1, 0, NULL, '<p dir=\"ltr\"><strong>Combo Chăm S&oacute;c T&oacute;c Fino&nbsp;</strong>hiện đ&atilde; c&oacute; tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;gồm 2 sản phẩm:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Kem Ủ T&oacute;c Fino Premium Touch Cải Thiện T&oacute;c Hư Tổn 230g</strong></p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Dầu Dưỡng T&oacute;c Fino Premium Touch Cải Thiện T&oacute;c Hư Tổn 70ml</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Th&ocirc;ng tin sản phẩm:</h2>\r\n\r\n<h2 dir=\"ltr\">1. Kem Ủ T&oacute;c Fino Premium Touch Cải Thiện T&oacute;c Hư Tổn 230g</h2>\r\n\r\n<p dir=\"ltr\"><strong>Kem Ủ T&oacute;c Fino Premium Touch</strong>&nbsp;l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/mat-na-kem-u-toc-c110.html\" target=\"_blank\">kem ủ t&oacute;c</a>&nbsp;nổi tiếng đến từ tập đo&agrave;n Shiseido của Nhật Bản. C&ocirc;ng thức chứa 6 th&agrave;nh phần Serum cao cấp gi&uacute;p giải quyết 6 vấn đề thường gặp của t&oacute;c hư tổn, phục hồi cho m&aacute;i t&oacute;c trở n&ecirc;n su&ocirc;n mượt, chắc khỏe từ gốc đến ngọn. Đặc biệt, sản phẩm c&oacute; hương hoa ngọt ng&agrave;o, lưu lại tr&ecirc;n t&oacute;c suốt nhiều giờ liền.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Kem Ủ Tóc Fino Premium Touch Cải Thiện Tóc Hư Tổn 230g\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/kem-u-toc-fino-premium-touch-cai-thien-toc-hu-ton-230g.jpg\" style=\"height:800px; width:800px\" title=\"Mua Kem Ủ Tóc Fino Premium Touch Cải Thiện Tóc Hư Tổn 230g\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\">Đối tượng sử dụng:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">T&oacute;c hư tổn: kh&ocirc;, xơ rối, g&atilde;y rụng, chẻ ngọn.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 dir=\"ltr\">C&ocirc;ng dụng:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hỗ trợ giữ ẩm s&acirc;u, l&agrave;m cho t&oacute;c dễ d&agrave;ng hấp thụ chất dinh dưỡng để khỏe mạnh, bồng bềnh đầy sức sống tự nhi&ecirc;n.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Gi&agrave;u dưỡng chất hỗ trợ cải thiện t&igrave;nh trạng t&oacute;c hư tổn do ho&aacute; chất (uốn, nhuộm) hoặc qu&aacute; tr&igrave;nh tạo kiểu với nhiệt.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Mang lại vẻ đẹp b&oacute;ng khỏe, khiến bạn lu&ocirc;n tự tin tỏa s&aacute;ng với m&aacute;i t&oacute;c chắc khỏe từ gốc đến ngọn.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hương hoa ngọt ng&agrave;o, thơm ng&aacute;t, nữ t&iacute;nh, lưu lại tr&ecirc;n t&oacute;c suốt nhiều giờ.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">2. Dầu Dưỡng T&oacute;c Fino Premium Touch Cải Thiện T&oacute;c Hư Tổn 70ml</h2>\r\n\r\n<p dir=\"ltr\"><strong>Dầu Dưỡng T&oacute;c Fino Premium Touch Cải Thiện T&oacute;c Hư Tổn 70ml</strong>&nbsp;l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/dau-xit-duong-toc-c102.html\" target=\"_blank\">dầu dưỡng t&oacute;c</a>&nbsp;đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/fino.html\" target=\"_blank\">thương hiệu Fino</a>&nbsp;thuộc tập đo&agrave;n Shiseido của Nhật Bản. C&ocirc;ng thức chứa 4 th&agrave;nh phần tinh chất cao cấp gi&uacute;p t&igrave;m kiếm v&agrave; nu&ocirc;i dưỡng những hư tổn nhỏ nhất trong t&oacute;c gi&uacute;p giảm kh&ocirc; xơ, g&atilde;y rụng v&agrave; mang lại m&aacute;i t&oacute;c mềm mượt, &oacute;ng ả.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Dầu Dưỡng Tóc Fino Premium Touch Cải Thiện Tóc Hư Tổn 70ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/dau-duong-toc-fino-premium-touch-cai-thien-toc-hu-ton-70ml.jpg\" style=\"height:800px; width:800px\" title=\"Mua Dầu Dưỡng Tóc Fino Premium Touch Cải Thiện Tóc Hư Tổn 70ml\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\">Đối tượng sử dụng:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">T&oacute;c hư tổn: kh&ocirc;, xơ rối, g&atilde;y rụng, chẻ ngọn.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Muốn bảo vệ t&oacute;c khỏi tia UV, v&agrave; nhiệt độ cao do tạo kiểu.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 dir=\"ltr\">C&ocirc;ng dụng:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">C&oacute; khả năng định vị hư tổn gi&uacute;p t&igrave;m kiếm v&agrave; phục hồi những hư tổn nhỏ nhất từ s&acirc;u b&ecirc;n trong t&oacute;c.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">2 t&aacute;c động phục hồi t&oacute;c Phytosteryl, Dimethicone phục hồi hư tổn cả b&ecirc;n trong v&agrave; b&ecirc;n ngo&agrave;i.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Giảm kh&ocirc; xơ v&agrave; g&atilde;y rụng, bảo vệ t&oacute;c khỏi tia UV v&agrave; nhiệt độ cao do tạo kiểu.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Squalane gi&uacute;p bảo vệ t&oacute;c khỏi những t&aacute;c động do nhiệt độ cao từ m&ocirc;i trường cũng như tăng cường độ b&oacute;ng cho m&aacute;i t&oacute;c.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Pearl Peptide l&agrave;m giảm t&igrave;nh trạng kh&ocirc; xơ v&agrave; dưỡng t&oacute;c mềm mại.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 dir=\"ltr\">&nbsp;Bảo quản:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp hoặc nơi c&oacute; nhiệt độ cao / ẩm ướt.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Tr&aacute;nh xa tầm tay trẻ em.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 dir=\"ltr\">Th&ocirc;ng số sản phẩm:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Thương hiệu:</strong>&nbsp;Fino (thuộc tập đo&agrave;n Shiseido Nhật Bản)</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Xuất xứ thương hiệu:</strong>&nbsp;Nhật Bản</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Sản xuất tại</strong>: Nhật Bản</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Dung t&iacute;ch:</strong>&nbsp;70ml (Dầu Dưỡng T&oacute;c), 230g (Kem Ủ T&oacute;c)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:45:08', 50, NULL, NULL, 0, NULL, NULL),
(41, 'Kem Dưỡng Tay Evoluderm Từ Tinh Dầu Argan Cấp Ẩm Mềm Mịn 50ml Nourishing Argan Hand Cream', 'kem-duong-tay-evoluderm-tu-tinh-dau-argan-cap-am-mem-min-50ml-nourishing-argan-hand-cream', 99000, 0, 3, 1, 0, 5, NULL, '2024-11-20__tai-xuong-86.jpg', 0, 0, 1, 0, NULL, '<p dir=\"ltr\"><strong>Kem Dưỡng Tay Evoluderm Hand Cream Cấp Ẩm Mềm Mịn 50ml</strong>&nbsp;l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/duong-am-da-tay-chan-c65.html\" target=\"_blank\">dưỡng da tay</a>&nbsp;đến từ thương hiệu&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/evoluderm.html\" target=\"_blank\">Evoluderm</a>&nbsp;- Ph&aacute;p. Sản phẩm được thiết kế với c&ocirc;ng thức gi&agrave;u dưỡng chất kh&ocirc;ng chỉ gi&uacute;p dưỡng ẩm m&agrave; c&ograve;n l&agrave;m mềm da tay, mang lại cảm gi&aacute;c mịn m&agrave;ng, dễ chịu ngay sau khi sử dụng.</p>\r\n\r\n<p dir=\"ltr\"><strong>Kem Dưỡng Tay Evoluderm Hand Cream 50ml</strong>&nbsp;hiện đ&atilde; c&oacute; tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;gồm 2 ph&acirc;n loại:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Kem Dưỡng Tay Evoluderm Moisturising Shea Hand Cream Từ Bơ Hạt Mỡ Cấp Ẩm Mềm Mịn 50ml</strong></p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Kem Dưỡng Tay Evoluderm Nourishing Argan Hand Cream Từ Tinh Dầu Argan Cấp Ẩm Mềm Mịn 50ml</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Th&ocirc;ng tin sản phẩm:</h2>\r\n\r\n<h2 dir=\"ltr\">1. Kem Dưỡng Tay Evoluderm Moisturising Shea Hand Cream Từ Bơ Hạt Mỡ Cấp Ẩm Mềm Mịn 50ml</h2>\r\n\r\n<p dir=\"ltr\"><strong>Kem Dưỡng Tay Evoluderm Moisturising Shea Hand Cream</strong>&nbsp;được chiết xuất từ bơ hạt mỡ, th&agrave;nh phần tự nhi&ecirc;n nổi tiếng với khả năng dưỡng ẩm s&acirc;u v&agrave; l&agrave;m mềm da hiệu quả. Sản phẩm n&agrave;y đặc biệt ph&ugrave; hợp cho những ai c&oacute; l&agrave;n da tay kh&ocirc; v&agrave; th&ocirc; r&aacute;p, mang lại sự mềm mại v&agrave; mịn m&agrave;ng ngay sau khi sử dụng.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Kem Dưỡng Tay Evoluderm Hand Cream Cấp Ẩm Mềm Mịn 50ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/kem-duong-tay-evoluderm-cap-am-mem-min-50ml.jpg\" style=\"height:800px; width:800px\" title=\"Mua Kem Dưỡng Tay Evoluderm Hand Cream Cấp Ẩm Mềm Mịn 50ml\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\">Loại da ph&ugrave; hợp:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sản phẩm ph&ugrave; hợp mọi loại da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 dir=\"ltr\">Ưu thế nổi bật:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Bơ hạt mỡ l&agrave; một th&agrave;nh phần tự nhi&ecirc;n gi&uacute;p dưỡng ẩm v&agrave; l&agrave;m mềm lớp biểu b&igrave;.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Glycerin c&oacute; thể hấp thụ nhiều lần trọng lượng của n&oacute; trong nước v&agrave; l&agrave; một th&agrave;nh phần bảo vệ gi&uacute;p duy tr&igrave; mức độ hydrat h&oacute;a tốt tr&ecirc;n da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Carbomer c&oacute; trong sản phẩm kh&ocirc;ng những gi&uacute;p chăm s&oacute;c l&agrave;n da tay dần phục hồi, tạo độ căng mịn m&agrave; c&ograve;n c&oacute; t&aacute;c dụng bảo vệ l&agrave;n da khỏi c&aacute;c t&aacute;c hại của &aacute;nh nắng mặt trời.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Bảo vệ da tay khỏi m&ocirc;i trường b&ecirc;n ngo&agrave;i v&agrave; mềm mại hơn tr&ocirc;ng thấy trong một thời gian d&agrave;i, giảm nhăn da tay.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Với c&ocirc;ng thức đặc biệt d&agrave;nh cho da kh&ocirc;, kem dưỡng da tay được l&agrave;m từ Bơ hạt mỡ v&agrave; Glycerin gi&uacute;p dưỡng ẩm tức th&igrave; cho da tay.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Gi&uacute;p da tay mịn m&agrave;ng, chống kh&ocirc; v&agrave; nứt nẻ cho da đặc biệt trong m&ugrave;a lạnh.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">2. Kem Dưỡng Tay Evoluderm Nourishing Argan Hand Cream Từ Tinh Dầu Argan Cấp Ẩm Mềm Mịn 50ml</h2>\r\n\r\n<p dir=\"ltr\"><strong>Kem Dưỡng Tay Evoluderm Nourishing Argan Hand Cream</strong>&nbsp;chứa tinh dầu argan qu&yacute; gi&aacute;, gi&uacute;p nu&ocirc;i dưỡng v&agrave; phục hồi l&agrave;n da tay từ s&acirc;u b&ecirc;n trong. Với kết cấu nhẹ nh&agrave;ng, sản phẩm dễ d&agrave;ng thẩm thấu, kh&ocirc;ng g&acirc;y nhờn r&iacute;t, mang lại cho bạn đ&ocirc;i tay mịn m&agrave;ng v&agrave; được bảo vệ suốt cả ng&agrave;y d&agrave;i.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Kem Dưỡng Tay Evoluderm Nourishing Argan Hand Cream Từ Tinh Dầu Argan Cấp Ẩm Mềm Mịn 50ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/kem-duong-tay-evoluderm-cap-am-mem-min-50ml-1.jpg\" style=\"height:800px; width:800px\" title=\"Kem Dưỡng Tay Evoluderm Nourishing Argan Hand Cream Từ Tinh Dầu Argan Cấp Ẩm Mềm Mịn 50ml\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\">Loại da ph&ugrave; hợp:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sản phẩm ph&ugrave; hợp mọi loại da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3 dir=\"ltr\">Ưu thế nổi bật:</h3>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nu&ocirc;i dưỡng v&agrave; dưỡng ẩm: Kem n&agrave;y bảo vệ v&agrave; phục hồi da, gi&uacute;p da mềm mại v&agrave; c&oacute; m&ugrave;i thơm nhẹ nh&agrave;ng. N&oacute; thẩm thấu dễ d&agrave;ng m&agrave; kh&ocirc;ng để lại lớp m&agrave;ng nhờn.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Dầu Argan: Dầu Argan được biết đến với đặc t&iacute;nh l&agrave;m mềm v&agrave; dưỡng ẩm, rất ph&ugrave; hợp cho l&agrave;n da kh&ocirc; v&agrave; mỏng manh.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Bơ Hạt Mỡ: B&iacute; quyết l&agrave;m đẹp của phụ nữ Ch&acirc;u Phi, Bơ hạt mỡ nu&ocirc;i dưỡng v&agrave; l&agrave;m dịu da, mang lại cảm gi&aacute;c dễ chịu suốt cả ng&agrave;y.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Lợi &Iacute;ch: 97% th&agrave;nh phần tự nhi&ecirc;n, thuần chay, đ&atilde; được kiểm nghiệm da liễu, dưỡng ẩm, l&agrave;m mềm, l&agrave;m dịu, kh&ocirc;ng nhờn</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Th&ocirc;ng số sản phẩm:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Thương hiệu:</strong>&nbsp;Evoluderm</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Xuất xứ thương hiệu:</strong>&nbsp;Ph&aacute;p</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Sản xuất tại:</strong>&nbsp;Ph&aacute;p</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Dung t&iacute;ch:</strong>&nbsp;50ml</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:47:54', 50, NULL, NULL, 0, NULL, NULL),
(42, 'Combo 2 Gel Rửa Mặt Cocoon Bí Đao Giúp Giảm Dầu & Mụn 310ml Winter Melon Cleanser', 'combo-2-gel-rua-mat-cocoon-bi-dao-giup-giam-dau-mun-310ml-winter-melon-cleanser', 259000, 0, 2, 1, 0, 10, NULL, '2024-11-20__tai-xuong-1.jpg', 0, 0, 1, 0, NULL, '<p><strong>Gel Rửa Mặt Cocoon B&iacute; Đao Gi&uacute;p Giảm Dầu &amp; Mụn</strong>&nbsp;l&agrave;<strong>&nbsp;</strong>sản phẩm&nbsp;sữa rửa mặt&nbsp;độc đ&aacute;o đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/cocoon.html\" target=\"_blank\"><strong>thương hiệu mỹ phẩm Việt Nam&nbsp;</strong></a><strong><a href=\"https://hasaki.vn/thuong-hieu/cocoon.html\" target=\"_blank\"><strong>Cocoon</strong></a>,&nbsp;</strong>được chiết xuất từ th&agrave;nh phần&nbsp;tự nhi&ecirc;n ph&ugrave; hợp với l&agrave;n da dầu mụn như b&iacute; đao, rau m&aacute;, tr&agrave;m tr&agrave;...&nbsp;C&ocirc;ng thức dạng gel tạo bọt nhẹ nh&agrave;ng nhưng lại c&oacute; khả năng l&agrave;m sạch s&acirc;u, ngăn ngừa c&aacute;c t&aacute;c nh&acirc;n g&acirc;y mụn, đặc biệt l&agrave; mụn ẩn dưới da, mang đến cho sự ẩm mịn tự nhi&ecirc;n c&ugrave;ng cảm gi&aacute;c v&ocirc; c&ugrave;ng tươi mới v&agrave; sạch sẽ. Độ pH 5.5 c&acirc;n bằng l&yacute; tưởng, an to&agrave;n cho l&agrave;n da dầu, mụn &amp; nhạy cảm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Mua Gel Bí Đao Rửa Mặt Cocoon Winter Melon Cleanser tại Hasaki\" src=\"https://media.hcdn.vn/wysiwyg/Chau/gel-rua-mat-bi-dao-cocoon-lam-giam-dau-mun-1_1.jpg\" style=\"height:800px; width:800px\" title=\"Mua Gel Bí Đao Rửa Mặt Cocoon tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&iacute; đao l&agrave; loại quả v&ocirc; c&ugrave;ng quen thuộc trong đời sống của người d&acirc;n Việt Nam. Thế nhưng kh&ocirc;ng chỉ l&agrave; một loại quả m&aacute;t l&agrave;nh gi&uacute;p giải nhiệt cơ thể trong những ng&agrave;y h&egrave; n&oacute;ng bức, b&iacute; đao c&ograve;n c&oacute; nhiều lợi &iacute;ch cho l&agrave;n da của ch&uacute;ng ta. Trong quả b&iacute; đao rất gi&agrave;u những th&agrave;nh phần chống oxy h&oacute;a v&agrave; kh&aacute;ng vi&ecirc;m như Vitamin A v&agrave; C, gi&uacute;p hỗ trợ l&agrave;m giảm sưng vi&ecirc;m mụn v&agrave; ngăn ngừa c&aacute;c tổn thương da do gốc tự do, đồng thời dưỡng da s&aacute;ng mịn hồng h&agrave;o. Thường xuy&ecirc;n sử dụng b&iacute; đao sẽ gi&uacute;p tăng sức đề kh&aacute;ng cho l&agrave;n da, l&agrave;m mềm v&agrave; cung cấp dưỡng chất nu&ocirc;i da khỏe l&ecirc;n mỗi ng&agrave;y.</p>\r\n\r\n<p><strong>Hasaki</strong>&nbsp;xin giới thiệu đến c&aacute;c bạn một sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/sua-rua-mat-c19.html\" target=\"_blank\">sữa rửa mặt</a>&nbsp;độc đ&aacute;o được chiết xuất từ th&agrave;nh phần b&iacute; đao &ndash;&nbsp;<strong>Gel B&iacute; Đao Rửa Mặt Winter Melon Cleanser.&nbsp;</strong>Sản phẩm c&oacute; kết cấu dạng gel dịu nhẹ, trong m&aacute;t được l&agrave;m từ c&aacute;c th&agrave;nh phần thuần chay 100% b&iacute; đao, rau m&aacute; v&agrave; tr&agrave;m tr&agrave; bổ sung th&ecirc;m Vitamin B3, B5, Betaine, kết hợp với chất hoạt động bề mặt dịu nhẹ kh&ocirc;ng chứa Sodium Lauryl Sulfate an to&agrave;n cho l&agrave;n da.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Gel Bí Đao Rửa Mặt Cocoon Winter Melon Cleanser đã có mặt tại Hasaki\" src=\"https://media.hcdn.vn/wysiwyg/Chau/gel-rua-mat-bi-dao-cocoon-lam-giam-dau-mun-2_1.jpg\" style=\"height:800px; width:800px\" title=\"Gel Bí Đao Rửa Mặt Cocoon đã có mặt tại Hasaki \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với c&ocirc;ng thức độ pH c&acirc;n bằng 5.5, loại gel rửa mặt n&agrave;y sẽ gi&uacute;p l&agrave;m sạch s&acirc;u bụi bẩn v&agrave; dầu thừa tr&ecirc;n da m&agrave; vẫn giữ được độ ẩm mịn tự nhi&ecirc;n v&agrave; kh&ocirc;ng g&acirc;y kh&ocirc; da sau khi sử dụng.</p>\r\n\r\n<p>Ngo&agrave;i ra,&nbsp;<strong>Gel B&iacute; Đao Rửa Mặt Cocoon Winter Melon Cleanser&nbsp;</strong>c&ograve;n rất hiệu quả cho những l&agrave;n da dầu v&agrave; mụn ẩn, gi&uacute;p điều tiết v&agrave; hạn chế qu&aacute; tr&igrave;nh tiết dầu của l&agrave;n da, giảm thiểu h&igrave;nh th&agrave;nh mụn ẩn, từ đ&oacute; giữ cho l&agrave;n da lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; sạch mụn.</p>\r\n\r\n<p>H&atilde;y &ldquo;tắm m&aacute;t&rdquo; cho l&agrave;n da với gel rửa mặt b&iacute; đao v&agrave; để cho c&aacute;c tinh chất từ thi&ecirc;n nhi&ecirc;n vỗ về l&agrave;n da của bạn!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Mua Gel Rửa Mặt Cocoon Bí Đao Giúp Giảm Dầu &amp; Mụn tại Hasaki \" src=\"https://media.hcdn.vn/wysiwyg/Chau/gel-rua-mat-bi-dao-cocoon-lam-giam-dau-mun-3.jpg\" style=\"height:800px; width:800px\" title=\"Mua Gel Rửa Mặt Cocoon Bí Đao Giúp Giảm Dầu Và Mụn tại Hasaki \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hiện&nbsp;<strong>Gel B&iacute; Đao Rửa Mặt Cocoon Winter Melon Cleanser&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<strong>Hasaki&nbsp;</strong>với 3 quy c&aacute;ch đ&oacute;ng g&oacute;i:&nbsp;<strong>140ml;&nbsp;</strong><strong>310ml; 310mlx2</strong></p>\r\n\r\n<h2><strong>Loại da ph&ugrave; hợp:</strong></h2>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp cho&nbsp;<a href=\"https://hasaki.vn/danh-muc/da-dau-c90.html\" target=\"_blank\">da dầu</a>, da mụn, da nhạy cảm.</li>\r\n</ul>\r\n\r\n<h2><strong>Giải ph&aacute;p cho t&igrave;nh trạng da:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://hasaki.vn/danh-muc/dau-thua-lo-chan-long-to-c1879.html\" target=\"_blank\">Dầu thừa - lỗ ch&acirc;n l&ocirc;ng to</a></p>\r\n	</li>\r\n	<li>\r\n	<p>Da mụn&nbsp;hoặc dễ nổi mụn</p>\r\n	</li>\r\n	<li>\r\n	<p>Da nhạy cảm, dễ k&iacute;ch ứng</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tinh chất b&iacute; đao: c&oacute; t&aacute;c dụng trong việc diệt khuẩn, kh&aacute;ng vi&ecirc;m, hỗ trợ trị mụn rất tốt</p>\r\n	</li>\r\n	<li>\r\n	<p>Tinh chất rau m&aacute;: C&aacute;c hợp chất sinh học c&oacute; trong rau m&aacute; như axit axetic, asiaticoside, acid madecassic v&agrave; madecassoside gi&uacute;p hỗ trợ tăng sinh collagen cho da cũng như c&oacute; t&aacute;c dụng tốt trong việc kh&aacute;ng vi&ecirc;m, l&agrave;m dịu c&aacute;c vết đỏ v&agrave; chống k&iacute;ch ứng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tinh chất tr&agrave;m tr&agrave;: tr&agrave;m tr&agrave; được xem l&agrave; th&agrave;nh phần huyền thoại trong l&agrave;ng trị mụn bởi khả năng kh&aacute;ng khuẩn, kh&aacute;ng vi&ecirc;m&nbsp; xuất sắc, v&agrave; hỗ trợ điều trị mụn kh&ocirc;ng k&eacute;m những hoạt chất h&oacute;a học như benzoyl peroxide</p>\r\n	</li>\r\n	<li>\r\n	<p>Niacinamide (vitamin B3): như đ&atilde; biết niacinamide l&agrave; th&agrave;nh phần quan trọng trong việc thu nhỏ lỗ ch&acirc;n l&ocirc;ng, điều tiết b&atilde; nhờn, hỗ trợ điều trị mụn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Betaine v&agrave; Vitamin B5 (D-panthenol): gi&uacute;p giữ ẩm cho l&agrave;n da, tr&aacute;nh t&igrave;nh trạng mất nước tr&ecirc;n da.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Salicylic Acid: hay c&ograve;n được gọi l&agrave; BHA gi&uacute;p tẩy tế b&agrave;o chết, điều tiết b&atilde; nhờn, l&agrave; th&agrave;nh phần hữu hiệu trong việc điều trị mụn ẩn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ pH đạt chuẩn ở mức 5.5, th&iacute;ch hợp với mọi loại da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Độ an to&agrave;n:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa sulfate</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng Paraben</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng hương liệu</p>\r\n	</li>\r\n	<li>\r\n	<p>pH 5.5 ph&ugrave; hợp với pH của l&agrave;n da</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Cocoon</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;140ml; 310ml; 310mlx2</p>\r\n\r\n<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>Việt Nam</p>\r\n\r\n<p><strong>Sản xuất tại:</strong>&nbsp;Việt Nam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/nSFbq6pTOFs\" width=\"425\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/VR-4pdPOGr4\" width=\"425\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-19 23:50:41', 50, NULL, NULL, 0, NULL, NULL),
(43, 'Viên Uống Blackmores Tinh Dầu Hoa Anh Thảo 190 Viên Evening Primrose Oil', 'vien-uong-blackmores-tinh-dau-hoa-anh-thao-190-vien-evening-primrose-oil', 699000, 0, 9, 1, 0, 20, NULL, '2024-11-20__tai-xuong-6.jpg', 0, 1, 1, 0, NULL, '<p><strong>Blackmores Evening Primrose Oil&nbsp;</strong>được biết đến l&agrave; một trong những loại&nbsp;<a href=\"https://hasaki.vn/danh-muc/thuc-pham-chuc-nang-c156.html\" target=\"_blank\">thực phẩm chức năng</a>&nbsp;dạng vi&ecirc;n uống c&oacute; hiệu quả trong việc hỗ trợ l&agrave;m đẹp da v&agrave; cải thiện sức khỏe đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/blackmores.html\" target=\"_blank\">thương hiệu BLACKMORES</a>của &Uacute;c. Với th&agrave;nh phần ch&iacute;nh l&agrave; tinh dầu hoa anh thảo, vi&ecirc;n uống Blackmores gi&uacute;p cải thiện c&aacute;c t&igrave;nh trạng mất c&acirc;n bằng nội tiết tố ở phụ nữ như tiền m&atilde;n kinh, m&atilde;n kinh ... Đồng thời, gi&uacute;p l&agrave;m đẹp da &ndash; t&oacute;c, ph&ograve;ng ngừa c&aacute;c bệnh về tim mạch. Vi&ecirc;n uống c&ograve;n được sử dụng để hỗ trợ tăng cường sức khỏe sinh sản, sinh l&yacute; cho cả nam v&agrave; nữ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen1/vien-uong-blacmores-tinh-dau-hoa-anh-thao-190-vien.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tinh dầu hoa anh thảo&nbsp;được xem như l&agrave; thần dược của ph&aacute;i đẹp, l&agrave; nguồn cung cấp omega-6 tự nhi&ecirc;n gi&uacute;p hỗ trợ phục hồi l&agrave;n da v&agrave; cấp ẩm, đồng thời c&ograve;n c&oacute;&nbsp;t&aacute;c dụng chống oxy h&oacute;a, hỗ trợ l&agrave;m giảm c&aacute;c triệu chứng tiền kinh nguyệt.</p>\r\n\r\n<p dir=\"ltr\"><strong>Vi&ecirc;n Uống BLACKMORES Evening Primrose Oil</strong>&nbsp;được sản xuất từ dầu hoa anh thảo xử l&iacute; tr&ecirc;n c&ocirc;ng nghệ &eacute;p lạnh. Đ&acirc;y được xem l&agrave; một chất chống vi&ecirc;m v&agrave; kh&aacute;ng khuẩn tuyệt vời đồng thời hỗ trợ giảm đau hiệu quả với th&agrave;nh phần ch&iacute;nh l&agrave; GLA (acid gamma-linolenic) một loại axit b&eacute;o thiết yếu gi&uacute;p ngăn ngừa xơ cứng động mạch, điều trị bệnh tim, tiểu đường, bệnh ch&agrave;m, vẩy nến, c&aacute;c vấn đề về t&oacute;c, vi&ecirc;m khớp dạng thấp, m&atilde;n kinh, đa xơ cứng, huyết &aacute;p cao...</p>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, tinh dầu hoa anh thảo&nbsp;c&ograve;n c&oacute; t&aacute;c động t&iacute;ch cực đến việc giảm mức cholesterol, mất c&acirc;n bằng hormone v&agrave; tăng cường khả năng trao đổi chất.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Vi&ecirc;n Uống Tinh Dầu Hoa Anh Thảo</strong>&nbsp;<strong>BLACKMORES Evening Primrose Oil&nbsp;</strong>hiện<strong>&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>.</p>\r\n\r\n<h2 dir=\"ltr\"><strong>Tại sao n&ecirc;n sử dụng&nbsp;Vi&ecirc;n Uống Tinh Dầu Hoa Anh Thảo&nbsp;BLACKMORES?</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Dầu Hoa Anh Thảo (Evening Primrose Oil) l&agrave; nguồn cung cấp axit b&eacute;o thiết yếu omega-6, axit gamma-linolenic (GLA) v&agrave; axit linoleic (LA).</p>\r\n	</li>\r\n	<li>\r\n	<p>Những người c&oacute; lối sống k&eacute;m l&agrave;nh mạnh, chế độ ăn uống dư thừa chất b&eacute;o b&atilde;o ho&agrave;, mức độ căng thẳng (stress) cũng l&agrave; những yếu tố g&acirc;y ảnh hưởng&nbsp;đến chuyển h&oacute;a GLA trong cơ thể =&gt; dầu Hoa Anh Thảo gi&uacute;p bổ sung h&agrave;m lượng&nbsp;Gamma Linoleic Acid (GLA) cần thiết, sau khi v&agrave;o cơ thể sẽ&nbsp;được hấp thụ để&nbsp;chuyển h&oacute;a&nbsp;th&agrave;nh Prostaglandins -&nbsp;một loại hormone c&oacute; t&aacute;c dụng th&uacute;c đẩy qu&aacute; tr&igrave;nh sản xuất chất nhầy ở khu vực cổ tử cung, đồng thời gi&uacute;p c&acirc;n bằng nội tiết tố.</p>\r\n	</li>\r\n	<li>\r\n	<p>Omega-6 gi&uacute;p hỗ trợ chống vi&ecirc;m.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hỗ trợ chăm s&oacute;c sức khoẻ l&agrave;n da v&agrave; cung cấp độ ẩm cho da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Đối tượng sử dụng:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nữ giới c&oacute; c&aacute;c triệu chứng kh&oacute; chịu thời kỳ tiền kinh nguyệt, tiền m&atilde;n kinh v&agrave; m&atilde;n kinh.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nữ giới đang bị rối loạn nội tiết tố.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nữ giới đang gặp t&igrave;nh trạng mụn nội tiết tố dai dẳng, đ&atilde; sử dụng c&aacute;c sản phẩm b&ocirc;i ngo&agrave;i da nhưng kh&ocirc;ng c&oacute; t&aacute;c dụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Nữ giới đang c&oacute; &yacute; định mang thai / cần tăng khả năng thụ thai.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>C&ocirc;ng dụng:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>C&acirc;n bằng nội tiết tố, giảm c&aacute;c triệu chứng kh&oacute; chịu trong thời kỳ tiền kinh nguyệt, tiền m&atilde;n kinh v&agrave; m&atilde;n kinh như: đầy hơi, đau ngực, v&agrave; c&aacute;c cảm gi&aacute;c kh&oacute; chịu, thay đổi t&acirc;m trạng thất thường.</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch th&iacute;ch collagen gi&uacute;p da tăng độ đ&agrave;n hồi, săn chắc da, cải thiện nếp nhăn. Đồng thời, bổ sung dưỡng chất cho m&aacute;i t&oacute;c mềm mại, b&oacute;ng mượt, ngăn t&igrave;nh trạng rụng t&oacute;c, giảm kh&ocirc; m&ocirc;i v&agrave; m&oacute;ng khỏe hơn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Cải thiện t&igrave;nh trạng huyết &aacute;p cao v&agrave; cholesterol cao, ph&ograve;ng ngừa c&aacute;c bệnh về tim mạch.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hỗ trợ c&acirc;n bằng nội tiết tố để giảm thiểu mụn xuất hiện.</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&ograve;ng chống tiểu đường: Giảm lượng Insulin v&agrave; chuyển h&oacute;a chất b&eacute;o dễ d&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sản phẩm kh&ocirc;ng chứa men, Gluten, l&uacute;a m&igrave;, c&aacute;c dẫn xuất sữa, chất bảo quản, m&agrave;u sắc nh&acirc;n tạo, hương vị hay chất tạo ngọt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Vi&ecirc;n dạng nang mềm, dễ d&agrave;ng hấp thụ nhanh v&agrave;o cơ thể v&agrave; dễ sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen1/vien-uong-blacmores-tinh-dau-hoa-anh-thao-190-vien-1_1.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;BLACKMORES</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;&Uacute;c (Australia)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất tại:</strong>&nbsp;&Uacute;c (Australia)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hạn sử dụng:</strong>&nbsp;24 th&aacute;ng kể từ ng&agrave;y sản xuất</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i:&nbsp;</strong>Lọ 190 vi&ecirc;n / Combo 2 lọ 190 vi&ecirc;n x 2</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>M&ocirc; tả vật l&yacute;:</strong>&nbsp;Vi&ecirc;n nang gelatin trong, m&agrave;u v&agrave;ng nhạt, h&igrave;nh thu&ocirc;n d&agrave;i, mềm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-20 00:06:59', 50, NULL, NULL, 0, '2024-11-20 00:07:05', NULL),
(44, 'Thực Phẩm Bảo Vệ Sức Khỏe Blossomy Nghệ Collagen 50mlx10 Blossomy Curcumin & Collagen Giúp Da Sáng Đẹp Và Dạ Dày Khỏe', 'thuc-pham-bao-ve-suc-khoe-blossomy-nghe-collagen-50mlx10-blossomy-curcumin-collagen-giup-da-sang-dep-va-da-day-khoe', 499000, 0, 9, 1, 0, 15, NULL, '2024-11-20__tai-xuong-10.jpg', 0, 0, 1, 0, NULL, '<p>Blossomy l&agrave; d&ograve;ng sản phẩm thực phẩm bảo vệ sức khỏe dạng nước uống thuộc&nbsp;Rohto Health Science &ndash; nh&atilde;n hiệu&nbsp;<a href=\"https://hasaki.vn/danh-muc/thuc-pham-chuc-nang-c156.html\" target=\"_blank\">thực phẩm chức năng</a>&nbsp;chăm s&oacute;c sức khỏe của c&ocirc;ng ty Rohto-Mentholatum Việt Nam dựa tr&ecirc;n nguy&ecirc;n l&yacute; kết hợp tinh hoa thi&ecirc;n nhi&ecirc;n c&ugrave;ng khoa học hiện đại Nhật Bản.&nbsp;Với phương ch&acirc;m &ldquo;Sức khỏe của người ti&ecirc;u d&ugrave;ng l&agrave; điều quan trọng nhất&rdquo;, Rohto Health Science cam kết mang tới những sản phẩm an to&agrave;n, minh bạch gi&uacute;p cải thiện sức khỏe v&agrave; sắc đẹp của người ti&ecirc;u d&ugrave;ng Việt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Thực Phẩm Bảo Vệ Sức Khỏe Blossomy hiện đã có mặt tại Hasaki.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen1/thuc-pham-bao-ve-suc-khoe-blossomy-1.jpg\" title=\"Thực Phẩm Bảo Vệ Sức Khỏe Blossomy\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Thực Phẩm Bảo Vệ Sức Khỏe Blossomy</strong>&nbsp;được chia ra th&agrave;nh 3 ph&acirc;n loại, hiện đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Thực Phẩm Bảo Vệ Sức Khỏe Blossomy Nghệ Collagen Gi&uacute;p Da S&aacute;ng Đẹp V&agrave; Dạ D&agrave;y Khỏe (Hộp 10 chai x 50ml / lốc 3 chai&nbsp;<strong>x 50ml</strong>)</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thực Phẩm Bảo Vệ Sức Khỏe Blossomy Premium Tổ Yến Collagen Gi&uacute;p Tăng Sức Khỏe S&aacute;ng Mịn Da&nbsp;<strong>(Hộp 10 chai x 50ml)</strong></strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thực Phẩm Bảo Vệ Sức Khoẻ Blossomy Premium Thảo Dược Collagen Gi&uacute;p Giảm Stress Ngủ S&acirc;u S&aacute;ng Khỏe Da&nbsp;<strong>(Hộp 10 chai x 50ml)</strong></strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>V&igrave; sao n&ecirc;n lựa chọn Blossomy?</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Được kết hợp giữa tinh hoa thi&ecirc;n nhi&ecirc;n Việt Nam v&agrave; khoa học hiện đại Nhật Bản.</p>\r\n	</li>\r\n	<li>\r\n	<p>Nguy&ecirc;n liệu được nghi&ecirc;n cứu v&agrave; tuyển chọn kỹ lưỡng, nguồn gốc minh bạch, h&agrave;m lượng tối ưu để mang lại hiệu quả thực sự cho sản phẩm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sản phẩm được thử nghiệm l&acirc;m s&agrave;ng, kiểm chứng hiệu quả dựa tr&ecirc;n căn cứ khoa học v&agrave; đo lường sự h&agrave;i l&ograve;ng của người d&ugrave;ng trước khi đưa ra thị trường.</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng thức độc quyền v&agrave; l&agrave;nh t&iacute;nh, kh&ocirc;ng c&oacute; t&aacute;c dụng phụ, kh&ocirc;ng t&aacute;c động tới ho&oacute;c-m&ocirc;n &agrave; an to&agrave;n cho hầu hết mọi đối tượng kh&aacute;ch h&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mức năng lượng &amp; h&agrave;m lượng đường rất thấp, d&ugrave;ng được cho người đang ăn ki&ecirc;ng, ti&ecirc;u đường.</p>\r\n	</li>\r\n	<li>\r\n	<p>Vị ngon, dạng nước dễ hấp thụ.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>1. Thực Phẩm Bảo Vệ Sức Khỏe Blossomy Nghệ Collagen Gi&uacute;p Da S&aacute;ng Đẹp V&agrave; Dạ D&agrave;y Khỏe</h2>\r\n\r\n<p><strong>Thực Phẩm Bảo Vệ Sức Khỏe Blossomy Nghệ Collagen</strong>&nbsp;phối hợp Curcumin tự nhi&ecirc;n từ nghệ v&agrave;ng với Collagen với h&agrave;m lượng 50ml/ chai c&ugrave;ng c&aacute;c chất Lactium, Vitamin B1, Vitamin B6 v&agrave; Mật Ong h&igrave;nh th&agrave;nh n&ecirc;n c&ocirc;ng thức gi&uacute;p da s&aacute;ng đẹp, căng mịn, trẻ trung v&agrave; l&agrave;m l&agrave;nh giảm vi&ecirc;m lo&eacute;t dạ d&agrave;y. H&agrave;m lượng Curcumin c&oacute; mặt trong Blossomy đạt tr&ecirc;n 90% tinh khiết về h&agrave;m lượng, kh&ocirc;ng pha trộn, đảm bảo chất lượng.</p>\r\n\r\n<p>Sản phẩm dạng nước c&oacute; hương vị dưa lưới thơm m&aacute;t c&ugrave;ng vị ngọt tự nhi&ecirc;n từ mật ong, dễ sử dụng hằng ng&agrave;y v&agrave; gi&uacute;p cơ thể hấp thu dưỡng chất tối đa.</p>\r\n\r\n<h3>Đối tượng n&ecirc;n sử dụng sản phẩm:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Phụ nữ từ 25 tuổi muốn ngăn ngừa c&aacute;c dấu hiệu l&atilde;o h&oacute;a da, duy tr&igrave; l&agrave;n da tươi trẻ từ b&ecirc;n trong.</p>\r\n	</li>\r\n	<li>\r\n	<p>Người muốn cải thiện c&aacute;c vấn đề về dạ d&agrave;y, bao tử.</p>\r\n	</li>\r\n	<li>\r\n	<p>Người gặp c&aacute;c vấn đề về giấc ngủ (kh&oacute; ngủ, ngủ kh&ocirc;ng ngon giấc).</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>C&ocirc;ng dụng:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hỗ trợ chống oxy h&oacute;a, gi&uacute;p da căng mịn trẻ trung &amp; ngăn ngừa c&aacute;c dấu hiệu&nbsp;<a href=\"https://hasaki.vn/danh-muc/lao-hoa-nep-nhan-c1881.html\" target=\"_blank\">l&atilde;o h&oacute;a</a>&nbsp;da như: da kh&ocirc;, sạm n&aacute;m, k&eacute;m săn chắc, nếp nhăn,...</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p hỗ trợ l&agrave;m l&agrave;nh ni&ecirc;m mạc dạ d&agrave;y, t&aacute; tr&agrave;ng, giảm triệu chứng của vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>N&acirc;ng cao chất lượng giấc ngủ, gi&uacute;p dễ d&agrave;ng ngủ s&acirc;u v&agrave; giảm căng thẳng, mệt mỏi.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>2. Thực Phẩm Bảo Vệ Sức Khỏe Blossomy Premium Tổ Yến Collagen Gi&uacute;p Tăng Sức Khỏe S&aacute;ng Mịn Da</h2>\r\n\r\n<p><strong>Thực Phẩm Bảo Vệ Sức Khỏe Blossomy Premium Tổ Yến Collagen</strong>&nbsp;được kết hợp từ Tố yến, Collagen thủy ph&acirc;n, Curcuminoid chiết xuất từ nghệ v&agrave;ng, Lactium gi&uacute;p cải thiện c&aacute;c dấu hiệu l&atilde;o ho&aacute;, dưỡng da s&aacute;ng mịn, đồng thời tăng cường sức khoẻ cơ thể.</p>\r\n\r\n<h3>Đối tượng n&ecirc;n sử dụng sản phẩm:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Phụ nữ muốn l&agrave;m đẹp da, tăng cường sức đề kh&aacute;ng v&agrave; phục hồi sức khoẻ.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>C&ocirc;ng dụng:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Gi&uacute;p cải thiện c&aacute;c dấu hiệu l&atilde;o ho&aacute; da (da nhăn, kh&ocirc;, sạm, k&eacute;m đ&agrave;n hồi), cho l&agrave;n da hồng h&agrave;o, săn chắc.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bổ sung yến s&agrave;o gi&uacute;p phục hồi, tăng cường sức khoẻ.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p cải thiện hệ ti&ecirc;u ho&aacute;, giảm nguy cơ vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong><em>Th&ocirc;ng tin bổ sung:</em></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Số ĐKSP:</strong>&nbsp;2823/2022/ĐKSP</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ti&ecirc;u chuẩn:</strong>&nbsp;TCCS</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất v&agrave; chịu tr&aacute;ch nhiệm về sản phẩm:</strong>&nbsp;C&ocirc;ng ty cổ phần Dược phẩm Bắc Ninh</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Địa chỉ:&nbsp;</strong>Nh&agrave; m&aacute;y l&ocirc; C1-1, khu c&ocirc;ng nghiệp Quế V&otilde;, x&atilde; Phương Liễu, huyện Quế V&otilde;, tỉnh Bắc Ninh, Việt Nam</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nh&agrave; ph&acirc;n phối:</strong>&nbsp;C&ocirc;ng ty TNHH Rohto-Mentholatum (Việt Nam)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Địa chỉ:</strong>&nbsp;Số 16 VSIP, đường số 5, khu c&ocirc;ng nghiệp Việt Nam - Singapore, phường B&igrave;nh H&ograve;a, th&agrave;nh phố Thuận An, tỉnh B&igrave;nh Dương, Việt Nam</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>3. Thực Phẩm Bảo Vệ Sức Khoẻ Blossomy Premium Thảo Dược Collagen Gi&uacute;p Giảm Stress Ngủ S&acirc;u S&aacute;ng Khỏe Da</h2>\r\n\r\n<p><strong>Thực phẩm bảo vệ sức khỏe Blossomy Premium Thảo Dược Collagen</strong>&nbsp;được kết hợp từ Collagen thủy ph&acirc;n, Curcuminoid chiết xuất từ nghệ v&agrave;ng, Lactium, với c&aacute;c thảo dược tự nhi&ecirc;n bao gồm c&uacute;c hoa, t&aacute;o nh&acirc;n, hoa Actis&ocirc; đỏ,&nbsp;gi&uacute;p cải thiện c&aacute;c dấu hiệu l&atilde;o ho&aacute; v&agrave; dưỡng da s&aacute;ng khoẻ, đồng thời hỗ trợ l&agrave;m giảm căng thẳng v&agrave; cải thiện chất lượng giấc ngủ.</p>\r\n\r\n<h3>Đối tượng n&ecirc;n sử dụng sản phẩm:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Phụ nữ muốn l&agrave;m đẹp da, cải thiện chất lượng giấc ngủ.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>C&ocirc;ng dụng:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Gi&uacute;p cải thiện c&aacute;c dấu hiệu l&atilde;o ho&aacute; da (da nhăn, kh&ocirc;, sạm, k&eacute;m đ&agrave;n hồi), cho l&agrave;n da mịn m&agrave;ng, săn chắc.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bổ sung hệ thảo dược tự nhi&ecirc;n, gi&uacute;p giảm căng thẳng, thư gi&atilde;n đầu &oacute;c, cải thiện t&igrave;nh trạng mất ngủ v&agrave; ngủ kh&ocirc;ng ngon giấc.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p cải thiện hệ ti&ecirc;u ho&aacute;, giảm nguy cơ vi&ecirc;m lo&eacute;t dạ d&agrave;y, t&aacute; tr&agrave;ng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong><em>Th&ocirc;ng tin bổ sung:</em></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Số ĐKSP:</strong>&nbsp;2822/2022/ĐKSP</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ti&ecirc;u chuẩn:</strong>&nbsp;TCCS</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất v&agrave; chịu tr&aacute;ch nhiệm về sản phẩm:</strong>&nbsp;C&ocirc;ng ty cổ phần Dược phẩm Bắc Ninh</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Địa chỉ:&nbsp;</strong>Nh&agrave; m&aacute;y l&ocirc; C1-1, khu c&ocirc;ng nghiệp Quế V&otilde;, x&atilde; Phương Liễu, huyện Quế V&otilde;, tỉnh Bắc Ninh, Việt Nam</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nh&agrave; ph&acirc;n phối:</strong>&nbsp;C&ocirc;ng ty TNHH Rohto-Mentholatum (Việt Nam)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Địa chỉ:</strong>&nbsp;Số 16 VSIP, đường số 5, khu c&ocirc;ng nghiệp Việt Nam - Singapore, phường B&igrave;nh H&ograve;a, th&agrave;nh phố Thuận An, tỉnh B&igrave;nh Dương, Việt Nam</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Bảo quản:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Ch&uacute; &yacute;:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thực phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh. Kh&ocirc;ng sử dụng nếu mẫn cảm với bất k&igrave; th&agrave;nh phần n&agrave;o của sản phẩm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Khi mở nắp chai vui l&ograve;ng sử dụng ngay v&agrave; kh&ocirc;ng để qu&aacute; 24h.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Th&ocirc;ng số sản phẩm:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Thương hiệu:&nbsp;</strong>Blossomy thuộc c&ocirc;ng ty Rohto-Mentholatum (Việt Nam)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nơi sản xuất:</strong>&nbsp;Việt Nam</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hạn sử dụng:</strong>&nbsp;2 năm kể từ ng&agrave;y sản xuất</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ng&agrave;y sản xuất:</strong>&nbsp;xem chi tiết tr&ecirc;n bao b&igrave;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-20 00:09:31', 50, NULL, NULL, 0, NULL, NULL);
INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(45, 'Thực Phẩm Bảo Vệ Sức Khỏe DHC Dạng Viên Uống Bổ Sung Kẽm 30 Ngày Zinc – 30 days', 'thuc-pham-bao-ve-suc-khoe-dhc-dang-vien-uong-bo-sung-kem-30-ngay-zinc-30-days', 299000, 0, 9, 1, 0, 15, NULL, '2024-11-20__tai-xuong-15.jpg', 0, 0, 1, 0, NULL, '<p><strong>Thực Phẩm Bảo Vệ Sức Khoẻ&nbsp;DHC Zinc&nbsp;</strong>l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/thuc-pham-chuc-nang-c156.html\" target=\"_blank\">thực phẩm chức năng</a>&nbsp;hỗ trợ sức khỏe từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/dhc.html\" target=\"_blank\">thương hiệu DHC Nhật Bản</a>, gi&uacute;p&nbsp;bổ sung hiệu quả lượng kho&aacute;ng kẽm cần thiết cho cơ thể.&nbsp;Ngo&agrave;i ra, sản phẩm c&ograve;n được bổ sung th&ecirc;m th&agrave;nh phần selen v&agrave; crom cũng l&agrave; những kho&aacute;ng chất thiết yếu,&nbsp;gi&uacute;p hỗ trợ duy tr&igrave; sức khỏe dẻo dai, cho cơ thể tr&agrave;n đầy năng lượng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Thực Phẩm Bảo Vệ Sức Khoẻ Viên Uống Bổ Sung Kẽm DHC Zinc\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/thuc-pham-bao-ve-suc-khoe-dhc-dang-vien-uong-bo-sung-kem-1.jpg\" style=\"width:800px\" title=\"Thực Phẩm Bảo Vệ Sức Khoẻ DHC Zinc\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kẽm&nbsp;l&agrave; một trong những kho&aacute;ng chất thiết yếu cho cơ thể,&nbsp;li&ecirc;n quan mật thiết tới qu&aacute; tr&igrave;nh tổng hợp DNA v&agrave; điều chỉnh t&igrave;nh trạng sức khỏe của cơ thể. B&ecirc;n cạnh đ&oacute;,&nbsp;kẽm c&ograve;n l&agrave; dưỡng chất cần thiết trong qu&aacute; tr&igrave;nh sản sinh tế b&agrave;o mới. Do đ&oacute;, việc thiếu hụt kẽm sẽ dấn đến t&igrave;nh trạng bất ổn của da v&agrave; c&aacute;c bộ phận kh&aacute;c của cơ thể.&nbsp;Tuy nhi&ecirc;n, cơ thể ch&uacute;ng ta lại kh&ocirc;ng c&oacute; khả năng tự sản sinh ra kẽm, do đ&oacute; bắt buộc ch&uacute;ng ta phải bổ sung kẽm th&ocirc;ng qua đường ăn uống.</p>\r\n\r\n<p><em><strong>Theo thống k&ecirc; của Bộ Y tế Nhật Bản, lượng kẽm m&agrave; một người trưởng th&agrave;nh đưa v&agrave;o cơ thể qua đường ăn uống chỉ c&oacute; 7-10mg.</strong>&nbsp;</em>Mặc d&ugrave; số lượng n&agrave;y rất &iacute;t nhưng n&oacute; lại đ&oacute;ng vai tr&ograve; quan trọng trong việc điều chỉnh sinh l&yacute;, hỗ trợ qu&aacute; tr&igrave;nh tổng hợp v&agrave; ph&aacute;t triền của protein, k&iacute;ch th&iacute;ch qu&aacute; tr&igrave;nh trao đổi chất.</p>\r\n\r\n<p>Sự ph&aacute;t triển của m&oacute;ng, t&oacute;c, sự t&aacute;i tạo da cũng phụ thuộc v&agrave;o lượng kẽm m&agrave; cơ thể nạp được. Thiếu hụt kẽm dễ dẫn đến t&igrave;nh trạng da kh&ocirc;, rụng t&oacute;c, hay c&oacute; cảm gi&aacute;c mệt mỏi, dễ sinh bệnh. Đặc biệt hơn nữa, kẽm c&ograve;n tham gia v&agrave;o qu&aacute; tr&igrave;nh tổng hợp h&oacute;c-m&ocirc;n sinh dục, việc thiếu kẽm sẽ dẫn đến sự suy yếu khả năng sinh sản. Ngo&agrave;i ra, việc thiếu kẽm c&ograve;n dẫn đến suy nhược cơ thể v&agrave; chứng &quot;bệnh vị gi&aacute;c&quot; gần đ&acirc;y c&oacute; xu hướng gia tăng trong giới trẻ.</p>\r\n\r\n<p>Để đ&aacute;p ứng nhu cầu bổ sung kẽm của người ti&ecirc;u d&ugrave;ng,<strong>&nbsp;</strong>thương hiệu DHC Nhật Bản đ&atilde; cho ra đời sản phẩm<strong>&nbsp;<strong>Thực Phẩm Bảo Vệ Sức Khoẻ&nbsp;<strong>DHC Zinc&nbsp;</strong></strong>Vi&ecirc;n Uống Bổ Sung Kẽm.</strong>&nbsp;Với&nbsp;3 th&agrave;nh phần kho&aacute;ng thiết yếu cho cơ thể l&agrave;&nbsp;Kẽm 15mg, Cr&ocirc;m 60&mu;g, Selen 50&mu;g, sản phẩm sẽ gi&uacute;p&nbsp;bổ sung h&agrave;m lượng kẽm cần thiết cho cơ thể,&nbsp;hỗ trợ duy tr&igrave; sức khỏe, gi&uacute;p cơ thể khỏe mạnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Thực Phẩm Bảo Vệ Sức Khoẻ DHC Zinc giúp bổ sung 3 thành phần khoáng thiết yếu cho cơ thể: Kẽm 15mg, Crôm 60μg, Selen 50μg\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/thuc-pham-bao-ve-suc-khoe-dhc-dang-vien-uong-bo-sung-kem-3.jpg\" style=\"width:800px\" title=\"Thực Phẩm Bảo Vệ Sức Khoẻ DHC Zinc Viên Uống Bổ Sung Kẽm\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hiện sản phẩm&nbsp;<strong>Thực Phẩm Bảo Vệ Sức Khỏe DHC Zinc Dạng Vi&ecirc;n Uống Bổ Sung Kẽm&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\"><strong>Hasaki</strong></a>&nbsp;với 2 ph&acirc;n loại:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>G&oacute;i 15 ng&agrave;y uống (15 vi&ecirc;n)</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>G&oacute;i 30 ng&agrave;y uống (30 vi&ecirc;n)</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Đối tượng sử dụng:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Người mệt mỏi, người thiếu hụt kẽm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da dầu nhờn nhiều, bị mụn hoặc dễ nổi mụn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da kh&ocirc;, t&oacute;c v&agrave; m&oacute;ng tay dễ g&atilde;y rụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Người đang mắc chứng &quot;bệnh vị gi&aacute;c&quot;, mất cảm gi&aacute;c ngon miệng v&agrave;/hoặc biếng ăn.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>C&ocirc;ng dụng:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hỗ trợ ức chế qu&aacute; tr&igrave;nh tiết b&atilde; nhờn v&agrave; sừng ho&aacute; nang l&ocirc;ng, cải thiện t&igrave;nh trạng da mụn, gi&uacute;p duy tr&igrave; l&agrave;n da mịn m&agrave;ng v&agrave; cải thiện t&igrave;nh trạng rụng t&oacute;c, t&oacute;c xơ cứng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p duy tr&igrave; vị gi&aacute;c, duy tr&igrave; sức khỏe của l&agrave;n da v&agrave; ni&ecirc;m mạc.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hỗ trợ qu&aacute; tr&igrave;nh chuyển h&oacute;a của protein v&agrave; axit nucleic, tăng cường sức đề kh&aacute;ng v&agrave; chức năng hệ miễn dịch gi&uacute;p duy tr&igrave; sức khỏe cho cơ thể.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Công dụng của Viên Uống Bổ Sung Kẽm DHC Zinc\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/thuc-pham-bao-ve-suc-khoe-dhc-dang-vien-uong-bo-sung-kem-2.jpg\" style=\"width:800px\" title=\"Công dụng của Thực Phẩm Bảo Vệ Sức Khỏe DHC Zinc\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đ&oacute;ng chặt miệng t&uacute;i sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Hạn d&ugrave;ng:</strong>&nbsp;36 th&aacute;ng kể từ ng&agrave;y sản xuất. Sử dụng tốt nhất trước thời gian ghi tr&ecirc;n bao b&igrave;. Hạn sử dụng ghi theo định dạng &ldquo;năm.th&aacute;ng&rdquo;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i:</strong>&nbsp;g&oacute;i 15 ng&agrave;y uống (15 vi&ecirc;n) / g&oacute;i 30 ng&agrave;y uống (30 vi&ecirc;n)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;DHC</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất tại:</strong>&nbsp;Nhật Bản</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em><strong>Lưu &yacute;:&nbsp;Thực phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</strong></em></p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-20 00:10:56', 50, NULL, NULL, 0, NULL, NULL),
(46, 'Nước Uống Collagen Elasten Thủy Phân 28 Ống x 25ml', 'nuoc-uong-collagen-elasten-thuy-phan-28-ong-x-25ml', 2000000, 0, 9, 1, 0, 10, NULL, '2024-11-20__tai-xuong-20.jpg', 0, 0, 1, 0, NULL, '<p><strong>Nước Uống Collagen Elasten Căng Mịn, Ngừa L&atilde;o Ho&aacute;</strong>&nbsp;l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/lam-dep-c1995.html\">hỗ trợ l&agrave;m đẹp</a>&nbsp;đến từ thương hiệu&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/elasten.html\">Elasten</a>&nbsp;- Đức, với c&ocirc;ng thức [HC] Collagen Complex đột ph&aacute;, độc quyền, collagen trong ELASTEN được thủy ph&acirc;n th&agrave;nh c&aacute;c ph&acirc;n tử collagen peptide cực nhỏ gi&uacute;p qu&aacute; tr&igrave;nh hấp thụ v&agrave;o cơ thể tối ưu, mang lại hiệu quả nhanh hơn collagen th&ocirc;ng thường. Đặc biệt collagen gốc b&ograve; tương th&iacute;ch tới 90% cấu tr&uacute;c collagen tự nhi&ecirc;n của con người, ph&ugrave; hợp bổ sung lượng collagen bị thiếu hụt v&agrave; tăng cường hiệu quả trẻ h&oacute;a tr&ecirc;n da.&nbsp;</p>\r\n\r\n<p><strong>Nước Uống Collagen Elasten Căng Mịn, Ngừa L&atilde;o Ho&aacute;</strong>&nbsp;đ&atilde; c&oacute; tại&nbsp;<a href=\"https://hasaki.vn/\">Hasaki</a>.</p>\r\n\r\n<p><img alt=\"Nước Uống Collagen Elasten Căng Mịn, Ngừa Lão Hoá 28 Ống\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-15_1.jpg\" title=\"Mua Ngay Nước Uống Collagen Elasten Căng Mịn, Ngừa Lão Hoá\" />&nbsp;</p>\r\n\r\n<p>Việc bổ sung collagen h&agrave;ng ng&agrave;y kh&ocirc;ng chỉ l&agrave; b&iacute; quyết duy tr&igrave; l&agrave;n da tươi trẻ v&agrave; mịn m&agrave;ng, m&agrave; c&ograve;n mang lại nhiều lợi &iacute;ch to&agrave;n diện cho sức khỏe. Collagen &ndash; với khả năng cải thiện độ đ&agrave;n hồi v&agrave; độ ẩm của da, gi&uacute;p l&agrave;m mờ nếp nhăn, chống lại c&aacute;c dấu hiệu của sự&nbsp;<a href=\"https://hasaki.vn/danh-muc/lao-hoa-nep-nhan-c1881.html\">l&atilde;o h&oacute;a</a>, mang lại l&agrave;n da rạng ngời v&agrave; căng tr&agrave;n sức sống.</p>\r\n\r\n<p>Hơn thế nữa, việc bổ sung collagen c&ograve;n c&oacute; t&aacute;c dụng trong hỗ trợ sức khỏe xương khớp, tăng độ bền bỉ cho cơ thể v&agrave; nu&ocirc;i dưỡng gi&uacute;p m&aacute;i t&oacute;c &oacute;ng ả, chắc khỏe v&agrave; &iacute;t g&atilde;y rụng. Với những t&aacute;c động to&agrave;n diện v&agrave; diệu k&igrave; n&agrave;y, uống collagen h&agrave;ng ng&agrave;y ch&iacute;nh l&agrave; ch&igrave;a kh&oacute;a để bạn duy tr&igrave; vẻ đẹp v&agrave; sức khỏe to&agrave;n diện từ b&ecirc;n trong.</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;Hasaki hiện đang b&aacute;n song song cả 2 mẫu cũ v&agrave; mới.</p>\r\n\r\n<h2 dir=\"ltr\">Đối tượng sử dụng:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Người c&oacute; nhu cầu l&agrave;m đẹp, trẻ h&oacute;a l&agrave;n da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Người c&oacute; l&agrave;n da thiếu độ ẩm, l&atilde;o h&oacute;a.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Người c&oacute; l&agrave;n da đang bị tổn thương hoặc người trước v&agrave; sau thời gian phẫu thuật thẩm mỹ.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Người c&oacute; chế độ l&agrave;m việc thường xuy&ecirc;n thức khuya, m&ocirc;i trường độc hại.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Người đang thực hiện chế độ giảm c&acirc;n.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">An to&agrave;n cho người c&oacute; bệnh dạ d&agrave;y, tiểu đường.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Phụ nữ đang mang thai &amp; cho con b&uacute; (*).</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">(*) Sản phẩm cho t&aacute;c động l&agrave;nh t&iacute;nh v&agrave; an to&agrave;n. Tuy nhi&ecirc;n, để đảm bảo an to&agrave;n sức khỏe cho mẹ v&agrave; b&eacute;, n&ecirc;n tham khảo &yacute; kiến của b&aacute;c sĩ v&agrave; chuy&ecirc;n gia trước khi sử dụng.&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\">Đối tượng kh&ocirc;ng n&ecirc;n sử dụng:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Người bị vi&ecirc;m lo&eacute;t dạ d&agrave;y nặng.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Người bị huyết &aacute;p thấp.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Người bị bệnh thận mạn t&iacute;nh.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">C&ocirc;ng dụng:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hỗ trợ l&agrave;m giảm l&atilde;o ho&aacute;.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Tăng cường độ đ&agrave;n hồi săn chắc cho l&agrave;n da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Tăng cường độ ẩm gi&uacute;p da lu&ocirc;n mềm mại.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hỗ trợ s&aacute;ng da n&acirc;ng t&ocirc;ng cho to&agrave;n bộ cơ thể.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiệu quả to&agrave;n diện chăm s&oacute;c cho cả m&oacute;ng v&agrave; t&oacute;c lu&ocirc;n chắc khỏe.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hiệu quả trong việc bảo vệ tim mạch.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Th&agrave;nh phần collagen được b&agrave;o chế đặc biệt, tương th&iacute;ch 90% collagen người mang lại hiệu quả vượt trội.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Đ&oacute;ng g&oacute;i tiện dụng dạng ống, dễ sử dụng v&agrave; mang theo b&ecirc;n người.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Vị thơm ngon dễ uống, &iacute;t g&acirc;y c&aacute;c t&aacute;c động bất lợi cho cơ thể.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Duy tr&igrave; hiệu quả từ 4-8 tuần ngay cả khi ngưng sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Hướng dẫn ph&acirc;n biệt thật giả:&nbsp;</h2>\r\n\r\n<p><img alt=\"Nước Uống Collagen Elasten Thủy Phân\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-13.jpg\" title=\"Nước Uống Collagen Elasten Thủy Phân 28 Ống x 25ml Tại Hasaki\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Uống Collagen 28 Ống x 25ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-6.jpg\" title=\"Mua Nước Uống Collagen 28 Ống x 25ml\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Uống Collagen Elasten \" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-12.jpg\" title=\"Mua Ngay Nước Uống Collagen Elasten Thủy Phân 28 Ống\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Uống Collagen Elasten 25ml x 28 Ống\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-15.jpg\" title=\"Nước Uống Collagen Elasten 28 Ống\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Collagen Elasten Thủy Phân 28 Ống x 25ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-14.jpg\" title=\"Nước Uống Collagen Elasten 25ml\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Uống Collagen 28 Ống x 25ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-10.jpg\" title=\"Mua Ngay Nước Uống Collagen Elasten 28 Ống\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Collagen Elasten Thủy Phân 28 Ống x 25ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-9.jpg\" title=\"Mua Nước Uống Collagen 28 Ống x 25ml\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Uống Elasten Thủy Phân 28 Ống x 25ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-8.jpg\" title=\"Mua Ngay Nước Uống Elasten Thủy Phân 28 Ống x 25ml\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Uống Elasten 28 Ống x 25ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-7.jpg\" title=\"Mua Nước Uống Elasten 28 Ống x 25ml Tại Hasaki\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Uống 28 Ống x 25ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-4.jpg\" title=\"Nước Uống Elasten 28 Ống x 25ml Mua Tại Hasaki\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Uống Collagen Thủy Phân Elasten 28 Ống x 25ml\" src=\"https://media.hcdn.vn/wysiwyg/kimhuy/nuoc-uong-collagen-elasten-cang-min-ngua-lao-hoa-28-ongx25ml-5.jpg\" title=\"Mua Nước Uống Collagen Thủy Phân Elasten 28 Ống x 25ml\" />&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\">Bảo quản:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Th&ocirc;ng số sản phẩm:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i:</strong>&nbsp;hộp 28 ống</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Thương hiệu</strong>: Elasten</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\"><strong>Xuất xứ thương hiệu:</strong>&nbsp;Đức</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>*Lưu &yacute;: T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-20 00:12:28', 50, NULL, NULL, 0, NULL, NULL),
(47, 'Viên Uống Costar Dầu Cá 1000mg Omega 3 365 Viên Omega 3', 'vien-uong-costar-dau-ca-1000mg-omega-3-365-vien-omega-3', 459000, 0, 9, 1, 0, 10, NULL, '2024-11-20__tai-xuong-26.jpg', 0, 0, 1, 0, NULL, '<p><strong>Vi&ecirc;n Uống Costar Dầu C&aacute; 1000mg Omega 3&nbsp;</strong>l&agrave; thực phẩm bảo vệ&nbsp;<a href=\"https://hasaki.vn/danh-muc/suc-khoe-c1997.html\" target=\"_blank\">sức khoẻ</a>&nbsp;đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/costar.html\" target=\"_blank\">thương hiệu Costar</a>&nbsp;của &Uacute;c,&nbsp;được chiết xuất từ c&aacute;c loại c&aacute; v&ugrave;ng biển s&acirc;u v&agrave; lạnh (c&aacute; kiếm, c&aacute; hồi, c&aacute; tr&iacute;ch, c&aacute; m&ograve;i... ) c&oacute; chứa nhiều axit b&eacute;o kh&ocirc;ng no Omega 3, EPA, DHA hỗ trợ cải thiện c&aacute;c vấn đề về sức khỏe, bồ bổi tr&iacute; n&atilde;o, ngăn ngừa c&aacute;c bệnh li&ecirc;n quan đến tim mạch v&agrave; nhiều bệnh nguy hiểm kh&aacute;c.</p>\r\n\r\n<p>Hiện sản phẩm&nbsp;<strong>Vi&ecirc;n Uống Costar Dầu C&aacute; 1000mg Omega 3&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với 2 quy c&aacute;ch đ&oacute;ng g&oacute;i:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>100 Vi&ecirc;n&nbsp;</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>365 Vi&ecirc;n</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"Viên Uống Costar Dầu Cá 1000mg Omega 3 \" src=\"https://media.hcdn.vn/wysiwyg/Chau/vien-uong-costar-dau-ca-1000mg-omega-3-1.jpg\" style=\"width:800px\" title=\"Viên Uống Costar Dầu Cá 1000mg Omega 3 100 Viên\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Đối tượng sử dụng:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>D&ugrave;ng cho người trưởng th&agrave;nh c&oacute; nhu cầu giảm mỡ m&aacute;u v&agrave; cần cải thiện sức khỏe tim mạch v&agrave; mắt.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Ưu thế nổi bật:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bổ sung Omega 3, EPA v&agrave; DHA, hỗ trợ sức khỏe tim mạch, tốt cho mắt.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<ul>\r\n		<li>\r\n		<p>H&agrave;m lượng EPA (EicosaPentaenoic Acid) 180mg&nbsp;gi&uacute;p tạo ra Prostagladin trong m&aacute;u c&oacute; t&aacute;c dụng ức chế sự đ&ocirc;ng v&oacute;n tiểu cầu, giảm v&agrave; ph&ograve;ng ngừa h&igrave;nh th&agrave;nh huyết khối, đồng thời c&oacute; thể giảm bớt lượng cholesterol, giảm bớt triglyceride trong m&aacute;u l&agrave;m giảm độ nhớt d&iacute;nh của m&aacute;u, giữ cho tuần ho&agrave;n được th&ocirc;ng tho&aacute;ng.</p>\r\n		</li>\r\n		<li>\r\n		<p>H&agrave;m lượng DHA (DocosaHexaenoic Acid) 120mg&nbsp;chiếm tỉ lệ rất cao trong chất x&aacute;m (tạo ra sự th&ocirc;ng minh) của n&atilde;o v&agrave; trong v&otilde;ng mạc (tổng chỉ huy sự nh&igrave;n của mắt). DHA tạo ra độ nhạy của c&aacute;c nơ-ron thần kinh, gi&uacute;p dẫn truyền th&ocirc;ng tin nhanh v&agrave; ch&iacute;nh x&aacute;c.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Viên Uống Costar Dầu Cá 1000mg Omega 3 100 Viên\" src=\"https://media.hcdn.vn/wysiwyg/Chau/vien-uong-costar-dau-ca-1000mg-omega-3-2.jpg\" style=\"width:800px\" title=\"Viên Uống Costar Dầu Cá 1000mg Omega 3 \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Định lượng:</strong>&nbsp;1394mg/ vi&ecirc;n nang mềm (&plusmn;7.5%) x 100; 365 Vi&ecirc;n/ Lọ&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;&Uacute;c&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nh&agrave; sản xuất:&nbsp;</strong>Costar Pharma Laboratory Pty ltd (Unit 1/171 Woodpark Rd, Smithfield NSW 2164, Australia)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nhập khẩu:</strong>&nbsp;C&ocirc;ng Ty TNHH DV Hạnh Ph&uacute;c (35 Trần Kế Xương, P.7, Q. Ph&uacute; Nhuận, TP.HCM)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Số GTNĐKBCBSP:</strong>&nbsp;6351/2021/ĐKSP k&yacute; ng&agrave;y 12/07/2021</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hạn sử dụng:</strong>&nbsp;36 th&aacute;ng kể từ ng&agrave;y sản xuất.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><em>(Thực phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc, kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh)</em></p>\r\n\r\n<p>*Lưu &yacute;: T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-20 00:14:12', 50, NULL, NULL, 0, NULL, NULL),
(48, 'Nước Uống Làm Đẹp Adiva Collagen Gold 14 Chai/Hộp', 'nuoc-uong-lam-dep-adiva-collagen-gold-14-chaihop', 600000, 0, 9, 1, 0, 15, NULL, '2024-11-20__tai-xuong-30.jpg', 4, 0, 1, 2, NULL, '<p><strong>Nước Uống L&agrave;m Đẹp Adiva Collagen</strong>&nbsp;l&agrave; sản phẩm nước uống&nbsp;<a href=\"https://hasaki.vn/danh-muc/lam-dep-c1995.html\" target=\"_blank\">l&agrave;m đẹp</a>&nbsp;da&nbsp;đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/adiva.html\" target=\"_blank\">thương hiệu Adiva</a><strong>&nbsp;</strong>của Việt Nam, với th&agrave;nh phần&nbsp;Bioactive Collagen Peptide chuy&ecirc;n s&acirc;u cho da dẫn đầu thế giới&nbsp;gi&uacute;p phục hồi tổn thương da từ s&acirc;u b&ecirc;n trong đem đến hiệu quả r&otilde; rệt v&agrave; l&acirc;u d&agrave;i, đem lại l&agrave;n da s&aacute;ng mịn, tr&agrave;n đầy sức sống. Th&agrave;nh phần Bioactive&nbsp;Collagen Peptide được kiểm nghiệm l&acirc;m s&agrave;ng v&agrave; nhập khẩu từ Đức, sản xuất với c&ocirc;ng nghệ ti&ecirc;n tiến v&agrave; tuyệt đối kh&ocirc;ng sử dụng chất bảo quản, đảm bảo theo ti&ecirc;u chuẩn của Bộ Y Tế. 94% phụ nữ đ&atilde; sử dụng &ldquo;Nước uống l&agrave;m đẹp ADIVA&rdquo; c&ocirc;ng nhận l&agrave;n da ẩm mịn, mềm mượt chỉ sau 28 ng&agrave;y trải nghiệm!</p>\r\n\r\n<p>Hiện sản phẩm&nbsp;<strong>Vi&ecirc;n Uống S&aacute;ng Da Adiva White 60 Vi&ecirc;n</strong><strong>&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với 2 loại v&agrave; 3 quy c&aacute;ch đ&oacute;ng g&oacute;i:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Collagen: Hộp 8 chai;&nbsp;<strong>Hộp 14 chai; Combo 2 Hộp (14 chai/ hộp)</strong></strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Collagen Gold:&nbsp;<strong>Hộp 14 chai; Combo 2 Hộp (14 chai/ hộp)</strong></strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"Nước Uống Làm Đẹp Adiva Collagen\" src=\"https://media.hcdn.vn/wysiwyg/Chau/nuoc-uong-lam-dep-adiva-collagen-1.jpg\" style=\"width:800px\" title=\"Mua Nước Uống Làm Đẹp Adiva Collagen tại Hasaki\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>1. Nước Uống L&agrave;m Đẹp Adiva Collagen</h2>\r\n\r\n<p><strong>Nước Uống L&agrave;m Đẹp Adiva Collagen</strong>&nbsp;tự h&agrave;o với 100% Bioactive Collagen Peptide của Đức - Collagen thuỷ ph&acirc;n si&ecirc;u hấp thu hoạt t&iacute;nh sinh học mới nhất thế giới, chuy&ecirc;n cho l&agrave;m đẹp da c&ugrave;ng c&ocirc;ng thức l&agrave;m đẹp đa chiều độc quyền &quot;Advanced Beauty Formula&quot; với nhiều dưỡng chất qu&yacute; vượt trội hơn hẳn, gi&uacute;p tối ưu sắc đẹp cho da, cho l&agrave;n da s&aacute;ng khỏe, căng mịn đầy sức sống v&agrave; đẹp chuẩn thần th&aacute;i rạng ngời từ s&acirc;u b&ecirc;n trong.&nbsp;Sản phẩm tự h&agrave;o với 10 năm uy t&iacute;n tiếng vang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Uống Làm Đẹp Adiva Collagen 30ml\" src=\"https://media.hcdn.vn/wysiwyg/Chau/nuoc-uong-lam-dep-adiva-collagen-3.jpg\" style=\"width:800px\" title=\"Mua Nước Uống Làm Đẹp Adiva Collagen 30ml tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Giải ph&aacute;p cho t&igrave;nh trạng:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da kh&ocirc; sạm, sần s&ugrave;i,&nbsp;<a href=\"https://hasaki.vn/danh-muc/thieu-am-thieu-nuoc-c1883.html\" target=\"_blank\">thiếu ẩm, thiếu nước</a>.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Da thiếu độ đ&agrave;n hồi, săn chắc.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Da xuất hiện&nbsp;<a href=\"https://hasaki.vn/danh-muc/lao-hoa-nep-nhan-c1881.html\" target=\"_blank\">nếp nhăn, l&atilde;o ho&aacute;</a>.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Muốn giảm t&igrave;nh trạng vi&ecirc;m khớp v&agrave; c&aacute;c khớp xương linh hoạt hơn.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Ưu thế nổi bật:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>100% Bioactive Collagen Peptide</strong>&nbsp;được kiểm nghiệm l&acirc;m s&agrave;ng v&agrave; chứng minh hiệu quả hấp thụ ở tại Đức gi&uacute;p da căng mịn, tươi s&aacute;ng từ s&acirc;u b&ecirc;n trong, đẩy l&ugrave;i c&aacute;c dấu hiệu tuổi t&aacute;c.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Coenzyme Q10</strong>&nbsp;tăng khả năng chống oxy ho&aacute;, ngăn ngừa v&agrave; l&agrave;m giảm c&aacute;c nếp nhăn v&agrave; c&aacute;c dấu hiệu l&atilde;o ho&aacute;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hyaluronic&nbsp;Acid</strong>&nbsp;c&oacute; c&ocirc;ng dụng giữ ẩm, giữ nước cho da, cải thiện t&igrave;nh trạng kh&ocirc; sạm, sần s&ugrave;i.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&aacute;c loại Vitamin D3, C, B3, Vitamin B6, Vitamin B12</strong>&nbsp;gi&uacute;p chăm s&oacute;c v&agrave; bổ sung c&aacute;c dưỡng chất to&agrave;n diện cho da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Độ hiệu quả:</strong></h3>\r\n\r\n<p>Sự kh&aacute;c biệt r&otilde; rệt sau 4 tuần sử dụng:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Mềm mịn, độ ẩm chỉ sau 7 ng&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mềm mịn, độ ẩm, hỗ trợ s&aacute;ng da&nbsp;chỉ sau&nbsp;14 ng&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mềm mịn, độ ẩm, hỗ trợ s&aacute;ng da, săn chắc&nbsp;chỉ sau&nbsp;21 ng&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mềm mịn, độ ẩm,&nbsp;hỗ trợ s&aacute;ng da, săn chắc, giảm t&agrave;n nhang, giảm nếp nhăn chỉ sau&nbsp;28 ng&agrave;y.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>2.&nbsp;Nước Uống L&agrave;m Đẹp Adiva Collagen&nbsp;Gold</h2>\r\n\r\n<p><strong>Nước Uống L&agrave;m Đẹp Adiva Collagen</strong>&nbsp;<strong>Gold</strong>&nbsp;với 100% Bioactive Collagen Peptide của Đức - Collagen thuỷ ph&acirc;n si&ecirc;u hấp thu hoạt t&iacute;nh sinh học mới nhất thế giới, chuy&ecirc;n cho l&agrave;m đẹp da c&ugrave;ng c&ocirc;ng thức l&agrave;m đẹp đa chiều độc quyền &quot;Advanced Beauty Formula&quot; với&nbsp;&nbsp;13 dưỡng chất qu&yacute; vượt trội hơn hẳn, gi&uacute;p tối ưu sắc đẹp cho da, cho l&agrave;n da s&aacute;ng khỏe, căng mịn đầy sức sống v&agrave; đẹp chuẩn thần th&aacute;i rạng ngời từ s&acirc;u b&ecirc;n trong.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nước Uống Làm Đẹp Adiva Collagen Gold\" src=\"https://media.hcdn.vn/wysiwyg/Chau/nuoc-uong-lam-dep-adiva-collagen-2.jpg\" style=\"width:800px\" title=\"Mua Nước Uống Làm Đẹp Adiva Collagen Gold 30ml tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Giải ph&aacute;p cho t&igrave;nh trạng:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Muốn giảm kh&ocirc; sạm,&nbsp;&nbsp;hỗ trợ s&aacute;ng da mịn.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Muốn&nbsp;cải thiện nếp nhăn, ngăn ngừa chảy xệ.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Muốn&nbsp;da khỏe mạnh từ b&ecirc;n trong.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Muốn giảm stress, cải thiện t&igrave;nh trạng kh&oacute; ngủ, hỗ trợ cơ thể dễ ngủ một c&aacute;ch tự nhi&ecirc;n.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Muốn c&oacute; giấc ngủ s&acirc;u, ngủ ngon.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Muốn hỗ trợ tăng cường tr&iacute; nhớ, t&aacute;i tạo năng lượng.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Muốn ngừa l&atilde;o ho&aacute; chuy&ecirc;n s&acirc;u, hỗ trợ chống oxy h&oacute;a đa chiều.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Muốn hỗ trợ đẩy l&ugrave;i một số bệnh li&ecirc;n quan đến tuổi t&aacute;c v&agrave; tăng cường năng lượng cho cơ thể.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Ưu thế nổi bật:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Bộ 3 dưỡng chất L-Theanin, hồng s&acirc;m, Gaba</strong>&nbsp;hỗ trợ bạn c&oacute; giấc ngủ tự nhi&ecirc;n, ngủ ngon v&agrave; s&acirc;u gi&uacute;p cơ thể t&aacute;i tạo năng lượng ở tầng s&acirc;u nhất của tế b&agrave;o.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Bộ 10 dưỡng chất độc đ&aacute;o: Coenzyme Q10, Ceramide, Biotin, vitamin C, D3, B3, B6, B12 v&agrave; Magnesium Lactate, kẽm Citrade</strong>&nbsp;hỗ trợ l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a, bảo vệ da giảm tổn thương bởi nắng, tia UV, hỗ trợ cơ chế nội sinh tổng hợp collagen, gi&uacute;p phục hồi tổn thương da đa chiều từ s&acirc;u b&ecirc;n trong.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Bioactive Collagen Peptide:</strong></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Thế hệ collagen ti&ecirc;n tiến nhất thế giới chuy&ecirc;n cho da đến 2022. Đạt 6 kiểm chứng l&acirc;m s&agrave;ng tại Đức. Được Cục quản l&yacute; Thực phẩm v&agrave; Dược phẩm Hoa Kỳ FDA chứng nhận đạt chuẩn an to&agrave;n chung.</p>\r\n		</li>\r\n		<li>\r\n		<p>Được kiểm nghiệm l&acirc;m s&agrave;ng hiệu quả tối ưu cho da, tốt hơn Collagen Peptide, Marine Collagen Pepdite hay Hydrolysed Collagen.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Độ hiệu quả:</strong></h3>\r\n\r\n<p>Sự kh&aacute;c biệt r&otilde; rệt sau 28 ng&agrave;y sử dụng:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da mềm mịn, ẩm mượt hơn chỉ sau 7 ng&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hỗ trợ s&aacute;ng da, săn chắc, mềm mịn hơn&nbsp;14 ng&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Hỗ trợ s&aacute;ng da&nbsp;đẹp, mềm mịn, ẩm mượt, săn chắc, giảm nhăn, mờ th&acirc;m&nbsp;chỉ sau&nbsp;28 ng&agrave;y.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Độ an to&agrave;n:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kh&ocirc;ng m&agrave;u, kh&ocirc;ng chất bảo quả, kh&ocirc;ng caffein, kh&ocirc;ng chất b&eacute;o.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Bảo quản:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Th&ocirc;ng số sản phẩm:</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Dung t&iacute;ch:&nbsp;</strong>1 Hộp (8 chai/ hộp; 14 chai/ hộp); Combo 2 Hộp (14 chai/ hộp)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:&nbsp;</strong>Adiva&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>Việt Nam</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất tại:&nbsp;</strong>Nguy&ecirc;n liệu nhập khẩu 100% từ&nbsp;Đức</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Đ&oacute;ng g&oacute;i tại:&nbsp;</strong>Việt Nam</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hạn sử dụng:</strong>&nbsp;18 th&aacute;ng kể từ ng&agrave;y sản xuất.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>*Lưu &yacute;: T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-20 00:15:49', 49, NULL, NULL, 0, '2024-11-22 02:22:17', NULL),
(49, 'Combo 2 Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng Premium Cotton Pads', 'combo-2-bong-tay-trang-hotosu-cao-cap-150-mieng-premium-cotton-pads', 79000, 0, 5, 1, 0, 5, NULL, '2024-11-21__tai-xuong-1.jpg', 0, 1, 1, 0, NULL, '<p><strong>B&ocirc;ng Tẩy Trang Hotosu Cao Cấp 150 Miếng&nbsp;</strong>l&agrave; sản phẩm b&ocirc;ng tẩy trang đến từ thương hiệu&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/hotosu.html\" target=\"_blank\"><strong>Hotosu</strong></a>&nbsp;của Việt Nam, được sản xuất theo c&ocirc;ng nghệ Ch&acirc;u &Acirc;u. B&ocirc;ng c&oacute;&nbsp;thiết kế viền &eacute;p chắc chắn v&agrave; dập nổi bề mặt, từ đ&oacute; gi&uacute;p tẩy trang dễ d&agrave;ng gấp 3 lần.&nbsp;Đặc biệt, thiết kế b&ocirc;ng mỏng v&agrave; chắc chắn gi&uacute;p tiết kiệm 50% dung dịch sản phẩm. G&oacute;i 150 miếng gi&aacute; tốt hơn cho thời gian sử dụng l&acirc;u hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"Phiên bản mới - Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen2/bong-tay-trang-hotosu-cao-cap-150-mieng-1.jpg\" style=\"width:800px\" title=\"Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://hasaki.vn/danh-muc/khan-bong-tay-trang-c47.html\" target=\"_blank\">B&ocirc;ng tẩy trang</a>&nbsp;Hotosu</strong>&nbsp;được l&agrave;m từ th&agrave;nh phần 100% b&ocirc;ng thi&ecirc;n nhi&ecirc;n - cotton Ch&acirc;u &Acirc;u, mềm mịn v&agrave; an to&agrave;n với l&agrave;n da, kh&ocirc;ng g&acirc;y xơ b&ocirc;ng, kh&ocirc;ng l&agrave;m đau r&aacute;t da. Ngo&agrave;i ra, b&ocirc;ng c&oacute; khả năng thấm h&uacute;t cao, gi&uacute;p tiết kiệm tối đa dung dịch dưỡng da. Sản phẩm&nbsp;ph&ugrave; hợp cho nhiều mục đ&iacute;ch sử dụng như l&agrave;m sạch, chăm s&oacute;c da h&agrave;ng ng&agrave;y, l&agrave; trợ thủ đắc lực cho l&agrave;n da thường xuy&ecirc;n makeup.&nbsp;</p>\r\n\r\n<p>Hiện sản phẩm&nbsp;<strong>B&ocirc;ng Tẩy Trang Hotosu Cao Cấp 150 Miếng</strong><strong>&nbsp;</strong>đ&atilde; ch&iacute;nh thức c&oacute; mặt tại<strong>&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;</strong>với c&aacute;c ph&acirc;n loại như sau:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>1 T&uacute;i B&ocirc;ng Tẩy Trang Hotosu Cao Cấp 150 Miếng</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 2 T&uacute;i&nbsp;<strong>B&ocirc;ng Tẩy Trang Hotosu Cao Cấp 150 Miếngx2</strong></strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 5 T&uacute;i&nbsp;<strong>B&ocirc;ng Tẩy Trang Hotosu Cao Cấp 150 Miếngx5</strong></strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Th&ugrave;ng 30&nbsp;<strong>T&uacute;i&nbsp;<strong>B&ocirc;ng Tẩy Trang Hotosu Cao Cấp</strong></strong>&nbsp;150 miếngx30</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><em><strong><strong>Sản xuất theo c&ocirc;ng nghệ Ch&acirc;u &Acirc;u:&nbsp;</strong></strong></em></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>L&agrave;m từ chất liệu&nbsp;100% cotton&nbsp;Ch&acirc;u &Acirc;u&nbsp;kh&ocirc;ng xơ b&ocirc;ng, mềm mịn, an to&agrave;n với l&agrave;n da.</p>\r\n		</li>\r\n		<li>\r\n		<p>Thiết kế 2 mặt: 1 mặt dập nổi th&ocirc;ng minh gi&uacute;p l&agrave;m sạch lớp trang điểm, 1 mặt mềm mại gi&uacute;p thấm toner l&agrave;m sạch lại nhẹ nh&agrave;ng tr&ecirc;n da.&nbsp;</p>\r\n		</li>\r\n		<li>\r\n		<p>Thiết kế dập viền chắc chắn gi&uacute;p b&ocirc;ng tẩy trang kh&ocirc;ng bị xơ khi sử dụng,&nbsp;hạn chế t&igrave;nh trạng biến dạng b&ocirc;ng.&nbsp;&nbsp;</p>\r\n		</li>\r\n		<li>\r\n		<p>Tẩy trang sạch gấp 3 lần l&agrave;m&nbsp;sạch da nhanh ch&oacute;ng, hiệu quả m&agrave; kh&ocirc;ng g&acirc;y tổn thương da.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng đạt chuẩn châu Âu\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen2/bong-tay-trang-hotosu-cao-cap-150-mieng-2.jpg\" style=\"width:800px\" title=\"Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng làm từ 100% cotton tự nhiên\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><em><strong>Tiết kiệm:</strong></em></p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>B&ocirc;ng thiết kế mỏng vừa phải, chắc chắn&nbsp;gi&uacute;p tiết kiệm 50% dung dịch tẩy trang/ dưỡng da.</p>\r\n		</li>\r\n		<li>\r\n		<p>Quy c&aacute;ch đ&oacute;ng g&oacute;i&nbsp;<strong>150 miếng</strong>, gi&aacute; tốt hơn cho thời gian sử dụng l&acirc;u hơn.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Hotosu Cao Cấp với quy cách đóng gói túi 150 miếng siêu tiết kiệm\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen3/bong-tay-trang-hotosu-cao-cap-150-mieng-6.jpg\" style=\"height:800px; width:800px\" title=\"Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng siêu tiết kiệm\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thiết kế d&acirc;y r&uacute;t gi&uacute;p bảo quản b&ocirc;ng tẩy trang tốt hơn, tr&aacute;nh bụi bẩn v&agrave; vi khuẩn từ b&ecirc;n ngo&agrave;i x&acirc;m nhập.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng có thiết kế dạng túi rút tiện lợi, dễ dàng mang theo\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen2/bong-tay-trang-hotosu-cao-cap-150-mieng-3.jpg\" style=\"width:800px\" title=\"Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng có thiết kế dạng túi rút tiện lợi\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Ngo&agrave;i ra, sản phẩm c&oacute; thể sử dụng cho nhiều mục đ&iacute;ch kh&aacute;c như: thấm kh&ocirc; nước sau khi rửa mặt, thoa nước hoa hồng, đắp Lotion Mask,...&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng đa công dụng làm sạch và chăm sóc da.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen2/bong-tay-trang-hotosu-cao-cap-150-mieng-5.jpg\" style=\"height:800px; width:800px\" title=\"Bông Tẩy Trang Hotosu Cao Cấp 150 Miếng đa công dụng\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh bụi v&agrave; &aacute;nh nắng trực tiếp.</li>\r\n</ul>\r\n\r\n<h2>Lưu &yacute;:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Để xa tầm tay trẻ em.</p>\r\n	</li>\r\n	<li>\r\n	<p>Ngưng sử dụng nếu xảy ra t&igrave;nh trạng k&iacute;ch ứng da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i:&nbsp;</strong>1<strong>&nbsp;</strong>T&uacute;i / Combo 2 T&uacute;i /&nbsp;Combo 5 T&uacute;i&nbsp;(150 Miếng/T&uacute;i) / Th&ugrave;ng 30 T&uacute;i (150 Miếng/T&uacute;i)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;Hotosu</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Việt Nam</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nước sản xuất:</strong>&nbsp;Việt Nam.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/7otKksyeGYg\" width=\"425\"></iframe></p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-20 23:27:46', 50, NULL, NULL, 0, '2024-11-20 23:32:47', NULL),
(50, 'Bông Tẩy Trang Mihoo Kokimi Bông Vuông Túi 240 Miếng Cotton Pads Jumpo Size 200+40', 'bong-tay-trang-mihoo-kokimi-bong-vuong-tui-240-mieng-cotton-pads-jumpo-size-20040', 49000, 0, 5, 1, 0, 5, NULL, '2024-11-21__tai-xuong-8.jpg', 0, 0, 1, 0, NULL, '<p><strong>B&ocirc;ng Tẩy Trang Mihoo Kokimi Cotton Pads&nbsp;</strong>l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/khan-bong-tay-trang-c47.html\" target=\"_blank\">b&ocirc;ng tẩy trang</a>&nbsp;đến từ thương hiệu&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/mihoo.html\" target=\"_blank\">Mihoo</a>&nbsp;của H&agrave;n Quốc.&nbsp;Sản phẩm c&oacute; h&igrave;nh dạng tr&ograve;n v&agrave; vu&ocirc;ng, được l&agrave;m từ 100% cotton tự nhi&ecirc;n, mềm mịn v&agrave; dai, kh&ocirc;ng g&acirc;y k&iacute;ch ứng đối với l&agrave;n da nhạy cảm. B&ocirc;ng tẩy trang Mihoo Kokimi th&iacute;ch hợp để l&agrave;m sạch lớp trang điểm, bụi bẩn v&agrave; b&atilde; nhờn dư thừa tr&ecirc;n bề mặt da, hoặc d&ugrave;ng để thấm kh&ocirc; da thay cho khăn mặt hiệu quả m&agrave; kh&ocirc;ng l&agrave;m đau r&aacute;t da khi sử dụng.</p>\r\n\r\n<p><strong>B&ocirc;ng Tẩy Trang Mihoo Kokimi Cotton Pads&nbsp;</strong>hiện đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\"><strong>Hasaki</strong></a>&nbsp;với 2 ph&acirc;n loại:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>B&ocirc;ng tr&ograve;n: t&uacute;i 155 miếng / t&uacute;i 210 miếng</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Mihoo Kokimi Cotton Pads 155 miếng\" src=\"https://media.hcdn.vn/wysiwyg/Chau/bong-tay-trang-mihoo-kokimi-bong-tron-1.jpg\" style=\"width:800px\" title=\"Mua Bông Tẩy Trang Mihoo Kokimi Cotton Pads 155 miếng tại Hasaki \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Mua Bông Tẩy Trang Mihoo Kokimi Cotton Pads 210 miếng tại Hasaki \" src=\"https://media.hcdn.vn/wysiwyg/Chau/bong-tay-trang-mihoo-kokimi-bong-tron-2.jpg\" style=\"width:800px\" title=\"Bông Tẩy Trang Mihoo Kokimi Cotton Pads 210 miếng\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>B&ocirc;ng vu&ocirc;ng: t&uacute;i 240 miếng</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Mua Bông Tẩy Trang Mihoo Kokimi Cotton Pads 240 Miếng tại Hasaki \" src=\"https://media.hcdn.vn/wysiwyg/Chau/bong-tay-trang-mihoo-kokimi-bong-tron-3.jpg\" style=\"width:800px\" title=\"Bông Tẩy Trang Mihoo Kokimi Cotton Pads 240 Miếng\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\">Loại da ph&ugrave; hợp:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Th&iacute;ch hợp mọi loại da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Giải ph&aacute;p cho t&igrave;nh trạng da:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Thường xuy&ecirc;n tẩy trang lớp trang điểm, kem chống nắng.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Thường xuy&ecirc;n sử dụng nước hoa hồng chăm s&oacute;c da.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">B&ocirc;ng tr&ograve;n được thiết kế với:&nbsp;</p>\r\n\r\n	<ul>\r\n		<li dir=\"ltr\">\r\n		<p>Mặt trước được dập nổi, gi&uacute;p tăng hiệu quả l&agrave;m sạch da gấp 5 lần sản phẩm th&ocirc;ng thường.</p>\r\n		</li>\r\n		<li dir=\"ltr\">\r\n		<p>Mặt sau được dập phẳng, ph&ugrave; hợp sử dụng với toner dưỡng da.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Th&agrave;nh phần 100% cotton, kh&ocirc;ng m&ugrave;i th&iacute;ch hợp với nhiều l&agrave;n da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sợi b&ocirc;ng mềm mịn thấm h&uacute;t tốt dung dịch, nhẹ nh&agrave;ng l&agrave;m sạch da v&agrave; kh&ocirc;ng để lại xơ b&ocirc;ng b&aacute;m tr&ecirc;n mặt.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Viền b&ocirc;ng tr&ograve;n v&agrave; vu&ocirc;ng được &eacute;p chặt, kh&ocirc;ng bị t&aacute;ch, sử dụng được cả hai mặt.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Độ an to&agrave;n:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sản phẩm kh&ocirc;ng c&oacute; chứa chất huỳnh quang v&agrave; chất thơm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir=\"ltr\">Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>\r\n\r\n<p><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i:</strong>&nbsp;T&uacute;i 155 miếng / t&uacute;i 210 miếng / t&uacute;i 240 miếng</p>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Mihoo Kokimi</p>\r\n\r\n<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;H&agrave;n Quốc</p>\r\n\r\n<p><strong>Sản xuất tại:</strong>&nbsp;Việt Nam</p>\r\n\r\n<p>*Lưu &yacute;: T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-20 23:32:39', 50, NULL, NULL, 0, NULL, NULL);
INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(51, 'Combo 3 Hộp Bông Tẩy Trang Silcot Cơ Bản 82 Miếng Silcot Velvety Touch Cotton', 'combo-3-hop-bong-tay-trang-silcot-co-ban-82-mieng-silcot-velvety-touch-cotton', 119000, 0, 5, 1, 0, 10, NULL, '2024-11-21__tai-xuong-13.jpg', 5, 0, 1, 5, NULL, '<p><strong><strong>B&ocirc;ng Tẩy Trang&nbsp;</strong>Silcot Cơ Bản</strong>&nbsp;l&agrave; d&ograve;ng sản phẩm b&ocirc;ng tẩy trang&nbsp;chăm s&oacute;c da h&agrave;ng ng&agrave;y&nbsp;đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/silcot.html\" target=\"_blank\">Silcot</a>&nbsp;-&nbsp;thương hiệu&nbsp;b&ocirc;ng tẩy trang&nbsp;b&aacute;n chạy h&agrave;ng đầu tại Nhật Bản hơn 10 năm liền, được&nbsp;sản xuất bởi&nbsp;Unicharm Nhật Bản.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Silcot Cơ Bản Phiên Bản Mới\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen2/bong-tay-trang-silcot-co-ban-1.jpg\" style=\"width:800px\" title=\"Bông Tẩy Trang Silcot Cơ Bản\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sản phẩm được l&agrave;m từ 100% sợi b&ocirc;ng tự nhi&ecirc;n, mềm xốp, &ecirc;m &aacute;i v&agrave; v&ocirc; c&ugrave;ng dịu nhẹ với da. Sợi b&ocirc;ng thấm được d&agrave;n đều c&ugrave;ng thiết kế dạng t&uacute;i th&ocirc;ng minh, ho&agrave;n to&agrave;n kh&ocirc;ng để lại xơ b&ocirc;ng tr&ecirc;n da, đồng thời gi&uacute;p tiết kiệm nước dưỡng da tối ưu nhờ kết cấu sợi b&ocirc;ng đặc biệt, gi&uacute;p bạn c&oacute; được lớp trang điểm tự nhi&ecirc;n hơn, hoặc tẩy trang dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng hơn.&nbsp;<strong><a href=\"https://hasaki.vn/danh-muc/khan-bong-tay-trang-c47.html\" target=\"_blank\">B&ocirc;ng tẩy trang</a>&nbsp;cơ bản Silcot</strong>&nbsp;th&iacute;ch hợp d&ugrave;ng trong quy tr&igrave;nh chăm s&oacute;c da h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Silcot Cơ Bản được làm từ 100% cotton tự nhiên mềm mại, an toàn cho làn da.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen2/bong-tay-trang-silcot-co-ban-2.jpg\" style=\"width:800px\" title=\"Bông Tẩy Trang Silcot Cơ Bản 100% cotton tự nhiên\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Silcot Cơ Bản không để lại xơ bông, không gây bít tắc lỗ chân lông.\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen2/bong-tay-trang-silcot-co-ban-3.jpg\" style=\"width:800px\" title=\"Bông Tẩy Trang Silcot Cơ Bản không để lại xơ bông\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hiện&nbsp;<strong>B&ocirc;ng Tẩy Trang Cơ Bản Silcot 82 Miếng/Hộp</strong>&nbsp;đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với c&aacute;c ph&acirc;n loại:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>1 hộp</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 2 hộp</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 3 hộp</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Đặc điểm nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>B&ocirc;ng Tẩy Trang Cơ Bản Silcot</strong>&nbsp;với thiết kế dạng t&uacute;i vu&ocirc;ng th&ocirc;ng minh c&ugrave;ng 3 đặc điểm nổi bật:</p>\r\n\r\n	<ul>\r\n		<li>\r\n		<p>Kh&ocirc;ng để lại bụi b&ocirc;ng, xơ b&ocirc;ng trong qu&aacute; tr&igrave;nh sử dụng. Hỗ trợ da sạch tuyệt đối trước c&aacute;c bước dưỡng.</p>\r\n		</li>\r\n		<li>\r\n		<p>Thấm h&uacute;t tốt, gi&uacute;p d&agrave;n đều v&agrave; tiết kiệm dung dịch dưỡng da.</p>\r\n		</li>\r\n		<li>\r\n		<p>Bề mặt b&ocirc;ng mềm mịn tuyệt đối với l&agrave;n da, gi&uacute;p bạn tẩy sạch nhẹ nh&agrave;ng.</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p>B&ocirc;ng tẩy trang Unicharm Silcot được sản xuất theo c&ocirc;ng nghệ ti&ecirc;n tiến, đ&aacute;p ứng những quy định nghi&ecirc;m ngặt nhất về chất lượng th&agrave;nh phẩm đầu v&agrave;o v&agrave; đầu ra, đảm bảo tuyệt đối an to&agrave;n cho l&agrave;n da người sử dụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sản phẩm được l&agrave;m từ sợi b&ocirc;ng dệt thế hệ mới, mềm mại, nhẹ nh&agrave;ng với l&agrave;n da, gi&uacute;p da khỏe đẹp tự nhi&ecirc;n.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đ&oacute;ng hộp tiện lợi, đẹp mắt với 82 miếng/hộp. Bạn c&oacute; thể dễ d&agrave;ng cất gọn v&agrave; bảo quản khi chưa sử dụng hết.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/bong-tay-trang-co-ban-silcot-82-mieng-2.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/bong-tay-trang-co-ban-silcot-82-mieng-3.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/bong-tay-trang-co-ban-silcot-82-mieng-4.jpg\" style=\"width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp hoặc gần lửa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy k&iacute;n nắp hộp sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;Silcot (thuộc Unicharm Nhật Bản)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nơi sản xuất:</strong>&nbsp;Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ng&agrave;y sản xuất:</strong>&nbsp;Xem tr&ecirc;n bao b&igrave;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hạn sử dụng:</strong>&nbsp;04 năm kể từ ng&agrave;y sản xuất.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Số&nbsp;lượng&nbsp;miếng:</strong>&nbsp;82 miếng/hộp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" src=\"https://www.youtube.com/embed/WzwhziTJX2U\" width=\"425\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 1, 5, 5, '2024-11-20 23:38:25', 48, NULL, NULL, 0, '2024-11-28 20:23:57', NULL),
(52, 'Combo 3 Hộp Bông Tẩy Trang Silcot Cao Cấp 66 Miếng Soft Touch Premium Cotton', 'combo-3-hop-bong-tay-trang-silcot-cao-cap-66-mieng-soft-touch-premium-cotton', 129000, 0, 5, 1, 0, 10, NULL, '2024-11-21__tai-xuong.jpg', 0, 0, 1, 0, NULL, '<p><strong>B&ocirc;ng Tẩy Trang&nbsp;Silcot&nbsp;Cao Cấp&nbsp;</strong>l&agrave; d&ograve;ng sản phẩm&nbsp;b&ocirc;ng tẩy trang&nbsp;cao cấp đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/silcot.html\" target=\"_blank\">Silcot</a>&nbsp;-&nbsp;thương hiệu&nbsp;b&ocirc;ng tẩy trang&nbsp;b&aacute;n chạy h&agrave;ng đầu tại Nhật Bản hơn 10 năm liền, được&nbsp;sản xuất bởi&nbsp;Unicharm Nhật Bản.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Silcot Cao Cấp Phiên Bản Mới\" src=\"https://media.hcdn.vn/wysiwyg/HaNguyen2/bong-tay-trang-silcot-cao-cap-1.jpg\" style=\"width:800px\" title=\"Bông Tẩy Trang Silcot Cao Cấp\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sản phẩm được l&agrave;m từ 100% sợi b&ocirc;ng tự nhi&ecirc;n, mềm xốp, &ecirc;m &aacute;i v&agrave; v&ocirc; c&ugrave;ng dịu nhẹ với da. Thiết kế dạng t&uacute;i bo g&oacute;c th&ocirc;ng minh,&nbsp;gi&uacute;p qu&aacute; tr&igrave;nh cấp ẩm cho da lu&ocirc;n &ecirc;m &aacute;i, ph&ugrave; hợp với l&agrave;n da nhạy cảm.&nbsp;<strong><strong>B&ocirc;ng Tẩy Trang Cao Cấp&nbsp;</strong>Silcot&nbsp;</strong>ho&agrave;n to&agrave;n kh&ocirc;ng để lại xơ b&ocirc;ng tr&ecirc;n da, đồng thời gi&uacute;p tiết kiệm nước dưỡng da tối ưu nhờ kết cấu sợi b&ocirc;ng đặc biệt, gi&uacute;p bạn c&oacute; được lớp trang điểm tự nhi&ecirc;n hơn, hoặc tẩy trang dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng hơn.&nbsp;<strong><strong>B&ocirc;ng Tẩy Trang&nbsp;</strong>Silcot Premium</strong>&nbsp;th&iacute;ch hợp d&ugrave;ng trong quy tr&igrave;nh chăm s&oacute;c da chuy&ecirc;n s&acirc;u với c&aacute;c loại nước dưỡng.</p>\r\n\r\n<p>Hiện&nbsp;<strong>B&ocirc;ng Tẩy Trang Silcot Premium Cao Cấp 66 Miếng/Hộp</strong>&nbsp;đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với c&aacute;c ph&acirc;n loại:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>1 hộp</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 2 hộp</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 3 hộp</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Đặc điểm nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nổi bật với thiết kế dạng t&uacute;i bo g&oacute;c th&ocirc;ng minh&nbsp;gi&uacute;p cho mọi tiếp x&uacute;c của b&ocirc;ng với da lu&ocirc;n thật nhẹ nh&agrave;ng, &ecirc;m &aacute;i.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mềm xốp, &ecirc;m &aacute;i v&agrave; dịu nhẹ với da nhờ 100% sợi b&ocirc;ng tự nhi&ecirc;n.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết cấu sợi b&ocirc;ng thấm d&agrave;n đều v&agrave; tiết kiệm dung dịch dưỡng da, gi&uacute;p chăm s&oacute;c da hiệu quả.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong><a href=\"https://hasaki.vn/danh-muc/khan-bong-tay-trang-c47.html\" target=\"_blank\">B&ocirc;ng tẩy trang</a>&nbsp;Unicharm Silcot</strong>&nbsp;được sản xuất theo c&ocirc;ng nghệ ti&ecirc;n tiến, đ&aacute;p ứng những quy định nghi&ecirc;m ngặt nhất về chất lượng th&agrave;nh phẩm đầu v&agrave;o v&agrave; đầu ra, đảm bảo tuyệt đối an to&agrave;n cho l&agrave;n da người sử dụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sản phẩm được l&agrave;m từ sợi b&ocirc;ng dệt thế hệ mới, mềm mại, nhẹ nh&agrave;ng với l&agrave;n da, gi&uacute;p da khỏe đẹp tự nhi&ecirc;n.</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đ&oacute;ng hộp tiện lợi, đẹp mắt với 66 miếng/hộp. Bạn c&oacute; thể dễ d&agrave;ng cất gọn v&agrave; bảo quản khi chưa sử dụng hết.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Cao Cấp Silcot Premium 66 Miếng hiện đã có mặt tại Hasaki\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/bong-tay-trang-cao-cap-silcot-66-mieng-2.jpg\" style=\"width:800px\" title=\"Mua Bông Tẩy Trang Cao Cấp Silcot Premium 66 Miếng tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>C&ocirc;ng dụng:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Gi&uacute;p tẩy trang v&agrave; l&agrave;m sạch mọi bụi bẩn tr&ecirc;n da</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhẹ nh&agrave;ng tẩy sạch to&agrave;n bộ l&agrave;n da kể cả v&ugrave;ng da nhạy cảm quanh mắt v&agrave; m&ocirc;i.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p lấy đi lớp trang điểm 1 c&aacute;ch dễ d&agrave;ng nhưng vẫn giữ lại độ ẩm cần thiết cho da m&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng hay tổn hại da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp hoặc gần lửa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy k&iacute;n nắp hộp sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;Silcot (thuộc Unicharm Nhật Bản)</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Nơi sản xuất:</strong>&nbsp;Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Ng&agrave;y sản xuất:</strong>&nbsp;Xem tr&ecirc;n bao b&igrave;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hạn sử dụng:</strong>&nbsp;04 năm kể từ ng&agrave;y sản xuất.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Số&nbsp;lượng&nbsp;miếng:</strong>&nbsp;66 miếng/hộp</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 0, 0, 0, '2024-11-20 23:41:00', 50, NULL, NULL, 0, NULL, NULL),
(53, 'Combo 3 Bông Tẩy Trang Ipek 150 Miếng Cotton Pads', 'combo-3-bong-tay-trang-ipek-150-mieng-cotton-pads', 99000, 0, 5, 1, 0, 5, NULL, '2024-11-21__tai-xuong-8.jpg', 5, 0, 1, 5, NULL, '<p><strong>B&ocirc;ng Tẩy Trang&nbsp;Ipek Klasik&nbsp;Cotton Pads</strong>&nbsp;l&agrave; sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/khan-bong-ty-trang-c47.html\" target=\"_blank\">b&ocirc;ng tẩy trang</a>&nbsp;hữu cơ thuộc&nbsp;thương hiệu b&ocirc;ng tẩy trang h&agrave;ng đầu Ch&acirc;u &Acirc;u&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/ipek-klasik.html\" target=\"_blank\">IPEK KLASIK</a>&nbsp;xuất xứ Thổ Nhĩ Kỳ. Được l&agrave;m từ&nbsp;<strong>100% b&ocirc;ng tự nhi&ecirc;n</strong>&nbsp;mềm mại với l&agrave;n da, Ipek Cotton Pads&nbsp;dễ d&agrave;ng sử dụng v&agrave;o nhiều mục đ&iacute;ch kh&aacute;c nhau như tẩy trang, lau mặt, thoa nước hoa hồng, lotion mask... gi&uacute;p n&agrave;ng vừa lấy sạch bụi bẩn vừa dưỡng da hiệu quả.</p>\r\n\r\n<p>Hiện&nbsp;<strong>B&ocirc;ng Tẩy Trang&nbsp;Ipek Klasik&nbsp;Cotton Pads</strong>&nbsp;đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với c&aacute;c ph&acirc;n loại cho bạn lựa chọn:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>1 g&oacute;i x 150 miếng</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 2 g&oacute;i x 150 miếng</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 3 g&oacute;i x 150 miếng</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Combo 4 g&oacute;i x 150 miếng</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Ipek Klasik hiện đã có mặt tại Hasaki\" src=\"https://media.hcdn.vn/wysiwyg/MinhTu/bong-tay-trang-ipek-8.png\" style=\"height:800px; width:800px\" title=\"Mua Bông Tẩy Trang Ipek Klasik tại Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Ưu điểm nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Thiết kế miếng b&ocirc;ng dạng tr&ograve;n với 2 mặt&nbsp;gi&uacute;p tận dụng tối đa sản phẩm.</p>\r\n	</li>\r\n	<li>\r\n	<p>Được l&agrave;m từ&nbsp;<strong>100% cotton thi&ecirc;n nhi&ecirc;n</strong>, an to&agrave;n v&agrave; mềm mại với l&agrave;n da, kh&ocirc;ng để lại xơ b&ocirc;ng tr&ecirc;n mặt sau khi sử dụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Khả năng thấm h&uacute;t tốt dung dịch, gi&uacute;p bạn dễ d&agrave;ng tẩy trang sạch lớp trang điểm như kem nền, phấn, son m&ocirc;i...</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p lau sạch lớp b&atilde; nhờn, bụi bẩn, tế b&agrave;o chết, gi&uacute;p l&agrave;m sạch lỗ ch&acirc;n l&ocirc;ng cho l&agrave;n da tho&aacute;ng mịn.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Ipek Klasik Cotton Pads 150 miếng\" src=\"https://media.hcdn.vn/wysiwyg/MinhTu/bong-tay-trang-ipek-4.png\" style=\"height:800px; width:800px\" title=\"Bông Tẩy Trang Ipek Klasik 150 miếng\" /></p>\r\n\r\n<p><img alt=\"Bông Tẩy Trang Ipek Klasik không để lại xơ bông\" src=\"https://media.hcdn.vn/wysiwyg/MinhTu/bong-tay-trang-ipek-3.png\" style=\"height:800px; width:800px\" title=\"Bông Tẩy Trang Ipek Klasik mềm mịn\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>* Lưu &yacute;: Hiện tại Hasaki đang b&aacute;n song song cả 2 mẫu.&nbsp;</strong></em></p>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n	</li>\r\n	<li>\r\n	<p>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i:&nbsp;</strong>150 miếng/g&oacute;i</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;Ipek Klasik</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ:</strong>&nbsp;Thổ Nhĩ Kỳ</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>', 1, 5, 5, '2024-11-20 23:46:21', 48, NULL, NULL, 0, '2024-11-28 20:43:00', NULL),
(54, 'ndhsns', 'ndhsns', 100000, 0, 1, 1, 0, 5, NULL, '2024-11-26__tai-xuong-6.jpg', 1, 0, 1, 0, NULL, '<p>dsfsfs</p>', 0, 0, 0, '2024-11-26 03:26:06', 10, NULL, NULL, 0, NULL, NULL),
(55, 'fsfsd', 'fsfsd', 200000, 0, 1, 1, 0, 5, NULL, '2024-11-26__tai-xuong-4.jpg', 1, 0, 1, 0, NULL, '<p>fdsfwf</p>', 0, 0, 0, '2024-11-26 03:42:27', 30, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(357, 14, 8),
(358, 14, 13),
(359, 14, 9),
(360, 14, 4),
(361, 13, 21),
(362, 13, 16),
(363, 13, 14),
(364, 13, 4),
(365, 12, 18),
(366, 12, 13),
(367, 12, 9),
(368, 12, 4),
(441, 2, 1),
(442, 2, 2),
(443, 2, 3),
(444, 2, 4),
(521, 22, 25),
(522, 22, 13),
(523, 22, 14),
(524, 22, 27),
(537, 20, 23),
(538, 20, 10),
(539, 20, 9),
(540, 20, 4),
(573, 1, 1),
(574, 1, 2),
(575, 1, 3),
(576, 1, 4),
(585, 7, 12),
(586, 7, 13),
(587, 7, 14),
(588, 7, 4),
(593, 6, 1),
(594, 6, 10),
(595, 6, 14),
(596, 6, 4),
(601, 5, 5),
(602, 5, 2),
(603, 5, 7),
(604, 5, 4),
(609, 8, 15),
(610, 8, 2),
(611, 8, 6),
(612, 8, 4),
(617, 4, 8),
(618, 4, 2),
(619, 4, 9),
(620, 4, 4),
(625, 3, 1),
(626, 3, 2),
(627, 3, 3),
(628, 3, 4),
(641, 11, 17),
(642, 11, 13),
(643, 11, 7),
(644, 11, 4),
(657, 10, 17),
(658, 10, 19),
(659, 10, 20),
(660, 10, 4),
(665, 9, 15),
(666, 9, 2),
(667, 9, 9),
(668, 9, 4),
(673, 28, 23),
(674, 28, 13),
(675, 28, 7),
(676, 28, 26),
(681, 21, 25),
(682, 21, 13),
(683, 21, 14),
(684, 21, 27),
(689, 27, 22),
(690, 27, 13),
(691, 27, 7),
(692, 27, 4),
(697, 26, 15),
(698, 26, 13),
(699, 26, 7),
(700, 26, 4),
(705, 25, 1),
(706, 25, 24),
(707, 25, 6),
(708, 25, 4),
(713, 24, 25),
(714, 24, 13),
(715, 24, 14),
(716, 24, 27),
(721, 23, 25),
(722, 23, 13),
(723, 23, 14),
(724, 23, 27),
(729, 18, 23),
(730, 18, 24),
(731, 18, 6),
(732, 18, 4),
(733, 19, 22),
(734, 19, 24),
(735, 19, 7),
(736, 19, 4),
(741, 17, 23),
(742, 17, 24),
(743, 17, 7),
(744, 17, 4),
(753, 16, 23),
(754, 16, 24),
(755, 16, 7),
(756, 16, 4),
(761, 15, 22),
(762, 15, 16),
(763, 15, 20),
(764, 15, 27),
(773, 29, 15),
(774, 29, 2),
(775, 29, 7),
(776, 29, 27),
(781, 30, 21),
(782, 30, 16),
(783, 30, 9),
(784, 30, 4),
(785, 31, 21),
(786, 31, 13),
(787, 31, 6),
(788, 31, 4),
(789, 32, 12),
(790, 32, 10),
(791, 32, 3),
(792, 32, 26),
(797, 33, 1),
(798, 33, 16),
(799, 33, 20),
(800, 33, 27),
(801, 34, 22),
(802, 34, 16),
(803, 34, 7),
(804, 34, 4),
(805, 35, 1),
(806, 35, 19),
(807, 35, 6),
(808, 35, 4),
(809, 36, 1),
(810, 36, 24),
(811, 36, 6),
(812, 36, 4),
(813, 37, 22),
(814, 37, 10),
(815, 37, 14),
(816, 37, 4),
(817, 38, 23),
(818, 38, 11),
(819, 38, 6),
(820, 38, 4),
(821, 39, 25),
(822, 39, 13),
(823, 39, 7),
(824, 39, 26),
(825, 40, 21),
(826, 40, 19),
(827, 40, 14),
(828, 40, 4),
(829, 41, 25),
(830, 41, 19),
(831, 41, 9),
(832, 41, 4),
(833, 42, 25),
(834, 42, 10),
(835, 42, 6),
(836, 42, 26),
(837, 43, 25),
(838, 43, 13),
(839, 43, 6),
(840, 43, 4),
(841, 44, 25),
(842, 44, 16),
(843, 44, 9),
(844, 44, 4),
(845, 45, 22),
(846, 45, 16),
(847, 45, 9),
(848, 45, 4),
(849, 46, 25),
(850, 46, 19),
(851, 46, 20),
(852, 46, 4),
(853, 47, 12),
(854, 47, 13),
(855, 47, 14),
(856, 47, 4),
(861, 49, 25),
(862, 49, 24),
(863, 49, 14),
(864, 49, 4),
(865, 50, 17),
(866, 50, 13),
(867, 50, 7),
(868, 50, 4),
(869, 51, 18),
(870, 51, 13),
(871, 51, 9),
(872, 51, 4),
(873, 52, 21),
(874, 52, 19),
(875, 52, 9),
(876, 52, 26),
(877, 53, 5),
(878, 53, 10),
(879, 53, 6),
(880, 53, 26),
(881, 48, 23),
(882, 48, 24),
(883, 48, 14),
(884, 48, 4),
(885, 54, 21),
(886, 54, 16),
(887, 54, 9),
(888, 54, 4),
(889, 55, 23),
(890, 55, 16),
(891, 55, 9),
(892, 55, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) DEFAULT NULL,
  `pi_slug` varchar(191) DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `pi_name`, `pi_slug`, `pi_product_id`, `created_at`, `updated_at`) VALUES
(61, 'promotions-auto-nuoc-uong-collagen-innerb-lam-dep-da-6-chai-x-50ml_qA67XXUSR2qneNVC.png', '2024-11-18__promotions-auto-nuoc-uong-collagen-innerb-lam-dep-da-6-chai-x-50ml-qa67xxusr2qnenvcpng.png', 19, '2024-11-18 04:08:03', NULL),
(63, 'facebook-dynamic-nuoc-uong-collagen-innerb-lam-dep-da-6-chai-x-50ml-1707991486.png', '2024-11-18__facebook-dynamic-nuoc-uong-collagen-innerb-lam-dep-da-6-chai-x-50ml-1707991486png.png', 19, '2024-11-18 04:08:03', NULL),
(81, 'promotions-auto-vien-uong-dhc-bo-sung-vitamin-c-nhat-ban-goi-60-vien-30-ngay_VLceAdz8M8HNkAFj.png', '2024-11-18__promotions-auto-vien-uong-dhc-bo-sung-vitamin-c-nhat-ban-goi-60-vien-30-ngay-vlceadz8m8hnkafjpng.png', 16, '2024-11-18 04:33:57', NULL),
(94, 'promotions-auto-kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml_ZSohcmuoz3LFsJqb.png', '2024-11-18__promotions-auto-kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-zsohcmuoz3lfsjqbpng.png', 14, '2024-11-18 04:40:03', NULL),
(95, 'tem-phu_422211240-1677749283_img_80x80_d200c5_fit_center.jpg', '2024-11-18__tem-phu-422211240-1677749283-img-80x80-d200c5-fit-centerjpg.jpg', 14, '2024-11-18 04:40:03', NULL),
(96, 'la-roche-posay_img_80x80_d200c5_fit_center.jpg', '2024-11-18__la-roche-posay-img-80x80-d200c5-fit-centerjpg.jpg', 14, '2024-11-18 04:40:03', NULL),
(97, 'kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-5-1716439966_img_80x80_d200c5_fit_center.jpg', '2024-11-18__kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-5-1716439966-img-80x80-d200c5-fit-centerjpg.jpg', 14, '2024-11-18 04:40:03', NULL),
(98, 'kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-4-1716439982_img_80x80_d200c5_fit_center.jpg', '2024-11-18__kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-4-1716439982-img-80x80-d200c5-fit-centerjpg.jpg', 14, '2024-11-18 04:40:03', NULL),
(99, 'kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-2-1716439990_img_80x80_d200c5_fit_center.jpg', '2024-11-18__kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-2-1716439990-img-80x80-d200c5-fit-centerjpg.jpg', 14, '2024-11-18 04:40:03', NULL),
(100, 'facebook-dynamic-kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-1716439945_img_80x80_d200c5_fit_center.jpg', '2024-11-18__facebook-dynamic-kem-duong-la-roche-posay-giup-phuc-hoi-da-da-cong-dung-40ml-1716439945-img-80x80-d200c5-fit-centerjpg.jpg', 14, '2024-11-18 04:40:03', NULL),
(101, 'tem-phu-422200306-16625343102767.png', '2024-11-18__tem-phu-422200306-16625343102767png.png', 13, '2024-11-18 04:43:18', NULL),
(102, 'promotions-auto-kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g_xZGmS4MS8MkEv4EP.png', '2024-11-18__promotions-auto-kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g-xzgms4ms8mkev4eppng.png', 13, '2024-11-18 04:43:18', NULL),
(103, 'facebook-dynamic-422200306-1727325595.png', '2024-11-18__facebook-dynamic-422200306-1727325595png.png', 13, '2024-11-18 04:43:18', NULL),
(104, 'kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g-doi-mau-1665541346_img_80x80_d200c5_fit_center.jpg', '2024-11-18__kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g-doi-mau-1665541346-img-80x80-d200c5-fit-centerjpg.jpg', 13, '2024-11-18 04:43:18', NULL),
(105, 'kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g-6-1665541474_img_80x80_d200c5_fit_center.jpg', '2024-11-18__kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g-6-1665541474-img-80x80-d200c5-fit-centerjpg.jpg', 13, '2024-11-18 04:43:18', NULL),
(106, 'kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g-5-1665541474_img_80x80_d200c5_fit_center.jpg', '2024-11-18__kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g-5-1665541474-img-80x80-d200c5-fit-centerjpg.jpg', 13, '2024-11-18 04:43:18', NULL),
(107, 'kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g-4-1665541474_img_80x80_d200c5_fit_center.jpg', '2024-11-18__kem-duong-am-neutrogena-cung-cap-nuoc-cho-da-50g-4-1665541474-img-80x80-d200c5-fit-centerjpg.jpg', 13, '2024-11-18 04:43:18', NULL),
(108, 'tem-phu-318900005-1681726478_img_80x80_d200c5_fit_center.jpg', '2024-11-18__tem-phu-318900005-1681726478-img-80x80-d200c5-fit-centerjpg.jpg', 12, '2024-11-18 04:45:24', NULL),
(109, 'kem-duong-am-lam-diu-da-ban-dem-klairs-60ml-1681726502_img_80x80_d200c5_fit_center.jpg', '2024-11-18__kem-duong-am-lam-diu-da-ban-dem-klairs-60ml-1681726502-img-80x80-d200c5-fit-centerjpg.jpg', 12, '2024-11-18 04:45:24', NULL),
(110, 'kem-duong-am-lam-diu-da-ban-dem-klairs-60ml-2-1702880129_img_80x80_d200c5_fit_center.jpg', '2024-11-18__kem-duong-am-lam-diu-da-ban-dem-klairs-60ml-2-1702880129-img-80x80-d200c5-fit-centerjpg.jpg', 12, '2024-11-18 04:45:24', NULL),
(111, 'kem-duong-am-lam-diu-da-ban-dem-klairs-60ml-2-1681726503_img_80x80_d200c5_fit_center.jpg', '2024-11-18__kem-duong-am-lam-diu-da-ban-dem-klairs-60ml-2-1681726503-img-80x80-d200c5-fit-centerjpg.jpg', 12, '2024-11-18 04:45:24', NULL),
(112, 'google-shopping-kem-duong-am-lam-diu-da-ban-dem-klairs-60ml-1702880129_img_80x80_d200c5_fit_center.jpg', '2024-11-18__google-shopping-kem-duong-am-lam-diu-da-ban-dem-klairs-60ml-1702880129-img-80x80-d200c5-fit-centerjpg.jpg', 12, '2024-11-18 04:45:24', NULL),
(113, 'facebook-dynamic-318900005-1730429318_img_80x80_d200c5_fit_center.jpg', '2024-11-18__facebook-dynamic-318900005-1730429318-img-80x80-d200c5-fit-centerjpg.jpg', 12, '2024-11-18 04:45:24', NULL),
(130, 'promotions-auto-nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml_XZLLLaXnnwhDfeQd.png', '2024-11-19__promotions-auto-nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-xzlllaxnnwhdfeqdpng.png', 2, '2024-11-18 22:17:59', NULL),
(131, 'facebook-dynamic-205100137-1695896128.png', '2024-11-19__facebook-dynamic-205100137-1695896128png.png', 2, '2024-11-18 22:17:59', NULL),
(132, 'tem-phu-nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1718605830_img_80x80_d200c5_fit_center.jpg', '2024-11-19__tem-phu-nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1718605830-img-80x80-d200c5-fit-centerjpg.jpg', 2, '2024-11-18 22:17:59', NULL),
(133, 'nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1684996339_img_80x80_d200c5_fit_center (1).jpg', '2024-11-19__nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1684996339-img-80x80-d200c5-fit-center-1jpg.jpg', 2, '2024-11-18 22:17:59', NULL),
(134, 'nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-2-1684996339_img_80x80_d200c5_fit_center.jpg', '2024-11-19__nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-2-1684996339-img-80x80-d200c5-fit-centerjpg.jpg', 2, '2024-11-18 22:17:59', NULL),
(135, 'nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1-1684996339_img_80x80_d200c5_fit_center.jpg', '2024-11-19__nuoc-tay-trang-tuoi-mat-l-oreal-3-in-1-danh-cho-da-dau-da-hon-hop-400ml-1-1684996339-img-80x80-d200c5-fit-centerjpg.jpg', 2, '2024-11-18 22:17:59', NULL),
(162, 'tải xuống (8).jpg', '2024-11-19__tai-xuong-8jpg.jpg', 24, '2024-11-19 00:53:27', NULL),
(163, 'tải xuống (7).jpg', '2024-11-19__tai-xuong-7jpg.jpg', 24, '2024-11-19 00:53:27', NULL),
(171, 'images.jpg', '2024-11-19__imagesjpg.jpg', 22, '2024-11-19 00:57:52', NULL),
(172, 'images (2).jpg', '2024-11-19__images-2jpg.jpg', 22, '2024-11-19 00:57:52', NULL),
(173, 'images (1).jpg', '2024-11-19__images-1jpg.jpg', 22, '2024-11-19 00:57:52', NULL),
(177, 'tải xuống.jpg', '2024-11-19__tai-xuongjpg.jpg', 20, '2024-11-19 01:11:02', NULL),
(178, 'tải xuống (4).jpg', '2024-11-19__tai-xuong-4jpg.jpg', 20, '2024-11-19 01:11:02', NULL),
(179, 'tải xuống (3).jpg', '2024-11-19__tai-xuong-3jpg.jpg', 20, '2024-11-19 01:11:02', NULL),
(180, 'tải xuống (2).jpg', '2024-11-19__tai-xuong-2jpg.jpg', 20, '2024-11-19 01:11:02', NULL),
(181, 'tải xuống (1).jpg', '2024-11-19__tai-xuong-1jpg.jpg', 20, '2024-11-19 01:11:02', NULL),
(182, 'tải xuống (6).jpg', '2024-11-19__tai-xuong-6jpg.jpg', 19, '2024-11-19 01:12:07', NULL),
(183, 'tải xuống (5).jpg', '2024-11-19__tai-xuong-5jpg.jpg', 19, '2024-11-19 01:12:07', NULL),
(190, 'tải xuống.jpg', '2024-11-20__tai-xuongjpg.jpg', 1, '2024-11-19 22:03:28', NULL),
(191, 'tải xuống (3).jpg', '2024-11-20__tai-xuong-3jpg.jpg', 1, '2024-11-19 22:03:28', NULL),
(192, 'tải xuống (2).jpg', '2024-11-20__tai-xuong-2jpg.jpg', 1, '2024-11-19 22:03:28', NULL),
(193, 'tải xuống (1).jpg', '2024-11-20__tai-xuong-1jpg.jpg', 1, '2024-11-19 22:03:28', NULL),
(205, 'tải xuống.jpg', '2024-11-20__tai-xuongjpg.jpg', 7, '2024-11-19 22:06:35', NULL),
(206, 'tải xuống (5).jpg', '2024-11-20__tai-xuong-5jpg.jpg', 7, '2024-11-19 22:06:35', NULL),
(207, 'tải xuống (3).jpg', '2024-11-20__tai-xuong-3jpg.jpg', 7, '2024-11-19 22:06:35', NULL),
(208, 'tải xuống (2).jpg', '2024-11-20__tai-xuong-2jpg.jpg', 7, '2024-11-19 22:06:35', NULL),
(209, 'tải xuống (1).jpg', '2024-11-20__tai-xuong-1jpg.jpg', 7, '2024-11-19 22:06:35', NULL),
(210, 'tải xuống.jpg', '2024-11-20__tai-xuongjpg.jpg', 6, '2024-11-19 22:23:47', NULL),
(211, 'tải xuống (4).jpg', '2024-11-20__tai-xuong-4jpg.jpg', 6, '2024-11-19 22:23:47', NULL),
(212, 'tải xuống (3).jpg', '2024-11-20__tai-xuong-3jpg.jpg', 6, '2024-11-19 22:23:47', NULL),
(213, 'tải xuống (2).jpg', '2024-11-20__tai-xuong-2jpg.jpg', 6, '2024-11-19 22:23:47', NULL),
(214, 'tải xuống (1).jpg', '2024-11-20__tai-xuong-1jpg.jpg', 6, '2024-11-19 22:23:47', NULL),
(215, 'tải xuống.jpg', '2024-11-20__tai-xuongjpg.jpg', 5, '2024-11-19 22:26:12', NULL),
(216, 'tải xuống (5).jpg', '2024-11-20__tai-xuong-5jpg.jpg', 5, '2024-11-19 22:26:12', NULL),
(217, 'tải xuống (4).jpg', '2024-11-20__tai-xuong-4jpg.jpg', 5, '2024-11-19 22:26:12', NULL),
(218, 'tải xuống (3).jpg', '2024-11-20__tai-xuong-3jpg.jpg', 5, '2024-11-19 22:26:12', NULL),
(219, 'tải xuống (2).jpg', '2024-11-20__tai-xuong-2jpg.jpg', 5, '2024-11-19 22:26:12', NULL),
(220, 'tải xuống (9).jpg', '2024-11-20__tai-xuong-9jpg.jpg', 8, '2024-11-19 22:28:24', NULL),
(221, 'tải xuống (8).jpg', '2024-11-20__tai-xuong-8jpg.jpg', 8, '2024-11-19 22:28:24', NULL),
(222, 'tải xuống (7).jpg', '2024-11-20__tai-xuong-7jpg.jpg', 8, '2024-11-19 22:28:24', NULL),
(223, 'tải xuống (6).jpg', '2024-11-20__tai-xuong-6jpg.jpg', 8, '2024-11-19 22:28:24', NULL),
(224, 'tải xuống.jpg', '2024-11-20__tai-xuongjpg.jpg', 4, '2024-11-19 22:30:51', NULL),
(225, 'tải xuống (5).jpg', '2024-11-20__tai-xuong-5jpg.jpg', 4, '2024-11-19 22:30:51', NULL),
(226, 'tải xuống (4).jpg', '2024-11-20__tai-xuong-4jpg.jpg', 4, '2024-11-19 22:30:51', NULL),
(227, 'tải xuống (3).jpg', '2024-11-20__tai-xuong-3jpg.jpg', 4, '2024-11-19 22:30:51', NULL),
(228, 'tải xuống (2).jpg', '2024-11-20__tai-xuong-2jpg.jpg', 4, '2024-11-19 22:30:51', NULL),
(229, 'tải xuống (1).jpg', '2024-11-20__tai-xuong-1jpg.jpg', 4, '2024-11-19 22:30:51', NULL),
(230, 'images.jpg', '2024-11-20__imagesjpg.jpg', 4, '2024-11-19 22:30:51', NULL),
(231, 'tải xuống (5).jpg', '2024-11-20__tai-xuong-5jpg.jpg', 3, '2024-11-19 22:34:20', NULL),
(232, 'tải xuống (4).jpg', '2024-11-20__tai-xuong-4jpg.jpg', 3, '2024-11-19 22:34:20', NULL),
(233, 'tải xuống (3).jpg', '2024-11-20__tai-xuong-3jpg.jpg', 3, '2024-11-19 22:34:20', NULL),
(234, 'tải xuống (2).jpg', '2024-11-20__tai-xuong-2jpg.jpg', 3, '2024-11-19 22:34:20', NULL),
(235, 'tải xuống (1).jpg', '2024-11-20__tai-xuong-1jpg.jpg', 3, '2024-11-19 22:34:20', NULL),
(242, 'tải xuống.jpg', '2024-11-20__tai-xuongjpg.jpg', 11, '2024-11-19 22:42:21', NULL),
(243, 'tải xuống (3).jpg', '2024-11-20__tai-xuong-3jpg.jpg', 11, '2024-11-19 22:42:21', NULL),
(244, 'tải xuống (2).jpg', '2024-11-20__tai-xuong-2jpg.jpg', 11, '2024-11-19 22:42:21', NULL),
(245, 'tải xuống (1).jpg', '2024-11-20__tai-xuong-1jpg.jpg', 11, '2024-11-19 22:42:21', NULL),
(246, 'tải xuống (11).jpg', '2024-11-20__tai-xuong-11jpg.jpg', 10, '2024-11-19 22:44:25', NULL),
(247, 'tải xuống (10).jpg', '2024-11-20__tai-xuong-10jpg.jpg', 10, '2024-11-19 22:44:25', NULL),
(248, 'tải xuống (9).jpg', '2024-11-20__tai-xuong-9jpg.jpg', 10, '2024-11-19 22:44:25', NULL),
(249, 'tải xuống (8).jpg', '2024-11-20__tai-xuong-8jpg.jpg', 10, '2024-11-19 22:44:25', NULL),
(250, 'tải xuống (7).jpg', '2024-11-20__tai-xuong-7jpg.jpg', 10, '2024-11-19 22:44:25', NULL),
(251, 'tải xuống.jpg', '2024-11-20__tai-xuongjpg.jpg', 9, '2024-11-19 22:47:06', NULL),
(252, 'tải xuống (4).jpg', '2024-11-20__tai-xuong-4jpg.jpg', 9, '2024-11-19 22:47:06', NULL),
(253, 'tải xuống (3).jpg', '2024-11-20__tai-xuong-3jpg.jpg', 9, '2024-11-19 22:47:06', NULL),
(254, 'tải xuống (2).jpg', '2024-11-20__tai-xuong-2jpg.jpg', 9, '2024-11-19 22:47:06', NULL),
(255, 'tải xuống (1).jpg', '2024-11-20__tai-xuong-1jpg.jpg', 9, '2024-11-19 22:47:06', NULL),
(256, 'tải xuống (9).jpg', '2024-11-20__tai-xuong-9jpg.jpg', 28, '2024-11-19 22:50:55', NULL),
(257, 'tải xuống (8).jpg', '2024-11-20__tai-xuong-8jpg.jpg', 28, '2024-11-19 22:50:55', NULL),
(258, 'tải xuống (7).jpg', '2024-11-20__tai-xuong-7jpg.jpg', 28, '2024-11-19 22:50:55', NULL),
(259, 'tải xuống (6).jpg', '2024-11-20__tai-xuong-6jpg.jpg', 28, '2024-11-19 22:50:55', NULL),
(260, 'tải xuống (5).jpg', '2024-11-20__tai-xuong-5jpg.jpg', 28, '2024-11-19 22:50:55', NULL),
(261, 'tải xuống (13).jpg', '2024-11-20__tai-xuong-13jpg.jpg', 21, '2024-11-19 22:52:00', NULL),
(262, 'tải xuống (12).jpg', '2024-11-20__tai-xuong-12jpg.jpg', 21, '2024-11-19 22:52:00', NULL),
(263, 'tải xuống (11).jpg', '2024-11-20__tai-xuong-11jpg.jpg', 21, '2024-11-19 22:52:00', NULL),
(264, 'tải xuống (10).jpg', '2024-11-20__tai-xuong-10jpg.jpg', 21, '2024-11-19 22:52:00', NULL),
(265, 'tải xuống (15).jpg', '2024-11-20__tai-xuong-15jpg.jpg', 27, '2024-11-19 22:52:52', NULL),
(266, 'tải xuống (14).jpg', '2024-11-20__tai-xuong-14jpg.jpg', 27, '2024-11-19 22:52:52', NULL),
(267, 'tải xuống (13).jpg', '2024-11-20__tai-xuong-13jpg.jpg', 27, '2024-11-19 22:52:52', NULL),
(268, 'tải xuống (12).jpg', '2024-11-20__tai-xuong-12jpg.jpg', 27, '2024-11-19 22:52:52', NULL),
(269, 'tải xuống (19).jpg', '2024-11-20__tai-xuong-19jpg.jpg', 26, '2024-11-19 22:53:57', NULL),
(270, 'tải xuống (18).jpg', '2024-11-20__tai-xuong-18jpg.jpg', 26, '2024-11-19 22:53:57', NULL),
(271, 'tải xuống (17).jpg', '2024-11-20__tai-xuong-17jpg.jpg', 26, '2024-11-19 22:53:57', NULL),
(272, 'tải xuống (16).jpg', '2024-11-20__tai-xuong-16jpg.jpg', 26, '2024-11-19 22:53:57', NULL),
(273, 'tải xuống (24).jpg', '2024-11-20__tai-xuong-24jpg.jpg', 25, '2024-11-19 22:55:03', NULL),
(274, 'tải xuống (23).jpg', '2024-11-20__tai-xuong-23jpg.jpg', 25, '2024-11-19 22:55:03', NULL),
(275, 'tải xuống (22).jpg', '2024-11-20__tai-xuong-22jpg.jpg', 25, '2024-11-19 22:55:03', NULL),
(276, 'tải xuống (21).jpg', '2024-11-20__tai-xuong-21jpg.jpg', 25, '2024-11-19 22:55:03', NULL),
(277, 'tải xuống (20).jpg', '2024-11-20__tai-xuong-20jpg.jpg', 25, '2024-11-19 22:55:03', NULL),
(278, 'tải xuống (13).jpg', '2024-11-20__tai-xuong-13jpg.jpg', 24, '2024-11-19 22:55:29', NULL),
(279, 'tải xuống (11).jpg', '2024-11-20__tai-xuong-11jpg.jpg', 24, '2024-11-19 22:55:29', NULL),
(280, 'tải xuống (29).jpg', '2024-11-20__tai-xuong-29jpg.jpg', 23, '2024-11-19 22:56:24', NULL),
(281, 'tải xuống (28).jpg', '2024-11-20__tai-xuong-28jpg.jpg', 23, '2024-11-19 22:56:24', NULL),
(282, 'tải xuống (27).jpg', '2024-11-20__tai-xuong-27jpg.jpg', 23, '2024-11-19 22:56:24', NULL),
(283, 'tải xuống (26).jpg', '2024-11-20__tai-xuong-26jpg.jpg', 23, '2024-11-19 22:56:24', NULL),
(284, 'tải xuống (25).jpg', '2024-11-20__tai-xuong-25jpg.jpg', 23, '2024-11-19 22:56:24', NULL),
(285, 'tải xuống.png', '2024-11-20__tai-xuongpng.png', 18, '2024-11-19 22:58:12', NULL),
(286, 'tải xuống.jpg', '2024-11-20__tai-xuongjpg.jpg', 18, '2024-11-19 22:58:12', NULL),
(287, 'tải xuống (3).jpg', '2024-11-20__tai-xuong-3jpg.jpg', 18, '2024-11-19 22:58:12', NULL),
(288, 'tải xuống (2).jpg', '2024-11-20__tai-xuong-2jpg.jpg', 18, '2024-11-19 22:58:12', NULL),
(289, 'tải xuống (1).jpg', '2024-11-20__tai-xuong-1jpg.jpg', 18, '2024-11-19 22:58:12', NULL),
(290, 'tải xuống (8).jpg', '2024-11-20__tai-xuong-8jpg.jpg', 17, '2024-11-19 23:00:46', NULL),
(291, 'tải xuống (7).jpg', '2024-11-20__tai-xuong-7jpg.jpg', 17, '2024-11-19 23:00:46', NULL),
(292, 'tải xuống (6).jpg', '2024-11-20__tai-xuong-6jpg.jpg', 17, '2024-11-19 23:00:46', NULL),
(293, 'tải xuống (5).jpg', '2024-11-20__tai-xuong-5jpg.jpg', 17, '2024-11-19 23:00:46', NULL),
(294, 'tải xuống (4).jpg', '2024-11-20__tai-xuong-4jpg.jpg', 17, '2024-11-19 23:00:46', NULL),
(295, 'tải xuống (13).jpg', '2024-11-20__tai-xuong-13jpg.jpg', 16, '2024-11-19 23:01:58', NULL),
(296, 'tải xuống (12).jpg', '2024-11-20__tai-xuong-12jpg.jpg', 16, '2024-11-19 23:01:58', NULL),
(297, 'tải xuống (11).jpg', '2024-11-20__tai-xuong-11jpg.jpg', 16, '2024-11-19 23:01:59', NULL),
(298, 'tải xuống (10).jpg', '2024-11-20__tai-xuong-10jpg.jpg', 16, '2024-11-19 23:01:59', NULL),
(299, 'tải xuống (9).jpg', '2024-11-20__tai-xuong-9jpg.jpg', 16, '2024-11-19 23:01:59', NULL),
(300, 'tải xuống (18).jpg', '2024-11-20__tai-xuong-18jpg.jpg', 15, '2024-11-19 23:03:34', NULL),
(301, 'tải xuống (17).jpg', '2024-11-20__tai-xuong-17jpg.jpg', 15, '2024-11-19 23:03:34', NULL),
(302, 'tải xuống (16).jpg', '2024-11-20__tai-xuong-16jpg.jpg', 15, '2024-11-19 23:03:34', NULL),
(303, 'tải xuống (15).jpg', '2024-11-20__tai-xuong-15jpg.jpg', 15, '2024-11-19 23:03:34', NULL),
(304, 'tải xuống (14).jpg', '2024-11-20__tai-xuong-14jpg.jpg', 15, '2024-11-19 23:03:34', NULL),
(305, 'tải xuống (22).jpg', '2024-11-20__tai-xuong-22jpg.jpg', 29, '2024-11-19 23:09:22', NULL),
(306, 'tải xuống (21).jpg', '2024-11-20__tai-xuong-21jpg.jpg', 29, '2024-11-19 23:09:22', NULL),
(307, 'tải xuống (20).jpg', '2024-11-20__tai-xuong-20jpg.jpg', 29, '2024-11-19 23:09:22', NULL),
(308, 'tải xuống (19).jpg', '2024-11-20__tai-xuong-19jpg.jpg', 29, '2024-11-19 23:09:22', NULL),
(309, 'tải xuống (29).jpg', '2024-11-20__tai-xuong-29jpg.jpg', 30, '2024-11-19 23:14:01', NULL),
(310, 'tải xuống (28).jpg', '2024-11-20__tai-xuong-28jpg.jpg', 30, '2024-11-19 23:14:01', NULL),
(311, 'tải xuống (27).jpg', '2024-11-20__tai-xuong-27jpg.jpg', 30, '2024-11-19 23:14:01', NULL),
(312, 'tải xuống (26).jpg', '2024-11-20__tai-xuong-26jpg.jpg', 30, '2024-11-19 23:14:01', NULL),
(313, 'tải xuống (25).jpg', '2024-11-20__tai-xuong-25jpg.jpg', 30, '2024-11-19 23:14:01', NULL),
(314, 'tải xuống (33).jpg', '2024-11-20__tai-xuong-33jpg.jpg', 31, '2024-11-19 23:16:25', NULL),
(315, 'tải xuống (32).jpg', '2024-11-20__tai-xuong-32jpg.jpg', 31, '2024-11-19 23:16:25', NULL),
(316, 'tải xuống (31).jpg', '2024-11-20__tai-xuong-31jpg.jpg', 31, '2024-11-19 23:16:25', NULL),
(317, 'tải xuống (30).jpg', '2024-11-20__tai-xuong-30jpg.jpg', 31, '2024-11-19 23:16:25', NULL),
(318, 'tải xuống (39).jpg', '2024-11-20__tai-xuong-39jpg.jpg', 32, '2024-11-19 23:18:45', NULL),
(319, 'tải xuống (38).jpg', '2024-11-20__tai-xuong-38jpg.jpg', 32, '2024-11-19 23:18:45', NULL),
(320, 'tải xuống (37).jpg', '2024-11-20__tai-xuong-37jpg.jpg', 32, '2024-11-19 23:18:45', NULL),
(321, 'tải xuống (36).jpg', '2024-11-20__tai-xuong-36jpg.jpg', 32, '2024-11-19 23:18:45', NULL),
(322, 'tải xuống (35).jpg', '2024-11-20__tai-xuong-35jpg.jpg', 32, '2024-11-19 23:18:45', NULL),
(323, 'tải xuống (44).jpg', '2024-11-20__tai-xuong-44jpg.jpg', 33, '2024-11-19 23:21:10', NULL),
(324, 'tải xuống (43).jpg', '2024-11-20__tai-xuong-43jpg.jpg', 33, '2024-11-19 23:21:10', NULL),
(325, 'tải xuống (42).jpg', '2024-11-20__tai-xuong-42jpg.jpg', 33, '2024-11-19 23:21:10', NULL),
(326, 'tải xuống (41).jpg', '2024-11-20__tai-xuong-41jpg.jpg', 33, '2024-11-19 23:21:10', NULL),
(327, 'tải xuống (51).jpg', '2024-11-20__tai-xuong-51jpg.jpg', 34, '2024-11-19 23:25:03', NULL),
(328, 'tải xuống (50).jpg', '2024-11-20__tai-xuong-50jpg.jpg', 34, '2024-11-19 23:25:03', NULL),
(329, 'tải xuống (49).jpg', '2024-11-20__tai-xuong-49jpg.jpg', 34, '2024-11-19 23:25:03', NULL),
(330, 'tải xuống (48).jpg', '2024-11-20__tai-xuong-48jpg.jpg', 34, '2024-11-19 23:25:03', NULL),
(331, 'tải xuống (46).jpg', '2024-11-20__tai-xuong-46jpg.jpg', 34, '2024-11-19 23:25:03', NULL),
(332, 'tải xuống (57).jpg', '2024-11-20__tai-xuong-57jpg.jpg', 35, '2024-11-19 23:29:35', NULL),
(333, 'tải xuống (56).jpg', '2024-11-20__tai-xuong-56jpg.jpg', 35, '2024-11-19 23:29:35', NULL),
(334, 'tải xuống (55).jpg', '2024-11-20__tai-xuong-55jpg.jpg', 35, '2024-11-19 23:29:35', NULL),
(335, 'tải xuống (54).jpg', '2024-11-20__tai-xuong-54jpg.jpg', 35, '2024-11-19 23:29:35', NULL),
(336, 'tải xuống (53).jpg', '2024-11-20__tai-xuong-53jpg.jpg', 35, '2024-11-19 23:29:35', NULL),
(337, 'tải xuống (52).jpg', '2024-11-20__tai-xuong-52jpg.jpg', 35, '2024-11-19 23:29:35', NULL),
(338, 'tải xuống (62).jpg', '2024-11-20__tai-xuong-62jpg.jpg', 36, '2024-11-19 23:34:12', NULL),
(339, 'tải xuống (61).jpg', '2024-11-20__tai-xuong-61jpg.jpg', 36, '2024-11-19 23:34:12', NULL),
(340, 'tải xuống (60).jpg', '2024-11-20__tai-xuong-60jpg.jpg', 36, '2024-11-19 23:34:12', NULL),
(341, 'tải xuống (59).jpg', '2024-11-20__tai-xuong-59jpg.jpg', 36, '2024-11-19 23:34:12', NULL),
(342, 'tải xuống (69).jpg', '2024-11-20__tai-xuong-69jpg.jpg', 37, '2024-11-19 23:37:00', NULL),
(343, 'tải xuống (68).jpg', '2024-11-20__tai-xuong-68jpg.jpg', 37, '2024-11-19 23:37:00', NULL),
(344, 'tải xuống (67).jpg', '2024-11-20__tai-xuong-67jpg.jpg', 37, '2024-11-19 23:37:00', NULL),
(345, 'tải xuống (65).jpg', '2024-11-20__tai-xuong-65jpg.jpg', 37, '2024-11-19 23:37:00', NULL),
(346, 'tải xuống (64).jpg', '2024-11-20__tai-xuong-64jpg.jpg', 37, '2024-11-19 23:37:00', NULL),
(347, 'tải xuống (74).jpg', '2024-11-20__tai-xuong-74jpg.jpg', 38, '2024-11-19 23:40:50', NULL),
(348, 'tải xuống (73).jpg', '2024-11-20__tai-xuong-73jpg.jpg', 38, '2024-11-19 23:40:50', NULL),
(349, 'tải xuống (72).jpg', '2024-11-20__tai-xuong-72jpg.jpg', 38, '2024-11-19 23:40:50', NULL),
(350, 'tải xuống (70).jpg', '2024-11-20__tai-xuong-70jpg.jpg', 38, '2024-11-19 23:40:50', NULL),
(351, 'tải xuống (80).jpg', '2024-11-20__tai-xuong-80jpg.jpg', 39, '2024-11-19 23:43:00', NULL),
(352, 'tải xuống (79).jpg', '2024-11-20__tai-xuong-79jpg.jpg', 39, '2024-11-19 23:43:00', NULL),
(353, 'tải xuống (77).jpg', '2024-11-20__tai-xuong-77jpg.jpg', 39, '2024-11-19 23:43:00', NULL),
(354, 'tải xuống (76).jpg', '2024-11-20__tai-xuong-76jpg.jpg', 39, '2024-11-19 23:43:00', NULL),
(355, 'tải xuống (84).jpg', '2024-11-20__tai-xuong-84jpg.jpg', 40, '2024-11-19 23:45:08', NULL),
(356, 'tải xuống (83).jpg', '2024-11-20__tai-xuong-83jpg.jpg', 40, '2024-11-19 23:45:08', NULL),
(357, 'tải xuống (82).jpg', '2024-11-20__tai-xuong-82jpg.jpg', 40, '2024-11-19 23:45:08', NULL),
(358, 'tải xuống (81).jpg', '2024-11-20__tai-xuong-81jpg.jpg', 40, '2024-11-19 23:45:08', NULL),
(359, 'tải xuống (90).jpg', '2024-11-20__tai-xuong-90jpg.jpg', 41, '2024-11-19 23:47:54', NULL),
(360, 'tải xuống (89).jpg', '2024-11-20__tai-xuong-89jpg.jpg', 41, '2024-11-19 23:47:54', NULL),
(361, 'tải xuống (88).jpg', '2024-11-20__tai-xuong-88jpg.jpg', 41, '2024-11-19 23:47:54', NULL),
(362, 'tải xuống (87).jpg', '2024-11-20__tai-xuong-87jpg.jpg', 41, '2024-11-19 23:47:54', NULL),
(363, 'tải xuống.jpg', '2024-11-20__tai-xuongjpg.jpg', 42, '2024-11-19 23:50:41', NULL),
(364, 'tải xuống (4).jpg', '2024-11-20__tai-xuong-4jpg.jpg', 42, '2024-11-19 23:50:41', NULL),
(365, 'tải xuống (3).jpg', '2024-11-20__tai-xuong-3jpg.jpg', 42, '2024-11-19 23:50:41', NULL),
(366, 'tải xuống (2).jpg', '2024-11-20__tai-xuong-2jpg.jpg', 42, '2024-11-19 23:50:41', NULL),
(367, 'tải xuống (9).jpg', '2024-11-20__tai-xuong-9jpg.jpg', 43, '2024-11-20 00:06:59', NULL),
(368, 'tải xuống (8).jpg', '2024-11-20__tai-xuong-8jpg.jpg', 43, '2024-11-20 00:06:59', NULL),
(369, 'tải xuống (7).jpg', '2024-11-20__tai-xuong-7jpg.jpg', 43, '2024-11-20 00:06:59', NULL),
(370, 'tải xuống (5).jpg', '2024-11-20__tai-xuong-5jpg.jpg', 43, '2024-11-20 00:06:59', NULL),
(371, 'tải xuống (14).jpg', '2024-11-20__tai-xuong-14jpg.jpg', 44, '2024-11-20 00:09:31', NULL),
(372, 'tải xuống (13).jpg', '2024-11-20__tai-xuong-13jpg.jpg', 44, '2024-11-20 00:09:31', NULL),
(373, 'tải xuống (12).jpg', '2024-11-20__tai-xuong-12jpg.jpg', 44, '2024-11-20 00:09:31', NULL),
(374, 'tải xuống (11).jpg', '2024-11-20__tai-xuong-11jpg.jpg', 44, '2024-11-20 00:09:31', NULL),
(375, 'tải xuống (19).jpg', '2024-11-20__tai-xuong-19jpg.jpg', 45, '2024-11-20 00:10:56', NULL),
(376, 'tải xuống (18).jpg', '2024-11-20__tai-xuong-18jpg.jpg', 45, '2024-11-20 00:10:56', NULL),
(377, 'tải xuống (17).jpg', '2024-11-20__tai-xuong-17jpg.jpg', 45, '2024-11-20 00:10:56', NULL),
(378, 'tải xuống (16).jpg', '2024-11-20__tai-xuong-16jpg.jpg', 45, '2024-11-20 00:10:56', NULL),
(379, 'tải xuống (24).jpg', '2024-11-20__tai-xuong-24jpg.jpg', 46, '2024-11-20 00:12:28', NULL),
(380, 'tải xuống (23).jpg', '2024-11-20__tai-xuong-23jpg.jpg', 46, '2024-11-20 00:12:28', NULL),
(381, 'tải xuống (22).jpg', '2024-11-20__tai-xuong-22jpg.jpg', 46, '2024-11-20 00:12:28', NULL),
(382, 'tải xuống (21).jpg', '2024-11-20__tai-xuong-21jpg.jpg', 46, '2024-11-20 00:12:28', NULL),
(383, 'tải xuống (29).jpg', '2024-11-20__tai-xuong-29jpg.jpg', 47, '2024-11-20 00:14:12', NULL),
(384, 'tải xuống (28).jpg', '2024-11-20__tai-xuong-28jpg.jpg', 47, '2024-11-20 00:14:12', NULL),
(385, 'tải xuống (27).jpg', '2024-11-20__tai-xuong-27jpg.jpg', 47, '2024-11-20 00:14:12', NULL),
(386, 'tải xuống (25).jpg', '2024-11-20__tai-xuong-25jpg.jpg', 47, '2024-11-20 00:14:12', NULL),
(387, 'tải xuống (34).jpg', '2024-11-20__tai-xuong-34jpg.jpg', 48, '2024-11-20 00:15:49', NULL),
(388, 'tải xuống (33).jpg', '2024-11-20__tai-xuong-33jpg.jpg', 48, '2024-11-20 00:15:49', NULL),
(389, 'tải xuống (32).jpg', '2024-11-20__tai-xuong-32jpg.jpg', 48, '2024-11-20 00:15:49', NULL),
(390, 'tải xuống (31).jpg', '2024-11-20__tai-xuong-31jpg.jpg', 48, '2024-11-20 00:15:49', NULL),
(391, 'tải xuống (5).jpg', '2024-11-21__tai-xuong-5jpg.jpg', 49, '2024-11-20 23:27:46', NULL),
(392, 'tải xuống (4).jpg', '2024-11-21__tai-xuong-4jpg.jpg', 49, '2024-11-20 23:27:46', NULL),
(393, 'tải xuống (3).jpg', '2024-11-21__tai-xuong-3jpg.jpg', 49, '2024-11-20 23:27:46', NULL),
(394, 'tải xuống (2).jpg', '2024-11-21__tai-xuong-2jpg.jpg', 49, '2024-11-20 23:27:46', NULL),
(395, 'tải xuống (11).jpg', '2024-11-21__tai-xuong-11jpg.jpg', 50, '2024-11-20 23:32:39', NULL),
(396, 'tải xuống (10).jpg', '2024-11-21__tai-xuong-10jpg.jpg', 50, '2024-11-20 23:32:39', NULL),
(397, 'tải xuống (9).jpg', '2024-11-21__tai-xuong-9jpg.jpg', 50, '2024-11-20 23:32:39', NULL),
(398, 'tải xuống (7).jpg', '2024-11-21__tai-xuong-7jpg.jpg', 50, '2024-11-20 23:32:39', NULL),
(399, 'tải xuống (6).jpg', '2024-11-21__tai-xuong-6jpg.jpg', 50, '2024-11-20 23:32:39', NULL),
(400, 'tải xuống (16).jpg', '2024-11-21__tai-xuong-16jpg.jpg', 51, '2024-11-20 23:38:25', NULL),
(401, 'tải xuống (15).jpg', '2024-11-21__tai-xuong-15jpg.jpg', 51, '2024-11-20 23:38:25', NULL),
(402, 'tải xuống (14).jpg', '2024-11-21__tai-xuong-14jpg.jpg', 51, '2024-11-20 23:38:25', NULL),
(403, 'tải xuống (12).jpg', '2024-11-21__tai-xuong-12jpg.jpg', 51, '2024-11-20 23:38:25', NULL),
(404, 'tải xuống (5).jpg', '2024-11-21__tai-xuong-5jpg.jpg', 52, '2024-11-20 23:41:00', NULL),
(405, 'tải xuống (4).jpg', '2024-11-21__tai-xuong-4jpg.jpg', 52, '2024-11-20 23:41:00', NULL),
(406, 'tải xuống (3).jpg', '2024-11-21__tai-xuong-3jpg.jpg', 52, '2024-11-20 23:41:00', NULL),
(407, 'tải xuống (2).jpg', '2024-11-21__tai-xuong-2jpg.jpg', 52, '2024-11-20 23:41:00', NULL),
(408, 'tải xuống (1).jpg', '2024-11-21__tai-xuong-1jpg.jpg', 52, '2024-11-20 23:41:00', NULL),
(409, 'tải xuống (11).jpg', '2024-11-21__tai-xuong-11jpg.jpg', 53, '2024-11-20 23:46:21', NULL),
(410, 'tải xuống (10).jpg', '2024-11-21__tai-xuong-10jpg.jpg', 53, '2024-11-20 23:46:21', NULL),
(411, 'tải xuống (9).jpg', '2024-11-21__tai-xuong-9jpg.jpg', 53, '2024-11-20 23:46:21', NULL),
(412, 'tải xuống (7).jpg', '2024-11-21__tai-xuong-7jpg.jpg', 53, '2024-11-20 23:46:21', NULL),
(413, 'tải xuống (6).jpg', '2024-11-26__tai-xuong-6jpg.jpg', 54, '2024-11-26 03:26:06', NULL),
(414, 'tải xuống (5).jpg', '2024-11-26__tai-xuong-5jpg.jpg', 54, '2024-11-26 03:26:06', NULL),
(415, 'tải xuống (4).jpg', '2024-11-26__tai-xuong-4jpg.jpg', 54, '2024-11-26 03:26:06', NULL),
(416, 'tải xuống (3).jpg', '2024-11-26__tai-xuong-3jpg.jpg', 54, '2024-11-26 03:26:06', NULL),
(417, 'tải xuống (6).jpg', '2024-11-26__tai-xuong-6jpg.jpg', 55, '2024-11-26 03:42:27', NULL),
(418, 'tải xuống (5).jpg', '2024-11-26__tai-xuong-5jpg.jpg', 55, '2024-11-26 03:42:27', NULL),
(419, 'tải xuống (4).jpg', '2024-11-26__tai-xuong-4jpg.jpg', 55, '2024-11-26 03:42:27', NULL),
(420, 'tải xuống (3).jpg', '2024-11-26__tai-xuong-3jpg.jpg', 55, '2024-11-26 03:42:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(4, 5, 51, 5, 0, 'sản phẩm chất chượng', '2024-11-21 00:42:05', '2024-11-21 00:42:05'),
(5, 16, 53, 5, 0, 'rất đẹp', '2024-11-26 03:26:59', '2024-11-26 03:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('E2HhwOrLcmzgK4quUOTKLbylIw5ICLeXclqKPK4g', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkg3SXZNWVlnNFBHVmpiMk85RWhtajRxcllKQ3BvaGp2Q1d5TW1FTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hY2NvdW50L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1732849116),
('VcqXq3spmaSiz5xl44tdySJbhpM0UKYGzCfah12I', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IllpWnpoRnB1ZkdlYVFiZVBmRmJsbjZ4TktKb2RHVEQ3UTJldWxSZ3ciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6NDM6InByb2R1Y3RfNjk2YjAzMTA3M2U3NGJmMmNiOThlNWVmMjAxZDRhYTNfMzYiO2k6MTczMjg0NjAyMjtzOjQ6ImNhcnQiO2E6MDp7fXM6MTQ6ImluZm9fY3VzdG9ybWVyIjthOjEwOntzOjg6InRzdF9uYW1lIjtzOjI1OiJkYW5naGllbjI4MDIxMjNAZ21haWwuY29tIjtzOjk6InRzdF9waG9uZSI7czoxMDoiMDM0ODg3MTAwOSI7czoxNToidHN0X3Byb3ZpbmNlX2lkIjtzOjI6IjI1IjtzOjE1OiJ0c3RfZGlzdHJpY3RfaWQiO3M6MzoiMjI3IjtzOjExOiJ0c3RfYWRkcmVzcyI7czoxOiIxIjtzOjk6InRzdF9lbWFpbCI7czoyNToiZGFuZ2hpZW4yODAyMTIzQGdtYWlsLmNvbSI7czo4OiJ0c3Rfbm90ZSI7czoxOiIxIjtzOjExOiJ0c3RfdXNlcl9pZCI7aTo1O3M6MTU6InRzdF90b3RhbF9tb25leSI7czo1OiI5NDA1MCI7czoxMDoiY3JlYXRlZF9hdCI7TzoxMzoiQ2FyYm9uXENhcmJvbiI6Mzp7czo0OiJkYXRlIjtzOjI2OiIyMDI0LTExLTI5IDAzOjI3OjE1Ljc3NzU4NyI7czoxMzoidGltZXpvbmVfdHlwZSI7aTozO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjt9fXM6NDM6InByb2R1Y3RfNjk2YjAzMTA3M2U3NGJmMmNiOThlNWVmMjAxZDRhYTNfMzEiO2k6MTczMjg0OTc3NTtzOjQzOiJwcm9kdWN0XzY5NmIwMzEwNzNlNzRiZjJjYjk4ZTVlZjIwMWQ0YWEzXzUxIjtpOjE3MzI4NTAxNDg7czo0MzoicHJvZHVjdF82OTZiMDMxMDczZTc0YmYyY2I5OGU1ZWYyMDFkNGFhM181MyI7aToxNzMyODUwNjQ3O30=', 1732851781);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) DEFAULT NULL,
  `sd_link` varchar(191) DEFAULT NULL,
  `sd_image` varchar(191) DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'https://hotro.hasaki.vn/van-chuyen-2h.html', '2024-11-21__1320x400landing-1731734644.jpg', 1, 1, 0, '2024-11-21 00:43:29', '2024-11-21 00:43:29'),
(2, 'Slide 2', 'https://hotro.hasaki.vn/van-chuyen-2h.html', '2024-11-21__wap1698114601.jpg', 1, 1, 0, '2024-11-21 00:44:53', '2024-11-21 00:44:53'),
(3, 'Slide 3', 'https://hotro.hasaki.vn/van-chuyen-2h.html', '2024-11-21__640x240-223-1716457039.jpg', 1, 1, 0, '2024-11-21 00:45:07', '2024-11-21 00:45:07'),
(4, 'Banner  4', 'https://hotro.hasaki.vn/van-chuyen-2h.html', '2024-11-21__640x240-1731894516.jpg', 1, 1, 0, '2024-11-21 00:45:30', '2024-11-21 00:45:30'),
(5, 'Slide 5', 'https://www.google.com/', '2024-11-21__640x240mobile-1731734824.jpg', 1, 1, 0, '2024-11-21 00:45:53', '2024-11-21 00:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `provider` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) DEFAULT NULL,
  `s_slug` varchar(191) DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) DEFAULT NULL,
  `s_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn mua hàng', NULL, 1, NULL, '<p>kkkkk</p>', '2024-11-20 00:41:39', '2024-11-20 00:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) DEFAULT NULL,
  `sl_phone` varchar(191) DEFAULT NULL,
  `sl_email` varchar(191) DEFAULT NULL,
  `sl_address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(1, 'Mỹ Phẩm Sài Gòn', '0348871009', 'nhacungcapmypham@gmail.com', 'Đà Nẵng', '2024-08-04 02:39:00', '2024-11-20 00:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) DEFAULT NULL,
  `tst_email` varchar(191) DEFAULT NULL,
  `tst_phone` varchar(191) DEFAULT NULL,
  `tst_province_id` int(11) NOT NULL,
  `tst_district_id` int(11) NOT NULL,
  `tst_address` varchar(191) DEFAULT NULL,
  `tst_note` varchar(191) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_province_id`, `tst_district_id`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(14, 5, 0, 178400, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 4, 40, '78 lê thanh nghị', 'đẹp', -1, 1, '2024-11-19 00:18:24', '2024-11-20 00:39:42'),
(15, 5, 1, 510000, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 48, 492, '78 lê thanh nghị', 'kkk', 3, 1, '2024-11-20 00:26:26', '2024-11-20 00:29:36'),
(16, 5, 1, 94050, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 25, 227, '78 lê thanh nghị', 'd', 3, 1, '2024-11-20 23:55:22', '2024-11-20 23:57:34'),
(17, 5, 1, 107100, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 25, 227, '78 lê thanh nghị', 'd', 3, 1, '2024-11-21 00:40:10', '2024-11-21 00:41:32'),
(19, 5, 0, 510000, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 12, 105, '78 lê thanh nghị', 'h', 1, 1, '2024-11-22 02:22:17', NULL),
(20, 5, 0, 107100, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 24, 213, 'd', 'd', 1, 1, '2024-11-26 03:05:58', NULL),
(24, 16, 1, 94050, 'hien', 'nguyendanghien@gmail.com', '0348871007', 24, 213, '78 lê thanh nghị', 'fsff', 3, 1, '2024-11-26 03:21:08', '2024-11-26 03:23:31'),
(27, 17, 1, 107100, 'danghien123', 'danghien123@gmail.com', '0123456789', 24, 213, '78 lê thanh nghị', 'ưew', 3, 1, '2024-11-26 03:38:05', '2024-11-26 03:43:08'),
(29, 5, 0, 94050, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 24, 213, '78 lê thanh nghị', 'da', 1, 1, '2024-11-28 03:43:47', NULL),
(57, 5, 0, 424150, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 8, 70, '6eter', 'OK', 1, 1, '2024-11-28 19:59:57', NULL),
(58, 5, 0, 424150, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 24, 213, '1', 'q', 1, 1, '2024-11-28 20:09:20', NULL),
(59, 5, 0, 355300, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 26, 243, 'd', '1', 1, 1, '2024-11-28 20:15:41', NULL),
(60, 5, 0, 107100, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 26, 243, '78 lê thanh nghị', 'q', 1, 1, '2024-11-28 20:23:57', NULL),
(61, 5, 0, 94050, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', '0348871009', 25, 227, 'r', '1', 1, 1, '2024-11-28 20:43:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'danghien2802123@gmail.com', 'danghien2802123@gmail.com', NULL, '$2y$12$5g78gxTfs.f.CN6dV2CIf.ZpgbFKMcx/6jEqojE3.eEmPqb5IEXue', '0348871009', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-08T11:54:42.975609Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-12T11:38:54.581437Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-12T11:40:02.122560Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-12T11:55:43.660781Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-13T10:45:37.440343Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-14T03:36:05.251508Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-14T04:26:13.086408Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-16T14:13:51.434766Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-19T19:24:56.733390Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-19T19:36:59.288863Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-20T17:06:05.713789Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"128.0.0.0\",\"time\":\"2024-10-21T02:38:18.609180Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"129.0.0.0\",\"time\":\"2024-10-31T06:36:20.153783Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"129.0.0.0\",\"time\":\"2024-11-19T04:58:13.363608Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"129.0.0.0\",\"time\":\"2024-11-20T07:21:19.523119Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"129.0.0.0\",\"time\":\"2024-11-21T06:55:07.543081Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"129.0.0.0\",\"time\":\"2024-11-21T10:07:53.383416Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"129.0.0.0\",\"time\":\"2024-11-21T11:37:41.349784Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"129.0.0.0\",\"time\":\"2024-11-22T09:14:31.299316Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"130.0.0.0\",\"time\":\"2024-11-23T08:22:30.504350Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"130.0.0.0\",\"time\":\"2024-11-26T09:54:53.696565Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"130.0.0.0\",\"time\":\"2024-11-26T09:57:40.352121Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"130.0.0.0\",\"time\":\"2024-11-28T07:44:56.988070Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"130.0.0.0\",\"time\":\"2024-11-28T10:43:24.423184Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"130.0.0.0\",\"time\":\"2024-11-28T14:50:24.964172Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"130.0.0.0\",\"time\":\"2024-11-29T02:06:55.287215Z\"}]', 3, NULL, NULL, NULL, '2024-10-05 07:27:36', NULL),
(6, 'dang', 'danghien@gmail.com', NULL, '$2y$12$C0gtwpjyBOZJul7MGWnH0OCfdC6dN17FvmpoCGQPg3cwGKSEWTwm.', '0348871000', 0, NULL, 0, NULL, NULL, NULL, '2024-10-08 07:50:11', NULL),
(9, 'admin', 'admin@gmail.com', NULL, '$2y$12$WLvsCCSsaJ5P2DCdGj1IGuJTjJdfcfFNTV7x6kzCB0IVZCW9gXMG.', '0348871088', 0, NULL, 0, NULL, NULL, NULL, '2024-10-12 11:02:52', NULL),
(15, 'danghien', 'danghien2802@gmail.com', NULL, '$2y$12$tbRC.SGucJgcwCt4MjGbueM/EqJfV8VpC4yncBaIQxE2XFEuEcBS6', '0341111111', 0, NULL, 0, NULL, NULL, NULL, '2024-11-26 03:12:15', NULL),
(16, 'hien', 'nguyendanghien@gmail.com', NULL, '$2y$12$4Y9/DAQn2jkR8I/784FKUuG0DP8/v1p4L660MPoIUxvOm7vyyvHTi', '0348871007', 0, NULL, 1, NULL, NULL, NULL, '2024-11-26 03:20:42', NULL),
(17, 'danghien123', 'danghien123@gmail.com', NULL, '$2y$12$PxzssKM8fTagciJcJAY91OwF6c4h2.u.H5XlTP0wpYHD2dLGBVEDK', '0123456789', 0, NULL, 1, NULL, NULL, NULL, '2024-11-26 03:37:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(2, 5, 3),
(5, 51, 17),
(4, 53, 5);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `w_product_id` int(11) NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT 0,
  `w_qty` int(11) NOT NULL DEFAULT 0,
  `w_time_warehouse` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `w_product_id`, `w_price`, `w_qty`, `w_time_warehouse`, `created_at`, `updated_at`) VALUES
(1, 30, 2000000, 44, NULL, '2024-11-26 09:54:54', '2024-11-26 09:54:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_w_order_id_index` (`w_order_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Indexes for table `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Indexes for table `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_w_product_id_index` (`w_product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=893;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
