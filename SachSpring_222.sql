USE master
GO

CREATE DATABASE SACHSPRING
GO

USE SACHSPRING
GO


CREATE TABLE LOAISACH(
	MALOAISACH nvarchar(15) primary key, 
	TENLOAI nvarchar(100) not null, 
	TUKHOA nvarchar(50), 
	MOTA ntext
)

CREATE TABLE SACH(
	MASACH nvarchar(15) primary key, 
	TENSACH nvarchar(100) not null, 
	TACGIA nvarchar(100), 
	SOTRANG numeric, 
	GIA decimal, 
	TOMTAT ntext, 
	MALOAI nvarchar(15) REFERENCES LOAISACH(MALOAISACH) ON DELETE CASCADE ON UPDATE CASCADE,
	HINH nvarchar(100)
)



insert into LOAISACH values(N'LS_NTSONG',N'Nghệ thuật sống', N'nghệ thuật, nghệ thuật sống, nét đẹp sống', N'Sách Nghệ thuật sống nói về nét đẹp, sự khéo léo trong suy nghĩ cũng như hành động.')
insert into LOAISACH values(N'LS_VANHOC',N'Văn học', N'văn học trong nước, văn học nước ngoài', N'Tác phẩm văn học có thể tồn tại dưới phương diện là ngôn bản truyền miệng hoặc hình thức văn bản được ghi lại bằng văn tự cụ thể; có thể được tạo thành bằng văn vần (và thơ) hoặc văn xuôi; và được xếp vào các thể loại nhất định (như tự sự, trữ tình, kịch, nhật ký, ký, tùy bút).')
insert into LOAISACH values(N'LS_MAMNON',N'Sách mầm mon', N'mầm non, trẻ em', N'Sách phát triển giáo dục mầm non, trẻ em, hỗ trợ giáo dục mầm non.')
GO

insert into SACH values(N'16522018_035215', N'BÊN GỐC TÁO', N'Kim Phụng; Bảo Huyên Reiko Miori', 52, 30000, N'Bên gốc táo nằm trong tủ sách Vườn yêu thương, gồm những câu chuyện sống đẹp dành cho thiếu nhi với minh họa màu rực rỡ. Sách hướng đến độc giả từ 6 tuổi trở lên, nhằm gieo cho các em những giá trị sống tích cực, biết yêu thương và tràn đầy lòng trắc ẩn.', N'LS_NTSONG', N'images/16522018_035215.jpg')
insert into SACH values(N'16082018_040858', N'ĐỜI ĐƠN GIẢN KHI TA ĐƠN GIẢN', N'Xuân Nguyễn tuyển chọn', 230, 80000, N'Ta lớn lên trong một thế giới do não trái định hướng. Não trái thích xác định sự tồn tại của các quy định hiện hành, phù hợp với các quy tắc và chuyên mục đó, nhưng nó không phù hợp với các khả năng mới phát sinh. Bạn không thể biết điều gì sẽ xảy ra, hoặc những cơ hội nào sẽ phát sinh, cho đến khi bạn đến được thời điểm đó. Bạn có thể lên hết kế hoạch này đến kế hoạch khác, nhưng đơn giản không có cách nào để biết mọi việc sẽ ra sao. Chắc chắn, bạn có thể liên tục điều chỉnh kế hoạch dựa trên thay đổi hoàn cảnh... nhưng vậy thì, ý nghĩa của kế hoạch là gì?', N'LS_NTSONG', N'images/16082018_040858.jpg')
insert into SACH values(N'16562018_035611', N'NGÔI NHÀ NGÀN TẤM GƯƠNG', N'Kim Phụng; Trần Thị Thùy My', 48, 30000, N'Ngôi nhà ngàn tấm gương nằm trong tủ sách Vườn yêu thương, gồm những câu chuyện sống đẹp dành cho thiếu nhi với minh họa màu rực rỡ. Sách hướng đến độc giả từ 6 tuổi trở lên, nhằm gieo cho các em những giá trị sống tích cực, biết yêu thương và tràn đầy lòng trắc ẩn.', N'LS_NTSONG', N'images/16562018_035611.jpg')
insert into SACH values(N'03252012_092524', N'HÃY LẠC QUAN ĐỂ VUI SỐNG', N'Nhã Nam tuyển chọn', 138, 45000, N'Trong cuộc sống hối hả và bận rộn ngày nay, dường như ai cũng bị cuốn vào vòng xoáy của công việc và nhiều thứ khác. Đôi lúc thành công, vui vẻ, có lúc thất bại, nhiều người lại nản lòng. Lạc quan là một thái độ tiên quyết cho niềm hạnh phúc và thành công của mỗi người. Do vậy, với những lời khuyên, câu nói, và câu truyện ngắn, quyển sách HÃY LẠC QUAN ĐỂ VUI SỐNG như thêm sức mạnh tinh thần cho bất kỳ độc giả nào, đặc biệt những độc giả đang xuống tinh thần, muốn mình lạc quan, yêu đời hơn, để lúc nào cũng vui sống!', N'LS_NTSONG', N'images/03252012_092524.jpg')
insert into SACH values(N'19072018_030705', N'BỒ CÂU CHUNG MÁI VÒM', N'Dương Thụy', 302, 88000, N'Những truyện ngắn trong tập sách này được tôi viết sau khi đi du học về với nhiều kỷ niệm thân thương. Tôi vẫn thường mơ thấy lại những chú bồ câu đáng yêu dưới mái vòm nhà thờ yên ả. Tôi nhớ hoài những buổi chiều lang thang ở Rennes trong làn gió thu lãng mạn, nơi tôi đã viết truyện ngắn Một mùa thu ở Rennes. Và bạn cũng sẽ bắt gặp những chuyến chu du của tôi đến những miền đất lạ trong Con gà nói tiếng Đức, Bất chợt ở La Mã, Tú cầu vùng Bretagne... Mời bạn hãy lại cùng tôi, mơ về những tháng ngày tươi đẹp của một Châu Âu cổ kính nhưng hiện đại, nơi những người trẻ chúng ta luôn mong có một hành trình hướng đến tương lai', N'LS_VANHOC', N'images/19072018_030705.jpg')
insert into SACH values(N'18012018_090132', N'NGƯỜI QUẢNG ĐI ĂN MÌ QUẢNG', N'Nguyễn Nhật Ánh', 202, 99000, N'Tạp văn của Nguyễn Nhật Ánh không chỉ luận bàn về mì Quảng. Anh nói đủ mọi thứ trên trời dưới bể. Từ món ăn đến thư pháp, từ sân khấu đến điện ảnh, từ chuyện ở nhà đến chuyện cơ quan, từ chuyện siêu thị đến chuyện phố xá, từ chuyện Sài Gòn đến chuyện miền Tây... Anh luận bàn đủ thứ: từ lớn đến nhỏ, từ đồ giả đến cuộc náo loạn Hollywood, từ quạt Cophaco đến quạt Ba Tiêu... Anh cũng thích đủ mọi thứ: từ thú đọc quảng cáo đến nghe cải lương bên sông Tiền, từ xem bóng đá đến ngắm hoa đào trong tranh, rồi chat... Rồi buồn và nuối tiếc những kỷ niệm xưa như Chia tay buổi chiều, Sách của một thời, Buồn gì đâu...', 'LS_VANHOC', 'images/18012018_090132.jpg')
insert into SACH values(N'05542016_025438', N'TẬP TÔ MÀU KỲ DIỆU - SẮC MÀU CỔ TÍCH', N'Isabelle Nicolle', 32, 37000, N'Sách tô màu dành cho thiếu nhi từ lứa tuổi từ mẫu giáo đến đầu cấp 1.', N'LS_MAMNON', N'images/05542016_025438.jpg')
insert into SACH values(N'16482018_034820', N'11 CHÚ MÈO VÀ CÁI TÚI VẢI', N'Noboru Baba. Dịch giả: Duy Ngọc ', 40, 43000, N'Hôm nay, 11 chú mèo cùng nhau đi dã ngoại. Khi thấy các biển cảnh báo không được hái hoa, leo cây, v.v thì 11 chú mèo đều làm ngược lại. Đến khi thấy có cái túi vải to treo bảng không được chui mà 11 chú mèo vẫn ngoan cố làm ngược lại. Thế là cả bọn bị quái vật Ô hô A ha bắt về làm người hầu. Cuối cùng, 11 chú mèo đã bày mưu và hợp lực lại để đánh bại quái vật và trở về nhà. Truyện kể thú vị và có tính giáo dục cao dành cho các em thiếu nhi', N'LS_MAMNON', N'images/16482018_034820.jpg')
insert into SACH values(N'19572018_115750', N'CÂY LÀNH CÂY ĐỘC', N'Khương Nhi, Ngọc Duy', 24, 220000, N'Sách đưa các bé vào cuộc dạo chơi trong thế giới thực vật, biết được công dụng của các loại cây, phân biệt cây lành, cây độc. Vừa khám phá thiên nhiên các bé vừa có thêm kiến thức cần thiết trong cuộc sống. Với ít chữ trên nền tranh sống động, bộ sách đưa độc giả nhỏ vào thế giới của cây lá hoa quả với biết bao điều hay. Các bé sẽ nhận ra lá không chỉ một màu xanh lục, có lá nhỏ xíu xiu như chiếc kim khâu nhưng cũng có lá to cõng được mấy người. Bạn nhỏ sẽ biết cây đem đến nhiều lợi ích cho trái đất nhưng cũng có cây nguy hiểm ta không nên đụng vào. Và hoa, và quả, và những kiến thức vỡ lòng về thế giới thực vật sẽ mở ra theo từng trang sách. Một cuộc dạo chơi, nhiều điều khám phá, bộ sách giúp bé nuôi dưỡng tình yêu thiên nhiên và sẽ có hứng thú với môn sinh học sau này.', N'LS_MAMNON', N'images/19572018_115750.jpg')
GO

SELECT * FROM LOAISACH
GO

SELECT * FROM SACH
GO
