<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Sach STS</title>
	<link rel="stylesheet" href='<c:url value="resources/style/style.css"/>'>
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
	<hr/>
	<div class="container">
		<table>
			<c:forEach var="ls" items="${dsls}">
				<tr>
					<td><h4>${ls.tenloai}</h4></td>
				</tr>
				<tr>
					<c:forEach var="s" items="${ls.dssach}">
						<td>
						<a href='<c:url value="/xemchitiet/${s.masach}"/>'>
							<img style="width: 140px;margin-right: 5px" src='<c:url value="resources/${s.hinh}"/>'>
						</a></td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
	</div> 
	<hr/>
	<div class="footer">
		<h5>@2019 Nhà Xuất Bản Trẻ. All Rights Reserved</h5>
	</div>
</body>
</html>
