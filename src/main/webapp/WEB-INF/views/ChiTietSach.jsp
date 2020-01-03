<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Demo STS</title>
<link rel="stylesheet"
	href='<c:url value="../resources/style/style.css"/>'>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<img alt="logo"
				src='<c:url value="../resources/images/nxbtrelogo.png"/>'>
		</div>
		<div class="header-right">
			<img src='<c:url value="../resources/images/nxbtrevn.png"/>'>
			<ul>
				<li><a href='<c:url value="/"/>'>Danh Sách</a></li>
				<li><a href='<c:url value="/themmoi"/>'>Thêm mới</a></li>
				<li><a href='<c:url value="/quanly"/>'>Chức năng quản lý</a></li>
			</ul>
		</div>
	</div>
	<hr />
	<div class="container">
		<table border="1">
			<tr>
				<th>Mã Sách</th>
				<th>Tên Sách</th>
				<th>Tác Giả</th>
				<th>Số Trang</th>
				<th>Giá</th>
				<th>Tóm Tắt</th>
				<th>Mã Loại</th>
				<th>Hình</th>
			</tr>
			<tr>
				<td>${sach.masach }</td>
				<td>${sach.ten}</td>
				<td>${sach.tacgia }</td>
				<td>${sach.sotrang }</td>
				<td>${sach.gia }</td>
				<td>${sach.tomtat }</td>
				<td>${sach.maloai }</td>
				<td><img style="width: 50px;"
					src='<c:url value="../resources/${sach.hinh}"/>'></td>
			</tr>
		</table>
	</div>
	<hr />
	<div class="footer">
		<h5>@2019 Nhà Xuất Bản Trẻ. All Rights Reserved</h5>
	</div>
</body>
</html>
