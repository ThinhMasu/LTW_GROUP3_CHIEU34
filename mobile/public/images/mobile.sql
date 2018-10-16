-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 03, 2018 lúc 09:05 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(10, 'Sony', 'logo4'),
(9, 'SamSung', 'logo3'),
(8, 'Apple', 'logo2'),
(7, 'Oppo', 'logo1'),
(11, 'Nokia', 'logo5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `manu_ID` int(11) NOT NULL,
  `type_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `name`, `price`, `image`, `description`, `manu_ID`, `type_ID`) VALUES
(1, 'Điện thoại OPPO R7 Plus', 1000000, 'imgOPDT', 'Màn hình:	AMOLED 16 triệu màu, 6.0\", 1080 x 1920 pixels Camera sau:	13 MP, Quay phim FullHD 1080p@30fps Camera trước:	8 MP Hệ điều hành:	Android 5.1 (Lollipop) CPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz Chip đồ hoạ:	Adreno 405 RAM:	3GB Bộ nhớ trong:	32 GB Hỗ trợ thẻ tối đa:	128 GB Số khe SIM:	2 SIM 2 sóng, Nano SIM Dung lượng pin:	4100 mAh Kết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 7, 11),
(2, 'Máy tính bảng OPPO X10 3G', 1200000000, 'imgOPMTB', '- Màn hình IPS 9.7 inch 1536 x 2048\r\n- 8 Nhân, Ram 2GB, HDD 16GB\r\n- Android 6.0, Wifi, 3G, Gọi điện\r\n- 2 Camera 2.0 Mpx và 8.0 Mpx.\r\n- Bảo hành 1 năm, chính hãng Nga', 7, 12),
(3, 'OPPO MacBook Air ', 26000000, 'imgOPLT', '– 3.1GHz quad-core Intel Core i7, Turbo Boost up to 4.GHz, with 8MB shared L3 cache\r\n– 16GB 2133MHz LPDDR3 memory, 512GB SSD storage\r\n– Radeon Pro 560 with 4GB memory, Intel HD Graphics 630\r\n– Four Thunderbolt 3 ports\r\n– Backlit Keyboard – US English\r\n– MacOS Sierra', 7, 13),
(4, 'G213 Prodigy RGB Membrane Full-size ', 500000, 'imgOPBP', 'Kiểu dáng đẹp mắt\r\nThiết kế chống tràn\r\nLed 16.8 triệu màu cực đẹp', 7, 15),
(5, 'Loa M105 2.1', 300000000, 'imgOPL', 'Thiết kế sang trọng\r\nLoa Microlab M105 có thiết kế nguyên khối cứng cáp, cá tính. Kích thước gọn có thể dễ dàng lắp đặt tại nơi giải trí hay góc làm việc của bạn.\r\nệ thống loa 2.1 với bộ khuếch đại chất lượng giúp tạo ra các hiệu ứng âm thanh sống động dù trong bất kỳ không gian nào. Với 1 loa siêu trầm công suất 5Wvà 2 loa vệ tinh công suất 2.5W x 2 có thể để cạnh tivi hay màn hình máy tính.\r\n\r\nTương thích nhiều thiết bị\r\nLoa Microlab M105 tương thích với nhiều thiết bị hỗ trợ như Mp3, Mp4, đầu đĩa CD/DVD, máy tính, máy tính bảng, laptop và các thiết bị kỹ thuật số khác theo chuẩn audio out 3.5mm \r\n', 7, 14),
(6, 'iPhone X 64GB Gray', 69000, 'imgAPDT', 'Màn hình:OLED, 5.8\", Super Retina\r\nHệ điều hành: iOS 11\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 7 MP\r\nCPU: Apple A11 Bionic 6 nhân\r\nRAM: 3 GB\r\nBộ nhớ trong: 64 GB\r\nThẻ SIM: 1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	2716 mAh, có sạc nhanh', 8, 11),
(7, 'iPad Apple Retina 16GB Wifi/Cell 4G', 30000, 'imgAPMTB', 'Thiết kế: Nhôm nguyên khối\r\nMàn hình: Retina LED-backlit IPS, 9.7 inch\r\nCamera Trước/Sau: 5MP\r\nCPU: Apple A7, 1.3 GHz\r\nBộ Nhớ: 16GB\r\nRAM: 1GB', 8, 12),
(8, 'Laptop Apple Macbook Pro Touch MR932SA/A i7 2.2GHz/16GB/256GB', 960000, 'imgAPLT', 'CPU: Intel Core i7 Kabylake Refresh, 2.20 GHz\r\nRAM: 16 GB, DDR4 (On board), 2400 MHz\r\nỔ cứng:	SSD: 256 GB\r\nMàn hình: 15.4 inch, Retina (2880 x 1800)\r\nCard màn hình: Card đồ họa rời, AMD Radeon Pro 555X, 4 GB\r\nCổng kết nối: 4 x Thunderbolt 3 (USB-C)\r\nĐặc biệt: Có đèn bàn phím\r\nHệ điều hành: Mac OS\r\nThiết kế: Vỏ kim loại nguyên khối, PIN liền\r\nKích thước: Dày 15.5 mm, 1.83 kg', 8, 13),
(9, 'Loa Apple 2.0 Ezeey A4', 1000000000, 'imgAPL', 'Bộ 2 loa vi tính Ezeey A4 phong cách hiện đại đặc biệt với thiết kế nhỏ gọn, phong cách hiện đại, có thể dễ dàng mang theo để sử dụng ở bất cứ nơi nào.\r\nLoa 2.0 Ezeey A4 thiết kế màng loa lớn giúp mang đến âm thanh to rõ, chất lượng cao, cho bạn những giây phút nghe nhạc thoải mái nhất.\r\nJack cắm chuẩn 3.5mm có thể tương thích với các loại desktop, laptop, smartphone, máy tính bảng, máy nghe nhạc...\r\nLoa được tích hợp sẵn volume thuận tiện sử dụng, lấy nguồn điện trực tiếp từ cổng usb máy tính hoặc các bộ adapter sạc usb.\r\nCách sử dụng vô cùng đơn giản, chỉ cần cắm cáp vào là sử dụng ngay mà không cần cài đặt gì. - Trẻ trung và cá tính\r\n- Tích hợp với máy tính để bàn, laptop, điện thoại, tai nghe, usb\r\n- Giao tiếp qua cổng USB phổ biến và jack cắm tiêu chuẩn 3.5mm giúp bạn dễ dàng kết nối với nhiều dòng máy nghe nhạc có cổng tương thích.\r\n- Được nhiều bạn trẻ yêu thích\r\n- Ngoài ra BỘ LOA 2.0 EZEEY A4 còn mang thế giới âm nhạc đến bên bạn với một âm thanh cực chuẩn và trung thực.', 8, 14),
(10, 'App Keybroad Fuhlen M87S RGB Blue Switch', 39000, 'imgAPBP', 'Kiểu bàn phím, số phím: 87 phím cơ nhỏ gọn\r\nLoại đèn: Đèn nền LED RGB với nhiều chế độ điều chỉnh\r\nLoại switch: Blue switches với vòng đời 55 triệu lần nhấn\r\nKiểu giao tiếp: Giao tiếp qua cổng USB, đầu USB được mạ vàng nhằm tăng khả năng tiếp xúc', 8, 15),
(11, 'Samsung Galaxy J7 Pro', 30000000, 'imgSSDT', 'Màn hình: Super AMOLED, 5.5\", Full HD\r\nHệ điều hành: Android 7.0 (Nougat)\r\nCamera sau: 13 MP\r\nCamera trước: 13 MP\r\nCPU: Exynos 7870 8 nhân 64-bit\r\nRAM: 3 GB\r\nBộ nhớ trong: 32 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G', 9, 11),
(12, 'MÁY TÍNH GALAXY BOOK 12 ', 15000000, 'imgSSLT', 'Màn hình: SuperAMOLED 12 inch cảm ứng\r\nĐộ phân giải: 2160 x 1440\r\nBộ xử lý: Intel Core i5 7200U 2,5 GHz (Kaby Lake)\r\nGPU: Intel HD 620\r\nRAM: 8 GB\r\nỔ cứng: 256GB SSD\r\nCamera trước: 13 MP\r\nCamera sau: 5 MP\r\nKích thước: 291.3x199.8x7.4mm\r\nTrọng lượng: 754 g', 9, 13),
(13, 'Máy tính bảng Samsung Galaxy Tab A6 7.0', 1000000, 'imgSSMTB', 'út S-pen giúp Galaxy Tab A Plus trở thành 1 trợ thủ đắc lực cho người dùng văn phòng. Có thể phác thảo nhanh, tốc ký hay đơn giản là những ghi chú. Galaxy Tab A có thiết kế đẹp, khung viền kim loại sáng bóng tạo cảm giác chắc chắn. Màn hình lớn đến 9.7 inch cho bạn giải trí, xem phim thú vị hơn. Hỗ trợ khe Sim giúp Tab A có thể nghe gọi, nhắn tin như 1 chiếc smartphone', 9, 12),
(14, 'Loa thanh Samsung HW-M360 XV - HW-M360', 100000, 'imgSSL', 'Bảo hành: 24 tháng.\r\nCông suất loa: 100W - 500W.\r\nHãng sản xuất: SAMSUNG.\r\nPhương thức bảo hành: Bảo hành điện tử.', 9, 14),
(15, 'Bàn phím SAMSUNG CPK X6S Plus', 99000, 'imgSSBP', 'Bàn phím xuyên LED 3 màu, thiết kế chống nước ( Chíp xử lý chuyên nghiệp dành riêng cho Gaming).\r\nChất liệu: Nhựa cao cấp ABS chịu lực\r\nAnti Ghosting: 19 phím\r\nPhím Functions: 12 phím\r\nĐộ bền phím: 10 triệu lượt nhấn\r\nKết nối: USB 2.0, tương thích các hệ điều hành.\r\nDây Cable: 1.6m (Chống đứt, chống nhiễu, chống xoắn)', 9, 15),
(16, 'Điện thoại Sony Xperia XZ1', 1000000, 'imgSNDT', 'Màn hình: IPS HDR LCD, 5.2\", Full HD\r\nHệ điều hành: Android 8.0 (Oreo)\r\nCamera sau: 19 MP\r\nCamera trước: 13 MP\r\nCPU: Qualcomm Snapdragon 835 8 nhân 64-bit\r\nRAM: 4 GB\r\nBộ nhớ trong: 64 GB\r\nThẻ nhớ: MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM: 2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	2700 mAh, có sạc nhanh', 10, 11),
(17, 'MÁY TÍNH BẢNG SONY XPERIA TABLET Z2', 5000000, 'imgSNMTB', 'CPU lõi tứ 2.3 GHz, RAM 3 GB Camera trước 2.3 Mp/ Sau 8.1 Mp Bộ nhớ trong 16GB/Thẻ nhớ 64GB Màn hình Full HD 10.1\" 4G(3G)/Wifi', 10, 12),
(18, '‎Sony Vaio SVF1521BYG', 10000000, 'imgSNLT', 'ntel Core i3 1.8 ghz  x 4 (CPU I3 thế hệ 3: 3217U - 3 mb cache, bus 1600 mhz),Dram III 02 gb bus 1600 mhz, HDD 320 gb , dvd-rw, vga intel hd 4000 ,webcam HD & micro phone, wifi b/g/n (wifi chuẩn N), bluetooth, nic 1000 mbs, 4 usb port,HDMI port, keyboard fullsize (bàn phím số),  lcd 15\'6 wide LED chuẩn  HD, weight 2.3 kg. ', 10, 13),
(19, 'Loa Bluetooth Sony SRS-XB10', 990000, 'imgSNL', 'Nhỏ gọn dễ mang theo, 6 màu sắc để lựa chọn, khả năng kháng nước, chống va đập, nghe nhạc liên tục lên đến 16 giờ, chất âm đậm chất Extra Bass thích hợp với những bạn trẻ năng động, thích du lịch là những điểm nổi bật về SRS-XB10 mà bạn nên cân nhắc khi lựa chọn cho mình một chiếc loa di động trong phân khúc giá trên dưới 1 triệu đồng', 10, 14),
(20, 'Bàn Phím LED Giả Cơ Chuyên Game \r\n SONY Bosston R500', 99000, 'imgSNBP', 'Loại bàn phím: Fullsize\r\nKết nối: USB\r\nĐộ bền phím > 10.000.000 lượt bấm\r\nDây dài 1.6m , dây dù chắc chắn, có chống nhiễu\r\nNút nhấn nhựa ABS\r\nBảng mạch silicon 3 lớp chống nước\r\nTích hợp đèn LED nền\r\nAntiGhost 19 phím\r\n3 chế độ màu đèn LED\r\n2 chế độ LED sáng đứng và Breathing (sáng và mờ dần dần)\r\nVỏ nhôm cao cấp, sang trọng', 10, 15),
(25, 'LapTop Nokia Booklet 3G', 10000000, 'imgNKALT', 'Laptop Nokia màn hình cảm ứng, thoải mái lướt web khi bàn phím liệt.CPU: Z530, 1.60 GHz\r\nRAM: 1 GB, DDR2, 533 MHz\r\nMàn hình: 10.1 inch, HD (1366 x 768)\r\nCard màn hình:	-, Chưa xác định\r\nCổng kết nối: 3 x USB 2.0, HDMI\r\nKích thước: 185, 1.25', 11, 13),
(24, 'Máy tính bảngNokia N1', 10000000, 'imgNKAMTB', 'Màn hình	\r\nIPS LCD, 7.9\", QXGA\r\nCPU	\r\nIntel Atom Z3580\r\nRAM	\r\n2 GB\r\nBộ nhớ trong	\r\n32 GB\r\nPin	\r\nLi-Po 5300 mAh\r\nCamera trước	\r\n5.0 MP\r\nCamera sau	\r\n8.0 MP\r\nHệ điều hành	\r\nAndroid 5.0\r\nMàu sắc	\r\nĐen, Xám', 11, 12),
(23, 'Điện thoại Nokia 8', 1500000, 'imgNKADT', 'Màn hình: AMOLED 16 triệu màu, 5.7\", 1440 x 2560 pixels Camera sau: 20 MP, Quay phim 4K 2160p@30fps Camera trước:	5 MP Hệ điều hành: Windows 10 (for Mobile) CPU: Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57 Chip đồ hoạ:	Adreno 430 RAM:	3GB Bộ nhớ trong: 32 GB Hỗ trợ thẻ tối đa:	200GB Số khe SIM: 1 Sim, Nano SIM Dung lượng pin:	3340 mAh Kết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspotãng sản xuất:	Nokia\r\n3G: HSPA 42.2/5.76 Mbps\r\n4G: LTE-A (3CA) Cat9 450/50 Mbps\r\nKích thước: 151.5 x 73.7 x 7.9 mm (5.96 x 2.90 x 0.31 in)\r\nTrọng lượng: 160 g (5.64 oz)\r\nLoại SIM: 2 SIM (Nano-SIM)\r\nLoại màn hình:	Cảm ứng điện dung IPS LCD, 16 triệu màu\r\nKích thước màn hình: 5.3 inches\r\nĐộ phân giải màn hình: 1440 x 2560 pixels\r\nHệ điều hành: Android', 11, 11),
(21, 'Bàn phím NOKIA 7 màu G21 ', 1000000, 'imgNKABP', 'Loại kết nối: Có dây.\r\nCổng kết nối máy tính: USB,Cáp.\r\nXuất xứ: China.\r\nHãng sản xuất: NOKIA System.Bàn phím giả cơ led 7 màu\r\nBàn phím kích thước: 440 * 127 * 30mm\r\nChiều dài dây: 1.3m', 11, 15),
(22, 'Loa vi tính 2.1 NOKIA V2720 Gold', 100000, 'imgNKAL', 'Model: V2720\r\nKích thước loa siêu trầm:	\r\nCao 24 cm - ngang 18.5 cm - dày 23.8 cm\r\nCông suất loa siêu trầm: 20W\r\nKích thước loa vệ tinh:	\r\nCao 21.5 cm - ngang 10.4 cm - dày 10 cm\r\nCông suất loa vệ tinh: 10W×2\r\nTổng công suất: 20W+10W×2\r\nTrọng lượng: 5.03 kg\r\nCách kết nối: Bluetooth\r\nJack cắm 3.5 mm\r\nThẻ nhớ SD\r\nBộ bán hàng chuẩn: Cáp cắm 3.5 mm\r\nSách hướng dẫn\r\nRemote\r\nLoa siêu trầm\r\n2 loa vệ tinh\r\n1 sợi Ăng-ten FM', 11, 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(13, 'Laptop', 'img3'),
(12, 'May Tinh Bang', 'img2'),
(11, 'Dien Thoai', 'img1'),
(14, 'Loa', 'img4'),
(15, 'Ban Phim', 'img5');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
