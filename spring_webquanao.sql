-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 05, 2022 lúc 11:34 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `spring_webquanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(12, 'Quần Jean', 9),
(9, 'Thời trang Nam', 0),
(10, 'Váy', 11),
(11, 'Thời trang Nữ', 0),
(13, 'Áo Cotton Nữ', 11),
(14, 'Thời trang trẻ em', 0),
(16, 'Áo thể thao', 14),
(18, 'Áo Polo', 9),
(19, 'Quần Short', 14),
(20, 'Quần Tây', 9),
(21, 'Áo thun Nam', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `discount` float DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `description`, `image`, `name`, `view_count`, `category_id`, `quantity`, `discount`, `price`, `created`) VALUES
(5, '<p><strong>Bảng size sản phẩm:</strong></p><p><strong>Dài x Ngực</strong></p><p>S : 63cm x 48cm<br>M : 65cm x 50cm<br>L : 67cm x 52cm<br>XL : 69cm x 54cm</p><p><strong>Talent</strong></p><p>Chiều cao: 181 cm<br>Cân nặng: 70 kg<br>Sử dụng kích thước M</p><p>– Màu sắc hiển thị trong hình ảnh có thể không giống 100% so với sản phẩm thực tế, do quá trình chiếu sáng trong hình ảnh hoặc chất lượng màn hình của thiết bị được sử dụng để xem hình ảnh.</p><p>– Đối với mua hàng trực tuyến, vui lòng xem xét khả năng chịu sự khác biệt về màu sắc và kích thước của sản phẩm đặt hàng. Nếu sau khi nhận hàng mà có sự chênh lệch được coi là quá xa và không thể chấp nhận được, vui lòng đăng ký đổi hàng thông qua Dịch vụ khách hàng của chúng tôi.</p><p><strong>CHÍNH SÁCH ĐỔI TRẢ HÀNG</strong></p><p>– Được kiểm tra hàng trước khi nhận hàng</p><p>– Đổi hàng trong vòng 7 ngày kể từ khi nhận hàng đối với hàng mua online.</p><p>– Miễn phí đổi trả nếu lỗi sai sót từ phía HIDANZ</p>', '1649147362204.jpg', 'Áo Thun Cotton – Brain Thinks', 1, 21, 95, 10, 250000, '2022-04-05'),
(6, '<p><strong>THÔNG TIN SẢN PHẨM</strong></p><p>Mặc đẹp là một kỹ năng. Và giống như bất kỳ kỹ năng nào khác, bạn có thể học nó và cải thiện. Và nếu không biết học như thế nào, thì hãy bắt đầu bằng việc ăn mặc đơn giản, chỉn chu. Áo thun basic sẽ luôn là lựa chọn tuyệt vời nhất để bạn diện ngay một outfit đơn giản mà ấn tượng.</p><p><strong>Bảng size sản phẩm:</strong></p><p><strong>Dài x Ngực</strong></p><p>S : 63cm x 48cm<br>M : 65cm x 50cm<br>L : 67cm x 52cm<br>XL : 69cm x 54cm</p><p><strong>Talent</strong></p><p>Chiều cao: 181 cm<br>Cân nặng: 70 kg<br>Sử dụng kích thước M</p><p>– Màu sắc hiển thị trong hình ảnh có thể không giống 100% so với sản phẩm thực tế, do quá trình chiếu sáng trong hình ảnh hoặc chất lượng màn hình của thiết bị được sử dụng để xem hình ảnh.</p><p>– Đối với mua hàng trực tuyến, vui lòng xem xét khả năng chịu sự khác biệt về màu sắc và kích thước của sản phẩm đặt hàng. Nếu sau khi nhận hàng mà có sự chênh lệch được coi là quá xa và không thể chấp nhận được, vui lòng đăng ký đổi hàng thông qua Dịch vụ khách hàng của chúng tôi.</p><p><strong>CHÍNH SÁCH ĐỔI TRẢ HÀNG</strong></p><p>– Được kiểm tra hàng trước khi nhận hàng</p><p>– Đổi hàng trong vòng 7 ngày kể từ khi nhận hàng đối với hàng mua online.</p><p>– Miễn phí đổi trả nếu lỗi sai sót từ phía HIDANZ</p>', '1649147429204.jpg', 'Áo Thun Gân Basic Hidanz', 2, 21, 100, 5, 300000, '2022-04-05'),
(7, '<p><strong>THÔNG TIN SẢN PHẨM</strong></p><p>Là thiết kế polo trơn nổi bật của mùa này, Áo Polo Premium Cotton Honeycomb được làm từ chất liệu thun tổ ong cao cấp, chất vải sở hữu những đặc tính ưu việt như:</p><p>▪&nbsp;Mượt mà, mát mịn, bền bỉ<br>▪&nbsp;Thấm hút tốt, có khả năng tỏa nhiệt qua bề mặt vải vượt trội<br>▪&nbsp;Kháng khuẩn, khử mùi, chống bụi bẩn<br>▪&nbsp;Chống nhăn và co giãn tốt<br>▪&nbsp;Bền màu</p><p><strong>Bảng size sản phẩm:</strong></p><p><strong>Dài x Ngực x Vai</strong></p><p>S : 66 cm x 46 cm x 40 cm<br>M : 67 cm x 47 cm x 41 cm<br>L : 68 cm x 48 cm x 42 cm<br>XL : 69 cm x 49 cm x 43 cm</p><p>– Màu sắc hiển thị trong hình ảnh có thể không giống 100% so với sản phẩm thực tế, do quá trình chiếu sáng trong hình ảnh hoặc chất lượng màn hình của thiết bị được sử dụng để xem hình ảnh.</p><p>– Đối với mua hàng trực tuyến, vui lòng xem xét khả năng chịu sự khác biệt về màu sắc và kích thước của sản phẩm đặt hàng. Nếu sau khi nhận hàng mà có sự chênh lệch được coi là quá xa và không thể chấp nhận được, vui lòng đăng ký đổi hàng thông qua Dịch vụ khách hàng của chúng tôi.</p><p><strong>CHÍNH SÁCH ĐỔI TRẢ HÀNG</strong></p><p>– Được kiểm tra hàng trước khi nhận hàng</p><p>– Đổi hàng trong vòng 7 ngày kể từ khi nhận hàng đối với hàng mua online ( sản phẩm còn nguyên tem mác )</p><p>– Miễn phí đổi trả nếu lỗi sai sót từ phía HIDANZ</p>', '1649147563682.jpg', 'Áo Polo Premium Cotton', 5, 18, 100, 10, 500000, '2022-04-05'),
(8, '<p><strong>THÔNG TIN SẢN PHẨM</strong></p><p>Là thiết kế polo trơn nổi bật của mùa này, Áo Polo Premium Cotton Honeycomb được làm từ chất liệu thun tổ ong cao cấp, chất vải sở hữu những đặc tính ưu việt như:</p><p>▪&nbsp;Mượt mà, mát mịn, bền bỉ<br>▪&nbsp;Thấm hút tốt, có khả năng tỏa nhiệt qua bề mặt vải vượt trội<br>▪&nbsp;Kháng khuẩn, khử mùi, chống bụi bẩn<br>▪&nbsp;Chống nhăn và co giãn tốt<br>▪&nbsp;Bền màu</p><p><strong>Bảng size sản phẩm:</strong></p><p><strong>Dài x Ngực x Vai</strong></p><p>S : 66 cm x 46 cm x 40 cm<br>M : 67 cm x 47 cm x 41 cm<br>L : 68 cm x 48 cm x 42 cm<br>XL : 69 cm x 49 cm x 43 cm</p><p>– Màu sắc hiển thị trong hình ảnh có thể không giống 100% so với sản phẩm thực tế, do quá trình chiếu sáng trong hình ảnh hoặc chất lượng màn hình của thiết bị được sử dụng để xem hình ảnh.</p><p>– Đối với mua hàng trực tuyến, vui lòng xem xét khả năng chịu sự khác biệt về màu sắc và kích thước của sản phẩm đặt hàng. Nếu sau khi nhận hàng mà có sự chênh lệch được coi là quá xa và không thể chấp nhận được, vui lòng đăng ký đổi hàng thông qua Dịch vụ khách hàng của chúng tôi.</p><p><strong>CHÍNH SÁCH ĐỔI TRẢ HÀNG</strong></p><p>– Được kiểm tra hàng trước khi nhận hàng</p><p>– Đổi hàng trong vòng 7 ngày kể từ khi nhận hàng đối với hàng mua online ( sản phẩm còn nguyên tem mác )</p><p>– Miễn phí đổi trả nếu lỗi sai sót từ phía HIDANZ</p>', '1649147616441.jpg', 'Áo Polo Brown Cotton', 0, 18, 100, 15, 600000, '2022-04-05'),
(9, '<p>THÔNG TIN CHI TIẾT SẢN PHẨM</p><p>- Nhóm sản phẩm: Đầm Váy Nữ</p><p>- Mã sản phẩm: F452233</p><p>- Thương hiệu: FIONA</p><p>- Chất Liệu: Tuytsi</p><p>- Kích thước: S - M – L - XL</p><p>- Màu sắc: Đỏ</p><p>- Xuất Xứ: Việt Nam Sản phẩm được sản xuất tại Công ty trách nhiệm hữu hạn Thương mại &amp; Dịch vụ Kim Phú Địa chỉ: Số 86 Trần Duy Hưng, Phường Trung Hoà, Quận Cầu Giấy, Thành phố Hà Nội, Việt Nam</p><p>---------------------------------------------</p><p>ĐIỂM NỔI BẬT CỦA SẢN PHẨM</p><p>- FIONA là thương hiệu thời trang nữ công sở cao cấp được các chị em rất tin tưởng sử dụng</p><p>- Đầm công sở thiết kế độc quyền thương hiệu Fiona mang đến cho quý khách trải nghiệm thời trang công sở thời thượng và hiện đại.</p><p>- Đầm công sở thiết kế đẹp mới nhất cho nàng luôn xinh đẹp và sành điệu</p><p>- Chất liệu cao cấp giúp chiếc đầm công sở thiết kế luôn giữ phom vô cùng xinh đẹp và thanh lịch.</p><p>- Đầm dễ dàng mix match với phụ kiện, túi xách.</p><p>---------------------------------------------</p><p>LƯU Ý Bảng size chart đầm thiết kế nữ chỉ mang tính chất tham khảo, tùy thuộc vào số đo cơ thể mỗi người và chất liệu vải khác nhau sẽ có sự chênh lệch nhất định từ 1 - 2cm. Màu sắc sản phẩm đầm thiết kế có thể chênh lệch thực tế một phần nhỏ do ảnh hưởng hưởng về ánh sáng. Nàng hãy luôn chú ý các quy tắc sau để chiếc đầm xòe công sở yêu thích luôn bền đẹp:</p><p>+ Lộn mặt trái khi giặt và phơi sản phẩm</p><p>+ Giặt đầm nữ với xà phòng trung tính</p><p>+ Không phơi trực tiếp dưới ánh nắng mặt trời</p><p>+ Giặt máy ở chế độ nhẹ nhàng. Không sấy, phơi khô tự nhiên.</p>', '1649147845682.jpg', 'Đầm dáng ôm cổ cách', 12, 10, 98, 25, 200000, '2022-04-05'),
(10, '<p>THÔNG TIN CHI TIẾT SẢN PHẨM</p><p>- Nhóm sản phẩm: Đầm Váy Nữ</p><p>- Mã sản phẩm: F452248</p><p>- Thương hiệu: FIONA</p><p>- Chất Liệu: Tuytsi</p><p>- Kích thước: S - M – L - XL</p><p>- Màu sắc: Đen</p><p>- Xuất Xứ: Việt Nam Sản phẩm được sản xuất tại Công ty trách nhiệm hữu hạn Thương mại &amp; Dịch vụ Kim Phú Địa chỉ: Số 86 Trần Duy Hưng, Phường Trung Hoà, Quận Cầu Giấy, Thành phố Hà Nội, Việt Nam</p><p>---------------------------------------------</p><p>ĐIỂM NỔI BẬT CỦA SẢN PHẨM</p><p>- FIONA là thương hiệu thời trang nữ công sở cao cấp được các chị em rất tin tưởng sử dụng</p><p>- Đầm công sở thiết kế độc quyền thương hiệu Fiona mang đến cho quý khách trải nghiệm thời trang công sở thời thượng và hiện đại.</p><p>- Đầm công sở thiết kế đẹp mới nhất cho nàng luôn xinh đẹp và sành điệu</p><p>- Chất liệu cao cấp giúp chiếc đầm công sở thiết kế luôn giữ phom vô cùng xinh đẹp và thanh lịch.</p><p>- Đầm dễ dàng mix match với phụ kiện, túi xách.</p><p>---------------------------------------------</p><p>LƯU Ý Bảng size chart đầm thiết kế nữ chỉ mang tính chất tham khảo, tùy thuộc vào số đo cơ thể mỗi người và chất liệu vải khác nhau sẽ có sự chênh lệch nhất định từ 1 - 2cm. Màu sắc sản phẩm đầm thiết kế có thể chênh lệch thực tế một phần nhỏ do ảnh hưởng hưởng về ánh sáng. Nàng hãy luôn chú ý các quy tắc sau để chiếc đầm xòe công sở yêu thích luôn bền đẹp:</p><p>+ Lộn mặt trái khi giặt và phơi sản phẩm</p><p>+ Giặt đầm nữ với xà phòng trung tính</p><p>+ Không phơi trực tiếp dưới ánh nắng mặt trời</p><p>+ Giặt máy ở chế độ nhẹ nhàng. Không sấy, phơi khô tự nhiên.</p>', '1649147924246.jpg', 'Đầm ôm kẻ, tay lỡ', 0, 10, 149, 25, 200000, '2022-04-05'),
(11, '<p>Áo cotton nữ dáng suông, áo thun đẹp mềm mát free size in chữ F cách điệu đính hạt trang trí FIONA C522006<br><br>---------------------------------------------<br>THÔNG TIN CHI TIẾT SẢN PHẨM<br><br>- Nhóm sản phẩm: Cotton nữ<br>- Mã sản phẩm: C522006<br>- Thương hiệu: FIONA<br>- Chất Liệu: Cotton<br>- Kích thước: Freesize<br>- Màu sắc: Đen, Trắng, Nâu<br>-Xuất Xứ: Việt Nam<br>Sản phẩm được sản xuất tại Công ty trách nhiệm hữu hạn Thương mại &amp; Dịch vụ Kim Phú<br>Địa chỉ: Số 86 Trần Duy Hưng, Phường Trung Hoà, Quận Cầu Giấy, Thành phố Hà Nội, Việt Nam<br>---------------------------------------------<br><br>ĐIỂM NỔI BẬT CỦA SẢN PHẨM<br><br>- Áo thun nữ dáng rộng thương hiệu Fiona mang đến cho quý khách trải nghiệm thời trang công sở, dạo phố thời thượng và hiện đại.</p>', '1649147964141.jpg', 'Áo cotton dáng suông', 0, 13, 150, 25, 230000, '2022-04-05'),
(12, '<p>THÔNG TIN CHI TIẾT SẢN PHẨM<br><br>- Nhóm sản phẩm: Cotton nữ<br>- Mã sản phẩm: C522006<br>- Thương hiệu: FIONA<br>- Chất Liệu: Cotton<br>- Kích thước: Freesize<br>- Màu sắc: Đen, Trắng, Nâu<br>-Xuất Xứ: Việt Nam<br>Sản phẩm được sản xuất tại Công ty trách nhiệm hữu hạn Thương mại &amp; Dịch vụ Kim Phú<br>Địa chỉ: Số 86 Trần Duy Hưng, Phường Trung Hoà, Quận Cầu Giấy, Thành phố Hà Nội, Việt Nam<br>---------------------------------------------<br><br>ĐIỂM NỔI BẬT CỦA SẢN PHẨM<br><br>- Áo thun nữ dáng rộng thương hiệu Fiona mang đến cho quý khách trải nghiệm thời trang công sở, dạo phố thời thượng và hiện đại.</p>', '1649148027677.jpg', 'Áo cotton croptop dáng ôm', 0, 13, 120, 25, 270000, '2022-04-05'),
(13, '<p>Đặc điểm sản phẩm:<br>– Chất liệu chọn lọc tỉ mỉ, đường may tinh tế<br>– Phong cách đơn giản, dễ dàng kết hợp với quần Short, Jean, Kaki….<br>– Cotton dệt trên dây chuyền công nghệ dệt cao, co giãn 4 chiều.<br>– Vải mềm mại ít nhăn, thấm hút mồ hôi tốt.<br>– Phù hợp mặc mùa xuân hè.</p><p>Hướng dẫn bảo quản:<br>– Giặt với nước lạnh hoặc nước ấm dưới 40°C, không giặt chung với quần áo khác.<br>– Không sử dụng thuốc tẩy hoặc bột giặt có độ tẩy cao.<br>– Giặt, sấy ở chế độ nhẹ nhàng.<br>– Ủi với nhiệt độ thích hợp, không ủi lên chi tiết được in thêu.<br>– Để bảo quản màu sắc vui lòng tránh phơi dưới nắng gắt.</p><p>Thông tin thương hiệu:<br>Thương hiệu JJ Kids là thương hiệu Việt Nam luôn hướng đến một sứ mệnh đó là tạo ra những sản phẩm thời trang tinh tế, hợp với xu thế và mang tính ứng dụng cao, luôn phù hợp với trẻ em Việt Nam. Với quan niệm trẻ em là ” mầm xanh – tương lai Đất Nước”, mọi nỗ lực xây dựng thương hiệu của chúng tôi đều vì mục đích ” Ươm mầm phong cách Việt – Vươn tầm ra thế giới “.</p>', '1649148214237.jpg', 'Quần Short Thun', 0, 19, 130, 25, 290000, '2022-04-05'),
(15, '<p>Đặc điểm sản phẩm:<br>– Chất liệu chọn lọc tỉ mỉ, đường may tinh tế<br>– Phong cách đơn giản, dễ dàng kết hợp với quần Short, Jean, Kaki….<br>– Cotton dệt trên dây chuyền công nghệ dệt cao, co giãn 4 chiều.<br>– Vải mềm mại ít nhăn, thấm hút mồ hôi tốt.<br>– Phù hợp mặc mùa xuân hè.</p><p>Hướng dẫn bảo quản:<br>– Giặt với nước lạnh hoặc nước ấm dưới 40°C, không giặt chung với quần áo khác.<br>– Không sử dụng thuốc tẩy hoặc bột giặt có độ tẩy cao.<br>– Giặt, sấy ở chế độ nhẹ nhàng.<br>– Ủi với nhiệt độ thích hợp, không ủi lên chi tiết được in thêu.<br>– Để bảo quản màu sắc vui lòng tránh phơi dưới nắng gắt.</p><p>Thông tin thương hiệu:<br>Thương hiệu JJ Kids là thương hiệu Việt Nam luôn hướng đến một sứ mệnh đó là tạo ra những sản phẩm thời trang tinh tế, hợp với xu thế và mang tính ứng dụng cao, luôn phù hợp với trẻ em Việt Nam. Với quan niệm trẻ em là ” mầm xanh – tương lai Đất Nước”, mọi nỗ lực xây dựng thương hiệu của chúng tôi đều vì mục đích ” Ươm mầm phong cách Việt – Vươn tầm ra thế giới “.</p>', '1649148255077.jpg', 'Áo sọc caro', 1, 16, 120, 10, 230000, '2022-04-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_EMPLOYEE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `enable`, `full_name`, `password`, `phone_number`, `role_id`, `user_name`) VALUES
(1, 'admin@gmail.com', 1, 'admin', '$2a$10$urQnI9lepRj/imtivJGd..1lr/9/kpE226XIbgOEmKRd4EuL1Rrz2', '01223415449', 1, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKm1rmnfcvq5mk26li4lit88pc5` (`product_id`),
  ADD KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrws2q0si6oyd6il8gqe2aennc` (`order_id`),
  ADD KEY `FKb8bg2bkty0oksa3wiq5mp5qnc` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKowomku74u72o6h8q0khj7id8q` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
