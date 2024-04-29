-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2023 lúc 04:27 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `amthuctv`
--
CREATE DATABASE IF NOT EXISTS `amthuctv` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `amthuctv`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_mon_an`
--

CREATE TABLE `danh_muc_mon_an` (
  `id` int(11) NOT NULL,
  `ten_danh_muc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc_mon_an`
--

INSERT INTO `danh_muc_mon_an` (`id`, `ten_danh_muc`) VALUES
(1, 'Món ăn chính'),
(2, 'Món ăn vặt'),
(3, 'Trái cây'),
(4, 'Món ăn kèm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem_phuc_vu`
--

CREATE TABLE `diem_phuc_vu` (
  `id` int(11) NOT NULL,
  `ten_quan` varchar(255) DEFAULT NULL,
  `gioi_thieu_chung` text DEFAULT NULL,
  `dia_chi_quan` varchar(255) DEFAULT NULL,
  `gio_mo_cua` time DEFAULT NULL,
  `mon_an_id` int(11) DEFAULT NULL,
  `gio_dong_cua` time DEFAULT NULL,
  `hinh_anh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_estonian_ci DEFAULT NULL,
  `so_dien_thoai` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `diem_phuc_vu`
--

INSERT INTO `diem_phuc_vu` (`id`, `ten_quan`, `gioi_thieu_chung`, `dia_chi_quan`, `gio_mo_cua`, `mon_an_id`, `gio_dong_cua`, `hinh_anh`, `so_dien_thoai`) VALUES
(1, 'Quán Cây Sung', '<p>Qu&aacute;n C&acirc;y Sung - B&uacute;n Nước L&egrave;o l&agrave; một địa điểm được sắp xếp trong danh mục M&oacute;n Ăn v&agrave; Qu&aacute;n C&acirc;y Sung - B&uacute;n Nước L&egrave;o nằm ở địa chỉ 676, V&otilde; Nguy&ecirc;n Gi&aacute;p, Phường 8, Tr&agrave; Vinh. Ngo&agrave;i ra bạn cũng c&oacute; thể t&igrave;m kiếm th&ocirc;ng tin của doanh nghiệp trong khu vực từ c&aacute;c li&ecirc;n kết. Đ&acirc;y l&agrave; một trang web rất hữu &iacute;ch gi&uacute;p bạn t&igrave;m kiếm th&ocirc;ng tin chi tiết của một địa điểm v&agrave; chỉ dẫn đường đi đến Qu&aacute;n C&acirc;y Sung - B&uacute;n Nước L&egrave;o</p>\r\n', ' 676 Võ Nguyên Giáp, Phường 8, Trà Vinh.', '07:00:00', 1, '19:00:00', 'caysung.jpg', ''),
(2, 'Quán Ngọc Tiền', '<p>Qu&aacute;n Ăn Ngọc Tiền l&agrave; một địa điểm được sắp xếp trong danh mục qu&aacute;n ăn gia đ&igrave;nh Ngọc Ti&ecirc;n nằm ở địa chỉ Tr&agrave; C&uacute;. Ngo&agrave;i ra bạn cũng c&oacute; thể t&igrave;m kiếm th&ocirc;ng tin của doanh nghiệp trong khu vực từ c&aacute;c li&ecirc;n kết. Đ&acirc;y l&agrave; một trang web rất hữu &iacute;ch gi&uacute;p bạn t&igrave;m kiếm th&ocirc;ng tin chi tiết của một địa điểm v&agrave; chỉ dẫn đường đi đến qu&aacute;n ăn gia đ&igrave;nh Ngọc Ti&ecirc;n.</p>\r\n', 'Hàm Tân, Trà Cú, Trà Vinh', '08:00:00', 2, '22:20:00', 'ngoctien.jpg', ''),
(3, 'Út Hảo', '<p>Đến với Tr&agrave; Vinh th&igrave; chắc chắn bạn sẽ nghe nhắc ngay đến m&oacute;n b&aacute;nh canh Bến C&oacute;, một trong những m&oacute;n ăn đặc sản tạo n&ecirc;n thương hiệu của v&ugrave;ng đất t&igrave;nh đất t&igrave;nh người n&agrave;y. B&aacute;nh được l&agrave;m từ bột gạo, m&agrave;u trắng, thơm m&ugrave;i dịu v&agrave; ăn rất dai, nước l&egrave;o ngọt thanh. Khi ăn, trong t&ocirc; b&aacute;nh canh c&ograve;n c&oacute; nhiều thứ kh&aacute;c hấp dẫn như l&ograve;ng, ruột, tim heo, gi&ograve; heo v&agrave; một &iacute;t rau thơm. B&aacute;nh Canh Bến C&oacute; &Uacute;t Hảo l&agrave; một trong những qu&aacute;n được y&ecirc;u th&iacute;ch nhất của thực kh&aacute;ch khi đến với Tr&agrave; Vinh.</p>\r\n\r\n<p>Hương vị nước l&egrave;o nấu từ thịt heo đậm đ&agrave;. Sợi b&aacute;nh canh được l&agrave;m nguy&ecirc;n chất từ bột gạo, nhờ đ&oacute; m&agrave; c&oacute; được độ dai mềm, vị b&ugrave;i, m&ugrave;i thơm của gạo. Nước l&egrave;o nh&igrave;n trong vắt nhưng c&oacute; vị thanh ngọt từ xương heo. Ngo&agrave;i ra, đội ngũ nh&acirc;n viện nhiệt t&igrave;nh, tận t&acirc;m v&agrave; chu đ&aacute;o sẽ mang đến cho thực kh&aacute;ch nhựng gi&acirc;y ph&uacute;t thư gi&atilde;n tuyệt vời v&agrave; ho&agrave;n to&agrave;n h&agrave;i l&ograve;ng về B&aacute;nh Canh Bến C&oacute; &Uacute;t Hảo. Qu&aacute;n c&oacute; kh&ocirc;ng gian rộng r&atilde;i, l&uacute;c n&agrave;o cũng tấp nập kh&aacute;ch ra v&agrave;o, kh&ocirc;ng chỉ kh&aacute;ch địa phương m&agrave; c&ograve;n du kh&aacute;ch tỉnh kh&aacute;c lẫn nước ngo&agrave;i. Qu&aacute;n c&ograve;n b&aacute;n th&ecirc;m b&aacute;nh t&eacute;t Tr&agrave; Cu&ocirc;n ngon nức tiếng của đất Tr&agrave; Vinh.</p>\r\n', 'QL53, Nguyệt Hoá, Châu Thành, Trà Vinh.', '06:00:00', 3, '18:00:00', 'uthao.jpg', '0972652653'),
(4, 'Bún suông Hùi Yến', '<p>Muốn thưởng thức th&ecirc;m m&oacute;n b&uacute;n Su&ocirc;ng đậm vị Tr&agrave; Vinh th&igrave; bạn h&atilde;y gh&eacute; ngay đến qu&aacute;n B&uacute;n Su&ocirc;ng H&ugrave;i Yến - Đặc Sản Tr&agrave; Vinh. B&uacute;n, t&ocirc;m v&agrave; thịt ba chỉ l&agrave; th&agrave;nh phần chủ yếu của b&uacute;n su&ocirc;ng khiến thực kh&aacute;ch ăn ho&agrave;i kh&ocirc;ng ch&aacute;n. Những miếng chả d&agrave;i được nặn từ con t&ocirc;m m&agrave; l&agrave; t&ocirc;m tươi, mập, tr&ocirc;ng rất ngon c&ugrave;ng v&agrave;i l&aacute;t thịt ba chỉ luộc k&egrave;m gi&aacute; trụng, rau x&agrave; l&aacute;ch v&agrave; bắp cải trắng b&agrave;o sợi. Tương xay v&agrave; ớt xay l&agrave; hỗn hợp nước chấm rất ngon khi ăn b&uacute;n su&ocirc;ng.</p>\r\n', '56 Hùng Vương, Phường 3, Trà Vinh', '06:00:00', 4, '20:30:00', 'huiyen.jpg', ' 0907861571'),
(5, 'Dừa sáp Duy Nhất', '<p>Tr&aacute;i dừa S&aacute;p, cơ bản ph&acirc;n th&agrave;nh 05 loại: tr&aacute;i tr&ograve;n, tr&aacute;i d&agrave;i, tr&aacute;i c&oacute; cạnh, tr&aacute;i vỏ xanh v&agrave; tr&aacute;i vỏ v&agrave;ng. Nếu chỉ nh&igrave;n h&igrave;nh dạng v&agrave; m&agrave;u sắc b&ecirc;n ngo&agrave;i của tr&aacute;i th&igrave; cũng sẽ kh&ocirc;ng ph&acirc;n biệt&nbsp;được dừa S&aacute;p v&agrave; dừa thường. C&aacute;ch duy nhất để nhận dạng tr&aacute;i dừa đặc ruột l&agrave; lắc tr&aacute;i dừa khi gi&agrave;. Tại đ&acirc;y người mua c&oacute; thể được hướng dẫn v&agrave; chọn mua đ&uacute;ng theo &yacute; muốn.</p>\r\n', 'Ấp Vĩnh Trường, Châu Thành, Trà Vinh.', '06:00:00', 5, '23:00:00', 'duynhat.jpg', '0915569152'),
(6, 'Dừa sáp Thi Thi', '<p>&quot;DỪA S&Aacute;P THI THI &ldquo;Chuy&ecirc;n cung cấp sỉ v&agrave; lẻ Dừa S&aacute;p v&agrave; Mứt Dừa S&aacute;p tr&ecirc;n to&agrave;n quốc&rdquo; Dừa s&aacute;p được chia ra 3 loại ch&iacute;nh: - Dừa s&aacute;p loại 1 (S&aacute;p đặc) - Dừa s&aacute;p loại 2 (S&aacute;p lỡ) - Dừa s&aacute;p loại 3 (S&aacute;p lỏng) Mứt dừa s&aacute;p b&ecirc;n Shop c&oacute; 2 vị: Vị l&aacute; Cẩm v&agrave; vị l&aacute; Dứa. Mứt được chia ra l&agrave;m 3 loại: - Mứt dừa s&aacute;p loại 1: Mứt d&agrave;i - Mứt dừa s&aacute;p loại 2: Mứt ngắn - Mứt dừa s&aacute;p loại 3: Mứt vụng Mứt loại 1, mứt loại 2 v&agrave; mứt loại 3 chất lượng như nhau, chỉ kh&aacute;c nhau về độ d&agrave;i. Hiện tại shop lu&ocirc;n tuyển sỉ, CTV, đại l&yacute; v&agrave; nh&agrave; ph&acirc;n phối tr&ecirc;n to&agrave;n quốc.</p>\r\n', 'Số 171 Quốc lộ 60, khóm 3, Trà Vinh', '06:00:00', 5, '23:00:00', 'thithi.jpg', '0393551575'),
(7, 'Dì Hai Khâm', '<p>Do nguồn t&eacute;p tự nhi&ecirc;n (nguy&ecirc;n liệu l&agrave;m t&ocirc;m kh&ocirc;) ng&agrave;y c&agrave;ng &iacute;t (m&ocirc;i trường &ocirc; nhiễm, điều kiện sinh th&aacute;i thay đổi) n&ecirc;n số hộ l&agrave;m t&ocirc;m kh&ocirc; ng&agrave;y c&agrave;ng &iacute;t đi. Hiện x&atilde; Vinh Kim chỉ c&ograve;n v&agrave;i hộ l&agrave;m từ 30-40kg t&ocirc;m kh&ocirc;/ng&agrave;y (10kg t&eacute;p tươi l&agrave;m ra được 1kg t&ocirc;m kh&ocirc;).&nbsp;Sản phẩm l&agrave;m ra kh&ocirc;ng đủ b&aacute;n,&nbsp;v&igrave;&nbsp;vậy kh&aacute;ch muốn mua&nbsp;thường phải đặt h&agrave;ng trước.</p>\r\n\r\n<p>T&ocirc;m kh&ocirc; đỏ hồng Vinh Kim được b&aacute;n với gi&aacute; kh&aacute; cao. Cụ thể, mỗi kg t&ocirc;m kh&ocirc; c&oacute; gi&aacute;&nbsp;1,3 triệu đồng&nbsp;đối với loại 1, 1 triệu đồng&nbsp;đối với loại 2 v&agrave;&nbsp;800.000 đồng đối với loại 3.</p>\r\n', 'Ấp Chà Và, xã Vinh Kim, huyện Cầu Ngang, tỉnh Trà Vinh', '06:00:00', 6, '23:00:00', 'diahai.jpg', '02943827097'),
(8, 'CSSX Hai Lý', '<p>B&aacute;nh t&eacute;t Tr&agrave; Cu&ocirc;n Hai L&yacute; l&agrave; cơ sở nấu b&aacute;nh t&eacute;t l&acirc;u đời nhất tại Tr&agrave; Cu&ocirc;n, kh&aacute;ch h&agrave;ng c&oacute; thể an t&acirc;m khi lựa chọn b&aacute;nh t&eacute;t cơ sở ch&uacute;ng t&ocirc;i nấu với đảm bảo: Nguy&ecirc;n liệu ho&agrave;n to&agrave;n tự nhi&ecirc;n kh&ocirc;ng sử dụng phẩm m&agrave;u thay thế như c&aacute;c cơ sở kh&aacute;c, ch&uacute;ng t&ocirc;i d&ugrave;ng ho&agrave;n to&agrave;n bằng Nước L&agrave; Bồ Ng&oacute;t kết hợp với L&aacute; Dứa tạo cho B&aacute;nh T&eacute;t của ch&uacute;ng t&ocirc;i thơm ngon hơn v&agrave; c&oacute; m&ugrave;i nếp đặc trưng so với c&aacute;c cơ sở kh&aacute;c.</p>\r\n', '72/4 đường Phạm Ngũ Lão, phường 1, Trà Vinh', '06:00:00', 8, '22:00:00', 'haily.jpg', '0913826002'),
(9, 'Long Vinh', '<p>Nước mắm rươi Long Vinh l&agrave; đặc sản Tr&agrave; Vinh tuy kh&ocirc;ng ồn &agrave;o như nước mắm nhĩ c&aacute; cơm, Tr&agrave; Vinh c&oacute; nước mắm Rươi l&agrave; loại thủy sản sạch, thường được chế biến l&agrave;m chả, kho, nay được l&agrave;m nước mắm. Nghe c&oacute; vẻ lạ tai nhưng đ&acirc;y l&agrave; đặc sản của Tr&agrave; Vinh. Với hương vị đằm thắm, dịu nhẹ, hậu ngọt, kh&ocirc;ng mặn như loại nước mắm c&aacute; cơm, nước mắm Rươi Long Vinh khiến thực kh&aacute;ch s&agrave;nh điệu nếm qua một lần th&igrave; sẽ nhớ m&atilde;i.</p>\r\n', 'Phường 1, TX, Duyên Hải, Trà Vinh', '06:00:00', 9, '19:00:00', 'longvinh.jpg', '0974288781'),
(10, 'Đặc sản Việt', '<p>ĐẶC SẢN VIỆT ra đời từ &yacute; tưởng đem lại một địa chỉ cung cấp những đặc sản uy t&iacute;n, chất lượng, đ&uacute;ng phong vị đặc trưng từ qu&ecirc; nh&agrave; của bạn.&nbsp;C&oacute; nhiều đặc sản nổi tiếng, gắn liền với địa danh v&ugrave;ng miền. Đặc sản được l&agrave;m từ những nh&agrave; sản xuất, những nghệ nh&acirc;n ẩm thực t&ecirc;n tuổi, chất lượng v&agrave; hương vị đ&atilde; được nhiều người khen ngon. C&aacute;c đặc sản &nbsp;được l&agrave;m từ nguy&ecirc;n liệu tự nhi&ecirc;n, vị ngon đậm đ&agrave;, quy tr&igrave;nh chế biến đảm bảo ATVSTP. Đ&oacute;ng g&oacute;i với bao b&igrave; đạt ti&ecirc;u chuẩn đi nước ngo&agrave;i, c&oacute; nh&atilde;n m&aacute;c, thương hiệu, xuất xứ r&otilde; r&agrave;ng.</p>\r\n', '97 Lê Quốc Hưng, P.12, Q.4, Tp.HCM', '07:00:00', 7, '21:00:00', 'viet.jpg', '0909190875'),
(11, 'Diễm Châu', '<p>Chuy&ecirc;n b&aacute;n c&aacute;c loại tr&aacute;i c&acirc;y, đặc biệt l&agrave; m&oacute;n tr&aacute;i c&acirc;y đặc sản của tỉnh l&agrave; chuối t&aacute; quạ khổng lồ. Đến đ&acirc;y thực kh&aacute;ch c&oacute; thể chọn mua được những loại tr&aacute;i c&acirc;y vừa ngon v&agrave; gi&aacute; cả c&ograve;n hợp l&iacute;</p>\r\n', 'Lê Lợi, Phường 1, Trà Vinh', '06:00:00', 10, '22:00:00', 'mitchuoi.jpg', '0933716911'),
(12, 'Chả hoa Năm Thụy', '<p>Tr&agrave; Vinh l&acirc;u nay nổi tiếng với m&oacute;n chả hoa, chả lụa nhưng đa phần l&agrave;m theo phương ph&aacute;p thủ c&ocirc;ng n&ecirc;n số lượng &iacute;t v&agrave; kh&oacute; kiểm so&aacute;t vệ sinh an to&agrave;n thực phẩm. Trước thực trạng đ&oacute;, Nguyễn Trường Chinh &ndash; &ocirc;ng chủ của Chả hoa Năm Thụy đ&atilde; quyết định đầu tư c&ocirc;ng nghệ hiện đại với tham vọng n&acirc;ng cao chất lượng, đưa sản phẩm đặc sản qu&ecirc; hương tiếp cận thị trường rộng lớn trong v&agrave; ngo&agrave;i nước.</p>\r\n', 'Số 44 Phạm Thái Bường, Phường 3, thành phố Trà Vinh', '06:00:00', 11, '21:00:00', 'namthuy.jpg', '0918758358'),
(13, 'Xái Pấu Chịt Sa', '<p>Để c&oacute; được X&aacute;i Pấu thơm ngon, nguy&ecirc;n liệu ch&iacute;nh l&agrave; củ cải trắng được lấy từ v&ugrave;ng đất giồng Cầu Ngang hay huyện Duy&ecirc;n Hải ven biển, củ cải mới chắc thịt nhưng quan trọng nhất l&agrave; b&iacute; quyết &ldquo;muối cải&rdquo; c&oacute; m&ugrave;i thơm đặc trưng, ăn gi&ograve;n, hương vị đậm đ&agrave;.</p>\r\n', 'Ấp Trà Kháo, Hoà ân, Cầu Kè, Trà Vinh', '06:00:00', 12, '17:30:00', 'cucaimuoi.jpg', '0769351494'),
(15, 'Cô Hường 2', '<p>Chuy&ecirc;n b&aacute;n c&aacute;c loại b&aacute;nh t&eacute;t b&aacute;nh &uacute; nổi tiếng đặc sản của tỉnh Tr&agrave; Vinh,&nbsp;lu&ocirc;n ho&agrave;n thiện chất lượng, mẫu m&atilde;, bao b&igrave; v&agrave; lu&ocirc;n đặt t&acirc;m quyết phục vụ tốt nhất cho kh&aacute;ch h&agrave;ng.&nbsp;</p>\r\n', 'Số 37, ấp Hương Phụ A, Đa Lộc, Châu Thành, Trà Vinh', '05:00:00', 14, '20:00:00', 'cohuong2.jpg', '0977441767'),
(16, 'Quán Vân Anh', '<p>Chuy&ecirc;n phục vụ m&oacute;n ch&aacute;o &aacute;m được nấu từ nguy&ecirc;n liệu ch&iacute;nh l&agrave; c&aacute; l&oacute;c theo phương ph&aacute;p chế biến đặc trung mang đậm dấu ấn Tr&agrave; Vinh. Chế biến từ những con c&aacute; l&oacute;c tươi sống đem đi nấu ch&aacute;o trải qua c&aacute;c c&ocirc;ng đoạn đơn giản nhưng lại mang đậm vị ngọt từ thịt c&aacute;.</p>\r\n', 'Thạch Thị Thanh, Trà Vinh', '08:00:00', 16, '21:00:00', 'vananh.jpg', '0354053182'),
(17, 'CSSX Hùng Tuyền', '<p>Chuy&ecirc;n b&aacute;n m&oacute;n cốm dẹp độc đ&aacute;o, người d&ugrave;ng c&oacute; thể mua về v&agrave; tự chế biến t&ugrave;y theo sở th&iacute;ch của m&igrave;nh. Được l&agrave;m từ loại nếp vừa đỏ đu&ocirc;i, chưa ch&iacute;n rộ, hạt c&ograve;n mềm, đem gi&atilde; bằng cối bồng. Cốm dẹp thường được l&agrave;m v&agrave;o khoảng th&aacute;ng 10 hoặc 11, l&agrave; thời điểm người d&acirc;n l&agrave;ng mừng m&ugrave;a vụ mới</p>\r\n', ' Số 2 Lý Tự Trọng, phường 1, TP. Trà Vinh, T. Trà Vinh.', '07:00:00', 15, '21:00:00', 'hungtuyen.jpg', '0969411663'),
(18, 'Bún mắm 476', '<p>Chuy&ecirc;n phục vụ m&oacute;n b&uacute;n mắm được nấu từ những nguy&ecirc;n liệu tươi mới tạo n&ecirc;n hương vị l&ocirc;i cuốn, nước s&uacute;p độc đ&aacute;o được chế biến theo c&ocirc;ng thức ri&ecirc;ng biệt kh&ocirc;ng thể c&oacute; ở nơi kh&aacute;c</p>\r\n', '476A Đ. Nguyễn Đáng, khóm 3, Trà Vinh', '08:00:00', 17, '20:00:00', '476.jpg', ''),
(19, 'Cù lao Tân Quy', '<p>Tại đ&acirc;y c&oacute; c&aacute;c vườn trồng tr&aacute;i c&acirc;y đặc biệt l&agrave; ch&ocirc;m ch&ocirc;m, du kh&aacute;ch c&oacute; thể chọn mua tại vườn theo &yacute; muốn. Du kh&aacute;ch cũng c&oacute; thể trải nghiệm, tham quan vườn tr&aacute;i c&acirc;y, tại đ&acirc;y cũng c&oacute; trồng c&aacute;c loại tr&aacute;i c&acirc;y kh&aacute;c cũng kh&ocirc;ng k&eacute;m phần đặc biệt.</p>\r\n', 'Cù lao Tân Quy, An Phú Tân, Cầu Kè, Trà Vinh', '06:00:00', 18, '21:00:00', 'culao.jpg', ''),
(50, 'Bún nước lèo Cô Ba', '<p>&quot;Lần đầu ti&ecirc;n đặc sản b&uacute;n nước l&egrave;o Tr&agrave; Vinh được đưa v&agrave;o kh&ocirc;ng gian sang trọng, rộng r&atilde;i, tho&aacute;ng m&aacute;t, an to&agrave;n vệ sinh thực phẩm!&quot;. K&iacute;nh mời du kh&aacute;ch đến thưởng thức tại qu&aacute;n B&uacute;n Nước L&egrave;o C&ocirc; Ba tr&ecirc;n đường Mười Ch&iacute;n Th&aacute;ng Năm, Phường 1, th&agrave;nh phố Tr&agrave; Vinh. B&uacute;n nước l&egrave;o Tr&agrave; Vinh l&agrave; một m&oacute;n ăn d&acirc;n d&atilde; của địa phương, với hương vị đặc biệt.</p>\r\n', 'Đường Mười Chín Tháng Năm, Phường 1, Trà Vinh', '06:30:00', 1, '19:30:00', 'coba.jpg', '0898333398'),
(51, 'Dũng Chưởng', '<p>Chuy&ecirc;n phục vụ m&oacute;n b&uacute;n nước l&egrave;o thơm ngon nổi tiếng được nấu từ c&aacute;c nguy&ecirc;n liệu tươi mới v&agrave; đặc biệt, h&ograve;a quyện tạo n&ecirc;n hương vị đậm đ&agrave; l&agrave;m người ăn ấn tượng.</p>\r\n', '94a Đ. Đồng Khởi, Phường 6, Trà Vinh', '10:00:00', 1, '18:30:00', 'dungchuong.jpg', ''),
(52, 'Bánh tráng Thiện Huỳnh', '<p>Chuy&ecirc;n b&aacute;n c&aacute;c loại b&aacute;nh tr&aacute;ng, m&oacute;n ăn vặt ở Tr&agrave; Vinh bao gồm cả m&oacute;n b&aacute;nh tr&aacute;ng Tr&agrave; Vi nổi tiếng gần xa. B&aacute;nh tr&aacute;ng Tr&agrave; Vi cũng được d&ugrave;ng để chế biến th&agrave;nh c&aacute;c m&oacute;n ăn vặt kh&aacute;c g&oacute;p phần tăng th&ecirc;m hương vị, k&iacute;ch th&iacute;ch vị gi&aacute;c.</p>\r\n', '163 Nguyễn Thị Minh Khai, Phường 7, Trà Vinh', '07:00:00', 20, '22:00:00', 'thienhuynh.jpg', '0925590189'),
(56, 'Nguyên Minh Trí', '<p>Chuy&ecirc;n b&aacute;n tất cả c&aacute;c loại b&aacute;nh m&igrave;, với đa dạng h&igrave;nh d&aacute;ng, k&iacute;ch thước, hương vị. Gi&uacute;p cho người mua c&oacute; thể c&oacute; th&ecirc;m sự lựa chọn, ph&ugrave; hợp với khẩu vị v&agrave; sở th&iacute;ch.</p>\r\n', 'Hoà Lợi, Châu Thành, Trà Vinh', '06:00:00', 22, '23:00:00', 'minhtri.jpg', '0967005013'),
(57, 'Long Bình 2', '<p>Được xem như một trong những m&oacute;n ăn đặc sản miền T&acirc;y Nam Bộ n&oacute;i ri&ecirc;ng, cũng như đặc sản ẩm thực Việt Nam n&oacute;i chung, m&oacute;n b&aacute;nh x&egrave;o từ l&acirc;u đ&atilde; nhận được sự ưa chuộng, y&ecirc;u th&iacute;ch từ thực kh&aacute;ch mọi miền tr&ecirc;n đất nước, cũng như bạn b&egrave; quốc tế.</p>\r\n', ' Mậu Thân, Phường 6, Trà Vinh', '09:00:00', 23, '21:00:00', 'longbinh.jpg', '0939946116'),
(58, 'Chợ tỉnh Trà Vinh', '<p>Đ&acirc;y l&agrave; chợ đầu mối của cả th&agrave;nh phố, người đến mua h&agrave;ng v&agrave; c&aacute;c tiểu thương rất đ&ocirc;ng. C&aacute;c mặt h&agrave;ng b&aacute;n tại chợ rất đa dạng từ n&ocirc;ng sản đến quần &aacute;o, đồ gia dụng,&hellip; Khi tới đ&acirc;y du kh&aacute;ch c&oacute; thể t&igrave;m thấy một số sản vật địa phương c&oacute; thể mua về l&agrave;m qu&agrave; cho người th&acirc;n v&agrave; gia đ&igrave;nh. Đặc biệt người b&aacute;n h&agrave;ng tại chợ rất th&acirc;n thiện, dễ thương n&ecirc;n du kh&aacute;ch ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi tới đ&acirc;y mua đồ.&nbsp;</p>\r\n', 'Điện Biên Phủ, phường 3, Trà Vinh.', '05:00:00', 24, '22:00:00', 'cho.jpg', ''),
(59, 'Ẩm thực Sao Biển', '<p>Nh&agrave; h&agrave;ng c&oacute; kh&ocirc;ng gian tho&aacute;ng m&aacute;t, rộng r&atilde;i chuy&ecirc;n phục vụ c&aacute;c m&oacute;n ăn được chế biến đa dạng đ&aacute;p ứng nhu cầu thưởng thức ẩm thực của mỗi thực kh&aacute;ch. Tại đ&acirc;y thực kh&aacute;ch c&oacute; thể c&oacute; cơ hội thưởng thức c&aacute;c m&oacute;n ăn đặc trưng nổi tiếng được chế biến một c&aacute;ch độc đ&aacute;o v&agrave; mang hương vị đặc biệt.</p>\r\n', 'Trường Long Hoà, Duyên Hải, Trà Vinh.', '06:00:00', 25, '23:00:00', 'saobien.png', '0947433666'),
(60, 'Cháo cá 64', '<p>Ch&aacute;o c&aacute; khoai Tr&agrave; Vinh l&agrave; một m&oacute;n ăn gi&agrave;u dinh dưỡng với c&aacute;c th&agrave;nh phần ch&iacute;nh như c&aacute;, gạo nếp v&agrave; rau củ. C&aacute; l&agrave; nguồn cung cấp protein v&agrave; axit b&eacute;o omega-3, gi&uacute;p tăng cường sức khỏe tim mạch v&agrave; hệ miễn dịch. Gạo nếp cũng l&agrave; nguồn cung cấp carbohydrate v&agrave; chất xơ, gi&uacute;p duy tr&igrave; năng lượng v&agrave; hỗ trợ ti&ecirc;u h&oacute;a. Rau củ cung cấp nhiều vitamin v&agrave; kho&aacute;ng chất, gi&uacute;p c&acirc;n bằng dinh dưỡng v&agrave; tăng cường sức đề kh&aacute;ng.</p>\r\n', '64 Điện Biên Phủ, Phường 6, Trà Vinh', '06:00:00', 26, '18:00:00', '64.jpg', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh`
--

CREATE TABLE `hinh_anh` (
  `id` int(11) NOT NULL,
  `hinh_anh` text DEFAULT NULL,
  `mon_an_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh_anh`
--

INSERT INTO `hinh_anh` (`id`, `hinh_anh`, `mon_an_id`) VALUES
(1, 'banhcanh.jpg', 3),
(2, 'banhu.jpg', 14),
(3, 'bunnuocleo.jpg', 1),
(4, 'caimuoi.jpg', 12),
(5, 'chuoi.jpg', 10),
(6, 'chuu.jpg', 2),
(7, 'dua.jpg', 5),
(8, 'hoa.jpg', 11),
(9, 'nuocmam.jpg', 9),
(10, 'quach.jpg', 7),
(11, 'suong.jpg', 4),
(12, 'tet.jpg', 8),
(13, 'tomkho.jpg', 6),
(15, 'comdep.jpg', 15),
(16, 'chaoam.jpg', 16),
(18, 'mam.jpg', 17),
(19, 'chom.jpg', 18),
(22, 'trang.jpg', 20),
(24, 'banhmi.jpg', 22),
(25, 'xeo.jpg', 23),
(27, 'mambohoc.jpg', 24),
(28, 'loichoi.jpg', 25),
(29, 'chaoca.jpg', 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon_an`
--

CREATE TABLE `mon_an` (
  `id` int(11) NOT NULL,
  `ten_mon_an` varchar(255) DEFAULT NULL,
  `gia_ban` varchar(50) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `danh_muc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mon_an`
--

INSERT INTO `mon_an` (`id`, `ten_mon_an`, `gia_ban`, `mo_ta`, `danh_muc_id`) VALUES
(1, 'Bún Nước Lèo', '20.000 - 25.000 đồng', '<p>L&agrave; một đặc sản ẩm thực xuất xứ từ người Khmer, trong qu&aacute; tr&igrave;nh cộng cư của c&aacute;c d&acirc;n tộc Khmer, Việt, Hoa v&agrave; sự giao thoa trong ẩm thực, b&uacute;n nước l&egrave;o trở th&agrave;nh m&oacute;n ăn chung của c&aacute;c d&acirc;n tộc miền Nam Việt Nam với nguy&ecirc;n liệu, quy tr&igrave;nh chế biến v&agrave; thưởng thức, khẩu vị về cơ bản l&agrave; giống nhau.</p>\r\n\r\n<p>Nước l&egrave;o được nấu từ một số loại mắm th&ocirc;ng thường như mắm c&aacute; sặc, mắm c&aacute; linh,ri&ecirc;ng người Khmer thường nấu bằng mắm b&ograve; h&oacute;c (pro-hốk) c&aacute; k&egrave;o, c&aacute; l&oacute;c hoặc lươn. Mắm b&ograve; h&oacute;c xuất xứ từ người Khmer đ&atilde; lan rộng đến văn h&oacute;a ẩm thực của cộng đồng người Việt miền Nam Việt Nam. C&aacute;c loại c&aacute; nước ngọt loại nhỏ như c&aacute; l&oacute;c, c&aacute; r&ocirc;, c&aacute; sặc, c&aacute; k&egrave;o đều c&oacute; thể l&agrave;m mắm v&agrave; quy tr&igrave;nh l&agrave;m mắm về cơ bản l&agrave; giống nhau: c&aacute; để cho chết v&agrave; hơi ươn, ủ muối theo tỷ lệ nhất định, sấy kh&ocirc; theo c&aacute;ch để v&agrave;o bao vải v&agrave; dằn cho rỏ nước. Nước chảy c&oacute; nồng độ muối v&agrave; đạm cao, c&oacute; thể d&ugrave;ng l&agrave;m nước mắm, c&ograve;n x&aacute;c c&aacute; cho v&agrave;o hũ phơi chừng ba th&aacute;ng l&agrave; th&agrave;nh con mắm ăn được.</p>\r\n\r\n<p>Những con mắm c&aacute; được r&atilde; trong nước, gia th&ecirc;m củ sả đập dập, ớt băm nhuyễn để lấy hương vị, ng&atilde;i b&uacute;n (một loại củ giống củ nghệ, m&agrave;u hơi đậm hơn nghệ) d&ugrave;ng để khử m&ugrave;i tanh của mắm v&agrave; n&ecirc;m đường, bột ngọt cho vừa ăn. C&oacute; thể d&ugrave;ng nước dừa xi&ecirc;m, thậm ch&iacute; cả một ch&uacute;t nước cốt dừa, gia th&ecirc;m v&agrave;o nồi nước l&egrave;o thay thế cho đường.</p>\r\n', 1),
(2, 'Chù Ụ Rang Me', '100.000 - 120.000 đồng / 500g', '<p>Tr&agrave; Vinh l&agrave; miền đất kh&ocirc;ng chỉ thu h&uacute;t nhiều du kh&aacute;ch bốn phương, v&igrave; cảnh đẹp thơ mộng. M&agrave; nơi đ&acirc;y cũng biết đến từ những m&oacute;n ăn ngon đặc sắc, mang đậm hương vị của v&ugrave;ng qu&ecirc; s&ocirc;ng nước. Nếu Ba kh&iacute;a được biết l&agrave; đặc sản của Bến Tre th&igrave; Tr&agrave; Vinh ch&ugrave; ụ rang me l&agrave; một trong những m&oacute;n &ldquo;hot&rdquo;, hầu hết c&aacute;c nh&agrave; h&agrave;ng tại đ&acirc;y đều c&oacute; trong menu.</p>\r\n\r\n<p>Ch&ugrave; ụ l&agrave; một động vật gi&aacute;p x&aacute;c thuộc họ nh&agrave; cua. Nếu nh&igrave;n lần đầu, ch&uacute;ng ta thường nhầm lẫn n&oacute; l&agrave; con Ba kh&iacute;a. Nhưng th&acirc;n h&igrave;nh ch&ugrave; ụ lại cục mịch v&agrave; khả năng di chuyển của n&oacute; chậm chạp hơn con Ba kh&iacute;a rất nhiều. Gh&eacute; thăm Tr&agrave; vinh, được tham quan, trải nghiệm ở c&aacute;c b&atilde;i bồi nước lợ, hay ch&egrave;o thuyền đi dọc rừng ven biển, bạn sẽ bắt gặp ch&ugrave; ụ khắp nơi.</p>\r\n', 4),
(3, 'Bánh Canh Bến Có', '25.000 - 35.000 đồng', '<p>B&aacute;nh canh l&agrave; một m&oacute;n ăn Việt Nam. B&aacute;nh canh c&oacute; nguồn gốc từ Đ&ocirc;ng Nam Bộ, sau đ&oacute; phổ biến khắp Việt Nam. B&aacute;nh canh bao gồm nước l&egrave;o được nấu từ t&ocirc;m, c&aacute; v&agrave; gi&ograve; heo th&ecirc;m gia vị t&ugrave;y theo từng loại b&aacute;nh canh. Sợi b&aacute;nh canh c&oacute; thể được l&agrave;m từ bột gạo, bột m&igrave;, bột năng hoặc bột sắn hoặc bột gạo pha bột sắn. B&aacute;nh được l&agrave;m từ bột được c&aacute;n th&agrave;nh tấm v&agrave; cắt ra th&agrave;nh sợi bự v&agrave; ngắn hoặc se tr&ograve;n th&agrave;nh cọng. B&aacute;nh được bỏ v&agrave;o nồi nước d&ugrave;ng đ&atilde; hầm vừa đủ độ v&agrave; đợi cho ch&iacute;n tới. Gia vị cho b&aacute;nh canh thay đổi t&ugrave;y theo m&oacute;n b&aacute;nh canh v&agrave; theo khẩu vị mỗi v&ugrave;ng. B&aacute;nh canh c&oacute; nhiều c&aacute;ch chế biến với c&aacute; đ&atilde; r&oacute;c xương, cua/ghẹ, bột lọc, chả c&aacute;, t&ocirc;m/thịt nhưng phổ biến nhất l&agrave; b&aacute;nh canh gi&ograve; heo.</p>\r\n', 1),
(4, 'Bún Suông', '35.000 - 40.000 đồng', '<p>B&uacute;n su&ocirc;ng c&ograve;n được gọi l&agrave; b&uacute;n đu&ocirc;ng. M&oacute;n ăn c&oacute; xuất xứ từ Tr&agrave; Vinh. Sở dĩ m&oacute;n ăn n&agrave;y c&oacute; t&ecirc;n gọi như vậy l&agrave; xuất ph&aacute;t từ chả t&ocirc;m vừa tươi ngon v&agrave; mềm mịn được tạo h&igrave;nh như những con đu&ocirc;ng. Sự hấp dẫn của m&oacute;n n&agrave;y ch&iacute;nh l&agrave; nước l&egrave;o mang đậm chất Tr&agrave; Vinh. Nước l&egrave;o kh&ocirc;ng trong m&agrave; c&oacute; m&agrave;u n&acirc;u đậm, bởi được th&ecirc;m một &iacute;t me v&agrave; tương hạt vừa tạo n&ecirc;n vị ngọt thanh lại vừa thoang thoảng hương thơm của tương rất hấp dẫn. M&oacute;n n&agrave;y hiện đang được ưa chuộng ở c&aacute;c tỉnh miền Nam, đặc biệt l&agrave; Th&agrave;nh phố Hồ Ch&iacute; Minh. L&agrave; một trong 10 m&oacute;n ngon được Tổ chức kỷ lục Việt Nam đề cử đạt gi&aacute; trị ẩm thực ch&acirc;u &Aacute; lần thứ 2 năm 2013.</p>\r\n', 1),
(5, 'Dừa Sáp', '100.000 đồng / trái', '<p>Dừa s&aacute;p, c&ograve;n gọi l&agrave; dừa đặc ruột, dừa kem, makapuno (Philippines) l&agrave; một ph&acirc;n lo&agrave;i dừa c&oacute; quả đặc ruột, cơm dừa d&agrave;y, mềm dẻo v&agrave; b&eacute;o hơn tr&aacute;i dừa thường, nước dừa đặc lại trong veo như sương sa. L&agrave; đặc sản duy nhất chỉ c&oacute; ở Tr&agrave; Vinh, Việt Nam, dừa được trồng nhiều ở giồng C&acirc;y Xanh, c&aacute;ch thị trấn Cầu K&egrave; (Tr&agrave; Vinh) khoảng 4 km.</p>\r\n', 3),
(6, 'Tôm Khô Vinh Kim', '1.300.000 đồng / kg', '<p>Nhắc đến thực phẩm được chế biến th&agrave;nh đồ kh&ocirc; th&igrave; T&ocirc;m Kh&ocirc; từ l&acirc;u đ&atilde; nổi tiếng v&agrave; trở th&agrave;nh một trong những đặc sản. Đặc biệt T&ocirc;m Kh&ocirc; Vinh Kim hay thương hiệu T&ocirc;m Kh&ocirc; Vinh Kim d&igrave; Hai Kh&acirc;m rất nổi tiếng ở Tr&agrave; Vinh cũng như trong nước v&agrave; l&agrave; Đặc Sản Tr&agrave; Vinh.</p>\r\n\r\n<p>T&ocirc;m kh&ocirc; Vinh Kim được chế biến từ con t&ocirc;m bạc đất được đ&aacute;nh bắt bằng l&uacute;, đ&aacute;y, x&agrave; ng&ocirc;m,&hellip; ở c&aacute;c c&aacute;nh đồng ở Vinh Kim, huyện Cầu Ngang, Tỉnh Tr&agrave; Vinh.</p>\r\n\r\n<p>T&ocirc;m kh&ocirc; Vinh Kim được chế biến qua nhiều c&ocirc;ng đoạn: Chọn con t&ocirc;m, luộc đ&uacute;ng lửa, phơi đ&uacute;ng c&aacute;ch v&agrave; đ&uacute;ng độ nắng. Để phơi t&ocirc;m kh&ocirc; đạt y&ecirc;u cầu, s&acirc;n phơi phải tr&aacute;ng bằng ximăng, đổ t&ocirc;m tr&ecirc;n s&acirc;n n&ecirc;n t&ocirc;m kh&ocirc; giữ nguy&ecirc;n m&agrave;u đỏ, kh&ocirc;ng bị bủn, g&atilde;y đ&acirc;y cũng l&agrave; b&iacute; quyết của l&agrave;ng nghề T&ocirc;m kh&ocirc; Vinh Kim, tạo được hương vị thơm ngon rất ri&ecirc;ng v&agrave; đậm đ&agrave; đặc trưng c&oacute; chất lượng vượt trội so với sản phẩm t&ocirc;m kh&ocirc; c&ugrave;ng loại từ c&aacute;c địa phương kh&aacute;c.</p>\r\n', 4),
(7, 'Trái Quách', '50.000 đồng / trái', '<p>Qu&aacute;ch l&agrave; loại c&acirc;y cao khoảng 7-8m, l&aacute; nhỏ v&agrave; th&acirc;n giống như c&acirc;y cần thăng, trồng khoảng 7 năm th&igrave; cho tr&aacute;i. L&aacute; d&agrave;i 25-35mm v&agrave; rộng 10-20mm. Tr&aacute;i c&oacute; đường k&iacute;nh 5&ndash;9 cm, cơm c&oacute; vị chua ngọt. Khi ch&iacute;n Qu&aacute;ch tự rụng, do c&oacute; vỏ cứng n&ecirc;n n&oacute; kh&oacute; đập vỡ khi rụng. Qu&aacute;ch c&oacute; h&igrave;nh cầu, m&agrave;u x&aacute;m loang lổ kiểu hạt li ti nh&igrave;n giống tr&aacute;i d&acirc;y c&aacute;m, phần thịt b&ecirc;n trong c&oacute; nhiều sợi cứng v&agrave; c&aacute;c hạt b&aacute;m tr&ecirc;n đ&oacute;.[5] Khi tr&aacute;i chưa ch&iacute;n phần thịt c&oacute; m&agrave;u trắng, khi ch&iacute;n phần thịt chuyển sang m&agrave;u n&acirc;u sậm đến đen. Nếu để qu&aacute; ch&iacute;n sẽ bị l&ecirc;n men như mật.</p>\r\n\r\n<p>Tr&aacute;i qu&aacute;ch l&agrave;m thức uống giải kh&aacute;t, theo y học d&acirc;n gian tr&aacute;i qu&aacute;ch c&ograve;n xanh xắt mỏng phơi kh&ocirc; d&ugrave;ng để chữa trị ti&ecirc;u chảy, tr&aacute;i ch&iacute;n chống t&aacute;o b&oacute;n, gi&uacute;p điều h&ograve;a ti&ecirc;u h&oacute;a. Tr&aacute;i qu&aacute;ch ch&iacute;n c&oacute; thể dầm nước đ&aacute; đường v&agrave; để ng&acirc;m rượu. Loại dầm đ&aacute; đường c&oacute; t&aacute;c dụng giải nhiệt.</p>\r\n', 3),
(8, 'Bánh Tét Trà Cuôn', '40.000 đồng / cái', '<p>B&aacute;nh t&eacute;t l&agrave; m&oacute;n ăn đặc trưng của người miền Nam trong ng&agrave;y Tết lẫn ng&agrave;y thường v&agrave; cả ng&agrave;y giỗ chạp. Ở miền T&acirc;y b&aacute;nh t&eacute;t c&oacute; nhiều loại: b&aacute;nh t&eacute;t truyền thống l&agrave;m từ nh&acirc;n đậu xanh v&agrave; thịt mỡ, b&aacute;nh t&eacute;t l&aacute; cẩm, b&aacute;nh t&eacute;t nh&acirc;n s&acirc;m,... đặc biệt nhất phải kể đến b&aacute;nh t&eacute;t Tr&agrave; Cu&ocirc;n - đặc sản v&ugrave;ng đất Tr&agrave; Vinh. B&aacute;nh t&eacute;t Tr&agrave; Cu&ocirc;n xuất ph&aacute;t từ một ấp t&ecirc;n gọi Tr&agrave; Cu&ocirc;n thuộc x&atilde; Kim H&ograve;a, huyện Cầu Ngang, Tr&agrave; Vinh, một địa phương c&oacute; đ&ocirc;ng đồng b&agrave;o Khmer sinh sống.&nbsp;</p>\r\n', 2),
(9, 'Nước Mắm Rươi', '110.000 đồng / lít', '<p>Tr&agrave; Vinh vốn nổi tiếng với nhiều đặc sản lạ miệng hấp dẫn. Ai đ&atilde; từng một lần đến đ&acirc;y sẽ nghe người d&acirc;n nơi đ&acirc;y kh&aacute;o nhau về một loại nước mắm đặc trưng của v&ugrave;ng n&agrave;y. Đ&oacute; ch&iacute;nh l&agrave; đặc sản nước mắm rươi.</p>\r\n\r\n<p>C&ocirc;ng thức l&agrave;m mắm rươi cũng đơn giản như nước mắm c&aacute; cơm hoặc c&aacute; linh, trung b&igrave;nh cứ một đ&ocirc;i rươi bằng 40 l&iacute;t khi mới vớt l&ecirc;n pha với muối hột c&ugrave;ng nước theo liều lượng nhất định, ủ hỗn hợp n&agrave;y trong lu để ngo&agrave;i trời.</p>\r\n\r\n<p>Ngo&agrave;i rươi l&agrave;m mắm cho c&aacute;c bữa ăn ch&iacute;nh trong ng&agrave;y, c&ograve;n được chế biến th&agrave;nh m&oacute;n ăn độc đ&aacute;o như chả rươi, bột rươi. V&igrave; mỗi năm chỉ mua được rươi trong một m&ugrave;a lại được xem như sản vật n&ecirc;n người d&acirc;n ở đ&acirc;y v&ocirc; c&ugrave;ng tr&acirc;n trọng, chỉ khi nh&agrave; c&oacute; kh&aacute;ch qu&yacute; mới đưa ra tiếp đ&atilde;i.</p>\r\n', 4),
(10, 'Chuối Tá Quạ', '25.000 đồng / kg', '<p>Chuối t&aacute;o quạ hay Chuối t&aacute; quạ, chuối nấu, chuối nấu ăn l&agrave; giống chuối trong chi chuối Musa, c&oacute; quả thường được d&ugrave;ng để nấu ăn. Giống chuối n&agrave;y thường chứa nhiều tinh bột, c&oacute; thể được ăn ch&iacute;n hoặc ăn sống. Nhiều loại chuối t&aacute;o quạ được gọi l&agrave; chuối trồng hay chuối xanh. Trong thực vật học, thuật ngữ &quot;chuối trồng&quot; chỉ được sử dụng cho c&aacute;c loại chuối trồng thật, trong khi c&aacute;c giống trồng gi&agrave;u tinh bột kh&aacute;c được sử dụng để nấu ăn được gọi l&agrave; &quot;chuối nấu ăn&quot;.True plantains l&agrave; giống c&acirc;y trồng thuộc Nh&oacute;m AAB, trong khi chuối nấu ăn l&agrave; bất kỳ giống chuối n&agrave;o thuộc nh&oacute;m AAB, AAA, ABB hoặc BBB. T&ecirc;n khoa học hiện được chấp nhận cho tất cả c&aacute;c giống c&acirc;y trồng trong c&aacute;c nh&oacute;m n&agrave;y l&agrave; Musa &times; paradisiaca. Chuối Fe&#39;i (Musa &times; troglodytarum) từ c&aacute;c đảo ở Th&aacute;i B&igrave;nh Dương, thường được ăn rang hoặc luộc, v&agrave; do đ&oacute; thường được gọi một c&aacute;ch kh&ocirc;ng ch&iacute;nh thức l&agrave; &quot;chuối n&uacute;i&quot;, nhưng ch&uacute;ng kh&ocirc;ng thuộc về bất kỳ lo&agrave;i n&agrave;o từ tất cả giống chuối hiện đại.</p>\r\n', 3),
(11, 'Chả Hoa Năm Thụy', '75.000 - 110.000 đồng', '<p>Chả hoa Năm Thụy l&agrave; một trong những đặc sản của đất Tr&agrave; Vinh.&nbsp;Kh&aacute;c với chả lụa truyền thống, chả hoa khi cắt ra tương tự như b&ocirc;ng hoa, ở giữa l&agrave; trứng muối, xung quanh l&agrave; nấm m&egrave;o, chả, cuối c&ugrave;ng l&agrave; lớp trứng g&agrave; đ&aacute;nh tan chi&ecirc;n th&agrave;nh tấm cuộn b&ecirc;n ngo&agrave;i.&nbsp;Hương vị thơm ngon, tinh tế đặc trưng, ph&ugrave; hợp khẩu vị nhiều người.&nbsp;Chả c&oacute; thể được g&oacute;i bằng l&aacute; chuối hoặc cho v&agrave;o t&uacute;i nhựa h&uacute;t ch&acirc;n kh&ocirc;ng.</p>\r\n\r\n<p>Nguy&ecirc;n liệu ch&iacute;nh để l&agrave;m Chả Hoa Trứng Muối Năm Thụy bao gồm da heo, chả, trứng muối, trứng chi&ecirc;n v&agrave; nấm m&egrave;o. Phần quan trọng g&oacute;p phần th&ecirc;m hương vị của Chả Hoa Năm Thụy l&agrave; c&ocirc;ng đoạn chế biến chả, chả được l&agrave;m bằng thịt heo tươi, sau đ&oacute; xay nhuyễn nhiều lần c&ugrave;ng với c&aacute;c gia vị. C&ocirc;ng đoạn phết chả phụ thuộc v&agrave;o kinh nghiệm của người chế biến, th&igrave; chả hoa năm thuỵ l&agrave;m ra mới dai ngon v&agrave; đậm đ&agrave;, mang đậm hương vị của đặc sản Tr&agrave; Vinh</p>\r\n', 4),
(12, 'Củ Cải Muối Chịt Sa', '160.000 đồng / kg', '<p>X&aacute;i Pấu l&agrave; t&ecirc;n gọi theo người Triều Ch&acirc;u, c&ograve;n người Việt gọi l&agrave; &ldquo;củ cải muối&rdquo;, một đặc sản tại v&ugrave;ng đất Cầu K&egrave;, tỉnh Tr&agrave; Vinh</p>\r\n\r\n<p>Để c&oacute; được X&aacute;i Pấu thơm ngon, nguy&ecirc;n liệu ch&iacute;nh l&agrave; củ cải trắng được lấy từ v&ugrave;ng đất giồng Cầu Ngang hay huyện Duy&ecirc;n Hải ven biển, củ cải mới chắc thịt nhưng quan trọng nhất l&agrave; b&iacute; quyết &ldquo;muối cải&rdquo; c&oacute; m&ugrave;i thơm đặc trưng, ăn gi&ograve;n, hương vị đậm đ&agrave;.</p>\r\n', 4),
(14, 'Bánh Ú Đa Lộc', '20.000 đồng / cái', '<p>B&aacute;nh &uacute; ở Đa Lộc c&oacute; nguồn gốc ở ấp Hương Phụ, x&atilde; Đa Lộc, huyện Ch&acirc;u Th&agrave;nh, tỉnh Tr&agrave; Vinh. B&aacute;nh &uacute; Đa Lộc c&oacute; truyền thống l&acirc;u đời, trở th&agrave;nh một m&oacute;n ăn quen thuộc của người d&acirc;n địa phương. Để c&oacute; c&aacute;i b&aacute;nh &uacute; đẹp v&agrave; ngon đ&ograve;i hỏi sự nhọc c&ocirc;ng cũng như sự kh&eacute;o l&eacute;o của người l&agrave;m, nguy&ecirc;n liệu ch&iacute;nh l&agrave;m b&aacute;nh &uacute; l&agrave; từ hạt nếp mộc mạc d&acirc;n d&atilde;, l&aacute; ng&oacute;t để b&aacute;nh c&oacute; m&agrave;u xanh tự nhi&ecirc;n, l&ograve;ng đỏ trứng hột vịt muối, thịt mỡ v&agrave; nh&acirc;n b&aacute;nh được l&agrave;m từ loại đậu xanh nấu ch&iacute;n, nghiền nhuyễn.</p>\r\n\r\n<p>Người Đa Lộc chuy&ecirc;n g&oacute;i b&aacute;nh &uacute; bằng l&aacute; chuối, d&aacute;ng h&igrave;nh v&agrave; m&agrave;u sắc của b&aacute;nh rất quan trọng. V&igrave; vậy, kỹ thuật g&oacute;i b&aacute;nh đ&ograve;i hỏi phải chuẩn từ h&igrave;nh khối lẫn g&oacute;c cạnh, sao cho b&aacute;nh thật kh&iacute;t, thật đều v&agrave; c&acirc;n đối. Ch&iacute;nh b&agrave;n tay kh&eacute;o l&eacute;o v&agrave; nguy&ecirc;n liệu chọn lọc rất kỹ đ&atilde; l&agrave;m cho B&aacute;nh &uacute; khi luộc ch&iacute;n c&oacute; m&agrave;u xanh l&aacute;, c&aacute;i b&aacute;nh dẻo qu&aacute;nh để lại tr&ecirc;n da b&aacute;nh ch&uacute;t xanh phơn phớt rất đẹp chỉ cần cắn một miếng th&ocirc;i m&agrave; như tận hưởng cả m&ugrave;i thơm đặc trưng của qu&ecirc; hương.</p>\r\n', 2),
(15, 'Cốm Dẹp', '15.000 - 20.000 đồng', '<p>Cốm dẹp l&agrave; một m&oacute;n ăn độc đ&aacute;o của người Khmer. Kh&ocirc;ng chỉ l&agrave; m&oacute;n ăn d&acirc;n d&atilde;, đ&acirc;y c&ograve;n l&agrave; m&oacute;n ăn mang &yacute; nghĩa t&acirc;m linh. Đậm n&eacute;t văn h&oacute;a truyền thống của d&acirc;n tộc Khmer. Nếu c&oacute; dịp về Tr&agrave; Vinh, S&oacute;c Trăng, An Giang trước m&ugrave;a gặt, bạn h&atilde;y thưởng thức cốm dẹp để biết th&ecirc;m hương vị cốm mới của người Khmer.</p>\r\n\r\n<p>Nếu ở H&agrave; Nội nổi tiếng với cốm l&agrave;ng V&ograve;ng th&igrave; người Khmer ở Tr&agrave; Vinh, S&oacute;c Trăng, An Giang cũng c&oacute; m&oacute;n cốm dẹp mời kh&aacute;ch phương xa. L&uacute;a nếp trước khi thu hoạch khoảng 10 ng&agrave;y c&ograve;n chưa gi&agrave; sẽ được gặt về. Tuốt lấy hạt ng&acirc;m nước nửa ng&agrave;y rồi vớt ra để r&aacute;o. Nếp kh&ocirc;ng ng&acirc;m qu&aacute; l&acirc;u sẽ l&agrave;m cốm nh&atilde;o, ng&acirc;m thời gian ngắn th&igrave; hạt nếp sẽ kh&ocirc; cứng.</p>\r\n', 2),
(16, 'Cháo Ám', '15.000 - 20.000 đồng', '<p>N&oacute;i về ch&aacute;o th&igrave; ẩm thực Việt Nam đ&atilde; rất phong ph&uacute; với ch&aacute;o l&ograve;ng, ch&aacute;o h&agrave;u,&hellip; nhưng c&oacute; lẽ&nbsp;ch&aacute;o &aacute;m&nbsp;l&agrave; m&oacute;n ăn m&agrave; nhiều người lần đầu nghe qua. Đ&acirc;y l&agrave; m&oacute;n ngon ở Tr&agrave; Vinh được người d&acirc;n địa phương v&agrave; c&aacute;c tỉnh l&acirc;n cận rất y&ecirc;u th&iacute;ch. Thực ra, ch&aacute;o &aacute;m l&agrave; m&oacute;n ch&aacute;o c&aacute; l&oacute;c &ndash; m&oacute;n ăn kh&aacute; quen thuộc với người S&agrave;i G&ograve;n v&agrave; c&aacute;c tỉnh Nam Bộ. Tuy nhi&ecirc;n ở Tr&agrave; Vinh, m&oacute;n ch&aacute;o n&agrave;y lại c&oacute; c&aacute;i t&ecirc;n đặc biệt l&agrave; ch&aacute;o &aacute;m. Nhiều người địa phương kể lại rằng, t&ecirc;n gọi th&uacute; vị kia l&agrave; do m&oacute;n ăn n&agrave;y c&oacute; c&aacute;ch chế biến cầu kỳ, c&ocirc;ng phu mới ngon, mới hấp dẫn. Với những c&ocirc; g&aacute;i ng&agrave;y đầu về nh&agrave; chồng c&ograve;n bỡ ngỡ m&agrave; phải nấu ch&aacute;o n&agrave;y th&igrave; quả thực l&agrave; điều &aacute;m ảnh. C&oacute; lẽ v&igrave; thế m&agrave; ch&aacute;o c&aacute; l&oacute;c được gọi t&ecirc;n ch&aacute;o &aacute;m như một c&aacute;ch &ldquo;nhắc kh&eacute;o&rdquo; đến t&agrave;i nấu ăn của người nội tướng trong mỗi gia đ&igrave;nh.</p>\r\n\r\n<p>M&oacute;n ch&aacute;o c&aacute; l&oacute;c n&agrave;y vốn dĩ kh&ocirc;ng c&oacute; qu&aacute; nhiều bước chế biến. Nhưng để nấu được một nồi ch&aacute;o ngon, đ&ograve;i hỏi người nấu phải c&oacute; kinh nghiệm trong việc chọn gạo, chọn c&aacute; v&agrave; cả c&aacute;ch kết hợp những gia vị, tạo n&ecirc;n được vị ngọt thanh đặc trưng chỉ c&oacute; ở m&oacute;n ngon Tr&agrave; Vinh n&agrave;y m&agrave; th&ocirc;i.&nbsp;&nbsp;</p>\r\n', 1),
(17, 'Bún Mắm', '35.000 - 40.000 đồng', '<p>B&uacute;n mắm l&agrave; một trong số c&aacute;c m&oacute;n ăn đặc sản của miền t&acirc;y Nam bộ Việt Nam. B&uacute;n mắm được nấu bằng mắm c&aacute; linh hay c&aacute; sặc, đ&acirc;y l&agrave; c&aacute;c loại c&aacute; c&oacute; nhiều tại miền T&acirc;y, đặc biệt l&agrave; c&aacute;c tỉnh Tr&agrave; Vinh v&agrave; S&oacute;c Trăng.</p>\r\n\r\n<p>Trước đ&acirc;y, b&uacute;n mắm l&agrave; một m&oacute;n ăn d&acirc;n d&atilde; v&agrave; được chế biến giản dị, n&oacute; thường được d&ugrave;ng cho những bữa ăn nhanh. Con mắm được nấu r&atilde; ra, sau đ&oacute; lọc lấy phần nước trong, cho th&ecirc;m một &iacute;t đường, h&agrave;nh sả v&agrave; d&ugrave;ng chung với b&uacute;n. Về sau để tăng hương vị v&agrave; độ phong ph&uacute; cho b&uacute;n mắm, người ta cho th&ecirc;m miếng c&aacute;, t&ocirc;m, mực v&agrave; heo quay.</p>\r\n\r\n<p>N&eacute;t đặc trưng của b&uacute;n mắm l&agrave; nước l&egrave;o. Nước l&egrave;o thường được l&agrave;m từ mắm c&aacute; linh hay c&aacute; sặc v&agrave; t&ugrave;y theo mỗi người m&agrave; c&oacute; sự n&ecirc;m nếm kh&aacute;c nhau để m&oacute;n b&uacute;n c&oacute; m&ugrave;i thơm đậm đ&agrave;. B&uacute;n mắm thường được ăn với rau muống chẻ, cọng b&ocirc;ng s&uacute;ng, rau đắng, bắp chuối, k&egrave;o n&egrave;o, gi&aacute; v&agrave; rau diếp c&aacute; (dấp c&aacute;).</p>\r\n', 1),
(18, 'Chôm Chôm', '20000 - 30000 đồng / kg', '<p>Ch&ocirc;m ch&ocirc;m l&agrave; lo&agrave;i c&acirc;y thường xanh c&oacute; thể ph&aacute;t triển đến chiều cao 12&ndash;20 m. C&aacute;c l&aacute; mọc so le với nhau, d&agrave;i 10&ndash;30 cm, l&aacute; c&oacute; h&igrave;nh l&ocirc;ng chim với 3 đến 11 l&aacute; rời. Những b&ocirc;ng hoa c&oacute; k&iacute;ch thước nhỏ 2,5&ndash;5 mm. C&acirc;y ch&ocirc;m ch&ocirc;m c&oacute; thể l&agrave; c&acirc;y đực (chỉ sản sinh t&uacute;i phấn hoa do đ&oacute; kh&ocirc;ng đậu quả) hoặc c&acirc;y c&aacute;i (chỉ c&oacute; hoa với chức năng giống c&aacute;i) hoặc lưỡng t&iacute;nh (sản xuất hoa c&aacute;i với một tỷ lệ nhỏ hoa đực).</p>\r\n\r\n<p>Quả h&igrave;nh tr&ograve;n hoặc h&igrave;nh bầu dục, d&agrave;i 3&ndash;6 cm (hiếm khi đến 8 cm) v&agrave; rộng 3&ndash;4 cm, quả được kết v&agrave; lớn dần trong một ch&ugrave;m c&oacute; 10&ndash;20 quả. Vỏ c&oacute; m&agrave;u hơi đỏ (hiếm khi c&oacute; m&agrave;u cam hoặc v&agrave;ng) v&agrave; được bao phủ bởi c&aacute;c gai thịt mềm dẻo, do đ&oacute; c&oacute; t&ecirc;n &#39;l&ocirc;ng&#39;. C&aacute;c gai thịt g&oacute;p phần v&agrave;o qu&aacute; tr&igrave;nh tho&aacute;t hơi nước của quả, c&oacute; thể ảnh hưởng đến chất lượng của quả.</p>\r\n\r\n<p>Phần thịt quả l&agrave; vỏ mềm bao bọc hạt, trong mờ, hơi trắng hoặc hồng nhạt, c&oacute; vị ngọt, chua nhẹ.Hạt đơn d&agrave;i 1&ndash;1,3 cm, c&oacute; vết nứt đ&ocirc;i m&agrave;u trắng ở đ&aacute;y hạt. Hạt mềm v&agrave; chứa c&aacute;c phần chất b&eacute;o b&atilde;o h&ograve;a v&agrave; kh&ocirc;ng b&atilde;o h&ograve;a bằng nhau,[10] hạt c&oacute; thể được nấu ch&iacute;n v&agrave; ăn. Quả đ&atilde; bốc vỏ c&oacute; thể d&ugrave;ng để ăn sống hoặc nấu ch&iacute;n.</p>\r\n', 3),
(20, 'Bánh Tráng Trà Vi', '6.000 đồng / cái', '<p>Chắc hẳn nhiều người đ&atilde; qu&aacute; quen thuộc với c&aacute;c m&oacute;n ăn được chế biến kết hợp với b&aacute;nh tr&aacute;ng bởi ở bất cứ đ&acirc;u m&oacute;n b&aacute;nh n&agrave;y đều được ưa chuộng. B&aacute;nh Tr&aacute;ng Tr&agrave; Vinh c&oacute; nguồn g&oacute;c từ l&agrave;ng nghề l&agrave;m b&aacute;nh nổi tiếng ở x&oacute;m Tr&agrave; Vi với hơn 70 hộ gia đ&igrave;nh sống bằng nghề l&agrave;m b&aacute;nh tr&aacute;ng.</p>\r\n\r\n<p>B&aacute;nh Tr&aacute;ng Tr&agrave; Vi chủ yếu l&agrave;m bằng gạo trắng, b&aacute;nh được l&agrave;m theo phương ph&aacute;p thủ c&ocirc;ng n&ecirc;n c&oacute; m&agrave;u hơi ng&agrave;, mỏng, ngon, dẻo. B&aacute;nh tr&aacute;ng Tr&agrave; Vi c&oacute; mặt trong bữa ăn của người d&acirc;n Tr&agrave; Vinh v&agrave; c&aacute;c tỉnh th&agrave;nh kh&aacute;c, kh&ocirc;ng những thế b&aacute;nh tr&aacute;ng c&ograve;n c&oacute; mặt khắp c&aacute;c nh&agrave; h&agrave;ng, qu&aacute;n ăn lớn ở tr&ecirc;n to&agrave;n l&atilde;nh thổ Việt Nam.</p>\r\n\r\n<p>B&aacute;nh Tr&aacute;ng c&oacute; thể chế biến th&agrave;nh nhiều m&oacute;n ăn như: b&aacute;nh tr&aacute;ng cuốn thịt heo, b&aacute;nh tr&aacute;ng nướng, b&aacute;nh tr&aacute;ng trộn,...bảo đảm chỉ cần thưởng thức một lần l&agrave; bạn c&oacute; thể nhớ ngay đến hương vị của từng m&oacute;n b&aacute;nh tr&aacute;ng.</p>\r\n', 2),
(22, 'Bánh Mì', '10.000 - 15.000 đồng', '<p>Kh&ocirc;ng c&ograve;n b&agrave;n c&atilde;i g&igrave; th&ecirc;m, b&aacute;nh m&igrave; ch&iacute;nh l&agrave; một trong những &quot;m&oacute;n ăn quốc d&acirc;n&quot; của người Việt Nam ch&uacute;ng ta từ rất l&acirc;u v&igrave; chứa đầy đủ chất dinh dưỡng lại rất dễ ăn. Tuỳ mỗi v&ugrave;ng miền kh&aacute;c nhau lại c&oacute; những phi&ecirc;n bản b&aacute;nh m&igrave; kh&aacute;c nhau, kh&ocirc;ng &iacute;t trong số đ&oacute; khiến người xứ kh&aacute;c ngạc nhi&ecirc;n.&nbsp;</p>\r\n', 1),
(23, 'Bánh Xèo', '20.000 - 30.000 đồng', '<p>Hương vị d&acirc;n d&atilde;, đậm chất qu&ecirc; hương, b&aacute;nh to r&aacute;o dầu v&agrave; c&oacute; m&agrave;u v&agrave;ng rất dễ chịu. Vỏ b&aacute;nh gi&ograve;n rụm thơm ngon, nhiều nh&acirc;n. B&aacute;nh ăn c&ugrave;ng đĩa rau to, xanh mướt mơn mởn nh&igrave;n thật th&iacute;ch mắt. B&aacute;nh của qu&aacute;n c&oacute; hương vị beo b&eacute;o của nước dừa vị b&ugrave;i b&ugrave;i của đậu c&ugrave;ng vị gi&ograve;n ngọt của những gi&aacute;. C&ugrave;ng với nước mắm chua ngọt cộng th&ecirc;m rau sống c&aacute;c loại đ&atilde; tạo n&ecirc;n cho m&oacute;n b&aacute;nh một hương vị kh&aacute;c biệt.</p>\r\n\r\n<p>B&aacute;nh x&egrave;o được l&agrave;m từ bột gạo loại ngon, đổ thật mỏng trong chảo nh&ocirc;m, đốt tr&ecirc;n l&ograve; củi với nh&acirc;n l&agrave; gi&aacute; đỗ, thịt v&agrave; t&ocirc;m. B&aacute;nh chi&ecirc;n v&agrave;ng ươm được mang ra n&oacute;ng hổi, chấm với nước mắm chua ngọt được pha theo c&ocirc;ng thức đặc biệt của qu&aacute;n hấp dẫn du kh&aacute;ch ngay từ miếng đầu ti&ecirc;n.</p>\r\n', 1),
(24, 'Mắm bò hóc', '100.000 - 150.000 đồng / 500g.', '<p>Mắm b&ograve; h&oacute;c, nghe t&ecirc;n th&ocirc;i cũng khiến nhiều du kh&aacute;ch cảm thấy sờ sợ rồi, thế nhưng khi nếm thử th&igrave; hẳn ai cũng sẽ gật g&ugrave; khen ngon. Mắm b&ograve; h&oacute;c mang hương vị ri&ecirc;ng, đậm đ&agrave; v&agrave; độc đ&aacute;o. Đặc biệt, mắm b&ograve; h&oacute;c c&oacute; thể ăn k&egrave;m với nhiều loại rau, thậm ch&iacute; l&agrave; xo&agrave;i xanh, c&oacute;c hay dưa leo,... nữa đấy.</p>\r\n', 4),
(25, 'Loi Choi Sả Ớt', '100.000 - 150.000 đồng / phần', '<p>M&oacute;n ăn với c&aacute;i t&ecirc;n độc lạ, loi choi thường sinh sống tại v&ugrave;ng đất b&ugrave;n ven s&ocirc;ng hoặc b&atilde;i bồi, đất mới nổi. Ch&uacute;ng thường c&oacute; h&igrave;nh d&aacute;ng thẳng v&agrave; d&agrave;i khoảng hơn 20cm, th&acirc;n tr&ograve;n, m&agrave;u trắng. Sau khi loi choi được bắt l&ecirc;n sẽ đem đi phơi kh&ocirc;, nướng sơ qua lửa than để c&oacute; độ gi&ograve;n, vị b&ugrave;i v&agrave; thơm phức hấp dẫn.</p>\r\n', 4),
(26, 'Cháo Cá Khoai', '20.000 - 25.000 đồng / phần.', '<p>Ch&aacute;o c&aacute; khoai với hương vị ngọt thơm của thịt c&aacute;, kết hợp với ch&aacute;o mềm khiến cho m&oacute;n ăn trở n&ecirc;n hấp dẫn hơn bao giờ hết. Để ch&aacute;o ngon hơn, bạn c&oacute; thể ăn k&egrave;m với rau mồng tơi, gi&aacute; hoặc một số rau t&ugrave;y th&iacute;ch của mỗi người.</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` int(11) NOT NULL,
  `ten_dang_nhap` varchar(255) DEFAULT NULL,
  `mat_khau` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `ten_dang_nhap`, `mat_khau`, `email`, `dia_chi`) VALUES
(1, 'tunhu', '202cb962ac59075b964b07152d234b70', 'dieptunhu2003@gmail.com', 'Tiểu Cần, Trà Vinh'),
(2, 'vodiem', '202cb962ac59075b964b07152d234b70', 'vodiem@gmail.com', 'Trà Vinh'),
(3, 'trungnghia', '202cb962ac59075b964b07152d234b70', 'trungnghia@gmail.com', 'Trà Vinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguyen_lieu`
--

CREATE TABLE `nguyen_lieu` (
  `id` int(11) NOT NULL,
  `ten_nguyen_lieu` varchar(255) DEFAULT NULL,
  `mon_an_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguyen_lieu`
--

INSERT INTO `nguyen_lieu` (`id`, `ten_nguyen_lieu`, `mon_an_id`) VALUES
(1, 'Cá lóc đồng', 1),
(2, 'Mắm bò hóc', 1),
(3, 'Sả cây', 1),
(4, 'Bắp chuối', 1),
(5, 'Thịt ba chỉ', 4),
(6, 'Củ cải trắng', 4),
(7, 'Giò heo', 4),
(8, 'Tôm sú', 4),
(9, 'Bánh canh làm từ bột gạo', 3),
(10, 'Xương heo', 3),
(11, 'Lòng heo (tim, gan, cật, ...)', 3),
(12, 'Nếp sáp', 8),
(13, 'Thịt nạc, mỡ heo', 8),
(14, 'Lòng đỏ trứng vịt muối', 8),
(15, 'Gạo nếp', 14),
(16, 'Đậu xanh đãi vỏ', 14),
(17, 'Vỏ bông gòn', 14),
(18, 'Con chù ụ', 2),
(19, 'Nước cốt me', 2),
(20, 'Cá lóc', 16),
(21, 'Rau đắng', 16),
(22, 'Gạo rang', 16),
(23, 'Cốm dẹp', 15),
(24, 'Nước cốt dừa', 15),
(25, 'Dừa khô', 15),
(27, 'Tôm', 17),
(28, 'Bạch tuột', 17),
(29, 'Thịt quay', 17),
(30, 'Gạo trắng', 20),
(32, 'Chôm chôm', 18),
(33, 'Dừa sáp', 5),
(34, 'Trái quách', 7),
(35, 'Chuối tá quạ', 10),
(36, 'Củ cải trắng', 12),
(37, 'Tôm tươi', 6),
(38, 'Bột mì', 22),
(39, 'Men nở', 22),
(40, 'Sữa tươi', 22),
(41, 'Giấm', 22),
(42, 'Bột bánh xèo cốt dừa', 23),
(43, 'Tôm', 23),
(44, 'Hành lá', 23),
(45, 'Thịt heo', 23),
(46, 'Giá', 23),
(47, 'Cá nước ngọt', 24),
(48, 'Gia vị (đường, tiêu, tỏi, ớt,...)', 24),
(49, 'Cá loi choi', 25),
(50, 'Sả ', 25),
(51, 'Ớt', 25),
(52, 'Gạo tẻ', 26),
(53, 'Cá khoai', 26),
(54, 'Rau đắng', 26),
(55, 'Nấm rơm', 26);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danh_muc_mon_an`
--
ALTER TABLE `danh_muc_mon_an`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diem_phuc_vu`
--
ALTER TABLE `diem_phuc_vu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mon_an_id` (`mon_an_id`);

--
-- Chỉ mục cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mon_an_id` (`mon_an_id`);

--
-- Chỉ mục cho bảng `mon_an`
--
ALTER TABLE `mon_an`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danh_muc_id` (`danh_muc_id`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ten_dang_nhap` (`ten_dang_nhap`);

--
-- Chỉ mục cho bảng `nguyen_lieu`
--
ALTER TABLE `nguyen_lieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mon_an_id` (`mon_an_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danh_muc_mon_an`
--
ALTER TABLE `danh_muc_mon_an`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `diem_phuc_vu`
--
ALTER TABLE `diem_phuc_vu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `mon_an`
--
ALTER TABLE `mon_an`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nguyen_lieu`
--
ALTER TABLE `nguyen_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diem_phuc_vu`
--
ALTER TABLE `diem_phuc_vu`
  ADD CONSTRAINT `diem_phuc_vu_ibfk_1` FOREIGN KEY (`mon_an_id`) REFERENCES `mon_an` (`id`);

--
-- Các ràng buộc cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD CONSTRAINT `hinh_anh_ibfk_1` FOREIGN KEY (`mon_an_id`) REFERENCES `mon_an` (`id`);

--
-- Các ràng buộc cho bảng `mon_an`
--
ALTER TABLE `mon_an`
  ADD CONSTRAINT `mon_an_ibfk_2` FOREIGN KEY (`danh_muc_id`) REFERENCES `danh_muc_mon_an` (`id`);

--
-- Các ràng buộc cho bảng `nguyen_lieu`
--
ALTER TABLE `nguyen_lieu`
  ADD CONSTRAINT `nguyen_lieu_ibfk_1` FOREIGN KEY (`mon_an_id`) REFERENCES `mon_an` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
