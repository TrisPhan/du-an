-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2023 at 06:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `du_an`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `full_name`, `level`) VALUES
(1, 'admin98', '123456', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) DEFAULT NULL,
  `anh_banner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `id_donhang` int(11) DEFAULT NULL,
  `id_sanpham` int(11) DEFAULT NULL,
  `tensanpham` varchar(50) DEFAULT NULL,
  `soluongsp` int(10) DEFAULT NULL,
  `dongia` int(20) DEFAULT NULL,
  `ship` varchar(20) DEFAULT NULL,
  `ngaydat` text DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `diachi` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `danhmuc` varchar(25) DEFAULT NULL,
  `soluong` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id_donhang` int(11) NOT NULL,
  `id_kh` int(11) DEFAULT NULL,
  `tong` int(20) DEFAULT NULL,
  `id_tinhtrang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id_kh` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

CREATE TABLE `phanhoi` (
  `id_binhluan` int(11) DEFAULT NULL,
  `binhluan` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_sanpham` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE `profit` (
  `tuan` int(10) DEFAULT NULL,
  `monday` int(12) DEFAULT NULL,
  `tueday` int(12) DEFAULT NULL,
  `wednesday` int(12) DEFAULT NULL,
  `thursday` int(12) DEFAULT NULL,
  `friday` int(12) DEFAULT NULL,
  `saturday` int(12) DEFAULT NULL,
  `sunday` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_sp`
--

CREATE TABLE `rate_sp` (
  `id_sp` int(11) DEFAULT NULL,
  `rate_point` decimal(3,2) DEFAULT NULL,
  `rate_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(80) DEFAULT NULL,
  `anh_chinh` varchar(80) DEFAULT NULL,
  `anh_phu` varchar(80) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `tonkho` int(11) DEFAULT NULL,
  `xuatxu` varchar(25) DEFAULT NULL,
  `id_danhmuc` int(11) DEFAULT NULL,
  `ngaytao` varchar(50) DEFAULT NULL,
  `nguoitao` varchar(50) DEFAULT NULL,
  `daban` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id_danhmuc` int(11) DEFAULT NULL,
  `s` int(12) DEFAULT NULL,
  `M` int(12) DEFAULT NULL,
  `l` int(12) DEFAULT NULL,
  `1xl` int(12) DEFAULT NULL,
  `2xl` int(12) DEFAULT NULL,
  `3xl` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `username` varchar(18) DEFAULT NULL,
  `pass` varchar(18) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `gioitinh` varchar(15) DEFAULT NULL,
  `vaitro` varchar(100) DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  `diachi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `full_name`, `username`, `pass`, `email`, `sdt`, `gioitinh`, `vaitro`, `ngaytao`, `diachi`) VALUES
(6, 'TrisPhan', 'Shinny98', '123456', 'trissphan982004@gmail.com', '0123456789', '', 'ChÃ­nh thá»©c', NULL, 'HÃ  Ná»™i'),
(7, 'Phan Táº¥t TrÃ­', 'Triss98000Ã¡dsadsa', '123456', 'trissphan982004@gmail.com', '0123456789', '', 'ChÃ­nh thá»©c', NULL, 'HÃ  Ná»™i');

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrang_dh`
--

CREATE TABLE `tinhtrang_dh` (
  `id_tinhtrang` int(11) NOT NULL,
  `tinhtrang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tinhtrang_dh`
--

INSERT INTO `tinhtrang_dh` (`id_tinhtrang`, `tinhtrang`) VALUES
(1, 'Ch? xác nh?n'),
(2, 'Hàng ?ang trên ???ng'),
(3, 'Hàng ?ã ???c giao thành công'),
(4, '??n hàng ?ã b? h?y');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id_token` int(11) DEFAULT NULL,
  `token` varchar(30) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD KEY `donhang_ctdonhang` (`id_donhang`),
  ADD KEY `sanpham_ctdonhang` (`id_sanpham`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_donhang`),
  ADD KEY `donhang_khachhang` (`id_kh`),
  ADD KEY `donhang_tinhtrang_dh` (`id_tinhtrang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_kh`);

--
-- Indexes for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD KEY `phanhoi` (`id_sanpham`),
  ADD KEY `phanhoi_taikhoan` (`id_user`);

--
-- Indexes for table `rate_sp`
--
ALTER TABLE `rate_sp`
  ADD KEY `fk_rate_sp` (`id_sp`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `fk_sanpham` (`id_danhmuc`) USING BTREE;

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD KEY `fk_size` (`id_danhmuc`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tinhtrang_dh`
--
ALTER TABLE `tinhtrang_dh`
  ADD PRIMARY KEY (`id_tinhtrang`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD KEY `token_taikhoan` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_donhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tinhtrang_dh`
--
ALTER TABLE `tinhtrang_dh`
  MODIFY `id_tinhtrang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD CONSTRAINT `donhang_ctdonhang` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `sanpham_ctdonhang` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id_sanpham`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_khachhang` FOREIGN KEY (`id_kh`) REFERENCES `khachhang` (`id_kh`),
  ADD CONSTRAINT `donhang_tinhtrang_dh` FOREIGN KEY (`id_tinhtrang`) REFERENCES `tinhtrang_dh` (`id_tinhtrang`);

--
-- Constraints for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `phanhoi` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id_sanpham`),
  ADD CONSTRAINT `phanhoi_taikhoan` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `rate_sp`
--
ALTER TABLE `rate_sp`
  ADD CONSTRAINT `fk_rate_sp` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sanpham`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`);

--
-- Constraints for table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `fk_size` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`);

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_taikhoan` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
