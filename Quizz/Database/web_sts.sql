-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2023 at 10:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_sts`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `AnswerID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `OptionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `OptionID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Content` varchar(500) NOT NULL,
  `IsCorrect` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`OptionID`, `QuestionID`, `Content`, `IsCorrect`) VALUES
(1, 1, 'a. Xóa mail lừa đảo', 0),
(2, 1, 'b. Rút nguồn máy tính', 0),
(3, 1, 'c. Thay đổi mật khẩu bị xâm phạm', 1),
(4, 2, 'a. Trình duyệt sẽ bị đóng', 0),
(5, 2, 'b. Bạn sẽ bị chuyển hướng đến website yêu cầu nhập thông tin nhạy cảm hoặc yêu cầu tải file lạ', 1),
(6, 2, 'c. Bạn sẽ bị chuyển hướng đến một trang lỗi', 0),
(7, 2, 'd. Không có điều nào ở trên', 0),
(8, 3, 'a) Gửi email giả mạo như ngân hàng hoặc công ty lớn để lừa đảo người nhận cung cấp thông tin cá nhân.', 1),
(9, 3, 'b) Gửi tin nhắn trên mạng xã hội yêu cầu tiết lộ mật khẩu.', 0),
(10, 3, 'c) Gửi thư tình qua email để lừa người nhận mở tệp đính kèm độc hại.', 0),
(11, 4, 'a) Địa chỉ email của người gửi không chính xác', 0),
(12, 4, 'b) Ngôn ngữ cấp bách và yêu cầu tiết lộ thông tin cá nhân', 0),
(13, 4, 'c) Tất cả đều đúng', 1),
(14, 5, 'a) Lấy cắp thông tin đăng nhập của người dùng', 0),
(15, 5, 'b) Đánh cắp thông tin thẻ tín dụng', 0),
(16, 5, 'c) Cả hai đều đúng', 1),
(17, 6, 'a) Kiểm tra URL trước khi nhấp vào liên kết', 0),
(18, 6, 'b) Không cung cấp thông tin cá nhân trên email hoặc trang web không đáng tin cậy', 0),
(19, 6, 'c) Tất cả đều đúng', 1),
(20, 7, 'a) Truy cập liên kết trong email và cung cấp thông tin yêu cầu', 0),
(21, 7, 'b) Kiểm tra địa chỉ email người gửi và xác minh danh tính trước khi cung cấp thông tin', 0),
(22, 7, 'c) Báo cáo email đến bộ phận an ninh thông tin', 1),
(23, 8, 'a) Gửi tin nhắn yêu cầu tiết lộ thông tin cá nhân', 0),
(24, 8, 'b) Gửi tin nhắn chứa đính kèm độc hại', 0),
(25, 8, 'c) Tất cả đều đúng', 1),
(26, 9, 'a) Mã hóa là quá trình biến đổi thông tin thành dạng không đọc được để ngăn chặn việc truy cập trái phép', 0),
(27, 9, 'b) Mã hóa ngăn chặn hacker đọc được thông tin nhạy cảm trong email hoặc truy cập vào tài khoản', 0),
(28, 9, 'c) Tất cả đều đúng', 1),
(29, 10, 'a) Tạo mật khẩu mạnh và lưu trữ một cách an toàn', 0),
(30, 10, 'b) Tự động điền mật khẩu vào các trang web và ứng dụng', 0),
(31, 10, 'c) Cả hai đều đúng', 1),
(32, 11, 'a) Email', 0),
(33, 11, 'b) Tin nhắn văn bản (SMS)', 0),
(34, 11, 'c) Cả hai đều đúng', 1),
(35, 12, 'a) Kiểm tra và xác minh nguồn gốc của email hoặc thông điệp trước khi cung cấp thông tin cá nhân', 0),
(36, 12, 'b) Không nhấp vào các liên kết không đáng tin cậy hoặc tải xuống các tệp đính kèm không rõ nguồn gốc', 0),
(37, 12, 'c) Tất cả đều đúng', 1),
(38, 13, 'a) Chỉ có chữ hoa và số', 0),
(39, 13, 'b) Chỉ có chữ thường và ký tự đặc biệt', 0),
(40, 13, 'c) Chữ hoa, chữ thường, số và ký tự đặc biệt', 1),
(41, 13, 'd) Chỉ có chữ hoa và chữ thường', 0),
(42, 14, 'a) Một loại mã độc dùng để mã hóa dữ liệu và yêu cầu tiền chuộc', 1),
(43, 14, 'b) Một phần mềm diệt virus', 0),
(44, 14, 'c) Một dạng tấn công mạng dựa trên việc giả mạo danh tính', 0),
(45, 14, 'd) Một loại mật khẩu dễ đoán', 0),
(46, 15, 'a) Dữ liệu và thông tin quan trọng', 0),
(47, 15, 'b) Các thiết bị di động', 0),
(48, 15, 'c) Hệ thống mạng', 0),
(49, 15, 'd) Máy tính cá nhân', 0),
(50, 16, 'a) Chứa các tệp tin đính kèm', 0),
(51, 16, 'b) Lưu trữ dữ liệu dự phòng', 0),
(52, 16, 'c) Truyền tải dữ liệu qua mạng', 0),
(53, 16, 'd) Cả a) và b)', 1),
(54, 17, 'a) Một hình thức tấn công mạng thông qua email giả mạo', 0),
(55, 17, 'b) Kỹ thuật lừa đảo dựa trên tương tác xã hội', 1),
(56, 17, 'c) Một loại phần mềm độc hại', 0),
(57, 17, 'd) Công nghệ mã hóa dữ liệu', 0),
(58, 18, 'a) Hệ thống mạng', 0),
(59, 18, 'b) Dữ liệu trên máy tính', 0),
(60, 18, 'c) Thiết bị và tài sản vật lý', 1),
(61, 18, 'd) Tường lửa mạng', 0),
(62, 19, 'a) Dữ liệu trên trang web', 0),
(63, 19, 'b) Máy chủ mạng', 0),
(64, 19, 'c) Máy tính cá nhân', 0),
(65, 19, 'd) Trình duyệt web', 1),
(66, 20, 'a) Quá trình ứng phó với các sự cố bảo mật', 1),
(67, 20, 'b) Phần mềm phát hiện mã độc', 0),
(68, 20, 'c) Kỹ thuật xác thực hai yếu tố', 0),
(69, 20, 'd) Quá trình xây dựng cấu hình bảo mật', 0),
(70, 21, 'a) Thiết bị di động như điện thoại và máy tính bảng', 0),
(71, 21, 'b) Máy chủ và hệ thống mạng', 0),
(72, 21, 'c) Dữ liệu trên máy tính cá nhân', 0),
(73, 21, 'd) Hệ điều hành của máy tính', 0),
(74, 22, 'a) Lừa đảo qua email để chiếm đoạt thông tin cá nhân', 0),
(75, 22, 'b) Lừa đảo qua email để tiếp cận trái phép hệ thống', 0),
(76, 22, 'c) Lừa đảo qua email để yêu cầu chuyển tiền', 1),
(77, 22, 'd) Lừa đảo qua email để phá hoại dữ liệu', 0),
(78, 23, 'a) Chính sách yêu cầu nhân viên dọn dẹp bàn làm việc sau khi kết thúc công việc.', 0),
(79, 23, 'b) Chính sách yêu cầu nhân viên không được để lại tài liệu quan trọng trên bàn làm việc khi không sử dụng.', 1),
(80, 23, 'c) Chính sách yêu cầu nhân viên tuân thủ quy tắc vệ sinh cá nhân tại nơi làm việc.', 0),
(81, 23, 'd) Chính sách yêu cầu nhân viên không được sử dụng bất kỳ thiết bị di động cá nhân nào trong văn phòng.', 0),
(82, 24, 'a) Các máy tính cá nhân truy cập không được phép.', 0),
(83, 24, 'b) Nguy cơ bị theo dõi hoặc gián điệp thông tin.', 1),
(84, 24, 'c) Không có rủi ro, Wi-Fi public hoàn toàn an toàn.', 0),
(85, 24, 'd) Nguy cơ bị tấn công bởi phần mềm độc hại.', 0),
(86, 25, 'a) Phương pháp sử dụng nhiều mật khẩu khác nhau để bảo vệ tài khoản.', 0),
(87, 25, 'b) Quá trình sử dụng một phương tiện xác thực duy nhất để truy cập vào hệ thống.', 0),
(88, 25, 'c) Phương pháp xác thực yêu cầu sử dụng ít nhất hai yếu tố khác nhau.', 1),
(89, 25, 'd) Cách xác thực sử dụng dấu vân tay hoặc nhận diện khuôn mặt.', 0),
(90, 26, 'a) Quyền bảo vệ thông tin cá nhân của mỗi người.', 1),
(91, 26, 'b) Khả năng bảo mật của một hệ thống.', 0),
(92, 26, 'c) Quyền truy cập vào dữ liệu và tài khoản.', 0),
(93, 26, 'd) Quyền sở hữu và quản lý các tài sản vật lý.', 0),
(94, 27, 'a) Sử dụng mật khẩu để khóa màn hình thiết bị di động.', 0),
(95, 27, 'b) Khóa các cổng kết nối trên máy tính để ngăn chặn truy cập trái phép.', 0),
(96, 27, 'c) Đảm bảo rằng tất cả các thiết bị di động đều có hệ thống kiểm soát tự động khóa.', 0),
(97, 27, 'd) Sử dụng khóa vật lý hoặc phần mềm để ngăn chặn truy cập trái phép vào thiết bị.', 1),
(98, 28, 'a) Đánh cắp thông tin thẻ tín dụng của người dùng.', 0),
(99, 28, 'b) Lừa đảo người dùng để mua thẻ quà tặng và chuyển tiền cho kẻ tấn công.', 1),
(100, 28, 'c) Tấn công vào hệ thống thanh toán trực tuyến.', 0),
(101, 28, 'd) Đánh cắp thông tin ngân hàng của người dùng.', 0),
(102, 29, 'a) Sử dụng cùng một mật khẩu cho nhiều tài khoản khác nhau.', 1),
(103, 29, 'b) Sử dụng mật khẩu khác nhau cho mỗi tài khoản.', 0),
(104, 29, 'c) Sử dụng mật khẩu cực kỳ mạnh và phức tạp.', 0),
(105, 29, 'd) Không sử dụng mật khẩu cho các tài khoản cá nhân.', 0),
(106, 30, 'a) Một loại phần mềm giúp bảo vệ máy tính khỏi virus.', 0),
(107, 30, 'b) Một loại phần mềm xác thực người dùng.', 0),
(108, 30, 'c) Một loại phần mềm giả mạo danh tính người dùng.', 0),
(109, 30, 'd) Một loại phần mềm có khả năng gây hại hoặc xâm nhập trái phép vào hệ thống.', 1),
(110, 31, 'a) Thông tin được chia sẻ công khai với công chúng.', 0),
(111, 31, 'b) Thông tin không quan trọng và không cần được bảo vệ.', 0),
(112, 31, 'c) Thông tin nhạy cảm và cần được bảo vệ khỏi truy cập trái phép.', 1),
(113, 31, 'd) Thông tin không được chia sẻ với đối tác kinh doanh.', 0),
(114, 32, 'a) Một công cụ giúp tạo và lưu trữ mật khẩu an toàn.', 1),
(115, 32, 'b) Một loại phần mềm để mã hóa dữ liệu trên thiết bị di động.', 0),
(116, 32, 'c) Một dạng tấn công mạng dựa trên việc lấy cắp mật khẩu.', 0),
(117, 32, 'd) Một loại phần mềm diệt virus.', 0),
(118, 33, 'a) Một loại phần mềm độc hại tấn công hệ thống.', 0),
(119, 33, 'b) Một loại tấn công mạng nhằm lấy cắp thông tin cá nhân.', 1),
(120, 33, 'c) Quá trình xác thực người dùng bằng việc gửi mã xác nhận qua email.', 0),
(121, 33, 'd) Quá trình kiểm tra tính hợp lệ của địa chỉ email.', 0),
(122, 34, 'a) Quá trình giảm kích thước dữ liệu để tiết kiệm không gian lưu trữ.', 0),
(123, 34, 'b) Quá trình mã hóa thông tin để bảo vệ dữ liệu khỏi truy cập trái phép.', 1),
(124, 34, 'c) Quá trình kiểm tra tính toàn vẹn của dữ liệu.', 0),
(125, 34, 'd) Quá trình chia nhỏ dữ liệu thành các phần nhỏ hơn để truyền tải.', 0),
(126, 35, 'a) Một loại phần mềm diệt virus.', 0),
(127, 35, 'b) Một hệ thống bảo mật cho phép hoặc từ chối truy cập vào mạng.', 1),
(128, 35, 'c) Quá trình kiểm tra tính xác thực của người dùng.', 0),
(129, 35, 'd) Quá trình giám sát và ứng phó với các sự cố bảo mật.', 0),
(130, 36, 'a) Một loại phần mềm độc hại tấn công hệ thống.', 0),
(131, 36, 'b) Quá trình mã hóa dữ liệu để bảo vệ thông tin cá nhân.', 0),
(132, 36, 'c) Sự việc thông tin quan trọng bị tiết lộ hoặc lạm dụng.', 1),
(133, 36, 'd) Sự việc phá hoại dữ liệu hoặc hệ thống mạng.', 0),
(134, 37, 'a) Mật khẩu và mã xác nhận qua email.', 0),
(135, 37, 'b) Mật khẩu và câu hỏi bảo mật.', 0),
(136, 37, 'c) Mật khẩu và dấu vân tay.', 0),
(137, 37, 'd) Mật khẩu và mã xác nhận qua điện thoại.', 1),
(138, 38, 'a) Liên kết và tên miền giống hệt các tổ chức uy tín.', 0),
(139, 38, 'b) Chỉ chứa văn bản không có liên kết hoặc tệp đính kèm.', 0),
(140, 38, 'c) Gửi từ địa chỉ email của một người bạn hoặc đồng nghiệp.', 0),
(141, 38, 'd) Yêu cầu cung cấp thông tin nhạy cảm qua email.', 1),
(142, 39, 'a) Nguy cơ tiết lộ thông tin cá nhân.', 0),
(143, 39, 'b) Nguy cơ bị theo dõi hoạt động trực tuyến.', 0),
(144, 39, 'c) Nguy cơ tấn công phishing và malware.', 0),
(145, 39, 'd) Tất cả các phương án trên đều đúng.', 1),
(146, 40, 'a) Sử dụng phần mềm độc hại để tấn công hệ thống.', 0),
(147, 40, 'b) Giả mạo danh tính để lừa đảo người dùng.', 1),
(148, 40, 'c) Sử dụng kỹ thuật mã hóa để ẩn thông tin.', 0),
(149, 40, 'd) Phân tích các lỗ hổng bảo mật của một hệ thống.', 0),
(150, 41, 'a) Quá trình sửa chữa thiết bị điện tử bị hỏng.', 0),
(151, 41, 'b) Quá trình cài đặt và cập nhật các bản vá lỗi bảo mật.', 1),
(152, 41, 'c) Quá trình sao lưu dữ liệu để đảm bảo an toàn.', 0),
(153, 41, 'd) Quá trình kiểm tra tính toàn vẹn của dữ liệu.', 0),
(154, 42, 'a) Một lỗ hổng bảo mật đã được công khai và sửa lỗi.', 0),
(155, 42, 'b) Một lỗ hổng bảo mật đã được tấn công và gây thiệt hại.', 0),
(156, 42, 'c) Một lỗ hổng bảo mật mới, chưa được biết đến hoặc sửa lỗi.', 1),
(157, 42, 'd) Một lỗ hổng bảo mật chỉ ảnh hưởng đến các thiết bị di động.', 0),
(158, 43, 'a) Một loại mật khẩu mạnh và phức tạp.', 0),
(159, 43, 'b) Một hình thức tấn công mạng nhằm giả mạo một hệ thống.', 0),
(160, 43, 'c) Một loại phần mềm chống virus hiện đại.', 0),
(161, 43, 'd) Một hệ thống giả lập được tạo ra nhằm thu thập thông tin về các cuộc tấn công.', 1),
(162, 44, 'a) Mật khẩu, xác nhận qua email và câu hỏi bảo mật.', 0),
(163, 44, 'b) Dấu vân tay, nhận diện khuôn mặt và mã xác nhận qua điện thoại.', 0),
(164, 44, 'c) Mật khẩu, thẻ thông minh và chứng chỉ số.', 0),
(165, 44, 'd) Mã xác nhận qua email, mã OTP và xác thực qua mạng xã hội.', 1),
(166, 45, 'a) Một loại phần mềm độc hại tấn công hệ thống.', 0),
(167, 45, 'b) Một loại kỹ thuật xâm nhập trái phép vào cơ sở dữ liệu.', 1),
(168, 45, 'c) Một loại tấn công mạng sử dụng mã độc để lây lan.', 0),
(169, 45, 'd) Một loại phần mềm gián điệp cài đặt trên điện thoại di động.', 0),
(170, 46, 'a) Khu vực mạng bị cô lập và không được truy cập từ bên ngoài.', 0),
(171, 46, 'b) Khu vực mạng giữa mạng nội bộ và mạng công cộng, chứa các dịch vụ trung gian.', 1),
(172, 46, 'c) Một hình thức tấn công mạng nhằm kiểm tra tính toàn vẹn của hệ thống.', 0),
(173, 46, 'd) Quá trình chia nhỏ mạng thành các mạng con để tăng cường bảo mật.', 0),
(174, 47, 'a) Liên kết và tên miền không đáng tin cậy.', 0),
(175, 47, 'b) Chỉ chứa văn bản không có liên kết hoặc tệp đính kèm.', 0),
(176, 47, 'c) Gửi từ địa chỉ email của một người lạ hoặc tổ chức không rõ ràng.', 0),
(177, 47, 'd) Yêu cầu cung cấp thông tin nhạy cảm qua email.', 1),
(178, 48, 'a) Các loại phần mềm độc hại khác nhau.', 0),
(179, 48, 'b) Các dạng tấn công mạng khác nhau.', 0),
(180, 48, 'c) Các kỹ năng và hành vi của hacker.', 1),
(181, 48, 'd) Các phương pháp xác thực người dùng.', 0),
(182, 49, 'a) Mã hóa dữ liệu để bảo vệ thông tin cá nhân.', 1),
(183, 49, 'b) Quá trình kiểm tra và phân loại dữ liệu quan trọng.', 0),
(184, 49, 'c) Phân tích và giám sát hoạt động của mạng.', 0),
(185, 49, 'd) Tạo ra các hệ thống mạng ảo để bảo vệ dữ liệu.', 0),
(186, 50, 'a) Mã hóa dữ liệu truyền tải qua mạng để đảm bảo bảo mật.', 1),
(187, 50, 'b) Quá trình phân loại dữ liệu theo mức độ nhạy cảm.', 0),
(188, 50, 'c) Xác thực người dùng bằng mã OTP và email.', 0),
(189, 50, 'd) Giám sát và ứng phó với các sự cố bảo mật.', 0),
(190, 51, 'a) Một loại tấn công mạng sử dụng phần mềm độc hại để giám sát hoạt động.', 0),
(191, 51, 'b) Quá trình theo dõi và nghe trộm truyền thông mạng của người khác.', 1),
(192, 51, 'c) Một công nghệ mã hóa dữ liệu để bảo vệ thông tin nhạy cảm.', 0),
(193, 51, 'd) Quá trình chặn truy cập trái phép vào hệ thống mạng.', 0),
(194, 52, 'a) Một loại phần mềm độc hại tấn công hệ thống.', 0),
(195, 52, 'b) Một loại kỹ thuật tấn công nhằm chiếm quyền điều khiển trang web.', 1),
(196, 52, 'c) Một loại tấn công mạng sử dụng mã độc để lây lan.', 0),
(197, 52, 'd) Một loại phần mềm gián điệp cài đặt trên điện thoại di động.', 0),
(198, 53, 'a) Một loại tấn công mạng sử dụng phần mềm độc hại để giám sát hoạt động.', 0),
(199, 53, 'b) Quá trình theo dõi và nghe trộm truyền thông mạng của người khác.', 1),
(200, 53, 'c) Một công nghệ mã hóa dữ liệu để bảo vệ thông tin nhạy cảm.', 0),
(201, 53, 'd) Quá trình chặn truy cập trái phép vào hệ thống mạng.', 0),
(202, 54, 'a) Mã hóa dữ liệu truyền tải qua mạng để đảm bảo bảo mật.', 1),
(203, 54, 'b) Quá trình phân loại dữ liệu theo mức độ nhạy cảm.', 0),
(204, 54, 'c) Xác thực người dùng bằng mã OTP và email.', 0),
(205, 54, 'd) Giám sát và ứng phó với các sự cố bảo mật.', 0),
(206, 55, 'a) Mã hóa dữ liệu để bảo vệ thông tin cá nhân.', 1),
(207, 55, 'b) Quá trình kiểm tra và phân loại dữ liệu quan trọng.', 0),
(208, 55, 'c) Phân tích và giám sát hoạt động của mạng.', 0),
(209, 55, 'd) Tạo ra các hệ thống mạng ảo để bảo vệ dữ liệu.', 0),
(210, 56, 'a) Liên kết và tên miền không đáng tin cậy.', 0),
(211, 56, 'b) Chỉ chứa văn bản không có liên kết hoặc tệp đính kèm.', 0),
(212, 56, 'c) Gửi từ địa chỉ email của một người lạ hoặc tổ chức không rõ ràng.', 1),
(213, 56, 'd) Yêu cầu cung cấp thông tin nhạy cảm qua email.', 0),
(214, 57, 'a) Một loại phần mềm độc hại tấn công hệ thống.', 0),
(215, 57, 'b) Một loại kỹ thuật xâm nhập trái phép vào cơ sở dữ liệu.', 1),
(216, 57, 'c) Một loại tấn công mạng sử dụng mã độc để lây lan.', 0),
(217, 57, 'd) Một loại phần mềm gián điệp cài đặt trên điện thoại di động.', 0),
(218, 58, 'a) Mật khẩu, xác nhận qua email và câu hỏi bảo mật.', 0),
(219, 58, 'b) Dấu vân tay, nhận diện khuôn mặt và mã xác nhận qua điện thoại.', 0),
(220, 58, 'c) Mật khẩu, thẻ thông minh và chứng chỉ số.', 0),
(221, 58, 'd) Mã xác nhận qua email, mã OTP và xác thực qua mạng xã hội.', 1),
(222, 59, 'a) Một lỗ hổng bảo mật đã được công khai và sửa lỗi.', 0),
(223, 59, 'b) Một lỗ hổng bảo mật đã được tấn công và gây thiệt hại.', 0),
(224, 59, 'c) Một lỗ hổng bảo mật mới, chưa được biết đến hoặc sửa lỗi.', 1),
(225, 59, 'd) Một lỗ hổng bảo mật chỉ ảnh hưởng đến các thiết bị di động.', 0),
(226, 60, 'a) Tấn công DDoS (Distributed Denial of Service) ngắn hạn', 0),
(231, 60, 'b) Sử dụng mã độc để mã hóa dữ liệu và yêu cầu tiền chuộc', 0),
(232, 60, 'c) Tấn công mạng lưới ngân hàng để đánh cắp thông tin khách hàng', 1),
(233, 60, 'd) Đánh cắp thông tin đăng nhập qua một trang web giả mạo', 0),
(236, 61, 'a) Cấp cho mỗi người dùng quyền truy cập tối đa', 0),
(237, 61, 'b) Cấp cho mỗi người dùng quyền truy cập tối thiểu cần thiết', 1),
(238, 61, 'c) Cung cấp quyền truy cập không giới hạn cho các quản trị viên', 0),
(239, 61, 'd) Tạo ra các tài khoản người dùng chung để giới hạn quyền truy cập', 0),
(240, 62, 'a) Giả mạo một trang web ngân hàng để lừa đảo người dùng', 0),
(241, 62, 'b) Gửi email giả mạo để yêu cầu người dùng cung cấp thông tin cá nhân', 0),
(242, 62, 'c) Đánh cắp thông tin từ một máy tính qua một kết nối Wi-Fi không an toàn', 0),
(243, 62, 'd) Thay đổi bản ghi DNS để chuyển hướng người dùng đến trang web giả mạo', 1),
(244, 63, 'a) Mã hóa đầu đĩa (full disk encryption)', 1),
(245, 63, 'b) Mã hóa tệp tin (file encryption)', 0),
(246, 63, 'c) Mã hóa thư mục (folder encryption)', 0),
(247, 63, 'd) Mã hóa phân vùng (partition encryption)', 0),
(248, 64, 'a) Sử dụng một phần mềm độc hại để lấy thông tin từ máy tính mục tiêu', 0),
(250, 64, 'b) Sử dụng phương pháp \"brute force\" để đoán mật khẩu của người dùng', 0),
(251, 64, 'c) Phân tích và sử dụng các thông tin phụ từ hoạt động phần cứng hoặc mạng', 1),
(252, 64, 'd) Gửi email giả mạo để lừa người dùng tiết lộ thông tin cá nhân', 0),
(253, 65, 'a) Đánh cắp thông tin cá nhân qua email giả mạo', 0),
(254, 65, 'b) Gửi lưu lượng truy cập giả mạo để làm quá tải hệ thống', 0),
(255, 65, 'c) Thay đổi bản ghi ARP để chuyển hướng lưu lượng mạng', 1),
(256, 65, 'd) Sử dụng phần mềm độc hại để truy cập trái phép vào máy tính', 0),
(257, 66, 'a) Sử dụng phần mềm chống virus mạnh nhất', 0),
(258, 66, 'b) Thiết lập tường lửa mạng chặt chẽ', 0),
(259, 66, 'c) Áp dụng mã hóa SSL/TLS cho kết nối mạng', 1),
(260, 66, 'd) Sử dụng phần mềm giám sát mạng để theo dõi lưu lượng', 0),
(261, 67, 'a) Sử dụng mã độc để mã hóa dữ liệu và yêu cầu tiền chuộc', 0),
(262, 67, 'b) Lợi dụng lỗi phần mềm để chiếm quyền kiểm soát toàn bộ hệ thống', 0),
(263, 67, 'c) Sử dụng quảng cáo trực tuyến để cài đặt phần mềm độc hại', 1),
(264, 67, 'd) Tấn công mạng lưới ngân hàng để đánh cắp thông tin khách hàng', 0),
(265, 68, 'a) Mã hóa ổ đĩa', 1),
(266, 68, 'b) Xóa từ xa dữ liệu trên thiết bị', 0),
(267, 68, 'c) Sử dụng tính năng khóa từ xa', 0),
(268, 68, 'd) Thiết lập mật khẩu mạnh cho thiết bị', 0),
(269, 69, 'a) Nó giúp ngăn chặn tấn công \"brute force\"', 0),
(270, 69, 'b) Nó giảm nguy cơ bị lộ mật khẩu nếu một tài khoản bị tấn công', 0),
(271, 69, 'c) Nó giúp ngăn chặn tấn công \"phishing\" thông qua mật khẩu tái sử dụng', 1),
(272, 69, 'd) Nó đảm bảo rằng việc đánh cắp mật khẩu từ một dịch vụ không ảnh hưởng đến các dịch vụ khác', 0),
(273, 70, 'a) Nó có ít nhất 8 ký tự và chứa chữ cái, chữ số và ký tự đặc biệt', 0),
(274, 70, 'b) Nó không chứa thông tin cá nhân dễ đoán như tên người dùng hay ngày sinh', 0),
(275, 70, 'c) Nó không được sử dụng trước đó trong 10 lần đăng nhập gần nhất', 0),
(276, 70, 'd) Nó được thay đổi ít nhất mỗi 90 ngày một lần', 1),
(277, 71, 'a) Sử dụng email giả mạo để lừa người dùng tiết lộ thông tin cá nhân', 0),
(278, 71, 'b) Đích danh và tấn công vào một cá nhân hoặc tổ chức cụ thể', 1),
(279, 71, 'c) Sử dụng phương pháp \"brute force\" để đoán mật khẩu của người dùng', 0),
(280, 71, 'd) Sử dụng phần mềm độc hại để mã hóa dữ liệu và yêu cầu tiền chuộc', 0),
(281, 72, 'a) Tắt toàn bộ các tệp đính kèm trong email không được phát hiện là tin cậy', 0),
(282, 72, 'b) Xác minh tính hợp lệ của email và các tệp đính kèm trước khi mở chúng', 1),
(283, 72, 'c) Sử dụng phần mềm diệt virus mạnh nhất trên toàn hệ thống', 0),
(284, 72, 'd) Tự động chuyển tất cả các email chứa tệp đính kèm lạ đến một thư mục cách ly', 0),
(285, 73, 'a) Một cuộc kiểm tra bảo mật toàn diện được thực hiện bởi các chuyên gia bảo mật', 1),
(286, 73, 'b) Một phương pháp kiểm tra hiệu suất và ổn định của hệ thống mạng', 0),
(287, 73, 'c) Một quá trình khôi phục dữ liệu từ một thiết bị lưu trữ đã bị hỏng', 0),
(288, 73, 'd) Một cuộc tấn công giả lập được thực hiện để xác định các lỗ hổng bảo mật', 0),
(289, 74, 'a) Đảm bảo các máy tính được khóa màn hình khi không sử dụng', 0),
(290, 74, 'b) Xác thực hai yếu tố cho tất cả các tài khoản người dùng', 0),
(291, 74, 'c) Đảm bảo sự chính xác và đầy đủ của các bản sao lưu dữ liệu', 0),
(292, 74, 'd) Hạn chế quyền truy cập vào các tài liệu nhạy cảm', 1),
(293, 75, 'a) Nó giúp ngăn chặn tấn công \"brute force\"', 0),
(294, 75, 'b) Nó giảm nguy cơ bị lộ mật khẩu nếu một tài khoản bị tấn công', 0),
(295, 75, 'c) Nó giúp ngăn chặn tấn công \"phishing\" thông qua mật khẩu tái sử dụng', 1),
(296, 75, 'd) Nó đảm bảo rằng việc đánh cắp mật khẩu từ một dịch vụ không ảnh hưởng đến các dịch vụ khác', 0),
(297, 76, 'a) Sử dụng trình duyệt web không phổ biến để tránh các cuộc tấn công', 0),
(298, 76, 'b) Tắt JavaScript và các plugin không cần thiết', 1),
(299, 76, 'c) Chỉ truy cập vào các trang web có đánh giá bảo mật cao', 0),
(300, 76, 'd) Sử dụng một phần mềm diệt virus mạnh trong trình duyệt', 0),
(301, 77, 'a) Phân tích và đánh giá sự cố', 0),
(302, 77, 'b) Định danh và xác minh sự cố', 0),
(303, 77, 'c) Phục hồi và khôi phục hệ thống', 0),
(304, 77, 'd) Giám sát và ghi nhận các hành vi đáng ngờ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `QuestionID` int(11) NOT NULL,
  `Content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`QuestionID`, `Content`) VALUES
(1, 'Nếu rơi vào bẫy lừa đảo, bạn nên làm gì để hạn chế thiệt hại?'),
(2, 'Điều gì sẽ xảy ra nếu bạn nhấp vào link trong mail lừa đảo hoặc tệp đính kèm?'),
(3, 'Đâu là phương thức phổ biến của tấn công phishing?'),
(4, 'Đâu là dấu hiệu chính để nhận biết một email lừa đảo phishing?'),
(5, 'Một trang web giả mạo có thể được sử dụng trong mục đích nào sau đây?'),
(6, 'Phương pháp nào sau đây giúp ngăn chặn tấn công phishing?'),
(7, 'Hành động nào sau đây là không an toàn trong việc phản ứng với một email tình huống khẩn cấp?'),
(8, 'Một cuộc tấn công phishing thông qua tin nhắn xã hội thường dùng phương pháp nào sau đây?'),
(9, 'Mã hóa dữ liệu là gì và tại sao nó quan trọng trong việc chống lại tấn công phishing?'),
(10, 'Lợi ích của việc sử dụng một công cụ quản lý mật khẩu là gì?'),
(11, 'Tấn công phishing có thể xảy ra thông qua kênh nào sau đây?'),
(12, 'Đâu là biện pháp phòng ngừa hiệu quả nhất để bảo vệ chính mình khỏi tấn công phishing?'),
(13, 'Một mật khẩu mạnh nên bao gồm những yếu tố nào?'),
(14, 'Ransomware là gì?'),
(15, 'Information security (Bảo mật thông tin) đề cập đến việc bảo vệ điều gì?'),
(16, 'Removable media (Phương tiện lưu trữ di động) có thể làm gì?'),
(17, 'Social engineering (Kỹ thuật xã hội) là gì?'),
(18, 'Physical security (Bảo mật vật lý) liên quan đến việc bảo vệ điều gì?'),
(19, 'Browser security (Bảo mật trình duyệt) đề cập đến việc bảo vệ gì?'),
(20, 'Incident response (Phản ứng sự cố) là gì?'),
(21, 'Mobile security (Bảo mật di động) liên quan đến việc bảo vệ điều gì?'),
(22, 'Business Email Compromise (BEC) (Gian lận qua email doanh nghiệp) đề cập đến hình thức lừa đảo nào?'),
(23, 'Clean Desk Policy là gì?'),
(24, 'Wi-Fi public (Công cộng) có rủi ro gì liên quan đến bảo mật?'),
(25, 'Multi-Factor Authentication (Xác thực đa yếu tố) là gì?'),
(26, 'Privacy (Quyền riêng tư) đề cập đến điều gì?'),
(27, 'Locking devices (Khóa thiết bị) là quy trình gì?'),
(28, 'Gift Card Scam (Lừa đảo thẻ quà tặng) nhắm vào điều gì?'),
(29, 'Password reuse (Tái sử dụng mật khẩu) là gì?'),
(30, 'Malware (Phần mềm độc hại) là gì?'),
(31, 'Confidential Information (Thông tin mật) là gì?'),
(32, 'Password Manager (Phần mềm quản lý mật khẩu) là gì?'),
(33, 'Phishing (Lừa đảo qua email) là gì?'),
(34, 'Encryption (Mã hóa) là quá trình gì?'),
(35, 'Firewall (Tường lửa) là gì?'),
(36, 'Data Breach (Việc rò rỉ dữ liệu) là gì?'),
(37, 'Two-factor Authentication (Xác thực hai yếu tố) bao gồm những yếu tố nào?'),
(38, 'Phishing emails thường có đặc điểm gì?'),
(39, 'Social media (Mạng xã hội) có những rủi ro bảo mật nào?'),
(40, 'Social Engineering Attack (Tấn công kỹ thuật xã hội) dựa trên việc gì?'),
(41, 'Patching (Cập nhật) trong bảo mật nghĩa là gì?'),
(42, 'Zero-day Vulnerability (Lỗ hổng zero-day) là gì?'),
(43, 'Honeypot là gì?'),
(44, 'Các phương pháp xác thực người dùng bao gồm những yếu tố nào?'),
(45, 'SQL injection là gì?'),
(46, 'Lớp DMZ (Demilitarized Zone) trong mạng nghĩa là gì?'),
(47, 'Phishing emails thường có đặc điểm gì?'),
(48, 'Các thuật ngữ \"black hat\" và \"white hat\" liên quan đến gì trong lĩnh vực bảo mật?'),
(49, 'Cryptography (Mật mã học) liên quan đến việc gì?'),
(50, 'Các giao thức HTTPS và SSL/TLS được sử dụng cho mục đích gì?'),
(51, 'Quá trình \"Eavesdropping\" trong mạng nghĩa là gì?'),
(52, 'XSS (Cross-Site Scripting) là gì?'),
(53, 'Quá trình \"Eavesdropping\" trong mạng nghĩa là gì?'),
(54, 'Các giao thức HTTPS và SSL/TLS được sử dụng cho mục đích gì?'),
(55, 'Cryptography (Mật mã học) liên quan đến việc gì?'),
(56, 'Phishing emails thường có đặc điểm gì?'),
(57, 'SQL injection là gì?'),
(58, 'Các phương pháp xác thực người dùng bao gồm những yếu tố nào?'),
(59, 'Zero-day Vulnerability (Lỗ hổng zero-day) là gì?'),
(60, 'Đâu là một ví dụ về một cuộc tấn công \"Advanced Persistent Threat\" (APT)?'),
(61, 'Để ngăn chặn việc lạm dụng quyền truy cập đặc biệt, nguyên tắc \"Least Privilege\" đòi hỏi gì?'),
(62, 'Đâu là một ví dụ về một cuộc tấn công \"DNS spoofing\"?'),
(63, 'Để bảo vệ dữ liệu quan trọng trên ổ đĩa, phương pháp mã hóa nào sau đây là tốt nhất?'),
(64, 'Đâu là một ví dụ về một cuộc tấn công \"side-channel attack\"?'),
(65, 'Đâu là một ví dụ về một cuộc tấn công \"ARP poisoning\"?'),
(66, 'Để ngăn chặn việc rò rỉ thông tin qua mạng, phương pháp nào sau đây là hiệu quả nhất?'),
(67, 'Đâu là một ví dụ về một cuộc tấn công \"malvertising\"?'),
(68, 'Để bảo vệ dữ liệu trên một thiết bị di động bị đánh cắp, phương pháp nào sau đây là tốt nhất?'),
(69, 'Để đảm bảo an toàn khi sử dụng các dịch vụ trực tuyến, việc sử dụng các mật khẩu duy nhất cho mỗi tài khoản là quan trọng vì:'),
(70, 'Một mật khẩu được xem là \"đạt chuẩn NIST\" khi:'),
(71, 'Một cuộc tấn công \"phishing\" được gọi là \"spear phishing\" khi nó:'),
(72, 'Để ngăn chặn việc tấn công \"ransomware\" từ phía email, biện pháp nào sau đây là hiệu quả nhất?'),
(73, 'Trong bối cảnh bảo mật thông tin, thuật ngữ \"penetration testing\" ám chỉ:'),
(74, 'Để đảm bảo an toàn thông tin trong môi trường làm việc văn phòng, một biện pháp quan trọng là:'),
(75, 'Để đảm bảo an toàn khi sử dụng các dịch vụ trực tuyến, việc sử dụng các mật khẩu duy nhất cho mỗi tài khoản là quan trọng vì:'),
(76, 'Để đảm bảo an toàn trình duyệt web, biện pháp bảo mật quan trọng là:'),
(77, 'Trong việc xử lý sự cố bảo mật, quy trình \"incident response\" có thể bao gồm các bước sau đây, trừ một bước:');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`AnswerID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `QuestionID` (`QuestionID`),
  ADD KEY `OptionID` (`OptionID`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`OptionID`),
  ADD KEY `QuestionID` (`QuestionID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `OptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`QuestionID`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_ibfk_3` FOREIGN KEY (`OptionID`) REFERENCES `options` (`OptionID`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`QuestionID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
