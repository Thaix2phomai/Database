-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 24, 2022 at 08:22 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benh_vien`
--

-- --------------------------------------------------------

--
-- Table structure for table `bac_sy`
--

CREATE TABLE `bac_sy` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_khoa` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioi_tinh` enum('Nam','Nữ') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_sinh` date NOT NULL,
  `CMND` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_thoai` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trinh_do_chuyen_mon` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bac_sy`
--

INSERT INTO `bac_sy` (`id`, `id_khoa`, `ten`, `gioi_tinh`, `ngay_sinh`, `CMND`, `dia_chi`, `dien_thoai`, `email`, `hinh_anh`, `trinh_do_chuyen_mon`) VALUES
('91230', '89000', 'Lê Huỳnh A', 'Nam', '1982-01-17', '123456789325', '44 Lý Nam Đế', '0989989465', 'lehuynha@gmail.com', 'https://img.lovepik.com/free-png/20210919/lovepik-confident-workplace-business-male-image-png-image_400581049_wh1200.png', 'Tiến sĩ'),
('91231', '89001', 'Lê An B', 'Nam', '1970-01-13', '123456789397', '1 Lê Thánh Tông', '0989988162', 'leanb@gmail.com', 'https://static2.yan.vn/YanNews/2167221/201912/cam-dong-hinh-anh-me-trai-hoa-khap-nguoi-con-trai-sau-khi-hien-tang-0aa17a24.jpg', 'Thạc sĩ'),
('91232', '89002', 'Lê Hồng C', 'Nữ', '1975-04-07', '123456789845', '19 Huỳnh Thúc Kháng', '0913248599', 'lehongc@gmail.com', 'https://channel.mediacdn.vn/thumb_w/640/2020/3/28/photo-4-15853701343991222396763.jpg', 'Tiến sĩ'),
('91233', '89003', 'La Văn T', 'Nữ', '1982-03-17', '123456789457', '40 Lê Văn Lương', '0132888856', 'levant@gmail.com', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBodQoJhJGB1qoSvJ-mZeCy61dpq0XZOM8pA&usqp=CAU', 'Tiến sĩ'),
('91234', '89004', 'Nguyễn Quốc T', 'Nam', '1984-01-21', '', '80 Lê Văn Lương', '0132888184', 'nguyenquoct@gmail.com', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQth5aCkonwVdd78etB0MQroYxzl6hLbHwMEw&usqp=CAU', 'Giáo sư');

-- --------------------------------------------------------

--
-- Table structure for table `bac_sy_tham_gia`
--

CREATE TABLE `bac_sy_tham_gia` (
  `id_bacsy` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phancong` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bac_sy_tham_gia`
--

INSERT INTO `bac_sy_tham_gia` (`id_bacsy`, `id_phancong`) VALUES
('91230', '78900'),
('91231', '78901'),
('91230', '78902'),
('91230', '78903'),
('91234', '78904');

-- --------------------------------------------------------

--
-- Table structure for table `benh_an`
--

CREATE TABLE `benh_an` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chieu_cao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `can_nang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `huyet_ap` enum('cao','thấp','bình thường') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_lap_benh_an` date NOT NULL,
  `ngay_hen_tai_kham` date DEFAULT NULL,
  `chan_doan_benh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_benhnhan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benh_an`
--

INSERT INTO `benh_an` (`id`, `chieu_cao`, `can_nang`, `huyet_ap`, `ngay_lap_benh_an`, `ngay_hen_tai_kham`, `chan_doan_benh`, `id_benhnhan`) VALUES
('56780', '1m75', '70kg', 'bình thường', '2022-01-01', '2022-01-05', 'Dị ứng mũi cấp tính', '34560'),
('56781', '1m70', '68kg', 'cao', '2022-01-02', NULL, 'Huyết áp cao', '34561'),
('56782', '1m65', '60kg', 'thấp', '2021-12-09', NULL, 'Viêm amidan', '34562'),
('56783', '1m74', '65kg', 'bình thường', '2022-01-08', '2022-01-12', 'Dị ứng thời tiết', '34563'),
('56784', '1m72', '70kg', 'bình thường', '2022-01-20', '2022-01-24', 'Hóc Xương cá', '34564');

-- --------------------------------------------------------

--
-- Table structure for table `benh_nhan`
--

CREATE TABLE `benh_nhan` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioi_tinh` enum('Nam','Nữ') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `noi_sinh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CMND` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_thoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nghe_nghiep` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhom_mau` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `di_ung_thuoc` text COLLATE utf8mb4_unicode_ci,
  `id_giuongbenh` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinh_trang` enum('Tốt','Không tốt') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nhap_vien` date NOT NULL,
  `xuat_vien` date DEFAULT NULL,
  `ket_qua_dieu_tri` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benh_nhan`
--

INSERT INTO `benh_nhan` (`id`, `ten`, `gioi_tinh`, `dia_chi`, `ngay_sinh`, `noi_sinh`, `CMND`, `dien_thoai`, `nghe_nghiep`, `hinh_anh`, `email`, `nhom_mau`, `di_ung_thuoc`, `id_giuongbenh`, `tinh_trang`, `nhap_vien`, `xuat_vien`, `ket_qua_dieu_tri`) VALUES
('34560', 'Nguyễn Văn A', 'Nam', '20 Thanh Nhàn', '1990-01-15', 'Hà Nội', '123456789101', '0989980114', 'Công An', 'https://1.bp.blogspot.com/-uUmUqZooFEU/XowDDGynf8I/AAAAAAAAbVw/QwOLlf67RvcF9XJB03_-cwUBDQvYY4npgCLcBGAsYHQ/s1600/Girl-Xinh-Ao-Dai%2B%252810%2529.jpg', 'cuong123@gmail.com', 'B', 'idiosyncrasy', '23450', 'Không tốt', '2022-01-01', NULL, NULL),
('34561', 'Nguyễn Thị B', 'Nữ', '15 Trần Hưng Đạo', '1982-02-08', 'Bắc Giang', '123456789456', '0132888731', 'Kinh Doanh', 'https://i.imgur.com/KAi3pm9.jpg', 'nguyenthib@gmail.com', 'O', NULL, '23453', 'Không tốt', '2022-01-02', '2022-01-08', 'Tốt'),
('34562', 'Nguyễn Quốc C', 'Nam', '1 Quán Sứ', '1983-01-20', 'Hà Nội', '123456789356', '0394106483', 'Kinh Doanh', 'https://staticgthn.kinhtedothi.vn/uploaded/vantronggthn/2019_09_06/anh-ta-ton-1567702842-width1000height728_nsmw.jpg', 'nguyenquocc@gmail.com', 'O', 'Dalacin', '23453', 'Không tốt', '2021-12-09', NULL, NULL),
('34563', 'Nguyễn Đỗ D', 'Nữ', '399 Cầu Giấy', '1982-08-19', 'Hà Nội', '123456789458', '0989980119', 'Họa Sĩ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNCSvtGejnvohIJzkjB5-3v_JhsOkN6ODZgw&usqp=CAU', 'nguyendod@gmail.com', 'A', NULL, NULL, 'Tốt', '2022-01-08', NULL, NULL),
('34564', 'Hà Văn E', 'Nam', '15 Nguyễn Thái Học', '1996-05-19', 'Hải Phòng', '123456789957', '0132888734', 'Giáo Viên', 'https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/3/1/chie2012-16145712102162068330492-16146089461561247450862.jpg', 'havane@gmail.com', 'O', NULL, NULL, 'Tốt', '2022-01-20', '2022-01-20', 'Tốt');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_toa_thuoc`
--

CREATE TABLE `chi_tiet_toa_thuoc` (
  `id_toathuoc` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_duocpham` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `huong_dan_su_dung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_toa_thuoc`
--

INSERT INTO `chi_tiet_toa_thuoc` (`id_toathuoc`, `id_duocpham`, `huong_dan_su_dung`) VALUES
('17890', '98760', 'Ngày uống 2 viên sau ăn'),
('17891', '98761', 'Uống 2 viên sau mỗi bữa ăn'),
('17892', '98762', 'Xịt vào mũi vào họng hằng ngày'),
('17893', '98763', 'Ngày 1 viên trước khi đi ngủ'),
('17894', '98764', 'Uống trước khi ăn ngày 2 viên');

-- --------------------------------------------------------

--
-- Table structure for table `duoc_pham`
--

CREATE TABLE `duoc_pham` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `don_gia` bigint NOT NULL,
  `nuoc_san_xuat` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `duoc_pham`
--

INSERT INTO `duoc_pham` (`id`, `ten`, `don_gia`, `nuoc_san_xuat`) VALUES
('98760', 'Touxirup', 100000, 'Mỹ '),
('98761', 'Choay', 50000, 'Ấn Độ'),
('98762', 'Thuốc xịt mũi Aladka', 40000, 'Mỹ'),
('98763', 'Amlodipin', 200000, 'Pháp'),
('98764', 'Apibolis', 80000, 'Tây Ban Nha');

-- --------------------------------------------------------

--
-- Table structure for table `giuong_benh`
--

CREATE TABLE `giuong_benh` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai_giuong` enum('Đơn','Đôi') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phongbenh` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_trang` enum('Còn','Không còn') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giuong_benh`
--

INSERT INTO `giuong_benh` (`id`, `loai_giuong`, `id_phongbenh`, `tinh_trang`) VALUES
('23450', 'Đơn', '12340', 'Còn'),
('23451', 'Đơn', '12341', 'Còn'),
('23452', 'Đôi', '12343', 'Còn'),
('23453', 'Đơn', '12341', 'Còn'),
('23454', 'Đôi', '12344', 'Không còn');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tri_gia` bigint NOT NULL,
  `ngay_lap_hoa_don` date NOT NULL,
  `id_benhan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `tri_gia`, `ngay_lap_hoa_don`, `id_benhan`) VALUES
('67890', 200000, '2022-01-01', '56780'),
('67891', 500000, '2022-01-02', '56781'),
('67892', 450000, '2021-12-09', '56782'),
('67893', 340000, '2022-01-08', '56783'),
('67894', 100000, '2022-01-20', '56784');

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_khoa` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`id`, `ten_khoa`) VALUES
('89000', 'Tai-mũi-họng'),
('89001', 'Tim-mạch'),
('89002', 'Hồi sức tích cực'),
('89003', 'Răng hàm mặt'),
('89004', 'Nhi');

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_nha_benh_nhan`
--

CREATE TABLE `nguoi_nha_benh_nhan` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioi_tinh` enum('Nam','Nữ') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CMND` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_thoai` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_benhnhan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguoi_nha_benh_nhan`
--

INSERT INTO `nguoi_nha_benh_nhan` (`id`, `ten`, `gioi_tinh`, `CMND`, `dien_thoai`, `id_benhnhan`) VALUES
('45670', 'Lê Thị C', 'Nữ', '12345678964', '0132888106', '34560'),
('45671', 'Lê Văn T', 'Nam', '123456789936', '0989980926', '34561'),
('45672', 'Phùng Thị Q', 'Nữ', '123456789184', '0989980196', '34563'),
('45673', 'Hà Lê P', 'Nữ', '123456789139', '0989984965', '34564'),
('45674', 'Hồng Quang M', 'Nam', '123456789111', '0989988385', '34564');

-- --------------------------------------------------------

--
-- Table structure for table `phan_cong`
--

CREATE TABLE `phan_cong` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_ap_dung` date NOT NULL,
  `gio_ap_dung` time NOT NULL,
  `id_benhan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phan_cong`
--

INSERT INTO `phan_cong` (`id`, `ngay_ap_dung`, `gio_ap_dung`, `id_benhan`) VALUES
('78900', '2022-01-01', '10:15:42', '56780'),
('78901', '2022-01-02', '12:27:12', '56781'),
('78902', '2021-12-09', '58:24:20', '56782'),
('78903', '2022-01-08', '09:21:11', '56783'),
('78904', '2022-01-20', '14:18:12', '56784');

-- --------------------------------------------------------

--
-- Table structure for table `phong_benh`
--

CREATE TABLE `phong_benh` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_phong` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai_phong` enum('Thường','Vip') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_giuong` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_trang` enum('Còn','Không còn') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phong_benh`
--

INSERT INTO `phong_benh` (`id`, `ten_phong`, `loai_phong`, `so_giuong`, `tinh_trang`) VALUES
('12340', 'A301', 'Thường', '10', 'Còn'),
('12341', 'B302', 'Thường', '15', 'Còn'),
('12342', 'VIP1', 'Vip', '3', 'Không còn'),
('12343', 'VIP2', 'Vip', '2', 'Còn'),
('12344', 'C305', 'Thường', '20', 'Không còn');

-- --------------------------------------------------------

--
-- Table structure for table `toa_thuoc`
--

CREATE TABLE `toa_thuoc` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phancong` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chuan_doan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cach_giai_quyet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_dieu_tri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toa_thuoc`
--

INSERT INTO `toa_thuoc` (`id`, `id_phancong`, `chuan_doan`, `cach_giai_quyet`, `ngay_dieu_tri`) VALUES
('17890', '78900', 'Dị ứng mũi', 'Uống thuốc, nằm viện điều trị', '2022-01-01'),
('17891', '78901', 'Huyết áp cao', 'uống thuốc, nằm viện điều trị', '2022-01-02'),
('17892', '78902', 'Viêm amidan', 'Uống thuốc, nằm viện điều trị', '2021-12-09'),
('17893', '78903', 'Dị ứng thời tiết', 'uống thuốc', '2022-01-08'),
('17894', '78904', 'Hóc xương cá', 'Uống thuốc', '2022-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `xet_nghiem`
--

CREATE TABLE `xet_nghiem` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai_xet_nghiem` enum('Máu','Nước tiểu','Ung thư','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket_qua` enum('Tốt','Không tốt') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_xet_nghiem` date NOT NULL,
  `id_benhan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xet_nghiem`
--

INSERT INTO `xet_nghiem` (`id`, `loai_xet_nghiem`, `ket_qua`, `ngay_xet_nghiem`, `id_benhan`) VALUES
('74256', 'Ung thư', 'Tốt', '2022-01-20', '56784'),
('76540', 'Máu', 'Không tốt', '2022-01-01', '56780'),
('76541', 'Nước tiểu', 'Không tốt', '2021-09-12', '56781');

-- --------------------------------------------------------

--
-- Table structure for table `y_ta`
--

CREATE TABLE `y_ta` (
  `id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_khoa` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioi_tinh` enum('Nam','Nữ') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_sinh` date NOT NULL,
  `CMND` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `y_ta`
--

INSERT INTO `y_ta` (`id`, `id_khoa`, `ten`, `gioi_tinh`, `ngay_sinh`, `CMND`, `dia_chi`) VALUES
('12350', '89000', 'Nguyễn Minh E', 'Nữ', '1978-01-13', '123456789836', '20 Lê Hồng Phong'),
('12351', '89001', 'Trịnh Quang L', 'Nữ', '1990-11-08', '12345678983', '40 Hai Bà Trưng'),
('12352', '89002', 'Lung Thị N', 'Nữ', '1979-01-11', '123456789728', '990 Khâm Thiên'),
('12353', '89003', 'Nguyễn Cẩm P', 'Nữ', '1992-01-03', '123456789927', '40 Mai Hắc Đế'),
('12354', '89004', 'Lệ An R', 'Nam', '1993-01-18', '123456789162', '39 Nguyễn Chí Thanh');

-- --------------------------------------------------------

--
-- Table structure for table `y_ta_tham_gia`
--

CREATE TABLE `y_ta_tham_gia` (
  `id_yta` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phancong` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `y_ta_tham_gia`
--

INSERT INTO `y_ta_tham_gia` (`id_yta`, `id_phancong`) VALUES
('12350', '78900'),
('12351', '78901'),
('12350', '78902'),
('12350', '78903'),
('12354', '78904');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bac_sy`
--
ALTER TABLE `bac_sy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_khoa` (`id_khoa`);

--
-- Indexes for table `bac_sy_tham_gia`
--
ALTER TABLE `bac_sy_tham_gia`
  ADD PRIMARY KEY (`id_bacsy`,`id_phancong`),
  ADD KEY `id_phancong` (`id_phancong`);

--
-- Indexes for table `benh_an`
--
ALTER TABLE `benh_an`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_benhnhan` (`id_benhnhan`);

--
-- Indexes for table `benh_nhan`
--
ALTER TABLE `benh_nhan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_giuongbenh` (`id_giuongbenh`);

--
-- Indexes for table `chi_tiet_toa_thuoc`
--
ALTER TABLE `chi_tiet_toa_thuoc`
  ADD PRIMARY KEY (`id_toathuoc`,`id_duocpham`),
  ADD KEY `id_duocpham` (`id_duocpham`);

--
-- Indexes for table `duoc_pham`
--
ALTER TABLE `duoc_pham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giuong_benh`
--
ALTER TABLE `giuong_benh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_phongbenh` (`id_phongbenh`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_benhan` (`id_benhan`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoi_nha_benh_nhan`
--
ALTER TABLE `nguoi_nha_benh_nhan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_benhnhan` (`id_benhnhan`);

--
-- Indexes for table `phan_cong`
--
ALTER TABLE `phan_cong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_benhan` (`id_benhan`);

--
-- Indexes for table `phong_benh`
--
ALTER TABLE `phong_benh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toa_thuoc`
--
ALTER TABLE `toa_thuoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_phancong` (`id_phancong`);

--
-- Indexes for table `xet_nghiem`
--
ALTER TABLE `xet_nghiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_benhan` (`id_benhan`);

--
-- Indexes for table `y_ta`
--
ALTER TABLE `y_ta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_khoa` (`id_khoa`);

--
-- Indexes for table `y_ta_tham_gia`
--
ALTER TABLE `y_ta_tham_gia`
  ADD PRIMARY KEY (`id_yta`,`id_phancong`),
  ADD KEY `id_phancong` (`id_phancong`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bac_sy`
--
ALTER TABLE `bac_sy`
  ADD CONSTRAINT `bac_sy_ibfk_1` FOREIGN KEY (`id_khoa`) REFERENCES `khoa` (`id`);

--
-- Constraints for table `bac_sy_tham_gia`
--
ALTER TABLE `bac_sy_tham_gia`
  ADD CONSTRAINT `bac_sy_tham_gia_ibfk_1` FOREIGN KEY (`id_bacsy`) REFERENCES `bac_sy` (`id`),
  ADD CONSTRAINT `bac_sy_tham_gia_ibfk_2` FOREIGN KEY (`id_phancong`) REFERENCES `phan_cong` (`id`);

--
-- Constraints for table `benh_an`
--
ALTER TABLE `benh_an`
  ADD CONSTRAINT `benh_an_ibfk_1` FOREIGN KEY (`id_benhnhan`) REFERENCES `benh_nhan` (`id`);

--
-- Constraints for table `benh_nhan`
--
ALTER TABLE `benh_nhan`
  ADD CONSTRAINT `benh_nhan_ibfk_1` FOREIGN KEY (`id_giuongbenh`) REFERENCES `giuong_benh` (`id`);

--
-- Constraints for table `chi_tiet_toa_thuoc`
--
ALTER TABLE `chi_tiet_toa_thuoc`
  ADD CONSTRAINT `chi_tiet_toa_thuoc_ibfk_1` FOREIGN KEY (`id_toathuoc`) REFERENCES `toa_thuoc` (`id`),
  ADD CONSTRAINT `chi_tiet_toa_thuoc_ibfk_2` FOREIGN KEY (`id_duocpham`) REFERENCES `duoc_pham` (`id`);

--
-- Constraints for table `giuong_benh`
--
ALTER TABLE `giuong_benh`
  ADD CONSTRAINT `giuong_benh_ibfk_1` FOREIGN KEY (`id_phongbenh`) REFERENCES `phong_benh` (`id`);

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`id_benhan`) REFERENCES `benh_an` (`id`);

--
-- Constraints for table `nguoi_nha_benh_nhan`
--
ALTER TABLE `nguoi_nha_benh_nhan`
  ADD CONSTRAINT `nguoi_nha_benh_nhan_ibfk_1` FOREIGN KEY (`id_benhnhan`) REFERENCES `benh_nhan` (`id`);

--
-- Constraints for table `phan_cong`
--
ALTER TABLE `phan_cong`
  ADD CONSTRAINT `phan_cong_ibfk_1` FOREIGN KEY (`id_benhan`) REFERENCES `benh_an` (`id`);

--
-- Constraints for table `toa_thuoc`
--
ALTER TABLE `toa_thuoc`
  ADD CONSTRAINT `toa_thuoc_ibfk_1` FOREIGN KEY (`id_phancong`) REFERENCES `phan_cong` (`id`);

--
-- Constraints for table `xet_nghiem`
--
ALTER TABLE `xet_nghiem`
  ADD CONSTRAINT `xet_nghiem_ibfk_1` FOREIGN KEY (`id_benhan`) REFERENCES `benh_an` (`id`);

--
-- Constraints for table `y_ta`
--
ALTER TABLE `y_ta`
  ADD CONSTRAINT `y_ta_ibfk_1` FOREIGN KEY (`id_khoa`) REFERENCES `khoa` (`id`);

--
-- Constraints for table `y_ta_tham_gia`
--
ALTER TABLE `y_ta_tham_gia`
  ADD CONSTRAINT `y_ta_tham_gia_ibfk_1` FOREIGN KEY (`id_yta`) REFERENCES `y_ta` (`id`),
  ADD CONSTRAINT `y_ta_tham_gia_ibfk_2` FOREIGN KEY (`id_phancong`) REFERENCES `phan_cong` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
