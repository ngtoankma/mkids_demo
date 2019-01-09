-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2018 at 08:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mkids`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article`
--

CREATE TABLE `tbl_article` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT 'Tiêu đề',
  `content` text NOT NULL COMMENT 'Nội dung bài viết',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Phạm vi tin tức (0 - Toàn trường; 1 - Theo khối; 2 - Theo lớp; 3 - Từng cá nhân)',
  `user_id` bigint(20) NOT NULL COMMENT 'ID người tạo',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái xóa (0: chưa xóa - 1: đã xóa)',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt (0: không kích hoạt; 1: kích hoạt)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_article`
--

INSERT INTO `tbl_article` (`id`, `title`, `content`, `type`, `user_id`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bài viết mới', 'Nội dung bài viết', 0, 1, 0, 1, '2018-09-04 00:38:11', '2018-09-04 00:38:11'),
(2, 'Tin mới 2', 'Nội dung tin 2', 0, 1, 0, 1, '2018-09-16 19:12:02', '2018-09-16 19:12:02'),
(3, 'Bài viết nhé', 'hêlloddd', 1, 3, 0, 0, '2018-10-03 09:39:55', '2018-10-03 09:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article_image`
--

CREATE TABLE `tbl_article_image` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT 'Tiêu đề',
  `image_path` varchar(255) NOT NULL COMMENT 'Đường dẫn ảnh',
  `article_id` bigint(20) NOT NULL COMMENT 'ID bài viết',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt (0: không kích hoạt; 1: kích hoạt)',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT 'Trạng thái xóa (0: chưa xóa - 1: đã xóa)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_article_image`
--

INSERT INTO `tbl_article_image` (`id`, `title`, `image_path`, `article_id`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, 'ảnh tin tức', '/uploads/images/article/2018/09/16/687dfbe18199149b0b16893e9f790a2d.jpg', 2, 1, 0, '2018-09-16 19:19:29', '2018-09-16 19:20:49'),
(3, 'ảnh tin tức', '/uploads/images/article/2018/09/16/63d2f9e5403d959a08273635f961cf5b.jpg', 2, 1, 0, '2018-09-16 19:19:31', '2018-09-16 19:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article_ref`
--

CREATE TABLE `tbl_article_ref` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL COMMENT 'ID học sinh',
  `class_id` bigint(20) DEFAULT NULL COMMENT 'ID lớp học',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'ID khối',
  `article_id` bigint(20) NOT NULL COMMENT 'ID bài viết'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `id` bigint(20) NOT NULL,
  `name` varchar(127) NOT NULL COMMENT 'Tên lớp',
  `description` text COMMENT 'Mô tả chung',
  `group_id` bigint(20) NOT NULL COMMENT 'ID khối',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái xóa (0: chưa xóa - 1: đã xóa)',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt (0: không kích hoạt; 1: kích hoạt)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`id`, `name`, `description`, `group_id`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, '1A', 'Lớp 1A', 1, 0, 1, '2018-09-09 20:18:31', '2018-10-04 17:44:04'),
(2, '2A', 'Lớp 2A', 4, 1, 1, '2018-09-29 20:37:18', '2018-10-04 23:40:40'),
(3, '3A', 'Lớp 3A', 1, 0, 1, '2018-09-30 20:49:56', '2018-09-30 20:49:56'),
(4, '4A', 'Lớp 4A', 1, 0, 1, '2018-09-30 20:50:43', '2018-09-30 20:50:43'),
(5, '5A', 'Lớp 5A', 2, 0, 1, '2018-10-04 23:44:12', '2018-10-04 23:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'ID người bình luận',
  `content` text NOT NULL COMMENT 'Nội dung bình luận',
  `parent_id` bigint(20) DEFAULT NULL COMMENT 'ID bình luận gốc',
  `article_id` bigint(20) DEFAULT NULL COMMENT 'ID bài viết',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái xóa (0: chưa xóa - 1: đã xóa)',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt (0: không kích hoạt; 1: kích hoạt)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `user_id`, `content`, `parent_id`, `article_id`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Xin chào', NULL, 1, 0, 1, '2018-09-17 19:05:28', '2018-09-17 19:05:28'),
(2, 1, 'Xin chào', NULL, NULL, 0, 1, '2018-09-17 19:05:28', '2018-09-17 19:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` bigint(20) NOT NULL,
  `name` varchar(127) NOT NULL COMMENT 'Tên trường',
  `description` text COMMENT 'Mô tả chung',
  `school_id` bigint(20) NOT NULL COMMENT 'ID trường',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái xóa (0: chưa xóa - 1: đã xóa)',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt (0: không kích hoạt; 1: kích hoạt)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `name`, `description`, `school_id`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, '1 tuổi', NULL, 1, 0, 1, '2018-09-04 00:21:52', '2018-09-04 00:21:52'),
(2, '2 tuổi', '2222', 1, 0, 1, '2018-10-04 17:38:11', '2018-10-04 17:38:11'),
(4, '2 tuổi', '2222', 1, 1, 1, '2018-10-04 17:39:07', '2018-10-04 17:39:07'),
(5, '2 tuổi', 'ssss', 1, 1, 1, '2018-10-04 17:42:33', '2018-10-04 17:42:33'),
(6, '2 tuổi', 'sssss', 1, 1, 1, '2018-10-04 17:42:51', '2018-10-04 17:42:51'),
(7, '2 tuổi', 'sssss', 1, 1, 1, '2018-10-04 17:43:05', '2018-10-04 17:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_list_menu`
--

CREATE TABLE `tbl_list_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8_vietnamese_ci NOT NULL,
  `image_path` text COLLATE utf8_vietnamese_ci,
  `is_delete` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tbl_list_menu`
--

INSERT INTO `tbl_list_menu` (`id`, `title`, `description`, `image_path`, `is_delete`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Trứng rán', 'hàm lượng canxi cao.\r\nGiúp học sinh bớt ngu', '', 0, 0, '2018-10-14 21:02:49', '2018-10-12 00:00:00'),
(2, 'Mì tômaaa aaa', 'Ăn cho vui thôi chả no cũng chả có gì đáng nói cả', NULL, 0, 0, '2018-10-14 21:27:31', '2018-10-12 10:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_list_menu_ref`
--

CREATE TABLE `tbl_list_menu_ref` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `list_menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` bigint(20) NOT NULL,
  `name` varchar(127) NOT NULL COMMENT 'Tên học sinh',
  `birthday` varchar(23) DEFAULT NULL COMMENT 'Ngày sinh',
  `height` bigint(20) DEFAULT NULL COMMENT 'Chiều cao (cm)',
  `weight` bigint(20) DEFAULT NULL COMMENT 'Cân nặng (kg)',
  `description` text COMMENT 'Giới thiệu chung',
  `image_path` varchar(255) DEFAULT NULL COMMENT 'Ảnh đại diện của học sinh',
  `class_id` bigint(20) NOT NULL COMMENT 'ID lớp',
  `is_delete` tinyint(1) NOT NULL COMMENT 'Trạng thái xóa (0: chưa xóa - 1: đã xóa)',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt (0: không kích hoạt; 1: kích hoạt)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `name`, `birthday`, `height`, `weight`, `description`, `image_path`, `class_id`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bim', '2016-01-01', 100, 30, 'Đẹp zai	', NULL, 1, 0, 1, '2018-09-09 20:18:58', '2018-09-09 20:18:58'),
(2, 'DOM', '12', 1234, 12, 'DOM khó hiểu', NULL, 1, 0, 1, '2018-09-29 21:38:45', '2018-09-29 23:10:10'),
(3, 'toan', '22', 11, 222, 'Hello', NULL, 5, 0, 1, '2018-10-04 23:44:55', '2018-10-04 23:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member_activity`
--

CREATE TABLE `tbl_member_activity` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL COMMENT 'ID học sinh',
  `date` date NOT NULL COMMENT 'Ngày hoạt động',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Loạt hoạt động (0: Đi học; 1: Nghỉ học; 2: Đi dã ngoại; 3: Hoạt động văn nghệ; 4: Khai giảng; 5: Bế giảng; 6: Bắt đầu đi học; 7: Nghỉ hẳn)',
  `description` varchar(255) DEFAULT NULL COMMENT 'Thông tin hoạt động',
  `health` tinyint(2) DEFAULT '0' COMMENT 'Sức khỏe (0: Ốm; 1: Bình thường; 2: Khỏe mạnh)',
  `height` bigint(20) DEFAULT NULL COMMENT 'Chiều cao (cm)',
  `weight` bigint(20) DEFAULT NULL COMMENT 'Cân nặng (kg)',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt (0: không kích hoạt; 1: kích hoạt)',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái xóa (0: chưa xóa - 1: đã xóa)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member_activity`
--

INSERT INTO `tbl_member_activity` (`id`, `member_id`, `date`, `type`, `description`, `health`, `height`, `weight`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, 1, '2018-09-09', 0, 'Sức khỏe tốt', 1, 100, 30, 1, 0, '2018-09-09 20:19:32', '2018-09-09 20:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member_user_ref`
--

CREATE TABLE `tbl_member_user_ref` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL COMMENT 'ID học sinh',
  `user_id` bigint(20) NOT NULL COMMENT 'ID phụ huynh'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) NOT NULL COMMENT 'Tiêu đề',
  `description` text NOT NULL COMMENT 'Giới thiệu chung',
  `image_path` varchar(255) DEFAULT NULL COMMENT 'Ảnh minh họa',
  `type` tinyint(2) DEFAULT NULL COMMENT 'Loại thực đơn (0: Sáng - 1: Trưa - 2: Chiều)',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái xóa (0: chưa xóa - 1: đã xóa)',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt (0: không kích hoạt; 1: kích hoạt)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `title`, `description`, `image_path`, `type`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thực đợn S', 'Bữa sáng gốm nhiều món', NULL, 2, 0, 0, '2018-10-03 10:24:37', '2018-10-14 20:42:00'),
(2, 'Thực đợn S', 'món ăn', NULL, 0, 0, 1, '2018-10-03 10:29:58', '2018-10-11 23:23:14'),
(3, 'ssss', 'aaa', NULL, 0, 1, 1, '2018-10-05 10:52:30', '2018-10-14 21:05:05'),
(4, '1111', 'aaaa', NULL, 2, 0, 0, '2018-10-05 11:29:11', '2018-10-05 11:29:11'),
(5, '1111111', 'aaaassss', NULL, 0, 0, 0, '2018-10-05 11:30:35', '2018-10-05 11:30:35'),
(6, '1111', 'hhh', NULL, 1, 0, 0, '2018-10-08 09:34:32', '2018-10-08 19:08:57'),
(7, 'ssss', 'aaa', NULL, 1, 0, 0, '2018-10-08 19:09:13', '2018-10-08 19:09:13'),
(8, '1111', 'kkk', NULL, 2, 1, 0, '2018-10-08 19:09:34', '2018-10-11 23:19:33'),
(9, 'Test', 'Hey', NULL, 1, 0, 0, '2018-10-11 23:08:19', '2018-10-11 23:08:19'),
(10, 'aaa', 'aaa', NULL, 2, 1, 0, '2018-10-11 23:09:54', '2018-10-14 21:00:31'),
(11, 'aa', 'ssss', NULL, 1, 0, 0, '2018-10-11 23:16:34', '2018-10-11 23:16:34'),
(12, 'thuc don 12', 'lan n', NULL, 0, 0, 0, '2018-10-11 23:17:54', '2018-10-11 23:17:54'),
(13, 'Món mì tôm', 'Ăn chả no cũng chả có dinh dưỡng đâu nhé', NULL, NULL, 0, 0, '2018-10-12 10:16:06', '2018-10-12 10:16:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_ref`
--

CREATE TABLE `tbl_menu_ref` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL COMMENT 'ID học sinh',
  `class_id` bigint(20) DEFAULT NULL COMMENT 'ID lớp học',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'ID khối',
  `menu_id` bigint(20) NOT NULL COMMENT 'ID thực đơn'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_menu_ref`
--

INSERT INTO `tbl_menu_ref` (`id`, `member_id`, `class_id`, `group_id`, `menu_id`) VALUES
(1, 3, 5, 2, 4),
(2, 1, 1, 1, 5),
(3, 2, 1, 1, 5),
(4, 3, 5, 2, 5),
(5, 1, 1, 1, 6),
(6, 1, 1, 1, 7),
(7, 1, 1, 1, 9),
(8, 1, 1, 1, 11),
(9, 1, 1, 1, 12),
(10, 2, 1, 1, 12),
(11, 3, 5, 2, 12),
(12, 1, 1, 1, 13),
(13, 2, 1, 1, 13),
(14, 3, 5, 2, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` bigint(20) NOT NULL,
  `sender_id` varchar(16) DEFAULT NULL COMMENT 'ID của người gửi thông báo',
  `receiver_id` bigint(20) DEFAULT NULL COMMENT 'ID của người nhận thông báo',
  `receiver_phone` varchar(16) DEFAULT NULL COMMENT 'SĐT của người nhận thông báo',
  `content` text COMMENT 'Nội dung thông báo',
  `type` tinyint(2) DEFAULT '0' COMMENT 'Loại thông báo (0 - Notification; 1 - Notification + SMS)',
  `article_id` bigint(20) DEFAULT NULL COMMENT 'ID bài viết',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `sender_id`, `receiver_id`, `receiver_phone`, `content`, `type`, `article_id`, `created_at`) VALUES
(1, '1', 1, '01222222', 'Helleoeoe', 1, 1, '2018-09-30 13:59:08'),
(4, '1', 1, '000000', '2222222', 0, 1, '2018-09-30 14:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_his`
--

CREATE TABLE `tbl_notification_his` (
  `id` bigint(20) NOT NULL,
  `sender_id` varchar(16) DEFAULT NULL COMMENT 'ID của người gửi thông báo',
  `receiver_id` bigint(20) DEFAULT NULL COMMENT 'ID của người nhận thông báo',
  `receiver_phone` varchar(16) DEFAULT NULL COMMENT 'SĐT của người nhận thông báo',
  `content` text COMMENT 'Nội dung thông báo',
  `type` tinyint(2) DEFAULT '0' COMMENT 'Loại thông báo (0 - Notification; 1 - Notification + SMS)',
  `article_id` bigint(20) DEFAULT NULL COMMENT 'ID bài viết',
  `status` smallint(6) DEFAULT NULL COMMENT 'Trạng thái push notification (0 - Không có registration_ids; 1 - Thành công; 2 - Thất bại)',
  `response` text COMMENT 'Response của server',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notification_his`
--

INSERT INTO `tbl_notification_his` (`id`, `sender_id`, `receiver_id`, `receiver_phone`, `content`, `type`, `article_id`, `status`, `response`, `created_at`) VALUES
(1, '1', 1, NULL, 'Tin nhắn mới 1', 0, 2, 1, NULL, '2018-09-17 15:31:09'),
(2, '1', 1, NULL, 'Tin nhắn mới 2', 0, 2, 1, NULL, '2018-09-17 15:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_program`
--

CREATE TABLE `tbl_notification_program` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Tiêu đề',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Phạm vi thông báo (0 - Toàn trường; 1 - Theo khối; 2 - Theo lớp; 3 - Từng cá nhân)',
  `content` text NOT NULL COMMENT 'Nội dung thông báo',
  `article_id` bigint(20) DEFAULT NULL COMMENT 'Gắn thông báo vào bài viết',
  `start_time` datetime NOT NULL COMMENT 'Thời gian bắt đầu',
  `user_id` bigint(20) NOT NULL COMMENT 'ID người tạo',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Trạng thái (0: nháp; 1: chờ phê duyệt; 2: phê duyệt; 3: đã gửi)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notification_program`
--

INSERT INTO `tbl_notification_program` (`id`, `name`, `type`, `content`, `article_id`, `start_time`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chương trình mới', 1, 'Thông báo', 1, '2018-09-04 00:00:00', 1, 1, '2018-09-03 17:40:19', '2018-09-03 17:40:19'),
(2, 'Thông báo', 1, 'Đấy là thông báo nghỉ học nhé', NULL, '2018-09-29 00:00:00', 3, 2, '2018-09-30 15:59:13', '2018-09-30 15:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_program_ref`
--

CREATE TABLE `tbl_notification_program_ref` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL COMMENT 'ID học sinh',
  `class_id` bigint(20) DEFAULT NULL COMMENT 'ID lớp học',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'ID khối',
  `program_id` bigint(20) NOT NULL COMMENT 'ID chương trình'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notification_program_ref`
--

INSERT INTO `tbl_notification_program_ref` (`id`, `member_id`, `class_id`, `group_id`, `program_id`) VALUES
(1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `id` bigint(20) NOT NULL,
  `account` varchar(255) NOT NULL COMMENT 'Địa chỉ mail hoặc SĐT cần xác thực',
  `otp` varchar(100) NOT NULL COMMENT 'Mã otp',
  `is_lock` tinyint(1) DEFAULT '0' COMMENT 'Đã khóa account hay chưa',
  `lock_time` bigint(20) DEFAULT '0' COMMENT 'Thời gian khóa',
  `expired_time` datetime NOT NULL COMMENT 'Thời gian mã xác nhận còn hiệu lực',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bang luu thong tin ma xac nhan';

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`id`, `account`, `otp`, `is_lock`, `lock_time`, `expired_time`, `created_at`, `updated_at`) VALUES
(1, 'tiennx.it@gmail.com', '939955', 0, 0, '2018-09-03 17:24:41', '2018-09-03 16:24:41', '2018-09-03 16:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `id` bigint(20) NOT NULL,
  `name` varchar(127) NOT NULL COMMENT 'Tên trường',
  `phone` varchar(15) DEFAULT NULL COMMENT 'SĐT liên hệ',
  `email` varchar(63) DEFAULT NULL COMMENT 'Email',
  `website` varchar(127) DEFAULT NULL COMMENT 'Website',
  `address` varchar(255) DEFAULT NULL COMMENT 'Địa chỉ',
  `description` text COMMENT 'Mô tả chung',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt (0: không kích hoạt; 1: kích hoạt)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`id`, `name`, `phone`, `email`, `website`, `address`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mầm non Kitty', '0989335466', 'tiennx.it@gmail.com', NULL, 'Hà Nội', NULL, 1, '2018-09-04 00:20:00', '2018-09-04 00:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` bigint(20) NOT NULL COMMENT 'ID tu tang',
  `name` varchar(127) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `cfg_type` varchar(255) NOT NULL DEFAULT 'ALL',
  `value` text,
  `params` text,
  `group_name` varchar(255) NOT NULL DEFAULT '',
  `default_value` text,
  `credentials` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bang Luu cau hinh cua he thong';

-- --------------------------------------------------------

--
-- Table structure for table `tbl_summary`
--

CREATE TABLE `tbl_summary` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL COMMENT 'ID học sinh',
  `date` date DEFAULT NULL COMMENT 'Ngày hoạt động',
  `week` bigint(20) DEFAULT NULL COMMENT 'Tuần',
  `summary` tinyint(2) DEFAULT NULL COMMENT 'Tổng kết (0: Kém; 1: Yếu; 2: TB; 3: Khá; 4: Tốt; 5: Xuất sắc)',
  `learning` tinyint(2) DEFAULT NULL COMMENT 'Tổng kết (0: Kém; 1: Yếu; 2: TB; 3: Khá; 4: Tốt; 5: Xuất sắc)',
  `behavior` tinyint(2) DEFAULT NULL COMMENT 'Tổng kết (0: Kém; 1: Yếu; 2: TB; 3: Khá; 4: Tốt; 5: Xuất sắc)',
  `attendance` tinyint(2) DEFAULT NULL COMMENT 'Đi học đầy đủ (0: Ít đi học; 1: Đầy đủ; 2: Chăm chỉ)',
  `description` varchar(255) DEFAULT NULL COMMENT 'Nhận xét chung',
  `user_id` bigint(20) NOT NULL COMMENT 'ID người tạo',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái kích hoạt (0: không kích hoạt; 1: kích hoạt)',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT 'Trạng thái xóa (0: chưa xóa - 1: đã xóa)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_summary`
--

INSERT INTO `tbl_summary` (`id`, `member_id`, `date`, `week`, `summary`, `learning`, `behavior`, `attendance`, `description`, `user_id`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-09-11', NULL, 5, 5, 5, 5, 'Tốt', 1, 1, 0, '2018-09-11 17:25:25', '2018-09-11 17:25:25'),
(2, 1, NULL, NULL, 4, 4, 5, 5, 'Tốt', 1, 1, 0, '2018-09-11 17:25:27', '2018-09-12 16:51:38'),
(3, 1, '2018-09-11', NULL, 4, 4, 5, 5, 'Tốt', 1, 1, 0, '2018-09-12 16:51:56', '2018-09-12 16:51:56'),
(4, 1, '2018-09-11', NULL, 4, 4, 5, 5, 'Tốt', 1, 1, 0, '2018-09-12 16:52:52', '2018-09-12 16:52:52'),
(5, 1, '2018-09-11', NULL, 4, 4, 5, 5, 'Tốt', 1, 1, 0, '2018-09-12 16:57:34', '2018-09-12 16:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token_session`
--

CREATE TABLE `tbl_token_session` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'ID tai khoan dang ky su dung app',
  `account` varchar(255) NOT NULL COMMENT 'Tai khoan cua nguoi dung',
  `msisdn` varchar(15) NOT NULL COMMENT 'So dien thoai cua nguoi dung',
  `token` varchar(255) NOT NULL COMMENT 'Token xac thuc',
  `expired_time` datetime NOT NULL COMMENT 'Thoi gian token co hien luc',
  `key_refresh` varchar(255) NOT NULL COMMENT 'Key refresh phuc vu lay lai token',
  `os_type` mediumint(9) DEFAULT '0' COMMENT 'Loại HĐH (0: Android; 1: iOS)',
  `user_type` tinyint(2) DEFAULT NULL COMMENT 'Loại user (0: Hiệu trưởng - 1: Giáo viên - 2: Phụ huynh',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_token_session`
--

INSERT INTO `tbl_token_session` (`id`, `user_id`, `account`, `msisdn`, `token`, `expired_time`, `key_refresh`, `os_type`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'tiennx.it@gmail.com', '84989335466', 'A5009D8B-8B19-FEF4-A98B-2EA857F09AFF', '2018-09-18 19:02:59', '07D75806-E7D5-1E33-BD29-6CAFBB47AC66', 0, 0, '2018-09-03 16:30:39', '2018-09-17 19:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Họ tên người dùng',
  `gender` tinyint(1) DEFAULT '0' COMMENT 'Giới tính (0: Nữ; 1: Nam)',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email người dùng',
  `facebook` varchar(255) DEFAULT NULL COMMENT 'Địa chỉ facebook',
  `address` varchar(255) DEFAULT NULL COMMENT 'Địa điểm',
  `description` longtext COMMENT 'Mô tả',
  `image_path` varchar(255) DEFAULT NULL COMMENT 'Ảnh đại diện cho người dùng',
  `msisdn` varchar(18) NOT NULL COMMENT 'Số điện thoại của người dùng',
  `password` varchar(255) NOT NULL COMMENT 'Mật khẩu (đã được mã hóa)',
  `salt` varchar(255) NOT NULL COMMENT 'Chuỗi mã hóa mật khẩu',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái xóa (0: chưa xóa - 1: đã xóa)',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Trạng thái kích hoạt (0: bị khóa; 1: kích hoạt)',
  `token_id` varchar(255) DEFAULT NULL COMMENT 'registration_ids để gửi notification',
  `remember_token` varchar(255) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL COMMENT 'Thoi gian gan nhat nguoi dung xem notification',
  `is_lock` tinyint(1) DEFAULT '0' COMMENT 'Đã khóa account hay chưa',
  `lock_time` bigint(20) DEFAULT NULL COMMENT 'Thời gian khóa',
  `type` tinyint(2) DEFAULT NULL COMMENT 'Loại user (0: Hiệu trưởng - 1: Giáo viên - 2: Phụ huynh',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `gender`, `email`, `facebook`, `address`, `description`, `image_path`, `msisdn`, `password`, `salt`, `is_delete`, `status`, `token_id`, `remember_token`, `last_update`, `is_lock`, `lock_time`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 'tiennx.it@gmail.com', NULL, NULL, NULL, NULL, '84989335466', '9097a8a8d2fb4862b7faa47b998fb071f84bfb58', '0f61760804aee7d89a2ba685cd757373', 0, 1, '123456', NULL, '2018-09-17 16:47:08', 0, NULL, 0, '2018-09-03 16:28:22', '2018-09-17 18:11:18'),
(3, 'Mr. Admin', 0, 'ngtoan97@gmail.com', 'aaa', 'aaaa', NULL, NULL, '222244444', '$2y$10$LXbiEt8Q6rdtmCeNS8dvQ.pbje0NlDJGqK4ZM9rl0NShKcd2Ladp.', '0f61760804aee7d89a2ba685cd757373', 0, 0, NULL, 'If4Rq8mTywyUL8xxBPwoIkTbySZUiNu5CyBcbI8jGXtRYKyigzTKSfFV4cld', NULL, 0, NULL, 0, '2018-09-27 12:27:09', '2018-10-01 17:03:23'),
(4, 'Mr. Admin', 0, 'ngtoan@gmail.com', '2', 'aaaa', NULL, NULL, '22227777', '$2y$10$OBW4KnuByZz9UzjCgNzyU.pSFs9DLOviISFA5V/6ghBsulA95Ej.m', '0f61760804aee7d89a2ba685cd757373', 1, 1, NULL, NULL, NULL, 0, NULL, 2, '2018-09-27 22:40:48', '2018-10-01 14:49:01'),
(21, 'Hey', 0, 'ngtoankma@gmail.com', '33', 'TP Hải Dương', NULL, NULL, '6525633212', '$2y$10$PPzLiXGtzWdjmY8Kk89mcuOMoBpR2KfPcLZg2/LPHO088jnnvAT9K', '0f61760804aee7d89a2ba685cd757373', 0, 1, NULL, NULL, NULL, 0, NULL, 2, '2018-09-30 21:48:14', '2018-10-01 16:01:04'),
(22, 'Trinh', 0, 'ngtoankma@gmail.com', '66', 'TP Hải Dương', NULL, NULL, '1', '$2y$10$sqcXb14t5QDmY2SazNvwY.vTqKtCGUrqU3Pg/TITnP8R3Ce5jyCeu', '0f61760804aee7d89a2ba685cd757373', 0, 1, NULL, NULL, NULL, 0, NULL, 2, '2018-09-30 21:50:17', '2018-10-01 16:01:14'),
(23, 'Hêy', 0, 'ngtoan97@gmail.com', 'hhh', 'Tp', NULL, NULL, '12121', '$2y$10$iR6mAUiM.LSz54YFEdZqluGXX/BK2HxtHvOrnOAxCPvQWQ.PwqRZW', '0f61760804aee7d89a2ba685cd757373', 0, 1, NULL, NULL, NULL, 0, NULL, 1, '2018-10-01 09:22:51', '2018-10-01 10:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_class_ref`
--

CREATE TABLE `tbl_user_class_ref` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'ID user',
  `class_id` bigint(20) NOT NULL COMMENT 'ID lớp học'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_class_ref`
--

INSERT INTO `tbl_user_class_ref` (`id`, `user_id`, `class_id`) VALUES
(1, 1, 1),
(2, 21, 1),
(3, 22, 1),
(4, 23, 1),
(5, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_school_ref`
--

CREATE TABLE `tbl_user_school_ref` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'ID user',
  `school_id` bigint(20) NOT NULL COMMENT 'ID trường'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_signin_log`
--

CREATE TABLE `tbl_user_signin_log` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `created_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_article`
--
ALTER TABLE `tbl_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `tbl_article_image`
--
ALTER TABLE `tbl_article_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id_idx` (`article_id`);

--
-- Indexes for table `tbl_article_ref`
--
ALTER TABLE `tbl_article_ref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id_idx` (`article_id`),
  ADD KEY `class_id_idx` (`class_id`),
  ADD KEY `group_id_idx` (`group_id`),
  ADD KEY `member_id_idx` (`member_id`);

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id_idx` (`group_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_idx` (`user_id`),
  ADD KEY `parent_id_idx` (`parent_id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id_idx` (`school_id`);

--
-- Indexes for table `tbl_list_menu`
--
ALTER TABLE `tbl_list_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_list_menu_ref`
--
ALTER TABLE `tbl_list_menu_ref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id_idx` (`menu_id`),
  ADD KEY `list_menu` (`list_menu_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id_idx` (`class_id`);

--
-- Indexes for table `tbl_member_activity`
--
ALTER TABLE `tbl_member_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id_idx` (`member_id`);

--
-- Indexes for table `tbl_member_user_ref`
--
ALTER TABLE `tbl_member_user_ref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id_idx` (`member_id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu_ref`
--
ALTER TABLE `tbl_menu_ref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id_idx` (`class_id`),
  ADD KEY `group_id_idx` (`group_id`),
  ADD KEY `member_id_idx` (`member_id`),
  ADD KEY `menu_id_idx` (`menu_id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id_idx` (`sender_id`),
  ADD KEY `receiver_id_idx` (`receiver_id`),
  ADD KEY `article_id_idx` (`article_id`);

--
-- Indexes for table `tbl_notification_his`
--
ALTER TABLE `tbl_notification_his`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id_idx` (`sender_id`),
  ADD KEY `receiver_id_idx` (`receiver_id`),
  ADD KEY `article_id_idx` (`article_id`);

--
-- Indexes for table `tbl_notification_program`
--
ALTER TABLE `tbl_notification_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_idx` (`user_id`),
  ADD KEY `article_id_idx` (`article_id`);

--
-- Indexes for table `tbl_notification_program_ref`
--
ALTER TABLE `tbl_notification_program_ref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id_idx` (`class_id`),
  ADD KEY `group_id_idx` (`group_id`),
  ADD KEY `member_id_idx` (`member_id`),
  ADD KEY `program_id_idx` (`program_id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_school`
--
ALTER TABLE `tbl_school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tbl_summary`
--
ALTER TABLE `tbl_summary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id_idx` (`member_id`);

--
-- Indexes for table `tbl_token_session`
--
ALTER TABLE `tbl_token_session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`account`),
  ADD UNIQUE KEY `msisdn` (`msisdn`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `msisdn` (`msisdn`);

--
-- Indexes for table `tbl_user_class_ref`
--
ALTER TABLE `tbl_user_class_ref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id_idx` (`class_id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `tbl_user_school_ref`
--
ALTER TABLE `tbl_user_school_ref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id_idx` (`school_id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `tbl_user_signin_log`
--
ALTER TABLE `tbl_user_signin_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_article`
--
ALTER TABLE `tbl_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_article_image`
--
ALTER TABLE `tbl_article_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_article_ref`
--
ALTER TABLE `tbl_article_ref`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_list_menu`
--
ALTER TABLE `tbl_list_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_list_menu_ref`
--
ALTER TABLE `tbl_list_menu_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_member_activity`
--
ALTER TABLE `tbl_member_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_member_user_ref`
--
ALTER TABLE `tbl_member_user_ref`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_menu_ref`
--
ALTER TABLE `tbl_menu_ref`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_notification_his`
--
ALTER TABLE `tbl_notification_his`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_notification_program`
--
ALTER TABLE `tbl_notification_program`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_notification_program_ref`
--
ALTER TABLE `tbl_notification_program_ref`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_school`
--
ALTER TABLE `tbl_school`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID tu tang';
--
-- AUTO_INCREMENT for table `tbl_summary`
--
ALTER TABLE `tbl_summary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_token_session`
--
ALTER TABLE `tbl_token_session`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_user_class_ref`
--
ALTER TABLE `tbl_user_class_ref`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_user_school_ref`
--
ALTER TABLE `tbl_user_school_ref`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_signin_log`
--
ALTER TABLE `tbl_user_signin_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_article`
--
ALTER TABLE `tbl_article`
  ADD CONSTRAINT `tbl_article_user_id_tbl_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_article_image`
--
ALTER TABLE `tbl_article_image`
  ADD CONSTRAINT `tbl_article_image_article_id_tbl_article_id` FOREIGN KEY (`article_id`) REFERENCES `tbl_article` (`id`);

--
-- Constraints for table `tbl_article_ref`
--
ALTER TABLE `tbl_article_ref`
  ADD CONSTRAINT `tbl_article_ref_article_id_tbl_article_id` FOREIGN KEY (`article_id`) REFERENCES `tbl_article` (`id`),
  ADD CONSTRAINT `tbl_article_ref_class_id_tbl_class_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_class` (`id`),
  ADD CONSTRAINT `tbl_article_ref_group_id_tbl_group_id` FOREIGN KEY (`group_id`) REFERENCES `tbl_group` (`id`),
  ADD CONSTRAINT `tbl_article_ref_member_id_tbl_member_id` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`id`);

--
-- Constraints for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD CONSTRAINT `tbl_class_group_id_tbl_group_id` FOREIGN KEY (`group_id`) REFERENCES `tbl_group` (`id`);

--
-- Constraints for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `tbl_comment_parent_id_tbl_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `tbl_comment` (`id`),
  ADD CONSTRAINT `tbl_comment_user_id_tbl_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD CONSTRAINT `tbl_group_school_id_tbl_school_id` FOREIGN KEY (`school_id`) REFERENCES `tbl_school` (`id`);

--
-- Constraints for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD CONSTRAINT `tbl_member_class_id_tbl_class_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_class` (`id`);

--
-- Constraints for table `tbl_member_activity`
--
ALTER TABLE `tbl_member_activity`
  ADD CONSTRAINT `tbl_member_activity_member_id_tbl_member_id` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`id`);

--
-- Constraints for table `tbl_member_user_ref`
--
ALTER TABLE `tbl_member_user_ref`
  ADD CONSTRAINT `tbl_member_user_ref_member_id_tbl_member_id` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`id`),
  ADD CONSTRAINT `tbl_member_user_ref_user_id_tbl_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_menu_ref`
--
ALTER TABLE `tbl_menu_ref`
  ADD CONSTRAINT `tbl_menu_ref_class_id_tbl_class_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_class` (`id`),
  ADD CONSTRAINT `tbl_menu_ref_group_id_tbl_group_id` FOREIGN KEY (`group_id`) REFERENCES `tbl_group` (`id`),
  ADD CONSTRAINT `tbl_menu_ref_member_id_tbl_member_id` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`id`),
  ADD CONSTRAINT `tbl_menu_ref_menu_id_tbl_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `tbl_menu` (`id`);

--
-- Constraints for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD CONSTRAINT `tbl_notification_article_id_tbl_article_id` FOREIGN KEY (`article_id`) REFERENCES `tbl_article` (`id`),
  ADD CONSTRAINT `tbl_notification_receiver_id_tbl_user_id` FOREIGN KEY (`receiver_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_notification_his`
--
ALTER TABLE `tbl_notification_his`
  ADD CONSTRAINT `tbl_notification_his_article_id_tbl_article_id` FOREIGN KEY (`article_id`) REFERENCES `tbl_article` (`id`),
  ADD CONSTRAINT `tbl_notification_his_receiver_id_tbl_user_id` FOREIGN KEY (`receiver_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_notification_program`
--
ALTER TABLE `tbl_notification_program`
  ADD CONSTRAINT `tbl_notification_program_article_id_tbl_article_id` FOREIGN KEY (`article_id`) REFERENCES `tbl_article` (`id`),
  ADD CONSTRAINT `tbl_notification_program_user_id_tbl_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_notification_program_ref`
--
ALTER TABLE `tbl_notification_program_ref`
  ADD CONSTRAINT `tbl_notification_program_ref_class_id_tbl_class_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_class` (`id`),
  ADD CONSTRAINT `tbl_notification_program_ref_group_id_tbl_group_id` FOREIGN KEY (`group_id`) REFERENCES `tbl_group` (`id`),
  ADD CONSTRAINT `tbl_notification_program_ref_member_id_tbl_member_id` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`id`),
  ADD CONSTRAINT `tpti` FOREIGN KEY (`program_id`) REFERENCES `tbl_notification_program` (`id`);

--
-- Constraints for table `tbl_summary`
--
ALTER TABLE `tbl_summary`
  ADD CONSTRAINT `tbl_summary_member_id_tbl_member_id` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`id`);

--
-- Constraints for table `tbl_token_session`
--
ALTER TABLE `tbl_token_session`
  ADD CONSTRAINT `tbl_token_session_user_id_tbl_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_user_class_ref`
--
ALTER TABLE `tbl_user_class_ref`
  ADD CONSTRAINT `tbl_user_class_ref_class_id_tbl_class_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_class` (`id`),
  ADD CONSTRAINT `tbl_user_class_ref_user_id_tbl_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_user_school_ref`
--
ALTER TABLE `tbl_user_school_ref`
  ADD CONSTRAINT `tbl_user_school_ref_school_id_tbl_school_id` FOREIGN KEY (`school_id`) REFERENCES `tbl_school` (`id`),
  ADD CONSTRAINT `tbl_user_school_ref_user_id_tbl_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
