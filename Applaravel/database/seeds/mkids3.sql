-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2018 at 08:15 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mkids3`
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
(3, 'Bài viết nhé', 'hêlloddd', 1, 3, 0, 1, '2018-10-03 09:39:55', '2018-10-03 09:52:19'),
(4, 'Thông Báo Miễn Học Phí', 'Toàn bộ học sinh thuộc hộ nghèo sẽ được miễn phí hoàn toàn học phí khi nộp cho nhà trường bản photo hộ nghèo có công chứng kèm theo giấy xác minh của cán bộ UBND xã', 0, 12, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'THÔNG BÁO DỰ ÁN NỤ CƯỜI XINH', 'Kính gửi: Quý Phụ huynh Dự án “Summer For Joy” đã kết thúc với những hoạt động lý thú. Các con được trải nghiệm một chuỗi các môn thể thao, bài tập vận động: yoga, bóng rổ, bơi lội kết hợp các trò chơi vận động như đi, chạy, bò, chui, bước qua vật cản, lăn, ném,…  Các con có cơ hội thể hiện khả năng vượt lên chính mình thông qua cuộc thi Marathon – Vượt chướng ngại vật…. Các con đã chinh phục độ cao, bước qua chướng ngại vật, không sợ dơ và ướt… Bên cạnh đó, các bài học, bài tập, giờ chơi trong dự án còn cho con phát triển sự tâp trung, nâng cao sức khỏe tinh thần và hỗ trợ phát triển chiều cao. Qua dự án “Summer For Joy”, các con biết chia sẻ, xử lý tình huống, giao tiếp hòa đồng với các bạn và đặc biêt các con sự biết phối hợp, thể hiện tinh thần đoàn kết khi tham gia các bài tập vận động mang tính chất tập thể. Ngoài việc giúp các con được tham gia các môn thể thao, các bài tập vận động phát triển chiều cao, nhà trường muốn hướng đến việc hình thành cho các con kỹ năng bảo vệ vệ sinh cá nhân và nhất là vệ sinh răng miệng. Dự án “Nụ cười xinh” giúp các con có thời gian trải nghiêm trong 5 tuần (10/09 – 12/10/2018). Các con nhận biết được tầm quan trọng của hàm răng, hình thành kỹ năng, thói quen vệ sinh răng miệng đúng cách, vượt qua được nỗi sợ hãi khi đi khám răng và song song đó con được làm quen những thực phẩm tốt cho sức khỏe và cho hàm răng. Nội dung trọng tâm mà trẻ được tìm hiểu về “Nụ cười xinh”:Các con hiểu được tầm quan trọng của răng, quá trình hình thành và phát triển của răng, nguyên nhân gây sâu răng và một số bệnh về răng miệng. Qua đó, hình thành ý thức vệ sinh răng miệng đúng cách. Ngoài ra, dinh dưỡng không chỉ cần thiết cho sự phát triển cơ thể mà còn có tầm ảnh hưởng đến sự phát triển cho răng và nướu. Nhà trường rất hoan nghênh những ý kiến đóng góp, cung cấp thông tin hữu ích và sự đồng hành của Quý Phụ huynh để giúp chúng tôi hoàn thiện hơn nữa Chương trình giáo dục sớm cho các bé. Trân trọng cảm ơn Quý Phụ huynh!', 0, 3, 0, 1, '0000-00-00 00:00:00', '2018-10-17 19:55:23'),
(6, 'THÔNG BÁO TỔ CHỨC LỄ BẾ GIẢNG VÀ LỄ RA TRƯỜNG NĂM HỌC 2017-2018', 'Quý phụ huynh thân mến!\r\n\r\nTheo kế hoạch năm của Saigon Academy đã gửi đến Quý phụ huynh, Nhà trường xin thông tin về việc tổ chức LỄ BẾ GIẢNG và LỄ RA TRƯỜNG năm học 2017-2018 có thông tin thời gian cụ thể như sau:\r\n\r\nLỄ BẾ GIẢNG NĂM HỌC 2017 - 2018\r\n\r\nThời gian:\r\n\r\nSáng Thứ Sáu - Ngày 25/05/2018: Từ 7h30 đến 11h\r\nChiều Thứ Sáu - Ngày 25/05/2018: Từ 13h30 đến 17h\r\nĐịa điểm tổ chức: Đại Học Quốc Tế Hồng Bàng (Hội truờng lớn tầng 1) - Tại số 215 Điện Biên Phủ, Phường 15, Quận Bình Thạnh, TP.HCM\r\n\r\n \r\n\r\nLỄ RA TRƯỜNG NĂM HỌC 2017 – 2018\r\n\r\nThời gian: Sáng Chủ Nhật - Ngày 27/05/2018: Từ 7h30 đến 11h\r\n\r\nĐịa điểm tổ chức: Đại Học Quốc Tế Hồng Bàng (Hội truờng lớn tầng 1) - Tại số 215 Điện Biên Phủ, Phường 15, Quận Bình Thạnh, TP.HCM\r\n\r\n** Lưu ý:\r\n\r\nSố lượng ghế tại hội trường có giới hạn vì vậy Quý phụ huynh lưu ý, một học sinh chỉ đối đa 1 phụ huynh đi cùng (Đối với LỄ BẾ GIẢNG); một học sinh chỉ đối đa 2 phụ huynh đi cùng (Đối với LỄ RA TRƯỜNG).\r\nHọc sinh sẽ được nghỉ học vào ngày 25/05/2018, vì toàn thể cán bộ nhân viên của nhà trường tham gia tổ chức Lễ Bế Giảng năm học 2017-2018.\r\n \r\n\r\nQuý phụ huynh vui lòng đăng ký xác nhận tham gia chương trình tại phòng tuyển sinh của Nhà trường, để Nhà trường có cơ sở thông tin về số lượng phụ huynh tham gia, nhằm có sự chuẩn bị chu đáo nhất cho sự kiện LỄ BẾ GIẢNG và LỄ RA TRƯỜNG của các bé.\r\n\r\n \r\n\r\nTrân trọng cảm ơn Quý phụ huynh!\r\n\r\n------------------------\r\n\r\nBAN GIÁM HIỆU\r\n\r\nHệ Thống Trường Mầm Non Quốc Tế Saigon Academy', 0, 3, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '“SUMMER FOR JOY” GROWTH FOR HEIGHT WITHIN 12 WEEKS', 'Kính gửi: Quý Phụ huynh\r\n\r\nLà cha mẹ, ai trong chúng ta cũng mong con mình phát triển bình thường và khỏe mạnh như những đứa trẻ khác. Trong thời đại hiện nay, rất nhiều trẻ em có chiều cao phát triển vượt trội hơn chính cha mẹ chúng thời thơ ấu. Tuy nhiên, vẫn còn nhiều trẻ không đạt được chiều cao như bạn bè đồng trang lứa. Chính vì vậy, các bậc phụ huynh luôn mong muốn tìm ra các phương pháp lành mạnh để giúp con mình cao lớn hơn.\r\n\r\nĐể đạt được chiều cao tối ưu ngoài chế độ ăn uống thì các bài tập thể dục là các lựa chọn hữu ích để giúp trẻ phát triển tốt.   \r\n\r\nVới phương châm “Khai mở tiềm năng trí tuệ cho trẻ theo phương pháp Giáo dục sớm từ 0 tuổi”. Với mùa hè này, Hệ thống trường Quốc Tế SaiGon Academy đem đến cho trẻ những hoạt động trải nghiệm thú vị với các môn thể thao, các bài tập vận động: Bơi, Yoga, Bóng rổ và các bài tập phát triển chiều cao. Không chỉ đơn thuần các bé tham gia rèn luyện sự dẻo dai, cơ thể khỏe mạnh, chiều cao phát triển mà thông qua các hoạt động vận động, các bé có cơ hội thể hiện bản thân và khẳng định chính mình qua hội thi MARATHON – VƯỢT CHƯỚNG NGẠI VẬT.\r\n\r\n \r\n\r\nDự án “ SUMMER FOR JOY- GROWTH FOR HEIGHT WITHIN 12 WEEKS”\r\n\r\n \r\n\r\nĐây cũng là món quà tinh thần ba mẹ trang bị cho các con, thông qua đó xây dựng và hình thành cho bản thân trẻ kỹ năng sống sau này. Qua mỗi chương trình các con sẽ tích lũy dần thêm nhiều kinh nghiệm bổ ích, kỷ niệm cùng thầy cô, cùng bạn bè.\r\n\r\nNhà trường rất mong quý phụ huynh cho bé tham gia hoạt động bổ ích này.\r\n\r\nBƠI: Là môn thể thao lí tưởng, không chỉ giúp bé tăng chiều cao hiệu quả mà còn giúp bé có dáng vóc đẹp, thân hình cân đối. Khi bơi, bé được vận dụng tất cả các loại cơ, nhất là cơ bắp ở vùng chân, tay và ngực. Di chuyển, vùng vẫy trong nước đòi hỏi bé phải kéo duỗi và rèn luyện sự dẻo dai, bền bỉ của các cơ, giúp tăng chiều dài cột sống, mở rộng bờ vai và ngực, cải thiện chiều cao đáng kể.\r\n\r\nBÓNG RỔ: đòi hỏi sự linh hoạt của tay và mắt, sự hoạt động liên tục và chạy nhảy ở cường độ cao vì trẻ phải liên tục chạy xung quanh sân, nhờ đó mà cả chiều cao và vóc dáng của trẻ được cải thiện đáng kể. Đồng thời cho trẻ chơi bóng rổ còn phát triển tinh thần đồng đội, sự hợp tác trong cùng một nhóm và tinh thần thể thao.\r\n\r\nYOGA: Giúp phát triển trí não, cơ thể khỏe mạnh, tạo sự dẻo dai. Yoga kết hợp hài hoà giữa 2 yếu tố thể chất và tinh thần. Trẻ có thể cân bằng tâm trí,  tự do trong suy nghĩ giúp nâng cao nhận thức và sự tập trung. Với Yoga, trẻ được rèn luyện nhận thức về hơi thở, tạo khả năng giữ thăng bằng, trẻ tham gia các bài tập co và kéo giãn cơ thể, trẻ tự tin hòa nhập vào môi trường mới dễ dàng hơn.\r\n\r\nNhà trường rất hoan nghênh những ý kiến đóng góp và sự đồng hành của Quý Phụ huynh để giúp chúng tôi hoàn thiện hơn nữa Chương trình giáo dục sớm cho các bé.\r\n\r\nTrân trọng cảm ơn Quý Phụ huynh!\r\n\r\n', 0, 3, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'THÔNG BÁO DỰ ÁN VẢI SỢI', 'Kính gửi: Quý Phụ huynh\r\n\r\nDự án “Ngày trái đất” đã kết thúc với những hoạt động lý thú, nhà trường muốn chuyển tải thông điệp cũng như hình thành cho các bé ý thức cơ bản về tiết kiệm điện, nước,… và biết chia sẻ với mọi người xung quanh về tiết kiệm năng lượng và bảo vệ môi trường qua các hoạt động tuyên truyền bên trong và bên ngoài nhà trường. Thông qua dự án, giúp bé hiểu được “Mỗi hành động nhỏ sẽ mang đến ý nghĩa lớn góp phần thay đổi nhận thức cộng đồng về bảo vệ môi trường, tiết kiệm năng lượng, ứng phó với biến đổi khí hậu, góp phần gìn giữ nguồn tài nguyên tự nhiên của đất nước, không chỉ cho chúng ta hôm nay, mà còn cho các thế hệ tương lai”.\r\n\r\nVà dự án “Vải sợi” là dự án cuối cùng của năm học 2017 – 2018 được diễn ra 5 tuần (từ ngày 23/04/2018 – 25/05/2018), chắc chắn sẽ để lại cho bé nhiều kỉ niệm trước khi chào đón một mùa hè sôi động với nhiều trải nghiệm hứng thú. “Vải sợi” đóng vai trò quan trọng trong cuộc sống. Trẻ hiểu rõ được tính chất của từng loại vải để phù hợp với từng mục đích sử dụng, gần gũi, thiết thực. Trẻ sẽ được tái hiện lại quy trình làm việc của các cô thợ may qua thế giới trẻ thơ.\r\n\r\nNội dung trọng tâm mà trẻ được tìm hiểu về “Vải sợi”: Giúp trẻ biết tên gọi các loại nguyên liệu làm ra vải, đặc điểm công dụng của các loại vải. Trẻ phân loại, bảo quản được quần áo theo chất liệu vải: vải len, vải thun, vải lụa, vải nhung,… Trẻ biết quy trình hình thành nên 1 số loại vải sợi và biết ứng dụng của các loại vải sợi phù hợp với tính chất của chúng.\r\n\r\nTuy nhiên, để đạt được hiệu quả tốt nhất giúp bé có thể trải nghiệm được hết những thú vị và bất ngờ về dự án “Vải sợi”, nhà trường rất mong nhận được sự phối hợp của gia đình trong việc giúp trẻ khám phá, tìm hiểu về vải không những tại trường mà ngay cả khi trẻ ở nhà để các con có những khoảng thời gian học mà chơi, chơi mà học trong dự án này. Quý Phụ Huynh có thể hỗ trợ cung cấp tằm, lá dâu,… chất liệu vải khác nhau trong quá trình con tìm hiểu khám phá về vải.\r\n\r\nNhà trường rất hoan nghênh những ý kiến đóng góp và sự đồng hành của Quý Phụ huynh để giúp chúng tôi hoàn thiện hơn nữa Chương trình giáo dục sớm cho các bé.\r\n\r\nTrân trọng cảm ơn Quý Phụ huynh!\r\n\r\n', 0, 3, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'TRẢI NGHIỆM DU HỌC HÈ TẠI SINGAPORE', 'Kính gửi: Quý phụ huynh\r\n\r\nMột mùa hè trải nghiệm Quốc tế có thể làm thay đổi rất nhiều điều trong quãng thời gian quan trọng của bé sau này, Khóa trải nghiệm hè ngắn hạn ở nước ngoài không chỉ giúp các em nâng cao trình độ ngôn ngữ, môi trường rèn luyện bản thân mà còn mở mang tầm mắt để thấy một thế giới đa dạng và nhiều màu sắc hơn. Chương trình Trại hè Singapore là một kỳ nghỉ hè bổ ích và khác biệt, với những hoạt động thực tế khám phá môi trường sống hiện đại và văn minh.\r\n\r\nVới khuôn viên rộng tới 8,200m2, Arts Haus nằm ngay trung tâm của Ngọn Đồi Pearl và kết nối hài hoà với khu vườn Pearl’s Hill City Park toạ lạc ngay tại trung tâm Singapore. Được bao quanh bởi những trung tâm thương mại, Arts Haus giống như một ốc đảo xanh nổi lên giữa những toà nhà chọc trời. Arts Haus cung cấp một môi trường hoàn hảo dành cho các học sinh nhỏ tuổi. Nằm trên khu đất có diện tích 12.000m2, những cơ sở vật chất phục vụ cho nhu cầu và sở thích học tập của trẻ hiện hữu ở các khu vực xung quanh với những thiết kế đặc biệt cho khu vui chơi ngoài trời, nghệ thuật thị giác, giáo dục môi trường, chăm sóc công nghệ, âm nhạc và khiêu vũ.\r\n\r\nTrại hè Arts Haus sẽ mang đến những bài học và kinh nghiệm quý báu cho các em trong việc phát triển khả năng ngôn ngữ trong khi khám phá ra nét độc đáo và vẻ đẹp của Singapore.\r\n\r\nCHƯƠNG TRÌNH HỌC TẬP\r\n\r\nChương trình học kéo dài 5 ngày với mục tiêu phát triển khả năng học tiếng Anh mà kết hợp với những hoạt động khám phá vẻ đẹp của Singapore, chương trình của Arts Haus được thiết kế một cách phù hợp với độ tuổi và mức độ tiếng Anh của học sinh.\r\n\r\nTham gia các hoạt động giao lưu trong môi trường tiếng anh, Học tiếng anh thông qua việc khám phá những địa điểm nổi tiếng của Singapore như “Little India Essentials”, “Merlion Madness”, “Orchard Shopping”, “Gardens By the Bay Drawing”…. Hoạt động ngoại khóa kết hợp hài hòa giữa các giờ học tiếng anh mang lại cho các em những trải nghiệm mới về văn hóa, ngôn ngữ và phát triển kỹ năng làm việc đội nhóm.\r\n\r\nHOẠT ĐỘNG NGOẠI KHÓA\r\n\r\nHoạt động thể thao và sinh hoạt đội nhóm. Tham quan các địa điểm du lịch nổi tiếng như: Sở thú Singapore, Health Promotion Board, Sea Aquarium, Đảo Sentosa – Palawan beach, Singapore Botanic Garden.\r\n\r\nThời hạn đăng ký tour trước ngày 30/04/2018\r\nQuý phụ huynh có nhu cầu tham gia vui lòng liên hệ phòng tuyển sinh của nhà trường để được tư vấn đăng ký chương trình. Nhà trường rất hoan nghênh những ý kiến đóng góp và sự đồng hành của Quý Phụ huynh.\r\n\r\nTrân trọng cảm ơn Quý Phụ huynh!\r\n\r\n--------------------------\r\n\r\nBan Giám Hiệu\r\n\r\nHệ Thống Trường Mầm Non Quốc Tế Saigon Academy', 0, 3, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'THÔNG BÁO DỰ ÁN \"NGÀY TRÁI ĐẤT\"', 'Kính gửi: Quý Phụ huynh\r\n\r\nTrải qua dự án “Những quyển sách đáng yêu”, giúp trẻ hình thành kỹ năng, thói quen đọc sách cũng như có tinh thần yêu quý và giữ gìn sách, điều thú vị và ấn tượng nhất chính là các bé nhỏ được trải nghiệm thực tế rất nhiều như hoạt động bé đi các nhà sách, đường sách thành phố Hồ Chí Minh, thư viện sách Thành phố. Bé có thể phân loại các loại sách, cách trưng bày, sắp xếp và trang trí từng quầy sách khác nhau. Bên cạnh đó, các bé được ba mẹ đọc sách, kể chuyện tại thư viện của trường. Thông qua các hoạt động thực tế các bé nhận biết được đặc điểm, cấu tạo, các thể loại và cách tạo nên một quyển sách, hình thành kỹ năng, thói quen đọc sách cũng như có tinh thần yêu quý và giữ gìn sách.\r\n\r\nKết thúc dự án “Những quyển sách đáng yêu”, các bé còn tự tay làm ra những quyển sách bằng những vật liệu khác như giấy màu, vải nỉ, giấy carton,… Chính đôi bàn tay nhỏ xinh làm ra sản phẩm nên các bé càng trân trọng sản phẩm mình làm ra.\r\n\r\nĐến với dự án “Ngày trái đất” diễn ra trong 4 tuần (26/3- 20/4). Các bé được trải nghiệm tác hại của việc ô nhiễm môi trường, môi trường ảnh hưởng đến đời sống con người, mọi vật như thế nào? Thông qua đó, hình thành cho trẻ ý thức bảo vệ môi trường bằng những hành động và việc làm cụ thể như: không vứt rác bừa bãi, không bứt phá, chặt cây xanh, sử dụng điện tiết kiệm,…\r\n\r\nTuy nhiên, để đạt được hiệu quả tốt nhất giúp bé có thể trải nghiệm được hết những thú vị và bất ngờ về dự án “Ngày trái đất”, Nhà trường rất hoan nghênh những ý kiến đóng góp và sự đồng hành của Quý Phụ huynh để giúp chúng tôi hoàn thiện hơn nữa trong việc giúp trẻ khám phá, tìm hiểu không những tại trường mà ngay cả khi trẻ ở nhà để các con có những khoảng thời gian học mà chơi, chơi mà học trong dự án “Ngày trái đất”.\r\n\r\nTrân trọng cảm ơn Quý Phụ huynh!', 0, 3, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'THÔNG BÁO DỰ ÁN \"NHỮNG QUYỂN SÁCH ĐÁNG YÊU\"', 'Kính gửi: Quý Phụ huynh\r\n\r\nDự án “Khi bé vào bếp” vừa qua, các bé đã có cơ hội hình thành kỹ năng tự phục vụ, cũng như trải nghiệm các hoạt động khám phá đồ dùng nhà Bếp. Qua 6 tuần, các bé có thời gian tiếp xúc với các dụng cụ nhà Bếp gần gũi trong cuộc sống hàng ngày cũng như làm quen với các loại thực phẩm thông qua việc đi siêu thị lựa chọn nguyên liệu, sơ chế; tự chọn lựa món ăn theo sở thích, tự làm ra những món ăn đơn giản như salad rau củ, gỏi cuốn,… Đặc biệt các bé cơ hội thể hiện năng khiếu của mình thông qua cuộc thi “Khi bé vào bếp” diễn ra từ ngày 09/01 – 04/02.\r\n\r\nĐể hình thành kỹ năng, thói quen đọc sách cũng như có tinh thần yêu quý và giữ gìn sách, nhà trường cho các bé được trải nghiệm dự án “Những quyển sách đáng yêu” diễn ra trong 4 tuần (26/02/2018 – 23/03/2018).\r\n\r\nNhà trường rất hoan nghênh những ý kiến đóng góp và sự đồng hành của Quý Phụ huynh để giúp chúng tôi hoàn thiện hơn nữa Chương trình giáo dục sớm cho các bé.\r\n\r\nTrân trọng cảm ơn Quý Phụ huynh!', 0, 3, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'THÔNG BÁO NGHỈ LỄ THÁNG 04 VÀ 05/2018', 'Kính gửi: Quý Phụ Huynh\r\n\r\nHệ Thống Trường Mầm Non Quốc Tế Saigon Academy xin thông báo về ngày nghỉ lễ tháng 04 và 05/2018, với thông tin lịch nghỉ cụ thể như sau:\r\n\r\nLễ Giỗ Tổ Hùng Vương: Thứ 4 - 25/04/2018 (Lưu ý: 26 và 27/04/2018 học sinh đi học bình thường).\r\nNgày lễ Giải phóng Miền Nam: Thứ 2 - 30/04/2018.\r\nLễ Quốc Tế Lao Động: Thứ 3 – 01/05/2018 (Lưu ý: Thứ 4 – 02/05/2018 học sinh đi học lại bình thường).\r\nMọi thông tin thắc mắc Quý Phụ Huynh vui lòng liên hệ đến phòng tư vấn tuyển sinh của các sơ cở. Kính chúc Quý phụ huynh và gia đình có những ngày nghỉ Lễ thật vui vẻ và hạnh phúc.\r\n\r\nTrân trọng cảm ơn Quý Phụ huynh!', 0, 3, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(2, 1, 'Xin chào', NULL, NULL, 0, 1, '2018-09-17 19:05:28', '2018-09-17 19:05:28'),
(3, 21, 'heelalala', NULL, 3, 0, 0, '2018-10-17 20:34:36', '2018-10-17 20:34:36'),
(4, 21, 'nghi nhe moi nguoi :((', NULL, 3, 0, 0, '2018-10-17 20:35:21', '2018-10-17 20:35:21'),
(5, 21, 'Sao van chua duoc nghi nhe', NULL, 3, 0, 0, '2018-10-17 20:36:52', '2018-10-17 20:36:52'),
(6, 21, 'Sao van chua duoc nghi nhe', NULL, 3, 0, 0, '2018-10-17 20:38:14', '2018-10-17 20:38:14'),
(7, 21, 'hay qua moi nguoi oi', NULL, 4, 0, 0, '2018-10-17 20:42:29', '2018-10-17 20:42:29'),
(8, 21, 'fff', NULL, 4, 0, 0, '2018-10-17 20:44:57', '2018-10-17 20:44:57'),
(9, 21, 'fff', NULL, 4, 0, 0, '2018-10-17 20:45:21', '2018-10-17 20:45:21'),
(10, 21, 'Hay qua mặt trời ơi', NULL, 5, 0, 0, '2018-10-17 21:03:24', '2018-10-17 21:03:24'),
(11, 21, 'ssss', NULL, 5, 0, 0, '2018-10-17 22:12:18', '2018-10-17 22:12:18'),
(12, 21, 'Duoc roi nay', NULL, 5, 0, 0, '2018-10-17 22:19:17', '2018-10-17 22:19:17'),
(13, 21, 'Van chua duoc', NULL, 5, 0, 0, '2018-10-17 22:20:10', '2018-10-17 22:20:10'),
(14, 21, 'Hay quá', NULL, 6, 0, 0, '2018-10-22 23:28:07', '2018-10-22 23:28:07');

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
(7, '2 tuổi', 'sssss', 1, 1, 1, '2018-10-04 17:43:05', '2018-10-04 17:43:05'),
(8, '3 Tuổi', 'Dành cho học sinh 3 tuổi', 1, 0, 1, '2018-10-21 09:24:57', '2018-10-21 09:24:57');

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
(2, 'Mì tômaaa aaa', 'Ăn cho vui thôi chả no cũng chả có gì đáng nói cả', NULL, 0, 0, '2018-10-14 21:27:31', '2018-10-12 10:20:23'),
(3, 'Gà tây', 'Gà tây đầy đủ giúp tăng cân', NULL, 0, 0, '2018-10-18 00:07:28', '2018-10-18 00:07:28'),
(4, 'Sườn xào chua ngọt', 'Sườn heo: 700g\r\nHành khô: 2 củ\r\nHành lá: 5 cây\r\nNước mắm ngon: 2 muỗng\r\nGiấm: 4 muỗng\r\nTương cà: 2 muỗng\r\nĐường: 3 muỗng\r\nHạt tiêu: ½ muỗng cà phê\r\nHạt nêm: ½ muỗng cà phê\r\nMuối\r\nDầu ăn', NULL, 0, 0, '2018-10-21 09:28:50', '2018-10-21 09:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_list_menu_ref`
--

CREATE TABLE `tbl_list_menu_ref` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `list_menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tbl_list_menu_ref`
--

INSERT INTO `tbl_list_menu_ref` (`id`, `menu_id`, `list_menu_id`) VALUES
(1, 15, 1),
(2, 15, 2),
(3, 15, 3);

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
(3, 'toan', '22', 11, 222, 'Hello', NULL, 5, 0, 1, '2018-10-04 23:44:55', '2018-10-04 23:44:55'),
(4, 'Nguyễn Quốc Bảo', '6/9/2015', 111, 23, 'hhhh', NULL, 1, 0, 1, '0000-00-00 00:00:00', '2018-10-21 09:27:25'),
(5, 'Hoàng Quốc Anh', '05/09/2014', 123, 25, 'Nhảm nhí', NULL, 4, 0, 1, '0000-00-00 00:00:00', '2018-10-17 18:02:41'),
(6, 'Nguyễn Khắc Toàn', '06/07/2015', 101, 19, 'ffff', NULL, 1, 0, 1, '0000-00-00 00:00:00', '2018-10-21 09:27:35'),
(7, 'Thân Hữu Tuấn', '08/12/2016', 132, 27, NULL, NULL, 2, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Nguyễn Tiến Dũng', '04/12/2017', 105, 20, NULL, NULL, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Đỗ Minh Đức', '03/01/2014', 145, 29, NULL, NULL, 4, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Trương Anh Tuấn', '21/12/2015', 142, 31, NULL, NULL, 3, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Thân Xuân Thông', '15/04/2016', 129, 26, NULL, NULL, 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'toan', '22', 11, 222, 'Hêy', NULL, 4, 0, 0, '2018-10-21 09:56:09', '2018-10-21 09:56:09');

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
(1, 'Thực đợn S', 'Bữa sáng gốm nhiều món', NULL, 2, 1, 0, '2018-10-03 10:24:37', '2018-10-18 00:41:29'),
(2, 'Thực đợn S', 'món ăn', NULL, 0, 1, 1, '2018-10-03 10:29:58', '2018-10-18 00:41:21'),
(3, 'ssss', 'aaa', NULL, 0, 1, 1, '2018-10-05 10:52:30', '2018-10-18 00:41:25'),
(4, '1111', 'aaaa', NULL, 2, 0, 0, '2018-10-05 11:29:11', '2018-10-18 00:39:21'),
(5, '1111111', 'aaaassss', NULL, 0, 0, 0, '2018-10-05 11:30:35', '2018-10-18 00:39:23'),
(6, '1111', 'hhh', NULL, 1, 0, 0, '2018-10-08 09:34:32', '2018-10-18 00:39:28'),
(7, 'ssss', 'aaa', NULL, 1, 0, 0, '2018-10-08 19:09:13', '2018-10-18 00:39:31'),
(8, '1111', 'kkk', NULL, 2, 0, 0, '2018-10-08 19:09:34', '2018-10-11 23:19:33'),
(9, 'Test', 'Hey', NULL, 1, 0, 0, '2018-10-11 23:08:19', '2018-10-18 00:39:34'),
(10, 'aaa', 'aaa', NULL, 2, 0, 0, '2018-10-11 23:09:54', '2018-10-14 21:00:31'),
(11, 'aa', 'ssss', NULL, 1, 0, 0, '2018-10-11 23:16:34', '2018-10-18 00:39:36'),
(12, 'thuc don 12', 'lan n', NULL, 0, 0, 0, '2018-10-11 23:17:54', '2018-10-18 00:39:39'),
(13, 'Món mì tôm', 'Ăn chả no cũng chả có dinh dưỡng đâu nhé', NULL, NULL, 0, 0, '2018-10-12 10:16:06', '2018-10-18 00:39:42'),
(14, 'Test', 'Test nhé!!', NULL, 0, 0, 0, '2018-10-18 00:22:47', '2018-10-18 00:39:44'),
(15, 'Lại test đây', 'lần thứ n', NULL, 1, 0, 0, '2018-10-18 00:24:20', '2018-10-18 00:24:20');

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
(14, 3, 5, 2, 13),
(15, 1, 1, 1, 15),
(16, 2, 1, 1, 15),
(17, 8, 1, 1, 15),
(18, 4, 3, 1, 15),
(19, 6, 3, 1, 15),
(20, 5, 4, 1, 15),
(21, 3, 5, 2, 15);

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
(4, '1', 1, '000000', '2222222', 0, 1, '2018-09-30 14:01:27'),
(5, '3', NULL, NULL, NULL, 0, 8, '0000-00-00 00:00:00');

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
(2, 'Thông báo', 0, 'Đấy là thông báo nghỉ học nhé', NULL, '2018-10-23 00:00:00', 3, 2, '2018-09-30 15:59:13', '2018-10-22 22:53:10'),
(3, 'Test', 0, 'Kính gửi: Quý Phụ huynh Dự án “Summer For Joy” đã kết thúc với những hoạt động lý thú. Các con được trải nghiệm một chuỗi các môn thể thao, bài tập vận động: yoga, bóng rổ, bơi lội kết hợp các trò chơi vận động như đi, chạy, bò, chui, bước qua vật cản, lăn, ném,…  Các con có cơ hội thể hiện khả năng vượt lên chính mình thông qua cuộc thi Marathon – Vượt chướng ngại vật…. Các con đã chinh phục độ cao, bước qua chướng ngại vật, không sợ dơ và ướt… Bên cạnh đó, các bài học, bài tập, giờ chơi trong dự án còn cho con phát triển sự tâp trung, nâng cao sức khỏe tinh thần và hỗ trợ phát triển chiều cao. Qua dự án “Summer For Joy”, các con biết chia sẻ, xử lý tình huống, giao tiếp hòa đồng với các bạn và đặc biêt các con sự biết phối hợp, thể hiện tinh thần đoàn kết khi tham gia các bài tập vận động mang tính chất tập thể. Ngoài việc giúp các con được tham gia các môn thể thao, các bài tập vận động phát triển chiều cao, nhà trường muốn hướng đến việc hình thành cho các con kỹ năng bảo vệ vệ sinh cá nhân và nhất là vệ', NULL, '2018-10-23 00:00:00', 3, 2, '2018-10-22 19:32:30', '2018-10-22 20:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_program_ref`
--

CREATE TABLE `tbl_notification_program_ref` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT 'ID phụ huynh',
  `class_id` bigint(20) DEFAULT NULL COMMENT 'ID lớp học',
  `group_id` bigint(20) DEFAULT NULL COMMENT 'ID khối',
  `program_id` bigint(20) NOT NULL COMMENT 'ID chương trình'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notification_program_ref`
--

INSERT INTO `tbl_notification_program_ref` (`id`, `user_id`, `class_id`, `group_id`, `program_id`) VALUES
(3, 21, 1, 1, 3),
(4, 22, 4, 1, 3),
(5, 21, 1, 1, 2),
(6, 22, 4, 1, 2);

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
(1, NULL, 0, 'tiennx.it@gmail.com', NULL, NULL, NULL, NULL, '84989335466', '9097a8a8d2fb4862b7faa47b998fb071f84bfb58', '0f61760804aee7d89a2ba685cd757373', 0, 0, '123456', NULL, '2018-09-17 16:47:08', 0, NULL, 0, '2018-09-03 16:28:22', '2018-09-17 18:11:18'),
(3, 'Mr. Admin', 0, 'ngtoan97@gmail.com', 'aaa', 'aaaa', NULL, NULL, '222244444', '$2y$10$LXbiEt8Q6rdtmCeNS8dvQ.pbje0NlDJGqK4ZM9rl0NShKcd2Ladp.', '0f61760804aee7d89a2ba685cd757373', 0, 0, NULL, 'mVRiGt9BU3mY9uhVtcwhXmKF2gHVAt1dX2jwIBXJ1h1R04eskgjIDfcBfAfG', NULL, 0, NULL, 0, '2018-09-27 12:27:09', '2018-10-01 17:03:23'),
(4, 'Mr. Admin', 0, 'ngtoan@gmail.com', '2', 'aaaa', NULL, NULL, '22227777', '$2y$10$OBW4KnuByZz9UzjCgNzyU.pSFs9DLOviISFA5V/6ghBsulA95Ej.m', '0f61760804aee7d89a2ba685cd757373', 1, 1, NULL, NULL, NULL, 0, NULL, 2, '2018-09-27 22:40:48', '2018-10-01 14:49:01'),
(12, 'Nguyễn Văn A', 0, 'nguyenvanA@gmail.com', 'fb.com', 'Tp HảiDuong', 'helele', NULL, '123456', '$2y$10$2KnGh64a8p4Q65IMPA/qLudwVng5PPe5mo5aR2NNLRLTeYAqeAJxO', '0f61760804aee7d89a2ba685cd757373', 1, 1, NULL, NULL, NULL, 0, NULL, 2, '0000-00-00 00:00:00', '2018-10-22 22:29:31'),
(13, 'Nguyễn Văn B', 0, 'nguyenvanB@gmail.com', NULL, NULL, NULL, NULL, '123455', '$2y$10$LXbiEt8Q6rdtmCeNS8dvQ.pbje0NlDJGqK4ZM9rl0NShKcd2Ladp.', '0f61760804aee7d89a2ba685cd757373', 1, 1, NULL, NULL, NULL, 0, NULL, 2, '0000-00-00 00:00:00', '2018-10-22 22:29:32'),
(14, 'Nguyễn Văn C', 0, 'nguyenvanC@gmail.com', NULL, NULL, NULL, NULL, '123457', '$2y$10$LXbiEt8Q6rdtmCeNS8dvQ.pbje0NlDJGqK4ZM9rl0NShKcd2Ladp.', '0f61760804aee7d89a2ba685cd757373', 1, 1, NULL, NULL, NULL, 0, NULL, 2, '0000-00-00 00:00:00', '2018-10-22 22:29:34'),
(15, 'Nguyễn Văn D', 0, 'nguyenvanD@gmail.com', NULL, NULL, NULL, NULL, '123458', '$2y$10$LXbiEt8Q6rdtmCeNS8dvQ.pbje0NlDJGqK4ZM9rl0NShKcd2Ladp.', '0f61760804aee7d89a2ba685cd757373', 1, 1, NULL, NULL, NULL, 0, NULL, 2, '0000-00-00 00:00:00', '2018-10-22 22:29:36'),
(16, 'Nguyến Văn E', 0, 'nguyenvanE@gmail.com', NULL, NULL, NULL, NULL, '124572', '$2y$10$LXbiEt8Q6rdtmCeNS8dvQ.pbje0NlDJGqK4ZM9rl0NShKcd2Ladp.', '0f61760804aee7d89a2ba685cd757373', 1, 1, NULL, NULL, NULL, 0, NULL, 2, '0000-00-00 00:00:00', '2018-10-22 22:29:37'),
(17, 'Nguyễn Văn F', 0, 'nguyenvanF@gmail.com', NULL, NULL, NULL, NULL, '263547', '$2y$10$LXbiEt8Q6rdtmCeNS8dvQ.pbje0NlDJGqK4ZM9rl0NShKcd2Ladp.', '0f61760804aee7d89a2ba685cd757373', 1, 1, NULL, NULL, NULL, 0, NULL, 2, '0000-00-00 00:00:00', '2018-10-22 22:29:38'),
(18, 'Nhữ Văn Chiến', 0, 'nhuvanchien@gmail.com', NULL, NULL, NULL, NULL, '', '$2y$10$LXbiEt8Q6rdtmCeNS8dvQ.pbje0NlDJGqK4ZM9rl0NShKcd2Ladp.', '0f61760804aee7d89a2ba685cd757373', 1, 1, NULL, 'B7OwUdVztB5icSLI4nAMoEon62uUqdfe5Zjysu7E2L0FWzaVDWEeyYY1QHdz', NULL, 0, NULL, 2, '0000-00-00 00:00:00', '2018-10-22 22:29:39'),
(20, 'Trần Đại Ngư', 0, 'trandaingu@gmail.com', 'fb.com', 'Tp HảiDuong', NULL, NULL, '651656', '$2y$10$358bC6rRX/fgxkjhgQyQRefXo/CR7mleiuh5vQZZ05bwhlE7pCZMe', '0f61760804aee7d89a2ba685cd757373', 1, 1, NULL, NULL, NULL, 0, NULL, 2, '0000-00-00 00:00:00', '2018-10-22 22:29:40'),
(21, 'Hey', 0, 'ngtoankma@gmail.com', '33', 'TP Hải Dương', NULL, NULL, '6525633212', '$2y$10$n.TyFx56zq1jrcOF4Sh7WOVtWoCL7ZJAOM9DsHnkzvQnjKUMRTqjG', '0f61760804aee7d89a2ba685cd757373', 0, 1, NULL, '6pm7POleRydIfOgtDRtUSxeahOyAoDd9xewqhZ7Kg5LozRIQcBDYDCxFk61f', NULL, 0, NULL, 2, '2018-09-30 21:48:14', '2018-10-17 18:55:57'),
(22, 'Trinh', 0, 'ngtoankma@gmail.com', '66', 'TP Hải Dương', NULL, NULL, '1234', '$2y$10$9xt.tr6sCUVX5wP0kyzIV.bRaDs1G8pBYo8LtOJ8qWVyNA8E7g33.', '0f61760804aee7d89a2ba685cd757373', 0, 1, NULL, NULL, NULL, 0, NULL, 2, '2018-09-30 21:50:17', '2018-10-17 17:56:17'),
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
(3, 22, 4),
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
  ADD KEY `member_id_idx` (`user_id`),
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_list_menu`
--
ALTER TABLE `tbl_list_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_list_menu_ref`
--
ALTER TABLE `tbl_list_menu_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_menu_ref`
--
ALTER TABLE `tbl_menu_ref`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_notification_his`
--
ALTER TABLE `tbl_notification_his`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_notification_program`
--
ALTER TABLE `tbl_notification_program`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_notification_program_ref`
--
ALTER TABLE `tbl_notification_program_ref`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  ADD CONSTRAINT `tbl_notification_program_ref_member_id_tbl_member_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`),
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
