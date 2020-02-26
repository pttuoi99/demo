-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 03:32 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `avatar`, `active`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'ThanhTuoiPham', 'tuoipt.99@gmail.com', NULL, NULL, 1, '$2y$10$EEnsrtiZD9.s.ovaSKUPEuWbLebgwt9dINY03b2gBfmC29VxZjwXm', '2laa4y7z5UIpzc2fnArqPww6BCE2TsZPXeXG8cMhrhc2IvsixNEfUQlgCP0k', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_author_id` int(11) NOT NULL DEFAULT 0,
  `a_description_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_title_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_description`, `a_content`, `a_active`, `a_author_id`, `a_description_seo`, `a_title_seo`, `a_avatar`, `a_view`, `created_at`, `updated_at`, `c_hot`) VALUES
(1, 'cách sử dụng điện thoại 2019', 'cach-su-dung-dien-thoai-2019', 'cách sử dụng điện thoại', 'cách sử dụng điện thoại', 1, 0, 'cách sử dụng điện thoại', 'cách sử dụng điện thoại', '2019-12-16__samsung-galaxy-note-10-plus-blue-400x400.jpg', 0, '2019-12-15 08:25:11', '2019-12-23 07:09:09', 1),
(5, 'Hướng dẫn gõ dấu Tiếng Việt Samsung Galaxy đơn giản nhất', 'huong-dan-go-dau-tieng-viet-samsung-galaxy-don-gian-nhat', 'Nếu bạn soạn thảo văn bản, tin nhắn hay gửi email đến cho người khác mà gõ không dấu có thể làm cho người đọc khó hiểu ...', '<p>Nếu bạn soạn thảo văn bản, tin nhắn hay gửi email đến cho người kh&aacute;c m&agrave; g&otilde; kh&ocirc;ng dấu c&oacute; thể l&agrave;m cho người đọc kh&oacute; hiểu, thậm ch&iacute; l&agrave; kh&ocirc;ng hiểu những g&igrave; bạn muốn truyền đạt, th&igrave; b&agrave;i viết n&agrave;y c&oacute; thể gi&uacute;p bạn khắc phục điều tr&ecirc;n bằng c&aacute;ch g&otilde; dấu Tiếng Việt tr&ecirc;n điện thoại Samsung Galaxy S6 Edge Plus.</p>\r\n\r\n<p>1. Lợi &iacute;ch khi g&otilde; dấu Tiếng Việt. - Gi&uacute;p người đọc dễ hiểu hơn, hiểu nhanh hơn. - Tr&aacute;nh g&acirc;y kh&oacute; hiểu cho người đọc v&agrave; dẫn đến những sai lầm trong c&ocirc;ng việc.</p>\r\n\r\n<p>2. Hướng dẫn c&agrave;i đặt g&otilde; dấu Tiếng Việt. ​Hướng dẫn nhanh: V&agrave;o C&agrave;i đặt -&gt; Ng&ocirc;n ngữ v&agrave; b&agrave;n ph&iacute;m -&gt; B&agrave;n ph&iacute;m Samsung -&gt; Tiếng Việt -&gt; Chọn kiểu g&otilde; Telex hoặc VNI. Sau đ&acirc;y m&igrave;nh sẽ hướng dẫn c&aacute;c bạn c&aacute;ch g&otilde; dấu Tiếng Việt tr&ecirc;n Samsung Galaxy S6 Edge Plus:</p>\r\n\r\n<p>- Bước 1: Đầu ti&ecirc;n bạn h&atilde;y v&agrave;o C&agrave;i Đặt tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh. - Bước 1: Đầu ti&ecirc;n bạn h&atilde;y v&agrave;o C&agrave;i Đặt tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh.</p>\r\n\r\n<p>- Bước 2: Tiếp theo bạn h&atilde;y chọn Ng&ocirc;n ngữ v&agrave; b&agrave;n ph&iacute;m. - Bước 2: Tiếp theo bạn h&atilde;y chọn Ng&ocirc;n ngữ v&agrave; b&agrave;n ph&iacute;m.</p>\r\n\r\n<p>- Bước 3: Tại đ&acirc;y bạn sẽ chọn b&agrave;n ph&iacute;m hiện tại B&agrave;n ph&iacute;m Samsung. - Bước 3: Tại đ&acirc;y bạn sẽ chọn b&agrave;n ph&iacute;m hiện tại B&agrave;n ph&iacute;m Samsung.</p>\r\n\r\n<p>- Bước 4: V&agrave; b&acirc;y giờ bạn h&atilde;y chọn tiếp Tiếng Việt. - Bước 4: V&agrave; b&acirc;y giờ bạn h&atilde;y chọn tiếp Tiếng Việt.</p>\r\n\r\n<p>- Bước 5: Cuối c&ugrave;ng bạn chọn loại b&agrave;n ph&iacute;m m&agrave; bạn thường hay d&ugrave;ng v&agrave; m&igrave;nh chọn kiểu g&otilde; Telex.</p>\r\n\r\n<p>&nbsp;Như vậy l&agrave; sau những bước như tr&ecirc;n bạn đ&atilde; c&oacute; thể c&agrave;i đặt g&otilde; dấu Tiếng Việt khi soạn thảo tin nhắn, hay bất k&igrave; một văn bản n&agrave;o, mong b&agrave;i viết n&agrave;y sẽ gi&uacute;p &iacute;ch cho qu&aacute; tr&igrave;nh sử dụng điện thoại cũng như m&aacute;y t&iacute;nh của bạn dễ d&agrave;ng hơn nh&eacute;. Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng!</p>', 1, 0, 'Nếu bạn soạn thảo văn bản, tin nhắn hay gửi email đến cho người khác mà gõ không dấu có thể làm cho người đọc khó hiểu ...', 'Hướng dẫn gõ dấu Tiếng Việt Samsung Galaxy đơn giản nhất', '2019-12-16__go-dau-tieng-viet-samsung-galaxy-thumb.jpg', 0, '2019-12-16 02:09:29', '2019-12-23 07:08:48', 0),
(6, 'Gọi trực tiếp thông minh trên Samsung Galaxy C9 Pro', 'goi-truc-tiep-thong-minh-tren-samsung-galaxy-c9-pro', 'Gọi cho các số điện thoại trong danh bạ, nhật ký cuộc gọi hay tin nhắn đang hiển thị trên màn hình chỉ bằng thao tác cực kì đơn giản là ...', '<p>Gọi cho c&aacute;c số điện thoại trong danh bạ, nhật k&yacute; cuộc gọi hay tin nhắn đang hiển thị tr&ecirc;n m&agrave;n h&igrave;nh chỉ bằng thao t&aacute;c cực k&igrave; đơn giản l&agrave; đưa điện thoại lại gần tai l&agrave; c&oacute; thể thực hiện cuộc gọi thật nhanh ch&oacute;ng. B&agrave;i viết n&agrave;y m&igrave;nh sẽ hướng dẫn c&aacute;c bạn c&agrave;i đặt t&iacute;nh năng gọi trực tiếp th&ocirc;ng minh tr&ecirc;n Samsung Galaxy C9 Pro nh&eacute;.</p>\r\n\r\n<p>1. Lợi &iacute;ch của t&iacute;nh năng gọi trực tiếp th&ocirc;ng minh Thực hiệc c&aacute;c cuộc gọi từ c&aacute;c số trong danh bạ, nhật k&yacute; cuộc gọi hay tin nhắn đang hiển thị tr&ecirc;n m&agrave;n h&igrave;nh một c&aacute;ch nhanh ch&oacute;ng.</p>\r\n\r\n<p>2. Hướng dẫn c&agrave;i đặt t&iacute;nh năng gọi trực tiếp th&ocirc;ng minh Hướng dẫn nhanh: V&agrave;o C&agrave;i đặt -&gt; T&iacute;nh năng n&acirc;ng cao -&gt; Gọi trực tiếp -&gt; Bật t&iacute;nh năng gọi trực tiếp. Gọi trực tiếp th&ocirc;ng minh tr&ecirc;n Samsung Galaxy C9 Pro như sau:</p>\r\n\r\n<p>- Bước 1: Đầu ti&ecirc;n bạn h&atilde;y v&agrave;o C&agrave;i đặt tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh. - Bước 1: Đầu ti&ecirc;n bạn h&atilde;y v&agrave;o C&agrave;i đặt tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh.</p>\r\n\r\n<p>- Bước 2: Tiếp theo bạn h&atilde;y chọn mục T&iacute;nh năng n&acirc;ng cao. - Bước 2: Tiếp theo bạn h&atilde;y chọn mục T&iacute;nh năng n&acirc;ng cao.</p>\r\n\r\n<p>- Bước 3: Sau đ&oacute; bạn h&atilde;y bấm v&agrave;o Gọi trực tiếp.</p>\r\n\r\n<p>- Bước 4: Cuối c&ugrave;ng bạn bật t&iacute;nh năng gọi trực tiếp l&agrave; ho&agrave;n tất qu&aacute; tr&igrave;nh thiết lập.</p>\r\n\r\n<p>Như vậy l&agrave; chỉ sau 4 bước đơn giản tr&ecirc;n bạn đ&atilde; ho&agrave;n tất qu&aacute; tr&igrave;nh thiết lập t&iacute;nh năng gọi trực tiếp th&ocirc;ng minh tr&ecirc;n điện thoại của bạn rồi nh&eacute;. Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng!</p>', 1, 0, 'Gọi cho các số điện thoại trong danh bạ, nhật ký cuộc gọi hay tin nhắn đang hiển thị trên màn hình chỉ bằng thao tác cực kì đơn giản là ...', 'Gọi trực tiếp thông minh trên Samsung Galaxy C9 Pro', '2019-12-16__goi-truc-tiep-thong-minh-tren-samsung-galaxy-c9-pr-thumb.jpg', 0, '2019-12-16 02:10:53', '2019-12-21 20:13:38', 0),
(7, 'Hướng dẫn cách kết nối điện thoại với loa kéo để hát karaoke cực dễ', 'huong-dan-cach-ket-noi-dien-thoai-voi-loa-keo-de-hat-karaoke-cuc-de', 'Loa kéo đang là một sản phẩm vô cùng \"hot\" hiện nay, nhờ sự tiện ích của mình mà loa kéo được sử dụng rộng rãi ở các quán ăn, tiệc tùng, cắm trại,...', '<p>Loa k&eacute;o đang l&agrave; một sản phẩm v&ocirc; c&ugrave;ng &quot;hot&quot; hiện nay, nhờ sự tiện &iacute;ch của m&igrave;nh m&agrave; loa k&eacute;o được sử dụng rộng r&atilde;i ở c&aacute;c qu&aacute;n ăn, tiệc t&ugrave;ng, cắm trại,... B&agrave;i viết sau đ&acirc;y sẽ hướng dẫn c&aacute;c bạn c&aacute;ch kết nối điện thoại với loa k&eacute;o để h&aacute;t karaoke dễ d&agrave;ng.</p>\r\n\r\n<p>1. Lợi &iacute;ch khi h&aacute;t karaoke bằng điện thoại v&agrave; loa k&eacute;o Điện thoại ch&iacute;nh l&agrave; thiết bị nhỏ gọn, tiện dụng, thường được mọi người sử dụng nhiều, nhờ đ&oacute; m&agrave; việc kết nối loa k&eacute;o với điện thoại sẽ mang lại nhiều lợi &iacute;ch kh&aacute;c nhau. kết nối loa k&eacute;o với điện thoại Kết nối loa k&eacute;o với d&agrave;n &acirc;m thanh sẽ rất rườm r&agrave;, c&oacute; thể qua nhiều thiết bị, cổng kết nối kh&aacute;c nhau. V&igrave; thế việc kết nối loa k&eacute;o với điện thoại sẽ mang lại sự nhanh ch&oacute;ng, tiện lợi hơn rất nhiều. Với kho &acirc;m nhạc phong ph&uacute; của c&aacute;c ứng dụng h&aacute;t karaoke tr&ecirc;n điện thoai sẽ gi&uacute;p bạn dễ d&agrave;ng t&igrave;m kiếm v&agrave; h&aacute;t được nhiều b&agrave;i h&aacute;t m&agrave; bạn y&ecirc;u th&iacute;ch. Chỉ cần một chiếc điện thoại v&agrave; một loa k&eacute;o, bạn đ&atilde; c&oacute; thể mang cả tiệm karaoke về nh&agrave; v&agrave; c&ugrave;ng gia đ&igrave;nh, bạn b&egrave; h&ograve;a m&igrave;nh c&ugrave;ng &acirc;m nhạc. loa k&eacute;o enkor Ảnh minh họa: Loa K&eacute;o Bluetooth Enkor L1218K Đen Hiện nay th&igrave; c&aacute;c loa k&eacute;o c&oacute; gi&aacute; tương đối rẻ, chỉ với v&agrave;i triệu đồng l&agrave; bạn c&oacute; thể dễ d&agrave;ng chọn mua một sản phẩm chất lượng.</p>\r\n\r\n<p>2. C&aacute;ch kết nối điện thoại với loa k&eacute;o</p>\r\n\r\n<p>Bước 1: Bạn nhất n&uacute;t nguồn để khởi động loa, sau đ&oacute; chọn qua chế độ Bluetooth (t&ugrave;y loa m&agrave; c&oacute; c&aacute;ch bật chế độ bluetooth kh&aacute;c nhau, một số loa khi mở nguồn sẽ tự bật bluetooth), đợi đến khi đ&egrave;n bluetooth s&aacute;ng l&ecirc;n hoặc nhấp nh&aacute;y l&agrave; được. bật bluetooth cho loa</p>\r\n\r\n<p>Bước 2: Tr&ecirc;n điện thoại, truy cập v&agrave;o mục C&agrave;i đặt &gt; Bluetooth &gt; Chọn v&agrave;o t&ecirc;n loa cần kết nối, ở đ&acirc;y m&igrave;nh chọn v&agrave;o loa k&eacute;o &quot;JAMMY JM-K901&quot;. kết nối bluetooth với loa</p>\r\n\r\n<p>Bước 3: Sau khi kết nối bạn mở ứng dụng YouTube tr&ecirc;n điện thoại l&ecirc;n &gt; Chọn v&agrave;o &ocirc; t&igrave;m kiếm. chọn &ocirc; t&igrave;m kiếm</p>\r\n\r\n<p>Bước 4: Nhập v&agrave;o &ocirc; t&igrave;m kiếm b&agrave;i h&aacute;t bạn muốn h&aacute;t karaoke (c&uacute; ph&aacute;p: T&ecirc;n b&agrave;i h&aacute;t + karaoke hoặc beat), ở đ&acirc;y m&igrave;nh v&iacute; dụ chọn b&agrave;i &quot;Lạ l&ugrave;ng karaoke&quot;. t&igrave;m t&ecirc;n b&agrave;i h&aacute;t​</p>\r\n\r\n<p>Bước 5: Sau đ&oacute; chọn v&agrave;o b&agrave;i h&aacute;t th&iacute;ch hợp nhất (thường chọn v&agrave;o d&ograve;ng đầu ti&ecirc;n). chọn b&agrave;i h&aacute;t ph&ugrave; hợp Bước 6: Sau khi chọn th&igrave; b&agrave;i h&aacute;t sẽ tự ph&aacute;t v&agrave; giờ đ&acirc;y bạn c&oacute; thể cầm mic l&ecirc;n v&agrave; h&aacute;t được rồi nh&eacute;. b&agrave;i h&aacute;t lạ l&ugrave;ng​ Tr&ecirc;n điện thoại c&oacute; rất nhiều ứng dụng h&aacute;t karaoke kh&aacute;c nhau, đơn cử như ứng dụng: YouTube, iKara, Karaoke - H&aacute;t kh&ocirc;ng giới hạn,.... Bạn c&oacute; thể t&igrave;m ch&uacute;ng trong kho ứng dụng của điện thoại v&agrave; tải về, sau đ&oacute; kết nối với loa k&eacute;o v&agrave; thỏa sức ca h&aacute;t. c&aacute;c ứng dụng h&aacute;t karaoke tr&ecirc;n điện thoại</p>\r\n\r\n<p>Lưu &yacute;: Bạn n&ecirc;n x&agrave;i YouTube để đảm bảo độ an to&agrave;n, ổn định, ph&ugrave; hợp với nhiều thiết bị điện thoại di động kh&aacute;c nhau (c&aacute;c ứng dụng kh&aacute;c c&oacute; thể kh&ocirc;ng tương th&iacute;ch, g&acirc;y giật, lag,...).</p>\r\n\r\n<p>Hy vọng qua b&agrave;i viết tr&ecirc;n sẽ gi&uacute;p c&aacute;c bạn c&oacute; thể kết nối loa k&eacute;o với điện thoại để h&aacute;t karaoke một c&aacute;ch đơn giản, nhanh ch&oacute;ng.</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng!</p>', 1, 0, 'Loa kéo đang là một sản phẩm vô cùng \"hot\" hiện nay, nhờ sự tiện ích của mình mà loa kéo được sử dụng rộng rãi ở các quán ăn, tiệc tùng, cắm trại,...', 'Hướng dẫn cách kết nối điện thoại với loa kéo để hát karaoke cực dễ', '2019-12-16__huong-dan-cach-ket-noi-dien-thoai-voi-loa-keo-de-hthumb.jpg', 0, '2019-12-16 02:12:00', '2019-12-21 20:15:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_icon` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_active` tinyint(4) NOT NULL DEFAULT 1,
  `c_total_product` int(11) NOT NULL DEFAULT 0,
  `c_title_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_keyword_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_home` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_icon`, `c_avatar`, `c_active`, `c_total_product`, `c_title_seo`, `c_description_seo`, `c_keyword_seo`, `created_at`, `updated_at`, `c_home`) VALUES
(1, 'Máy tính bảng', 'may-tinh-bang', 'fa-laptop', NULL, 1, 0, 'Máy tính bảng', 'máy tính bảng', NULL, '2019-12-14 05:12:20', '2020-02-06 13:14:12', 1),
(2, 'Điện thoại', 'dien-thoai', 'fa-mobile', NULL, 1, 0, 'Điện thoại', 'điện thoại mới nhất 2019', NULL, '2019-12-14 05:14:35', '2019-12-22 05:52:17', 1),
(8, 'Thời Trang', 'thoi-trang', 'fa-fa-home', NULL, 1, 0, 'Thời Trang', 'Thời Trang', NULL, '2019-12-20 19:13:07', '2019-12-22 05:38:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `c_name`, `c_email`, `c_title`, `c_content`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'phạm thanh tươi', 'phamthanhtuoi0@gmail.com', 'Mua hàng', 'Hàng không giống như mong đợi', 0, NULL, NULL),
(2, 'phạm thanh tươi', 'phamthanhtuoi0@gmail.com', 'Mua hàng', 'chưa đúng hàng', 0, '2019-12-17 00:58:40', '2019-12-17 00:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_101653_create_categories_table', 1),
(5, '2019_12_14_143216_create_products_table', 2),
(6, '2019_12_14_150050_alter_column_pro_content_and_pro_title_seo_in_table_products', 3),
(8, '2019_12_15_143323_create_article_table', 4),
(9, '2019_12_17_074245_create_contact_table', 5),
(10, '2019_12_17_093954_create_transactions_table', 6),
(11, '2019_12_17_094033_create_orders_table', 6),
(12, '2019_12_17_094920_alter_column_pro_pay_in_table_products', 7),
(13, '2019_12_17_133852_create_ratings_table', 8),
(14, '2019_12_17_134254_alter_column_rating_in_table_products', 8),
(15, '2019_12_21_131959_alter_column_total_pay_in_table_users', 9),
(16, '2019_12_22_075509_create_page_statics_table', 10),
(17, '2019_12_22_121706_alter_column_c_home_in_table_categories', 11),
(18, '2019_12_23_022906_create_admins_table', 12),
(19, '2019_12_23_135840_alter_column_a_hot_in_table_articles', 13),
(21, '2019_12_24_090646_alter_column_about_end_address_in_table_user', 14),
(23, '2019_12_25_060341_alter_column_code_and_time_code_in_table_users', 15),
(24, '2020_02_05_090126_alter_column_code_active_users', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `or_transaction_id` int(11) NOT NULL DEFAULT 0,
  `or_product_id` int(11) NOT NULL DEFAULT 0,
  `or_qty` int(11) NOT NULL DEFAULT 0,
  `or_price` int(11) NOT NULL DEFAULT 0,
  `or_sale` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `or_transaction_id`, `or_product_id`, `or_qty`, `or_price`, `or_sale`, `created_at`, `updated_at`) VALUES
(5, 4, 9, 2, 90000, 34, NULL, NULL),
(6, 5, 6, 1, 15999000, 0, NULL, NULL),
(7, 5, 4, 1, 2250000, 0, NULL, NULL),
(8, 6, 6, 1, 15999000, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_statics`
--

CREATE TABLE `page_statics` (
  `id` int(10) UNSIGNED NOT NULL,
  `ps_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ps_type` tinyint(4) NOT NULL DEFAULT 1,
  `ps_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_statics`
--

INSERT INTO `page_statics` (`id`, `ps_name`, `ps_type`, `ps_content`, `created_at`, `updated_at`) VALUES
(1, 'Về chúng tôi', 1, '<p>nội dung về ch&uacute;ng t&ocirc;i</p>', '2019-12-22 01:37:03', '2019-12-22 01:42:25'),
(2, 'Thông tin giao hàng', 1, '<p>Th&ocirc;ng tin giao h&agrave;ng của shop</p>', '2019-12-22 01:43:09', '2019-12-22 01:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_author_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_description_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_keyword_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_title_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_pay` tinyint(4) NOT NULL DEFAULT 0,
  `pro_number` tinyint(4) NOT NULL DEFAULT 0,
  `pro_total_rating` int(11) NOT NULL DEFAULT 0 COMMENT 'Tổng số đánh giá',
  `pro_total_number` int(11) NOT NULL DEFAULT 0 COMMENT 'tổng số điểm đánh giá'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_category_id`, `pro_price`, `pro_author_id`, `pro_sale`, `pro_active`, `pro_hot`, `pro_view`, `pro_description`, `pro_avatar`, `pro_description_seo`, `pro_keyword_seo`, `created_at`, `updated_at`, `pro_title_seo`, `pro_content`, `pro_pay`, `pro_number`, `pro_total_rating`, `pro_total_number`) VALUES
(3, 'Máy tính bảng Samsung Galaxy Tab A 10.1 T515 (2019)', 'may-tinh-bang-samsung-galaxy-tab-a-101-t515-2019', 1, 7490000, 0, 0, 1, 1, 0, 'Máy tính bảng Samsung Galaxy Tab A 10.1 T515 (2019)', '2019-12-16__samsung-galaxy-note-10-plus-blue-400x400.jpg', NULL, NULL, '2020-02-06 13:19:43', '2020-02-06 13:19:43', 'Máy tính bảng Samsung Galaxy Tab A 10.1 T515 (2019)', 'Máy tính bảng Samsung Galaxy Tab A 10.1 T515 (2019)', 1, 10, 0, 0),
(4, 'Máy tính bảng Mobell Tab 8 Pro', 'may-tinh-bang-mobell-tab-8-pro', 2, 2250000, 0, 0, 1, 1, 0, 'Tiếp nối sự thành công của chiếc tablet Mobell Tab 8 thì phiên bản cải tiến là chiếc Mobell Tab 8 Pro với cải tiến tốt hơn.', '2019-12-16__sieu-pham-galaxy-s-moi-2-512gb-black-400x400.jpg', NULL, NULL, '2019-12-14 09:06:43', '2019-12-21 22:28:38', 'Máy tính bảng Mobell Tab 8 Pro', 'Tiếp nối sự thành công của chiếc tablet Mobell Tab 8 thì phiên bản cải tiến là chiếc Mobell Tab 8 Pro với cải tiến tốt hơn.', 2, 9, 2, 9),
(5, 'Máy tính bảng Samsung Galaxy', 'may-tinh-bang-samsung-galaxy', 1, 1000000, 0, 0, 1, 0, 0, 'Máy tính bảng Samsung Galaxy', '2019-12-16__iphone-xs-256gb-white-400x400.jpg', NULL, NULL, '2019-12-14 18:39:32', '2019-12-15 22:07:41', 'Máy tính bảng Samsung Galaxy', 'Máy tính bảng Samsung Galaxy', 0, 10, 0, 0),
(6, 'Điện thoại BlackBerry KEY2', 'dien-thoai-blackberry-key2', 2, 15999000, 0, 0, 1, 1, 0, 'Điện thoại BlackBerry KEY2', '2019-12-16__blackberry-key2-4-400x400.jpg', NULL, NULL, '2019-12-15 22:09:28', '2019-12-22 00:42:55', 'Điện thoại BlackBerry KEY2', 'Điện thoại BlackBerry KEY2', 3, 8, 2, 9),
(7, 'Điện thoại OPPO A5 (2020) 64GB', 'dien-thoai-oppo-a5-2020-64gb', 2, 4290000, 0, 0, 1, 0, 0, 'Điện thoại OPPO A5 (2020) 64GB', '2019-12-17__oppo-a5-2020-white-400x400.jpg', 'Điện thoại OPPO A5 (2020) 64GB', NULL, '2019-12-17 07:13:27', '2019-12-22 02:42:26', 'Điện thoại OPPO A5 (2020) 64GB', '<h2>Đặc điểm nổi bật của OPPO A5 (2020) 64GB</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/210441/Slider/-oppo-a5-2020-thumbvideo.jpg\" /></p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/210441/Slider/vi-vn-oppo-a5-2020-tinhnang.jpg\" /></p>\r\n\r\n<p>T&igrave;m hiểu th&ecirc;m</p>\r\n\r\n<p>Bộ sản phẩm chuẩn: Hộp, Sạc, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim</p>\r\n\r\n<p>OPPO A5 (2020) 64GB&nbsp;l&agrave; mẫu&nbsp;smartphone&nbsp;tầm trung với gi&aacute; th&agrave;nh phải chăng nhưng được trang bị nhiều c&ocirc;ng nghệ hấp dẫn hứa hẹn sẽ &quot;lấy được l&ograve;ng&quot; c&aacute;c bạn trẻ năng động, thời trang.</p>\r\n\r\n<h3>Thiết kế hiện đại, bắt mắt</h3>\r\n\r\n<p>Việc sở hữu cho m&igrave;nh một ngoại h&igrave;nh rất thu h&uacute;t sẽ khiến người d&ugrave;ng c&oacute; nhiều cảm t&igrave;nh hơn v&agrave; dẫn tới quyết định mua một chiếc smartphone.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd-12.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-12.jpg\" title=\"Điện thoại OPPO A5 (2020) | Thiết kế\" /></a></p>\r\n\r\n<p>OPPO A5 (2020) thỏa m&atilde;n được ti&ecirc;u ch&iacute; n&agrave;y với họa tiết ấn tương tự d&ograve;ng OPPO Reno cao cấp ra mắt trước đ&oacute;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd-8.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-8.jpg\" title=\"Điện thoại OPPO A5 (2020) | Thiết kế\" /></a></p>\r\n\r\n<p>M&aacute;y c&oacute; những phi&ecirc;n bản m&agrave;u sắc rất trẻ trung, ph&ugrave; hợp với giới trẻ v&agrave; k&egrave;m theo hiệu ứng chuyển m&agrave;u dưới &aacute;nh s&aacute;ng đẹp mắt, tinh tế.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd-11.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Thiết kế mặt lưng\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-11.jpg\" title=\"Điện thoại OPPO A5 (2020) | Thiết kế mặt lưng\" /></a></p>\r\n\r\n<p>N&oacute;i chung khi cầm tr&ecirc;n tay OPPO A5 (2020) cho ch&uacute;ng ta cảm gi&aacute;c đ&acirc;y cũng l&agrave; một phụ kiện thời trang.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd-15.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Trải nghiệm cầm nắm\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-15.jpg\" title=\"Điện thoại OPPO A5 (2020) | Trải nghiệm cầm nắm\" /></a></p>\r\n\r\n<p>Mặt trước l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-man-hinh-giot-nuoc\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone màn hình giọt nước\">m&agrave;n h&igrave;nh &quot;giọt nước&quot;</a>&nbsp;k&iacute;ch thước 6.5 inch, với diện t&iacute;ch m&agrave;n h&igrave;nh chiếm to&agrave;n mặt trước l&agrave; 89.3%, bảo vệ bằng k&iacute;nh Gorilla Glass 3+.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd7.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Màn hình\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd7.jpg\" title=\"Điện thoại OPPO A5 (2020) | Màn hình\" /></a></p>\r\n\r\n<p>M&agrave;n h&igrave;nh n&agrave;y rộng r&atilde;i để bạn giải tr&iacute;, chơi game v&agrave; hỗ trở khả năng đọc nội dung dưới m&agrave;n h&igrave;nh mặt trời, chế độ bảo vệ mắt đ&acirc;y l&agrave; những t&iacute;nh năng thiết thực đối với người d&ugrave;ng.</p>\r\n\r\n<h3>Pin tr&acirc;u kh&ocirc;ng lo bị hết</h3>\r\n\r\n<p>Ng&agrave;y nay, người d&ugrave;ng ch&uacute;ng ta rất ngại phải sạc pin nhiều lần cho smartphone v&agrave; cường độ sử dụng lại ng&agrave;y một cao hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd5.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Thời lượng pin\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd5.jpg\" title=\"Điện thoại OPPO A5 (2020) | Thời lượng pin\" /></a></p>\r\n\r\n<p>Để hạn chế việc sạc pin m&agrave; vẫn đ&aacute;p ứng được cả ng&agrave;y d&agrave;i th&igrave; c&aacute;c nh&agrave; sản xuất phải t&iacute;ch hợp vi&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd?f=pin-khung-3000-mah\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone pin khủng pin trâu\">pin dung lượng lớn</a>&nbsp;cho chiếc m&aacute;y của m&igrave;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd6.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Thời lượng pin\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd6.jpg\" title=\"Điện thoại OPPO A5 (2020) | Thời lượng pin\" /></a></p>\r\n\r\n<p>Chiếc&nbsp;smartphone OPPO&nbsp;n&agrave;y được cung cấp năng lượng bởi vi&ecirc;n pin dung lượng l&ecirc;n đến 5.000 mAh, kết hợp với hệ điều h&agrave;nh ColorOS 6.1 v&agrave; phần cứng mới gi&uacute;p sản phẩm tối ưu hơn trong việc sử dụng.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;Tr&ecirc;n tay nhanh OPPO A5 (2020): Th&ecirc;m một sự lựa chọn hấp dẫn của OPPO!</p>\r\n\r\n<p>Với cường độ trung b&igrave;nh th&igrave; người d&ugrave;ng c&oacute; thể trải nghiệm m&aacute;y kh&aacute; thoải m&aacute;i cả ng&agrave;y hay tới ng&agrave;y thứ hai nếu nhu cầu &iacute;t hơn.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd-9.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Thời lượng pin\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-9.jpg\" title=\"Điện thoại OPPO A5 (2020) | Thời lượng pin\" /></a></p>\r\n\r\n<p>Một điểm th&uacute; vị, bạn c&oacute; &quot;h&ocirc; biến&quot; OPPO A5 (2020) th&agrave;nh một cục pin dự ph&ograve;ng v&agrave; sạc cho thiết bị kh&aacute;c th&ocirc;ng qua c&aacute;p kết nối OTG.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd-13.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Cảm biến vân tay ở mặt lưng\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-13.jpg\" title=\"Điện thoại OPPO A5 (2020) | Cảm biến vân tay ở mặt lưng\" /></a></p>\r\n\r\n<h3>4 camera gấy ấn tượng mạnh</h3>\r\n\r\n<p>Camera ch&iacute;nh l&agrave; điểm ấn tượng nhất tr&ecirc;n OPPO A5 (2020), sản phẩm n&agrave;y trang bị tới 4 camera gồm: camera ch&iacute;nh 12 MP, camera g&oacute;c rộng 8 MP 119 độ, camera đơn sắc 2 MP v&agrave; camera hỗ trợ đo độ s&acirc;u 2 MP.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd-10.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-10.jpg\" title=\"Điện thoại OPPO A5 (2020) | Camera sau\" /></a></p>\r\n\r\n<p>Camera ch&iacute;nh mang lại độ chi tiết cao trong bức ảnh, camera g&oacute;c rộng gi&uacute;p thu nhiều cảnh vật, hỗ trợ x&oacute;a ph&ocirc;ng &quot;ảo diệu&quot; v&agrave; ảnh đen trắng cho ai y&ecirc;u th&iacute;ch vẻ ho&agrave;i cổ.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd-14.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Giao diện camera sau\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-14.jpg\" title=\"Điện thoại OPPO A5 (2020) | Giao diện camera sau\" /></a></p>\r\n\r\n<p>N&oacute;i chung cụm camera n&agrave;y c&oacute; thể đ&aacute;p ứng tốt cho bạn hầu hết nhu cầu sử dụng hằng ng&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-6.jpg\" />Ảnh chụp chế độ b&igrave;nh thường</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-5.jpg\" />Ảnh chụp chế dộ ch&acirc;n dung x&oacute;a ph&ocirc;ng tr&ecirc;n Oppo A5 2020</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-7.jpg\" />Ảnh chụp chế độ ban đ&ecirc;m tr&ecirc;n Oppo A5 2020</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng dừng lại ở đ&oacute;, OPPO A5 (2020) c&ograve;n hỗ trợ t&iacute;nh năng Ultra Night Mode 2.0 gi&uacute;p chụp ảnh r&otilde; n&eacute;t trong điều kiện thiếu s&aacute;ng, quay video 4K c&ugrave;ng khả năng chống rung.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/210441/oppo-a5-2020-tgdd-4.jpg\" onclick=\"return false;\"><img alt=\"Điện thoại OPPO A5 (2020) | Ảnh selfie\" src=\"https://cdn.tgdd.vn/Products/Images/42/210441/oppo-a5-2020-tgdd-4.jpg\" title=\"Điện thoại OPPO A5 (2020) | Ảnh selfie\" /></a></p>\r\n\r\n<p>Một điều nữa camera selfie 8 MP t&iacute;ch hợp AI hỗ trợ l&agrave;m đẹp hứa hẹn mang lại cho c&aacute;c chị em những bức h&igrave;nh lung linh để chia sẻ l&ecirc;n mạng x&atilde; hội.</p>', 0, 10, 2, 7),
(8, 'Mô tả sản phẩm Áo Thun Polo Nam HILGOR 1985 Siêu Đẹp', 'mo-ta-san-pham-ao-thun-polo-nam-hilgor-1985-sieu-dep', 8, 79000, 0, 10, 1, 0, 0, 'Với chất vải cotton pha 65/35 bền đẹp, thun co giãn 4 chiều mát mẻ', '2019-12-21__80a8e2e8c3abe9e67d0c5836f7f1bc8f.jpg', 'Với chất vải cotton pha 65/35 bền đẹp, thun co giãn 4 chiều mát mẻ', NULL, '2019-12-20 19:25:27', '2019-12-20 20:06:00', 'Mô tả sản phẩm Áo Thun Polo Nam HILGOR 1985 Siêu Đẹp', '<ul>\r\n	<li>Với chất vải cotton pha 65/35 bền đẹp, thun co gi&atilde;n 4 chiều m&aacute;t mẻ, đ&acirc;y quả l&agrave; một sản phẩm đ&aacute;ng th&ecirc;m v&agrave;o tủ đồ cho c&aacute;c ch&agrave;ng trai năng động.</li>\r\n	<li>&Aacute;o bao gồm nhiều m&agrave;u sắc từ tươi tắn, trẻ trung hứa hẹn sẽ đốn gục tr&aacute;i tim của nhiều c&ocirc; g&aacute;i khi c&aacute;c ch&agrave;ng trai kho&aacute;c l&ecirc;n m&igrave;nh chiếc &aacute;o n&agrave;y.</li>\r\n</ul>', 0, 10, 0, 0),
(9, 'ÁO THUN NAM TAY DÀI THỜI TRANG NEW FASHION92 CAO CẤP 02', 'ao-thun-nam-tay-dai-thoi-trang-new-fashion92-cao-cap-02', 8, 120000, 0, 37, 1, 1, 0, 'Áo Thun Phông Nam Dài Tay Họa Tiết thời Trang', '2019-12-21__29c021013081f9534b05363695cc9268.jpg', 'Áo Thun Phông Nam Dài Tay Họa Tiết thời Trang', NULL, '2020-02-06 13:19:52', '2020-02-17 08:47:19', 'ÁO THUN NAM TAY DÀI THỜI TRANG NEW FASHION92 CAO CẤP 02', '<p>Sản phẩm: &Aacute;o Thun Ph&ocirc;ng Nam D&agrave;i Tay Họa Tiết thời Trang</p>\r\n\r\n<p>Chất liệu: Vải mềm mại, tho&aacute;ng m&aacute;t dễ thấm h&uacute;t mồ h&ocirc;i</p>\r\n\r\n<p>Phong c&aacute;ch: &Aacute;o thun d&agrave;i tay, cổ tr&ograve;n, phong c&aacute;ch đơn giản hiện đại, dễ phối đồ</p>\r\n\r\n<p>Ph&ugrave; hợp khi đi chơi, dạo phố c&ugrave;ng bạn b&egrave; &hellip;c&oacute; thể mặc theo nh&oacute;m&hellip;</p>\r\n\r\n<p>K&iacute;ch Thước: Size M, L ,XL</p>', 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `ra_product_id` int(11) NOT NULL DEFAULT 0,
  `ra_number` tinyint(4) NOT NULL DEFAULT 0,
  `ra_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ra_user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `ra_product_id`, `ra_number`, `ra_content`, `ra_user_id`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'sản phẩm tốt. Tôi sẽ ủnghộ shop', 1, '2019-12-18 17:00:00', '2019-12-18 17:00:00'),
(2, 4, 5, 'sản phẩm tốt. Tôi sẽ ủnghộ shop', 1, '2019-12-18 23:20:17', NULL),
(3, 6, 4, 'ok', 1, '2019-12-24 23:15:09', NULL),
(4, 6, 5, 'sản phẩm chất lượng', 1, '2019-12-17 02:24:00', NULL),
(5, 7, 4, 'Còn lỗi', 6, '2019-12-21 17:00:00', NULL),
(6, 7, 3, 'ac', 6, '2019-12-21 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `tr_user_id` int(11) NOT NULL DEFAULT 0,
  `tr_total` int(11) NOT NULL DEFAULT 0,
  `tr_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tr_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tr_user_id`, `tr_total`, `tr_note`, `tr_address`, `tr_phone`, `tr_status`, `created_at`, `updated_at`) VALUES
(4, 1, 118800, 'abc', 'Nam kì khởi nghĩa', '0975323376', 1, '2019-12-21 06:33:38', '2019-12-21 06:34:44'),
(5, 6, 18249000, 'abc', 'Nam kì khởi nghĩa', '012345678', 1, '2019-12-21 21:37:29', '2019-12-21 22:28:38'),
(6, 6, 15999000, 'tốt', 'Quảng Nam', '012345678', 1, '2019-12-22 00:42:43', '2019-12-22 00:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_pay` int(11) NOT NULL DEFAULT 0,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_code` timestamp NULL DEFAULT NULL,
  `code_active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `avatar`, `active`, `password`, `remember_token`, `created_at`, `updated_at`, `total_pay`, `address`, `about`, `code`, `time_code`, `code_active`, `time_active`) VALUES
(2, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '123456789', NULL, 1, '$2y$10$IG5//Fm8J2Dc/fZlmjveDe009qpyxPBNdYSKXNWkUTRfwUT9o9M5i', 'Ik1Kbu8SXiE0FWokREfeDLpV6kDHzu8e9bRNTmN3sKYb75CeBFBUoINhE1VR', '2019-12-16 07:52:15', '2019-12-16 07:52:15', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'admin', 'dienmay.vn2019@gmail.com', '0919918817', NULL, 1, '$2y$10$9kL.ONFsz9P9CpO0hvd/lO7TZXauOkBQ0MAatnLLa5eoNOIoEecZ6', NULL, '2019-12-16 07:53:14', '2019-12-16 07:53:14', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Phạm Thanh Tươi', 'phamthanhtuoi0@gmail.com', '0919918817', NULL, 1, '$2y$10$ndzmmZdZVB7l22I11gabnOHspwi7yaZUf7.SpZME3/W4AJ6hQIIuy', 'MLxstrtlAEetuWzLDWzrJ4hzCSSEKzZh0s8kzEVAbu1ZaB4w0rAwpUG9T1DZ', '2020-02-05 03:08:37', '2020-02-05 03:24:05', 0, NULL, NULL, '$2y$10$n2XYd.Vh44fDKB2b5BxkNuS86yjfnA/86BqIGChXRe6mXItvmdGN.', '2020-02-05 03:23:16', '$2y$10$R8W3aX.zH1SKs53YHYxJrOq4FXb8O9kAU2gOMIuObfFaXtPH47v4W', '2020-02-05 03:08:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_active_index` (`active`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_author_id_index` (`a_author_id`),
  ADD KEY `articles_c_hot_index` (`c_hot`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_name_unique` (`c_name`),
  ADD KEY `categories_c_slug_index` (`c_slug`),
  ADD KEY `categories_c_active_index` (`c_active`),
  ADD KEY `categories_c_home_index` (`c_home`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_or_transaction_id_index` (`or_transaction_id`),
  ADD KEY `orders_or_product_id_index` (`or_product_id`);

--
-- Indexes for table `page_statics`
--
ALTER TABLE `page_statics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_statics_ps_type_index` (`ps_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_pro_slug_index` (`pro_slug`),
  ADD KEY `products_pro_category_id_index` (`pro_category_id`),
  ADD KEY `products_pro_author_id_index` (`pro_author_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_ra_product_id_index` (`ra_product_id`),
  ADD KEY `ratings_ra_user_id_index` (`ra_user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tr_user_id_index` (`tr_user_id`),
  ADD KEY `transactions_tr_status_index` (`tr_status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_active_index` (`active`),
  ADD KEY `users_code_index` (`code`),
  ADD KEY `users_code_active_index` (`code_active`),
  ADD KEY `users_time_active_index` (`time_active`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `page_statics`
--
ALTER TABLE `page_statics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
