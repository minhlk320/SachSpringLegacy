<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sach STS</title>
<link rel="stylesheet" href='<c:url value="resources/style/style.css"/>'>
<link rel="stylesheet" href='<c:url value="resources/style/bootstrap.min.css"/>'>
<script type="text/javascript" src='<c:url value="resources/style/bootstrap.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="resources/style/jquery.js"/>'></script>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<img alt="logo" src='<c:url value="resources/images/nxbtrelogo.png"/>'>
		</div>
		<div class="header-right">
			<img  src='<c:url value="resources/images/nxbtrevn.png"/>'>
			<ul>
				<li><a href='<c:url value="/"/>'>Danh Sách</a></li>
				<li><a href='<c:url value="/themmoi"/>'>Thêm mới</a></li>
				<li><a href='<c:url value="/quanly"/>'>Chức năng quản lý</a></li>
			</ul>
		</div>
	</div>
	<hr />
	<div class="container">
		<h3>Thêm thông tin sách mới</h3>
		<form:form modelAttribute="sach" action="xulythem" role="form">
			<div class="table1" style="margin: 35px;">
				<table>
					<tr>
						<td><form:input path="masach" placeholder="Mã sách" /> <form:errors
								path="masach" cssClass="error" class="form-control"></form:errors></td>
					</tr>
					<tr>
						<td><form:input path="tacgia" placeholder="Tác Giả" /> <form:errors
								path="tacgia" cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:input path="ten" placeholder="Tên Sách" /> <form:errors
								path="ten" cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:textarea path="tomtat" cols="20" rows="1"
								placeholder="Nội dung tóm tắt" /> <form:errors path="tomtat"
								cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:input path="sotrang" placeholder="Số trang" /> <form:errors
								path="sotrang" cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:input path="gia" placeholder="Giá" /> <form:errors
								path="gia" cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:input path="hinh" placeholder="URL hình ảnh"
								value="/images/00000000_000000.jpg" disabled="true" /></td>
					</tr>
					<tr>
						<td><form:select path="maloai">
								<form:options items="${dsls}" />
							</form:select></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center;"><input
							type="submit" value="Lưu"></td>
					</tr>
				</table>
			</div>
		</form:form>
	</div>
	<hr />
	<div class="footer">
		<h5>@2019 Nhà Xuất Bản Trẻ. All Rights Reserved</h5>
	</div>
</body>
</html>
