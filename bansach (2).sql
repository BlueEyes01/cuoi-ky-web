-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2021 lúc 04:18 PM
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
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `trangthai` varchar(50) NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `masach` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `giatien` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `masach` int(11) NOT NULL,
  `tensach` varchar(255) NOT NULL,
  `tacgia` varchar(255) NOT NULL,
  `theloai` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `mota` text NOT NULL,
  `giatien` varchar(255) NOT NULL,
  `ngaycapnhat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`masach`, `tensach`, `tacgia`, `theloai`, `image`, `mota`, `giatien`, `ngaycapnhat`) VALUES
(22, 'Kinh tế học vĩ mô', 'Nguyễn Như ý', 'Kinh Tế', 'https://i.ytimg.com/vi/glpJF66chmI/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAi3moaMBXHnK_-jkgj70HfOZhLbA', 'test gio \' \"\"', '239000', '2021-11-04 21:04:36'),
(23, 'Cú hích', 'Richard H. Thaler', 'Kinh Tế', '../../../assets/images/sach-kinh-te-5.png\r\n', 'Ông Thaler cũng đặt ra thuật ngữ \"cú hích\" (nudge), ý chỉ các tác động cần thiết để giúp con người vượt qua định kiến, loại bỏ thói quen làm theo người khác để tránh phạm lầm ngớ ngẩn khi phải đưa ra quyết định.\r\n\r\n\"Mỗi ngày, chúng ta thực hiện đủ loại quyết định, nhưng đáng tiếc là chúng ta thường có những lựa chọn tồi tệ (…). Lý do là vì con người dễ bị tác động bởi nhiều định kiến khác nhau, mà lắm lúc chúng làm ta trở nên thật ngớ ngẩn (…). Người ta cần những cú hích trước những quyết định khó khăn và hiếm khi xảy ra, mà hiện thời họ không có đủ thông tin\" - lời giới thiệu của quyển sách viết.\r\n\r\nThaler và Sunstein mời chúng ta bước vào thế giới của những lựa chọn, một thế giới xem nhân tính là một vật phẩm được ban tặng.\r\n\r\nCác tác giả cho thấy bằng cách tìm hiểu suy nghĩ của người khác, chúng ta có thể thiết kế các môi trường lựa chọn giúp họ dễ dàng tìm được những gì tốt nhất cho mình. Sử dụng nhiều ví dụ sống động từ những mặt quan trọng nhất trong đời sống, Thaler và Sunstein cho chúng ta thấy làm thế nào một” kiến trúc lựa chọn” tinh tường có thể hích con người theo những hướng có lợi mà không hạn chế quyền tự do lựa chọn của chúng ta.\r\n\r\nĐây là một trong những cuốn sách hấp dẫn và kích thích tư duy sáng tạo nhất trong những năm gần đây.\r\n\r\n“Cú hích” rất có giá trị và tạo nên sự khác biệt sâu sắc. Một cuốn sách mà theo Steven Levitt - đồng tác giả cuốn Kinh tế học kỳ quái – Freakonomics “là tác phẩm đã làm thay đổi hoàn toàn thế giới quan của tôi”.\r\n\r\n\'Bạn đã từng đọc một cuốn sách nhiều ý tưởng cảm hứng, thú vị và thực tế chưa? Đây chính là một cuốn sách như vậy! Bên trong quyển sách này là viên ngọc sáng nhất của kinh tế học hành vi. Đây là cuốn sách phải đọc đối với bất kỳ những ai muốn tạo nên sự khác biệt và làm cho những sự việc xung quang chúng ta vận hành hiệu quả hơn. Chắc chắn nó sẽ nâng tầm các quyết định của bạn thông minh hơn và làm cho cuộc sống chính bạn sáng tạo, tốt đẹp hơn.\'', '99000', '2021-11-02 00:00:00'),
(25, 'Chiến tranh tiền tệ', 'Song Hong Bing', 'Kinh Tế', '../../../assets/images/chien-tranh-tien-te.jpg\r\n', '“Chiến tranh tiền tệ” giúp chúng ta hiểu nhiều điều, rằng Bill Gates chưa phải là người giàu nhất hành tinh, rằng tỉ lệ tử vong của các tổng thống Mỹ lại cao hơn tỉ lệ tử trận của binh lính Mỹ ngoài chiến trường, hay vì sao phố Wall lại mạo hiểm đổ hết vốn liếng của mình cho việc “đầu tư” vào Hitler.\r\n\r\n“Chiến tranh tiền tệ” đề cập đến một cuộc chiến khốc liệt, không khoan nhượng và dai dẳng giữa một nhóm nhỏ các ông trùm tài chính - đứng đầu là gia tộc Rothschild - với các thể chế tài chính kinh tế của nhiều quốc gia. Đó là một cuộc chiến mà đồng tiền là súng đạn và mức sát thương thật là ghê gớm. Một cuốn sách thực sự làm sửng sốt với những ai muốn tìm hiểu về bản chất tiền tệ để từ đó nhận ra những hiểm hoạ tài chính tiềm ẩn nhằm chuẩn bị tâm lý cho một cuộc chiến tiền tệ “không đổ máu”.\r\n\r\nBên cạnh việc phơi bày những âm mưu của các nhà tài phiệt thế giới trong việc tạo ra những cơn “hạn hán” hay “bão lũ” về tiền tệ để thu lợi nhuận, cuốn sách cũng đề cập đến sự phát triển của các định chế tài chính thế giới - những cơ cấu được xây dựng nhằm đáp ứng nhu cầu phát triển vũ bão của nền kinh tế toàn cầu.', '169000', '2021-11-02 00:00:00'),
(26, 'Cuộc đua triệu đô la', 'Kirk Hallowell ', 'Kinh Tế', '../../../assets/images/d22b6b150369af83804a27f927ea9adb.jpg\r\n', 'Cuốn sách Cuộc đua triệu đôla mượn hình ảnh cuộc đua vượt rào Olympic như phép ẩn dụ cho cuộc cạnh tranh khốc liệt để giành lấy những vị trí quản lý hàng đầu trong các tổ chức đang tuyển dụng. Muốn chiến thắng, mỗi vận động viên phải có thể lực và tư duy tuyệt vời. Họ không chỉ cần “chạy nhanh” mà còn phải biết phối hợp các bước chạy, nhảy qua rào cản vào thời điểm chính xác và uyển chuyển nhất.\r\n\r\nDựa trên chuỗi trải nghiệm phong phú từ công tác thiết kế tiến trình tuyển dụng cho các vị trí cấp cao, cách tính điểm phỏng vấn của các chuyên gia tuyển dụng cùng quá trình đánh giá toàn diện công nghệ “săn đầu người” mới nhất, Cuộc đua triệu đôla sẽ giúp ứng viên chuẩn bị đầy đủ hành trang trước những thách thức gay go của cuộc đua giành được công việc mơ ước.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', '169000', '2021-11-02 00:00:00'),
(27, 'Đắc nhân tâm', 'Dale Carnegie', 'Tâm Lý', '../../../assets/images/dac-nhan-tam_600x865.png\r\n', 'Đây là quyển sách duy nhất về thể loại self-help liên tục đứng đầu danh mục sách bán chạy nhất (best-selling Books) do báo The New York Times bình chọn suốt 10 năm liền. Riêng bản tiếng Anh của sách đã bán được hơn 15 triệu bản trên thế giới. Tác phẩm có sức lan toả vô cùng rộng lớn – dù bạn đi đến bất cứ nơi đâu, bất kỳ quốc gia nào cũng đều có thể nhìn thấy. Tác phẩm được đánh giá là quyển sách đầu tiên và hay nhất, có ảnh hưởng làm thay đổi cuộc đời của hàng triệu người trên thế giới.', '139000', '2021-11-02 00:00:00'),
(28, 'Nghệ thuật sống', 'Epictetus', 'Tâm Lý', '../../../assets/images/nghe-thuat-song-epictetus.jpg\r\n', 'Tác phẩm nghệ thuật sống nêu lên những quan niệm về cuộc sống và cách sống: sống là gì, lẽ sống của con người, nhận biết chân giá trị của sự vật, hành động để giải thoát…\r\n\r\nTác giả không tập trung khai thác, phân tích tâm lý con người như những sách nghệ thuật sống, rèn luyện nhân cách phổ biến hiện nay. Ông cũng không lên gân, dạy dỗ phải làm điều này điều nọ để có được hạnh phúc trong cuộc sống. Tác giả hướng người đọc đến việc nhận thức được giá trị sự vật như nó vốn có, hiểu được bản ngã của mình để hành động phù hợp với hoàn cảnh. Để trở nên một con người hoàn tòan, theo tác giả, con người cần phải làm hai điều: cải tạo cá nhân và cải tạo xã hội. Đây cũng là chủ đề xuyên suốt trong các chương của cuốn sách.', '199000', '2021-11-02 00:00:00'),
(29, 'Một lít nước mắt', 'Kito Aya', 'Tâm Lý', '../../../assets/images/Mot-lit-nuoc-mat-2277-1535167004.jpg\r\n', 'Tuổi 15, của chúng ta:\r\nTuổi của niềm hạnh phúc tràn đầy khi cánh cửa trung học rộng mở chào đón\r\nTuổi của những lần vui đùa, chạy nhảy quanh bạn bè\r\nTuổi của những khao khát thực hiện ước mơ ấp ủ cho tương lai phía trước\r\n\r\nTuổi 15, của Kitou Aya:\r\nTuổi của chuỗi ngày mang trong mình căn bệnh Thoái hóa Tiểu Não\r\nTuổi của những lần té ngã khi đi lại khó khăn, của những trang nhật ký nguệch ngoạc khi không thể viết được một cách bình thường…\r\nTuổi của những đau khổ ngập tràn khi nhận ra cánh cửa tương lai đang dần đóng sập lại\r\nVà đó là Tuổi 15 của Kitou Aya – Tuổi của…Một lít nước mắt.\r\n\r\nĐó là những ngày cô phải đối mặt với nghịch cảnh bằng nỗi đau, lòng quyết tâm, sự lạc quan và một niềm tin mãnh liệt để cô có thể bước đi bình thường, vui đùa chạy nhảy như bao bạn bè; được chơi môn bóng rổ cô yêu thích, được đến xem trận đấu bóng của em trai, để được kết hôn với người cô yêu và được nhắm mắt ngủ một giấc thật ngon mà không lo lắng rằng ngày mai cô có thể tiếp tục sống, tiếp tục chống chọi với nghịch cảnh để dành được sự sống dù mỏng manh nhất không.', '69000', '2021-11-02 00:00:00'),
(30, 'Điểm bùng phát', 'Malcolm Gladwell', 'Tâm Lý', '../../../assets/images/review-sach-diem-bung-phat-nghien-cuu-tam-ly-xa-hoi.jpg\r\n', 'Điểm Bùng Phát là một khoảnh khắc rất kỳ ảo, khi một ý tưởng, một xu thế, hay một hành vi xã hội vượt qua ngưỡng nhất định – bùng phát và lan ra như ngọn lửa hoang dã.\r\n\r\nLà một chuyến thám hiểm đầy trí tuệ được viết bằng giọng văn sôi nổi, nhiệt huyết, rất dễ làm nảy sinh các ý tưởng mới, Điểm Bùng Phát đã vạch rõ lộ trình cho sự thay đổi với một thông điệp đầy hứa hẹn: mỗi cá nhân sáng tạo, biết sử dụng chiếc đòn bẩy đúng lúc là người có thể nâng bổng cả thế giới.\r\n\r\nGiống như chỉ một người bị ốm cũng có thể làm khởi phát cả dịch cúm, một mục tiêu nhỏ bé nhưng chính xác hoàn toàn cũng có thể trở thành nguyên nhân thúc đẩy một xu hướng thời trang, nhân rộng việc tiêu thụ của sản phẩm, hay làm hạ tỷ lệ phạm tội… Điểm Bùng Phát nếu sử dụng đúng cách sẽ đem lại một cuộc sống tích cực, thậm chí cả một cuộc cách mạng.', '169000', '2021-11-02 00:00:00'),
(31, 'Tâm lý bầy đàn', 'Mark Earls', 'Tâm Lý', '../../../assets/images/tam-ly-bay-dan-270x405.jpg\r\n', 'Cuốn sách này dành cho những ai đang tìm cách thay đổi hành vi của nhiều người – như khách hàng, nhân viên hay những công dân riêng của họ. Đây không phải là cuốn sách hướng dẫn kỹ năng tự hoàn thiện – dù tôi đã học được rất nhiều về bản thân mình trong quá trình nghiên cứu và viết nó. Nó cũng không có ý định thách thức các chuyên gia – những người đang giúp những người khác thay đổi cuộc sống.\r\n\r\nCuốn sách này cũng không viết về các cá nhân và hành vi cá nhân; nó viết về hành vi đám đông.', '169000', '2021-11-02 00:00:00'),
(32, 'Sổ đỏ', 'Vũ Trọng Phụng', 'Văn Học Việt Nam ', '../../../assets/images/sach-so-do-185x300.jpg\r\n', 'Đọc “Số Đỏ” – phải hiểu tình hình đất nước thời đó mới thấm được mặt trái xã hội Vũ Trọng Phụng truyền tải. Đối tượng nhà văn phê phán là tầng lớp tiểu tư sản Hà Thành đầu thế kỉ 20, nhưng cái hay là ông không đi vào đối tượng chính mà mượn ngay Xuân – cái thằng “lươn lẹo” lại có thói “trưởng giả học làm sang” – để dựa vào nó mà đào sâu vào phê phán sự rởm đời của giới thượng lưu thành thị, từ đó chuyển hướng nói về “tấn trò đời” của những diễn viên đại tài – họ diễn trong cuộc sống, diễn với những người thân, và diễn cả với chính bản thân mình.', '99000', '2021-11-02 00:00:00'),
(33, 'Tắt đèn', 'Ngô Tất Tố', 'Văn Học Việt Nam', '../../../assets/images/sach-tat-den-189x300.jpg\r\n', '\"Tắt đèn là một cuốn xã hội tiểu thuyết tả cảnh đau khổ của dân quê, của một người đàn bà nhà quê An Nam suốt đời sống trong sự nghèo đói và sự ức hiếp của bọn cường hào và người có thế lực mà lúc nào cũng vẫn hết lòng vì chồng, vì con\".', '129000', '2021-11-02 00:00:00'),
(34, 'Vợ nhặt ', 'Kim Lân', 'Văn Học Việt Nam', '../../../assets/images/sach-vo-nhat.jpg\r\n', 'Tác phẩm \"Vợ Nhặt\" của tác giả Kim Lân (1921-2007). Ông là một trong những cây bút viết truyện ngắn xuất sắc nhất của văn học Việt Nam hiện đại.\r\n\r\nVới “Vợ Nhặt”, tác giả viết về cái đói, khi đói người ta thường khổ cực và chỉ muốn chết. Nhưng không, khi đói người ta không nghĩ đến con đường chết mà chỉ nghĩ đến con đường sống. Dù ở trong tình huống bi thảm đến đâu, dù kề cận cái chết vẫn khát khao được sống, được hạnh phúc, vẫn hướng về ánh sáng, vẫn tin vào sự sống và hy vọng ở tương lai, vẫn muốn sống, sống cho ra người... Chúng ta có thể thấy được điều này ở các nhân vật trong tập truyện ngắn này.', '169000', '2021-11-02 00:00:00'),
(35, 'Tuổi Thơ Dữ Dội', 'Phùng Quán', 'Văn Học Việt Nam', '../../../assets/images/sach-tuoi-tho-du-doi-192x300.jpg\r\n', 'Bao thăng trầm cảm xúc khi đọc tác phẩm này: Lòng cười vui khi đọc những phút giây nghịch ngợm, vui đùa của cha ông ngày đó; , bồi hồi, xúc động không cầm được nước mắt khi đọc đến những khó khăn, khổ cực mà quân, dân của Nước ta ngày xưa phải chịu đựng; Tự hào, mạnh mẽ có thêm động lực phụng sự tổ quốc khi nhận thấy tinh thần chiến đấu anh dũng của cha ông. Xuyên suốt tác phẩm nhiều lúc không hiểu nổi tại sao ngày xưa Cha ông ta có thể chịu được cực khổ như vậy để sống và chiến đấu bảo vệ Quốc gia.', '400000', '2021-11-02 00:00:00'),
(36, 'Chí Phèo', 'Nam Cao', 'Văn Học Việt Nam', '../../../assets/images/sach-chi-pheo-206x300.jpg\r\n', 'Chí Phèo là một truyện ngắn nổi tiếng của nhà văn Nam Cao viết vào tháng 2 năm 1941. Chí Phèo là một tác phẩm xuất sắc, thể hiện nghệ thuật viết truyện độc đáo của Nam Cao, đồng thời là một tấn bi kịch của một người nông dân nghèo bị tha hóa trong xã hội. Truyện đã được đưa vào sách giáo khoa Ngữ văn 1\r\n\r\nVới những tình tiết hấp dẫn Nam Cao đã đưa người đọc tái hiện bức tranh chân thực nông thôn Việt Nam trước 1945, nghèo đói, xơ xác trên con đường phá sản, bần cùng, hết sức thê thảm, người nông dân bị đẩy vào con đường tha hóa, lưu manh hóa.\r\n\r\nNam Cao không hề bôi nhọ người nông dân, trái lại nhà văn đi sâu vào nội tâm nhân vật để khẳng định nhân phẩm và bản chất lương thiện ngay cả khi bị vùi dập, cướp mất cà nhân hình, nhân tính của người nông dân, đồng thời kết án đanh thép cái xã hội tàn bạo đó trước 1945..\r\n\r\nTác phẩm Chí Phèo mang giá trị nhân đạo sâu sắc, thể hiện tấm lòng yêu hương, trân trọng của Nam Cao đối với những người khốn khổ. Chí Phèo còn là tiếng kêu cứu thiết tha của những  người bất hạnh. Hãy bảo vệ và đấu tranh cho quyền được làm người của những con  người lương thiện. Họ phảI được sống và sống hạnh phúc, không còn những thế lực đen tối của xã hội đẩy họ vào chỗ cùng khốn, bế tắc, đầy bi kịch xót xa…\r\n\r\nNhững sáng tác của Nam Cao ngoài giá trị hiện thực sâu sắc, các tác phẩm đi sâu vào nội tâm nhân vật, để lại những cảm xúc sâu lắng trong lòng người đọc', '169000', '2021-11-02 00:00:00'),
(37, 'Mùa Thu Của Cây Dương', 'Kazumi Yumoto', 'Văn Học Nước Ngoài', '../../../assets/images/cover-review-sach-mua-thu-cua-cay-duong-150x150.jpeg\r\n', 'Mùa hè năm lên sáu tuổi, gia đình mẹ con Chiaki lâm vào cảnh khốn cùng. Mẹ cô bé quá đỗi tiều tụy không thể chăm lo nổi cho Chiaki nhạy cảm và đang khủng hoảng bởi sự đi bất ngờ của bố. Nhưng, từ sau khi dọn đến khu căn hộ cho thuê có tên Cây Dương, Chiaki dần tìm lại hạnh phúc tuổi thơ tưởng chừng đã mất, nhờ có bà cụ chủ nhà - khó tính, nấu ăn dở, ưa sạch sẽ, hay dọa trẻ con… nhưng âm thầm tốt bụng. Thời gian thấm thoắt trôi, hai mươi năm sau Chiaki nhận được tin bà qua đời. Trên hành trình quay về dự đám tang bà, dòng ký ức ngọt ngào của những tháng ngày sống tại Cây Dương lặng lẽ ùa về. Nơi đây, cô đã tìm ra một sự thật, về chính bản thân cô, về mẹ cô, và nhất là về bà cụ, người dù đã mất đi nhưng sẽ mãi luôn còn ở đó. Và một mùa thu nữa lại trải lá vàng lên khu căn hộ Cây Dương.', '259000', '2021-11-02 00:00:00'),
(38, 'Tội ác Và Hình Phạt', 'Fyodor Dostoevsky', 'Văn Học Nước Ngoài', '../../../assets/images/cover-review-sach-toi-ac-va-hinh-phat-150x150.jpg\r\n', 'Tội Ác Và Hình Phạt là cuốn tiểu thuyết hoàn chỉnh và hay nhất trong các tác phẩm của cây bút bậc thầy nước Nga Fyodor Dostoevsky (1821 -1881).', '119000', '2021-11-02 00:00:00'),
(39, 'Đàn Hương Hình', '\r\nMạc Ngôn', 'Van Học Nước Ngoài', '../../../assets/images/cover-reviewsach.net-dan-huong-hinnh-150x150.jpeg\r\n', 'Đàn hương hình (檀香刑, nghĩa là \"hình phạt bằng cọc gỗ đàn hương\") là một tiểu thuyết nổi tiếng của nhà văn Mạc Ngôn. Ông viết tác phẩm này vào mùa thu năm 1996 và hoàn thành năm 2001.', '169000', '2021-11-02 00:00:00'),
(40, 'Trắng', 'Han Kang', 'Văn Học Nước Ngoài', '../../../assets/images/cover-tieu-thuyet-trang-150x150.jpg\r\n', 'Tiểu thuyết “Trắng” của nữ nhà văn Hàn Quốc Han Kang là tác phẩm phá vỡ mọi ranh giới của thể loại: vừa là tiểu thuyết giàu tự thuật, vừa là tiểu luận, đôi chỗ là thơ, lại có chỗ chỉ đơn giản là một vài dòng ghi chép rất vụn vặt. Cuốn sách mỏng chỉ chưa đầy trăm trang là ‘không gian triển lãm” của một loạt những thứ mang màu sắc “trắng”, là câu chuyện của một người đang cố gắng nói lời tiễn biệt với một phần quan trọng trong mình.', '179000', '2021-11-02 00:00:00'),
(41, 'Cuốn Theo Chiều Gió', ' Margaret Mitchell', 'Văn Học Nước Ngoài', '../../../assets/images/cuon-theo-chieu-gio_2.jpg\r\n', 'Cuối cùng thì tôi cũng quyết định điểm đến tác phẩm kinh điển này. Tôi đã đọc  từ những năm cuối cấp hai và từ đó đến nay không biết bao nhiêu lần đã đọc đi đọc lại. Một cái tên lừng lẫy đến thế, những thành tích mà tác phẩm này đạt được suốt mấy chục năm qua đã là minh chứng cho sự xuất sắc của nó.\r\n\r\nĐối với những ai chưa đọc qua tác phẩm này hoặc chưa có dịp xem chuyển thể phim cũng cực kì nổi tiếng với Vivien Leigh và Clark Gable thủ diễn thì tôi xin tóm lược sơ qua nội dung. Nhân vật chính là nàng Scarlett O’Hara, tiểu thư của một đồn điền miền Nam nước Mỹ. Scarlett xinh đẹp kiêu kì là niềm ước vọng của nhiều chàng trai song nàng chỉ dành tình cảm cho một người duy nhất, Ashley. Tiếc thay, Ashley sau đó đã lấy Melanie thánh thiện làm vợ còn bản thân Scarlett thì bắt đầu vướng vào tình yêu định mệnh với Rhett Butler. Bên cạnh cuộc sống riêng của các nhân vật, Margaret Mitchell còn lồng vào đó bối cảnh cuộc nội chiến Nam – Bắc Mỹ khốc liệt …\r\n\r\nTheo cá nhân tôi, điểm thành công nổi trội nhất của Cuốn theo chiều gió chính là ở hệ thống nhân vật vô cùng đặc trưng. Ai đã từng đọc cuốn sách này hẳn không thể quên được nàng Scarlett vừa mạnh mẽ lại vừa nồng nhiệt, một Rhett Butler kiêu bạc song không kém chân thành, một Ashley cao đẹp bị chính lý tưởng của mình ăn mòn, một Melanie thánh thiện nhân từ… và còn đó là biết bao nhân vật khác. Tất cả đã dựng nên một bức tranh nước Mỹ sinh động, tạo thành dòng chảy cuộc đời cuồn cuộn trong từng câu chữ.\r\n\r\nCuốn theo chiều gió là một tiểu thuyết kinh điển của nền văn học thế giới, là một tác phẩm đáng đọc với bất cứ ai. Không phải ngẫu nhiên mà câu chuyện này đã luôn là một trong những tác phẩm thu hút người đọc nhất, hết thế hệ này đến thế hệ khác tất thảy đều say mê nó.', '159000', '2021-11-02 00:00:00'),
(42, 'Alice Ở Xứ Sở Diệu Kỳ ', 'Lewis Carroll', 'Thiếu Nhi', '../../../assets/images/Alice-o-xu-so-dieu-ky_600x855.jpg\r\n', 'Alice Ở Xứ Sở Diệu Kỳ Và Alice Ở Thế Giới Trong Gương là một tuyệt tác văn học kinh điển bất hủ dành cho thiếu nhi, tràn đầy trí tưởng tượng thần kỳ bất tận, trải ra một thế giới huyền ảo như những giấc mộng đầy màu sắc với chú Thỏ Trắng mặc áo gi lê mang đồng hồ quả quýt, chú mèo Cheshire biết cười, anh em Tweedledum và Tweedledee đánh nhau vì cái trống bỏi, Humpty Dumpty béo tròn như quả trứng luôn ngồi trên đầu tường, và Kỵ sĩ Trắng không biết cưỡi ngựa... Chắc hẳn mỗi một người chúng ta, đều đã từng ước ao có được những giấc mơ diệu kỳ như cô bé Alice...\r\n\r\nLewis Carroll (1832-1898), là nhà toán học, nhà logic học người Anh, nhưng rất say mê văn chương, 12 tuổi đã bắt đầu sự nghiệp sáng tác. Bộ đôi tác phẩm “Alice ở xứ sở diệu kỳ” và “Alice ở xứ sở trong gương” là những tuyệt tác kinh điển có sức sống bất diệt, cho đến nay vẫn là nguồn cảm hứng bất tận trong nhiều lĩnh vực nghệ thuật khác nhau. Và cũng chính hai tác phẩm này đã đưa tên tuổi Lewis Carroll vào danh sách những nhà văn nổi tiếng nhất thế giới về truyện cổ tích dành cho thiếu nhi, sánh vai với các tên tuổi lớn như Andersen, anh em Grim...', '49000', '2021-11-02 00:00:00'),
(43, 'Charlie Và Nhà Máy Sôcôla', 'Roald Dahl', 'Thiếu Nhi', '../../../assets/images/Charlie-va-nha-may-so-co-la_600x857.jpg\r\n', 'Charlie và nhà máy sôcôla là tiểu thuyết văn học thiếu nhi xuất bản năm 1964 của nhà văn Roald Dahl người Anh. Truyện kể về cuộc phiêu lưu của cậu bé Charlie Bucket trong nhà máy sô-cô-la của ông chủ nhà máy lập dị Willy Wonka. ', '59000', '2021-11-02 00:00:00'),
(44, 'Không Gia Đình', 'Hector Malot', 'Thiếu Nhi', '../../../assets/images/khong_gia_dinh_600x867.png\r\n', 'Không Gia Đình là tiểu thuyết nổi tiếng nhất trong sự nghiệp văn chương của Hector Malot. Hơn một trăm năm nay, tác phẩm giành giải thưởng của Viện Hàn Lâm Văn học Pháp này đã trở thành người bạn thân thiết của thiếu nhi và tất cả những người yêu mến trẻ khắp thế giới.\r\n\r\nKhông Gia Đình kể về chuyện đời Rémi, một cậu bé không cha mẹ, họ hàng thân thích. Sau khi phải rời khỏi vòng tay của người má nuôi, em đã đi theo đoàn xiếc thú của cụ già Vitalis tốt bụng. Kể từ đó, em lưu lạc khắp nơi, ban đầu dưới sự che chở của cụ Vitalis, sau đó thì tự lập và còn lo cả công việc biểu diễn và sinh sống cho cả một gánh hát rong. Đã có lúc em và cả đoàn lang thang cả mấy ngày đói khát rồi còn suýt chết rét. Có bận em bị lụt ngầm chôn trong giếng mỏ hàng tuần. Rồi có lần em còn mắc oan  bị giải ra tòa và phải ở tù. Nhưng cũng có khi em được nuôi nấng đàng hoàng, no ấm. Song dù trong hoàn cảnh nào, Rémi vẫn giữ được sự gan dạ, ngay thẳng, lòng tự trọng, tính thương người, ham lao động chứ không hạ mình hay gian dối. Cuối cùng, sau bao gian nan khổ cực, em đã đoàn tụ được với gia đình của mình.\r\n\r\nTác phẩm đã ca ngợi sự lao động bền bỉ, tinh thần tự lập, chịu đựng gian khó, khích lệ tình bạn chân chính. Ca ngợi lòng nhân ái, tình yêu cuộc sống, ý chí vươn lên không ngừng…Không Gia Đình vì thế đã vượt qua biên giới nước Pháp và tồn tại lâu dài với thời gian.', '79000', '2021-11-02 00:00:00'),
(45, 'Tuổi Thơ Dữ Dội', 'Phùng Quán', 'Thiếu Nhi', '../../../assets/images/sach-tuoi-tho-du-doi-192x300.jpg\r\n', 'Bao thăng trầm cảm xúc khi đọc tác phẩm này: Lòng cười vui khi đọc những phút giây nghịch ngợm, vui đùa của cha ông ngày đó; , bồi hồi, xúc động không cầm được nước mắt khi đọc đến những khó khăn, khổ cực mà quân, dân của Nước ta ngày xưa phải chịu đựng; Tự hào, mạnh mẽ có thêm động lực phụng sự tổ quốc khi nhận thấy tinh thần chiến đấu anh dũng của cha ông. Xuyên suốt tác phẩm nhiều lúc không hiểu nổi tại sao ngày xưa Cha ông ta có thể chịu được cực khổ như vậy để sống và chiến đấu bảo vệ Quốc gia', '169000', '2021-11-02 00:00:00'),
(46, 'Những Tấm Lòng Cao Cả', 'Cuore', 'Thiếu Nhi', '../../../assets/images/Nhung-tam-long-cao-ca_600x927.jpg\r\n', 'Những tấm lòng cao cả (Cuore) ra đời từ những năm 80 của thế kỷ 19 đã làm cho tên tuổi nhà văn Edmondo De Amicis (1846 - 1908) trở nên nổi tiếng khắp thế giới.\r\n\r\nCho đến nay tác phẩm bất hủ này vẫn vang vọng và để lại dấu ấn đậm nét trong lòng người đọc đặc biệt là các em thiếu nhi ở các thời đại khác nhau.\r\n\r\nĐó là một câu chuyện giản dị, với những con người bình thường nhất nhưng nhân cách của họ, mối quan hệ của họ, cùng những tấm lòng cao cả, thánh thiện của họ mãi là những bài học đạo đức sâu sắc và đáng quý.\r\n\r\nMột cậu bé ngưòi Ý, Enrico, hằng ngày ghi lại những việc lớn nhỏ diễn ra trong đời học sinh của cậu, những cảm tưởng và suy nghĩ của cậu thành một cuốn nhật ký.', '169000', '2021-11-02 00:00:00'),
(47, 'Căn Bệnh Giáo Dục', 'Ryu Uchida', 'Giáo Dục - Gia Đình', '../../../assets/images/can-benh-giao-duc.jpg\r\n', 'Mội dung cuốn sách chỉ ra một số nguy cơ tồn tại trong giáo dục Nhật Bản như sau:\r\n\r\n-Vấn đề thành tích trong thể dục đội hình khổng lồ hóa, câu lạc bộ Judo và các câu lạc bộ ngoại khóa của Nhật Bản đang được thổi phồng ở các trường học, rất nhiều tai nạn, thậm chí tai nạn chết người lặp lại cùng nguyên nhân nhưng vẫn không được quan tâm đúng mức mà nó bị làm mờ đi vì khoác dưới vỏ bọc “khổ luyện thành tài”. Việc trẻ bị “trừng phạt thân thể” hay bạo hành vẫn được coi là “một phần của giáo dục” bởi xuất phát điểm của việc trừng phạt nghiêm khắc là để trẻ có kỉ luật và tiến bộ hơn. Vô hình trung điều đó càng khiến bạo lực được dung túng.\r\n\r\n- Sức ép vô hình của “lễ thành nhân ½ ” (Nghi lễ được tiến hành để chúc mừng học sinh lớp 4 tiểu học tròn 10 tuổi. Trong lễ thành nhân ½, cha mẹ học sinh sẽ được mời đến tham dự, học sinh và phụ huynh cùng nhìn lại quá trình trưởng thành của con và chia sẻ cảm xúc “biết ơn” giữa con cái và cha mẹ). Xuất phát điểm của hoạt động này trong lễ thành nhân 1/2, mặc nhiên cho rằng gia đình luôn sống hạnh phúc trong một thời gian dài và không có gì thay đổi. Trong khi đó, thực tế xã hội hiện đại, gia đình không trọn vẹn, bố mẹ đơn thân hoặc với những đứa trẻ bị ngược đãi trong chính gia đình của mình, không phải là ít. Sẽ khó xử và bẽ bàng thế nào khi trẻ phải kể về những trải nghiệm không muốn nhớ lại của mình trước đám đông, hoặc trẻ phải “giả vờ cười và cố giấu đi sự thật”. Đó có thể coi là một hành động mang tính bạo hành tinh thần được giấu trong hoạt động có vẻ ngoài mang tính nhân văn.\r\n\r\n- Nguy cơ của giáo dục trong xã hội công dân, tác giả cho rằng một trong những nguyên nhân rào cản của giáo dục trường học còn ở chính các giáo viên và phụ huynh. Họ vừa là nạn nhân lại vừa là tác nhân gây ra căn bệnh giáo dục khi bị chính những thứ tưởng là “những điều tốt đẹp” mê hoặc. Giáo viên ở Nhật bản là một nghề vất vả, ngoài công tác chuyên môn họ còn phải kiêm nhiệm quản lý các câu lạc bộ trong trường học mà họ không hề có chuyên môn. Việc này tốn nhiều thời gian của họ khiến chất lượng cuộc sống của giáo viên bị giảm sút khi không còn thời gian dành riêng cho gia đình và cũng là thiệt thòi của học sinh khi tham gia câu lạc bộ lại không được hướng dẫn bởi người có chuyên môn sâu.\r\n\r\nKì vọng của xã hội về giáo dục ở bất cứ đâu đều mong muốn giáo dục phải hướng trẻ tới những điều tốt đẹp nhất. Tuy nhiên, chúng ta cũng biết rằng thực tế giáo dục nảy sinh nhiều vấn đề. Những vấn đề nóng của giáo dục mà dư luận luôn quan tâm như bệnh thành tích, trừng phạt thân thể, tự sát, bắt nạt học đường... đang tràn lan trên các phương tiện truyền thông khiến chúng ta không khỏi xót xa, đau đớn. Những câu chuyện của giáo dục Nhật Bản, tưởng chừng rất xa vời với giáo dục Việt Nam, nhưng nếu thử ngẫm thật kĩ và ra sẽ thấy đó là căn bệnh không hiếm gặp trong giáo dục Việt Nam.\r\n\r\nRyo Uchida\r\n\r\nPhó giáo sư nghiên cứu về giáo dục phát triển tại Đại học viện (sau đại học)-Đại học Nagoya.\r\nChuyên môn chính là xã hội học giáo dục. Các nghiên cứu của ông tập trung vào các nguy cơ khác nhau mà giáo viên và học sinh gặp phải trong đời sống trường học. Ông là người làm bùng lên các cuộc tranh luận về tai nạn do thể dục đội ngũ gây ra, về Lễ thành nhân ½, về gánh nặng của các huấn luyện viên của câu lạc bộ thể thao. Là chủ nhân của các website “viện nghiên cứu nguy cơ trường học”, “viện nghiên cứu nguy cơ hoạt động câu lạc bộ”.\r\n\r\nÔng cũng là người sử dụng mạng Yahoo (Risk-Reporter), Twitter (@RyoUchida_RIRIS) để đưa tin về nguy cơ giáo dục.\r\n\r\nCác tác phẩm chính đã xuất bản:\r\n\r\n“Tai nạn Judo”, (Kawadeshoboshinsha), “Cái nhìn đối với ‘ngược đãi trẻ em’” (Sekaishisosha, tác phẩm nhận giải thưởng khuyến khích của Hội xã hội học giáo dục Nhật Bản).\r\n\r\nDịch giả:\r\n\r\nCuốn sách được nhà nghiên cứu giáo dục, dịch giả Nguyễn Quốc Vương tuyển chọn giới thiệu và chuyển ngữ từ nguyên tác tiếng Nhật.\r\n\r\nMã hàng	9786043291704\r\nDự Kiến Có Hàng	08/11/2021\r\nTên Nhà Cung Cấp	Phụ Nữ\r\nTác giả	Ryu Uchida\r\nNgười Dịch	Nguyễn Quốc Vương\r\nNXB	NXB Phụ Nữ Việt Nam\r\nNăm XB	2021\r\nTrọng lượng (gr)	300\r\nKích Thước Bao Bì	20.5 x 13.5 cm\r\nSố trang	268\r\nHình thức	Bìa Mềm\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Giáo Dục bán chạy của tháng\r\nCăn bệnh giáo dục “Nguy cơ giáo dục” khiến cả học sinh và giáo viên Nhật Bản khổ sở\r\n\r\nGiáo dục Nhật Bản vốn luôn được đánh giá là một nền giáo dục hàng đầu thế giới, là hình mẫu cho các quốc gia học tập. Tuy nhiên ở trong nước, nền giáo dục Nhật Bản vẫn luôn có nhiều ý kiến trái chiều. Các nhà nghiên cứu giáo dục Nhật Bản rất nghiêm túc trong việc phản biện các vấn đề giáo dục. Pyo Uchida – Phó giáo sư chuyên ngành xã hội giáo dục tại Đại học Nogoya là một người nhà nghiên cứu như vậy , ông đề cập đến những vấn đề “mặt trái” của giáo dục Nhật Bản được núp bóng dưới những điều tốt đẹp trong cuốn sách Căn bệnh giáo dục “Nguy cơ giáo dục” khiến cả học sinh và giáo viên Nhật Bản khổ sở. Cuốn sách của ông đã làm bùng lên một cuộc tranh cãi rất lớn trong giới giáo dục Nhật Bản. Ông nghiêm túc chỉ ra những nguy cơ của một số hành vi giáo dục ngay cả khi nó đang được xã hội ca tụng và ánh hòa quang làm mờ mắt.\r\n\r\nMội dung cuốn sách chỉ ra một số nguy cơ tồn tại trong giáo dục Nhật Bản như sau:\r\n\r\n-Vấn đề thành tích trong thể dục đội hình khổng lồ hóa, câu lạc bộ Judo và các câu lạc bộ ngoại khóa của Nhật Bản đang được thổi phồng ở các trường học, rất nhiều tai nạn, thậm chí tai nạn chết người lặp lại cùng nguyên nhân nhưng vẫn không được quan tâm đúng mức mà nó bị làm mờ đi vì khoác dưới vỏ bọc “khổ luyện thành tài”. Việc trẻ bị “trừng phạt thân thể” hay bạo hành vẫn được coi là “một phần của giáo dục” bởi xuất phát điểm của việc trừng phạt nghiêm khắc là để trẻ có kỉ luật và tiến bộ hơn. Vô hình trung điều đó càng khiến bạo lực được dung túng.\r\n\r\n- Sức ép vô hình của “lễ thành nhân ½ ” (Nghi lễ được tiến hành để chúc mừng học sinh lớp 4 tiểu học tròn 10 tuổi. Trong lễ thành nhân ½, cha mẹ học sinh sẽ được mời đến tham dự, học sinh và phụ huynh cùng nhìn lại quá trình trưởng thành của con và chia sẻ cảm xúc “biết ơn” giữa con cái và cha mẹ). Xuất phát điểm của hoạt động này trong lễ thành nhân 1/2, mặc nhiên cho rằng gia đình luôn sống hạnh phúc trong một thời gian dài và không có gì thay đổi. Trong khi đó, thực tế xã hội hiện đại, gia đình không trọn vẹn, bố mẹ đơn thân hoặc với những đứa trẻ bị ngược đãi trong chính gia đình của mình, không phải là ít. Sẽ khó xử và bẽ bàng thế nào khi trẻ phải kể về những trải nghiệm không muốn nhớ lại của mình trước đám đông, hoặc trẻ phải “giả vờ cười và cố giấu đi sự thật”. Đó có thể coi là một hành động mang tính bạo hành tinh thần được giấu trong hoạt động có vẻ ngoài mang tính nhân văn.\r\n\r\n- Nguy cơ của giáo dục trong xã hội công dân, tác giả cho rằng một trong những nguyên nhân rào cản của giáo dục trường học còn ở chính các giáo viên và phụ huynh. Họ vừa là nạn nhân lại vừa là tác nhân gây ra căn bệnh giáo dục khi bị chính những thứ tưởng là “những điều tốt đẹp” mê hoặc. Giáo viên ở Nhật bản là một nghề vất vả, ngoài công tác chuyên môn họ còn phải kiêm nhiệm quản lý các câu lạc bộ trong trường học mà họ không hề có chuyên môn. Việc này tốn nhiều thời gian của họ khiến chất lượng cuộc sống của giáo viên bị giảm sút khi không còn thời gian dành riêng cho gia đình và cũng là thiệt thòi của học sinh khi tham gia câu lạc bộ lại không được hướng dẫn bởi người có chuyên môn sâu.\r\n\r\nKì vọng của xã hội về giáo dục ở bất cứ đâu đều mong muốn giáo dục phải hướng trẻ tới những điều tốt đẹp nhất. Tuy nhiên, chúng ta cũng biết rằng thực tế giáo dục nảy sinh nhiều vấn đề. Những vấn đề nóng của giáo dục mà dư luận luôn quan tâm như bệnh thành tích, trừng phạt thân thể, tự sát, bắt nạt học đường... đang tràn lan trên các phương tiện truyền thông khiến chúng ta không khỏi xót xa, đau đớn. Những câu chuyện của giáo dục Nhật Bản, tưởng chừng rất xa vời với giáo dục Việt Nam, nhưng nếu thử ngẫm thật kĩ và ra sẽ thấy đó là căn bệnh không hiếm gặp trong giáo dục Việt Nam.', '239000', '2021-11-02 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `phone`, `email`, `level`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Nguyễn Ngọc Hải', '0869215201', 's2ngochai01@hotmail.com', 1),
('hai123', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Ngọc Hải', '0869215201', 's2bluemoon01@gmail.com', 0),
('moon1', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Ngọc Hải', '0869215201', 's2bluemoon01@gmail.com', 0),
('s2blueeyes01', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Ngọc Hải', '0869215201', 's2blueeyes01@gmail.com', 0),
('s2bluemoon01', 'b914c18ff19cbdd31e6f020694e3546e', 'Nguyễn Ngọc Hải', '0869215201', 's2bluemoon02@gmail.com', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `masach` (`masach`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `username` (`username`);

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
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `masach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`masach`) REFERENCES `sach` (`masach`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`username`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
