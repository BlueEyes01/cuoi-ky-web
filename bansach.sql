-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2021 lúc 03:51 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `madonhang` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `tongtien` varchar(255) NOT NULL,
  `diachi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `masach` varchar(255) NOT NULL,
  `madonhang` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `masach` int(16) NOT NULL,
  `tensach` varchar(255) NOT NULL,
  `tacgia` varchar(255) NOT NULL,
  `theloai` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `mota` text NOT NULL,
  `giatien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`masach`, `tensach`, `tacgia`, `theloai`, `image`, `mota`, `giatien`) VALUES
(5, 'Khoa học và công nghệ nano ', 'Trương Văn Tân', 'Khoa học', 'https://lh3.googleusercontent.com/proxy/F1PUQEumhnf8idrRwLAC_A32vkvPuZca101WTKoCwMHVX3Zmi1AG7wtcZM3UUHvo2eCdogtPc7okdxVh_LlF5xZzvCjSqENvVeUjg06KO6Ud1dPyGgEi___EAFQ27EAyk_IsV_8x6b382w', 'Khoa học và công nghệ nano là một bộ môn khảo sát, tìm hiểu đặc tính của những vật chất cực nhỏ, để thao tác, chồng chập những vật chất này, xây dựng vật thể to hơn. Người ta gọi phương pháp xây dựng từ vật nhỏ đến vật to và to hơn nữa là phương pháp \"từ dưới lên\". Sự xuất hiện của khoa học và công nghệ nano đang cách mạng hóa lề lối suy nghĩ và phương pháp thiết kế toàn thể các loại vật liệu, từ dược phẩm trị liệu đến các linh kiện điện tử với những đặc tính đã định sẵn ngay từ thang phân tử. Công nghệ nano là ngọn sóng thần kỹ nghệ đương đại mà những ứng dụng của nó đang dần dần xuất hiện, bùng nổ và sẽ tạo ra sức va đập mãnh liệt vào cuộc sống của xã hội loài người. Cốt lõi của nền công nghệ nano xoay quanh các phương thức chế biến những vật liệu nano, khảo sát hóa tính, lý tính, cơ tính, quang tính, điện tính, từ tính và tìm kiếm những ứng dụng cho các loại vật liệu này.\r\n\r\nBằng một ngôn ngữ giản dị, quyển sách này làm sáng tỏ nguồn gốc và ý nghĩa của khoa học và công nghệ nano. Quyển sách cũng mô tả sự sáng tạo của các nhà khoa học trong việc mô phỏng thiên nhiên để tạo ra các vật liệu nano với những tiềm năng ứng dụng từ việc thu nhỏ linh kiện điện tử đến việc trị liệu ung thư. ', '40.000'),
(6, 'Khoa học Công nghệ', 'Nam sơn', 'Khoa học', 'https://tapchicongthuong.vn/images/20/1/18/bia-so-40-1.jpg', 'Sách nghiên cứu xây dựng lộ trình chuyển đổi số cho doanh nghiệp Việt Nam ', '150.000'),
(7, 'Phân tích dữ liệu R (Hỏi và Đáp)', 'Nguyễn Văn Tuấn', 'Khoa học', 'https://www.khaitam.com/Data/Sites/1/Product/9120/phan-tich-du-lieu-voi-r-hoi-va-dap.png', 'Cuốn sách \"Phân tích dữ liệu R (Hỏi và Đáp)\" bạn đang cầm trên tay là một công trình biên soạn tương đối đặc thù. Sự đặc thù là ở hình vấn đáp, vốn chưa được áp dụng trong các sách về khoa học dữ liệu trên thế giới. Khi biên soạn cuốn sách, chúng tôi tự đặt mình trong tình huống của một nhà khoa học bận rộn và đang cần một phương pháp hoặc một công cụ để giải pháp về một vấn đề cụ thể.\r\n\r\n\r\nThay vì đọc những chi tiết về lý thuyết đằng sau phương pháp, nhà khoa học cần hiểu ý tưởng phương pháp, có thể áp dụng ngay cào vấn đề, và quan trọng nhất là dành thời gian để diễn giải kết quả.\r\n\r\n\r\nMục tiêu của chúng tôi là giúp cho các nhà khoa học tiếp cận với các phương pháp hiện đại và các mô hình thống kê phổ biển có thể áp dụng trong việc kiểm định các giả thuyết khoa học về thiên văn. Qua kiểm định giả thuyết khoa học, giới khoa học có thể đi đến những khám phá hào hứng.\r\n', '144.000'),
(8, 'Tuyển tập Dữ liệu lớn (Big Data)', 'Nhóm phân tích kinh tế', 'Khoa học', 'https://www.khaitam.com/Data/Sites/1/Product/7263/big-data-bia-1.jpg', 'Khi bạn sử dụng sản phẩm của một trong năm đại gia GAFAM (Google, Amazon, Facebook, Apple, Microsoft) chắc bạn không ngờ rằng mình đã góp phần tạo ra dữ liệu lớn (Big Data). Trong thế giới toàn cầu hóa ngày nay, các hoạt động hằng ngày của chúng ta (tiêu dùng, giao tiếp, di chuyển,...) tạo ra các dữ liệu, mà dấu vết là những \"mảnh vụn dạng số\". Từ thực tế này, khoa học dữ liệu (Data Science) ra đời để xử lí, trong thời gian kỉ lục, những dữ liệu đa dạng, thường ít được cấu trúc, ngày càng tăng, liên tục thay đổi, với những ứng dụng trong hầu hết mọi lĩnh vực và tác động đến mọi mặt của cuộc sống. ', '52.000'),
(9, 'Sách Kỹ Năng Làm Việc: Dám Hành Động - (Cuốn Sách Xúc Tích, Chi Tiết, Đáng Đọc Đối Với Bất Cứ Ai Quan Tâm Đến Tài Chính Và Kinh Tế / Tặng Kèm Bookmark Greenlife)', 'Ben S. Bernanke', 'Kinh tế và kĩ năng', 'https://salt.tikicdn.com/cache/w444/ts/product/79/7b/04/a4aa3a61f274ec6b3596571d3005f845.jpg', 'Sách Kỹ Năng Làm Việc: Dám Hành Động - (Cuốn Sách Xúc Tích, Chi Tiết, Đáng Đọc Đối Với Bất Cứ Ai Quan Tâm Đến Tài Chính Và Kinh Tế / Tặng Kèm Bookmark Greenlife)\r\n\r\nMột cái nhìn “người trong cuộc” về hành trình chiến đấu chống lại cuộc khủng hoảng kinh tế chỉ đứng sau Đại Khủng hoảng về quy mô.\r\n\r\nNăm 2006, Ben S. Bernanke được bổ nhiệm làm Chủ tịch Cục Dự trữ Liên bang (FED), đỉnh cao bất ngờ của hành trình cá nhân từ thị trấn nhỏ Nam Carolina đến những cuộc gặp gỡ học thuật uy tín và cuối cùng là dịch vụ công tại hội trường quyền lực của Washington.\r\n\r\nLàm việc dưới hai thời tổng thống đúng vào thời điểm nền kinh tế Mỹ đang rơi vào khủng hoảng tài chính trầm trọng, Ben S. Bernanke đã dẫn dắt FED – và cùng các đồng nghiệp trong Bộ Tài chính ổn định thành công một hệ thống tài chính đang lên. Với sự sáng tạo và quyết đoán, họ đã ngăn chặn sự sụp đổ kinh tế ở quy mô không tưởng và tiếp tục xây dựng các chương trình không chính thống giúp vực dậy nền kinh tế Mỹ và trở thành mô hình cho các quốc gia khác.\r\n\r\nMột cuốn sách súc tích, chi tiết, đáng đọc đối với bất cứ ai quan tâm đến tài chính và kinh tế.\r\n\r\nBen S. Bernanke đảm nhiệm vị trí Chủ tịch của Cục Dự trữ Liên bang (FED) từ năm 2006 đến năm 2014. Ông được tạp chí Time vinh danh là “Nhân vật của năm” vào năm 2009. Trước khi gắn bó với sự nghiệp dịch vụ công, ông là Giáo sư Kinh tế tại Đại học Princeton.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', '200.000'),
(10, 'Khơi Nguồn Trực Giác(Tặng E-Book Bộ 10 Cuốn Sách Hay Về Kỹ Năng, Đời Sống, Kinh Tế Và Gia Đình', 'Lynn A.Robinson', 'Kinh tế và kĩ năng', 'https://salt.tikicdn.com/ts/product/b8/54/51/becb4e12ceae6c3b239f483dc20f051a.jpg', 'Cuộc sống luôn đặt chúng ta vào nhiều ngã rẽ khác nhau và bạn đau đầu khi cân nhắc nên đi vào hướng nào, hướng nào nhanh nhất và tốt nhất. Không có một sự lựa chọn nào mang tên số một và tuyệt nhất, mà lựa chọn đó là phù hợp với bối cảnh nhất mà thôi. Nếu bạn không có bất kỳ một con số để chứng minh cho quyết định, liệu bạn có tin vào trực giác của mình? Nhiều người sẽ rất băn khoăn bởi trực giác là cái gì đó rất mơ hồ, nhưng nếu bạn tin vào trực giác của chính mình thì quyết định sẽ có khả năng chính xác cao và không làm bạn thất vọng.', '110.000'),
(11, 'Chiến Quốc Sách', 'Nguyễn Hiến Lê', 'Kinh tế và kĩ năng', 'https://salt.tikicdn.com/ts/product/a6/f3/51/0789552cb76caabb0368037cd1f97195.png', '', '155.000'),
(12, 'Kỹ Năng Để Cân Bằng Giữa Công Việc Và Cuộc Sống', 'Srewart D.Friedman', 'Kinh tế và kĩ năng', 'https://salt.tikicdn.com/ts/product/93/bc/6c/f68e0d7c27646da6b0f1cb000da5f5c5.jpg', 'Công việc và cuộc sống là hai bản thể tồn tại song song với nhau hàng ngày của bạn phải không? Khi mà chúng ta ngày càng bận rộn hơn với công việc thì cũng kèm theo đó là chuỗi ngày căng thẳng mà đến dây thần kinh cũng muốn đứt.\r\n\r\nNếu như thời điểm trước đây, chúng ta làm việc 8h/ngày và trở về nhà nghỉ ngơi thì giờ đây mọi người thường xuyên mang việc về nhà. Họ liên tục kiểm tra email công việc thông qua điện thoại di động ở nhà (ngay cả khi đó là thời gian cho bữa tối) và đọc báo cáo công việc vào tối muộn. Làm việc với lịch và cường độ như vậy sẽ gây tổn hại đến sức khỏe của mọi người. Đã đến lúc mọi người cần quan tâm đến bản thân mình nhiều hơn và tìm cách cân bằng giữa công việc và cuộc sống gia đình. Bạn đã bao giờ nghĩ đến một cách nào đó để mình có thể cân bằng mọi thứ, ít nhất là công việc và cuộc sống để mình có dư giả chút thời gian bên con lâu hơn, bên gia đình lâu hơn hay thời gian cho chính bản thân mình thêm chút nữa.\r\n\r\nNhiều cuốn sách phát triển cá nhân gợi ý rằng bạn nên kết hợp thời gian làm việc và giải trí để giảm bớt căng thẳng. Tuy nhiên, trong thực tế việc này không hề dễ dàng. Để cân bằng tốt giữa thời gian cho công việc, gia đình, bạn bè và bản thân bạn cần có những kỹ năng quản lý căng thẳng. Hãy suy nghĩ nghiêm túc về việc cân bằng cuộc sống cho dù bạn đang gặp phải áp lực từ gia đình hay các vấn đề liên quan đến công việc.', '116.000'),
(13, 'Thế giới muôn màu', 'THUAN DUY ', 'Thiếu nhi', 'http://1.bp.blogspot.com/-BibQJaHiHwA/VelQzknz19I/AAAAAAAAPGA/SP2CWXZfpJY/s640/sach-thieu-nhi-the-gioi-muon-mau.jpg', 'Cuốn sách Thế giới muôn màu được chúng tôi chuyển ngữ với mong muốn góp thêm một hoạt động vui chơi bổ ích dành cho các bé trong độ tuổi mầm non. Cuốn sách mở ra trước mắt bé cả một thế giới sống động với cuộc sống nhộn nhịp ở nông trại cùng các con vật hiền lành thân thuộc, bé cũng được trở về thế giới cổ tích với những tòa lâu đài và các vị hiệp sĩ', '50.000'),
(14, 'TRÒ CHƠI TƯ DUY (3-4 TUỔI) - NÂNG CAO', 'Hải âu', 'Thiếu nhi', 'https://storage.googleapis.com/cdn.nhanh.vn/store1/41330/ps/20190219/nang_cao_3_4_tuoi_01_800x800.jpg', 'Rèn luyện tư duy có hệ thống có tác dụng trong việc tăng cường liên kết các tế bào thần kinh, nâng cao khả năng nhận thức.\r\n\r\nKhoa học đã chứng minh, trí thông minh bẩm sinh có xu hướng giảm dần theo thời gian từ sau khi trẻ sinh ra. Do đó trẻ cần rèn luyện tư duy thường xuyên để bù đắp cho sự suy giảm đó, giúp trí thông minh của trẻ không ngừng nâng cao và phát triển.\r\nNăng lực tư duy là năng lực trung tâm có thể giúp trẻ hình thành các năng lực thực tế khác như năng lực học tập, khả năng suy nghĩ, năng lực sáng tạo và giải quyết vấn đề…', '40.000'),
(15, 'CÂU ĐỐ HÌNH cho bé 5-6-7 tuổi - Nâng cao khả năng suy luận', 'Shinohara Kikunori', 'Thiếu nhi', 'https://image.voso.vn/users/vosoimage/images/924949104dcb29eb6651f55670d5aa22?t%5B%5D=maxSize%3Awidth%3D800&t%5B%5D=compress%3Alevel%3D100&accessToken=4847f8c3ca90ba07f543dd9bc57e5f2fb7c4f967a48762223cc80371fa722f05', 'Gíup các bé nâng cao khả năng suy luận cũng như suy đoán', '60.000'),
(16, 'Thiên tài nhí', 'Nhiều tác giả', 'Thiếu nhi', 'https://image.voso.vn/users/vosoimage/images/0fb96912201f68be19cae2c20d8eb03a?t%5B0%5D=compress%3Alevel%3D100&accessToken=fc7adceb3d47606d5370c12c98354474cb1ce67424e69fb637f3a676cec38804', 'Sách thiếu nhi - Thiên tài nhí dành cho các bé lứa tuổi 5-6 bao gồm các hiểu biết về toán học cùng với các hoạt động sẽ giúp các bạn nhỏ hiểu rõ hơn về Thế giới và Môi trường của các bạn nhỏ đang sinh sống.', '55.000'),
(17, 'Làm đĩ', 'Vũ Trọng Phụng', 'Văn học Việt Nam', 'https://vcdn.tikicdn.com/media/catalog/product/l/a/lam%20di%2060k.u547.d20160822.t115600.225043.png', 'Cuốn sách “làm đĩ” là tác phẩm có tính hiện thực sâu sắc. cho đến bây giờ, người VN chúng ta vẫn chưa thẳng thắn và nghiêm túc trong việc giáo dục giới tính cho giới trẻ, nhưng chính chuyện úp úp mở mở, giấu giếm nhiệm vụ người lớn cần phải làm đã góp phần không chỉ đẩy con cái phải tự mài mò nhiều khi dẫn đến lạc lối. Cuốn sách này để nhìn nhận đúng hơn trách nhiệm của mình trong việc giáo dục giới tính cho con. Vì đó không hề là việc đơn giản, và hệ luỵ của việc giáo dục sai thì nhiều vô phương kể.', '150.000'),
(18, 'Đôi mắt', 'Nam Cao', 'Văn học Việt Nam', 'https://nhasachminhthang.vn/UserFiles/image/n%C4%83m%202017/v%C4%83n%20h%E1%BB%8Dc/V%C4%83n%20h%E1%BB%8Dc%20Vi%E1%BB%87t%20Nam/%C4%91%C3%B4i%20m%E1%BA%AFt/%C4%91%C3%B4i%20m%E1%BA%AFt%2080k_bia.png', '“Đôi mắt” phê phán cách nhìn đời, nhìn người lệch lạc, khinh miệt, lối sống ích kỷ và bàng quan của một trí thức đối với kháng chiến, đồng thời biểu dương một lớp trí thức, văn nghệ sĩ có một cái tâm đẹp, gắn bó với nhân dân, tích cực tham gia sự nghiệp cách mạng của dân tộc. “Đôi mắt” thể hiện cách nhìn và thái độ của người trí thức đối với nông dân và kháng chiến.\r\n\r\n', '400.000'),
(19, 'Tắt đèn', 'Ngô Tất Tố', 'Văn Học việt nam', 'https://vn-live-05.slatic.net/p/1/tat-den-8238-0625829-03ddb8e8bb892dd2547a20d679407465-catalog.jpg_720x720q80.jpg_.webp', '“Tắt đèn là một cuốn xã hội tiểu thuyết tả cảnh đau khổ của dân quê, của một người đàn bà nhà quê An Nam suốt đời sống trong sự nghèo đói và sự ức hiếp của bọn cường hào và người có thế lực mà lúc nào cũng vẫn hết lòng vì chồng, vì con”.', '50.000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `phone`, `email`, `level`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Nguyễn Ngọc Hải', '0869215201', 's2ngochai01@hotmail.com', 1),
('moon1', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Ngọc Hải', '0869215201', 's2bluemoon01@gmail.com', 0),
('moon2', 'c33367701511b4f6020ec61ded352059', 'Nguyễn Ngọc Hải', '0869215201', 's2bluemoon01@gmail.com', 0),
('s2blueeyes01', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Ngọc Hải', '0869215201', 's2blueeyes01@gmail.com', 0),
('s2bluemoon01', 'b914c18ff19cbdd31e6f020694e3546e', 'Nguyễn Ngọc Hải', '0869215201', 's2bluemoon02@gmail.com', 0),
('tubi123', 'acde74ced22a3d850d576cca8044d5ef', 'Tú', '0869215201', 's2bluemoon01@gmail.com', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madonhang`),
  ADD KEY `username` (`username`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`masach`),
  ADD KEY `madonhang` (`madonhang`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`masach`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `masach` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`madonhang`) REFERENCES `donhang` (`madonhang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
