<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html:charset="UTF-8">
<title>All Products</title>
</head>
<body>
	<div align="center">
		<table border="1" cellpadding="5">
			<caption>
				<h2>All Products</h2>
			</caption>
			<tr>
				<th>ProductName</th>
				<th>Price</th>
				<th>Quantity</th>
			</tr>
			<c:forEach var="product" items="${allProducts}">
				<tr>
					<td>${product.productName}</td>
					<td>${product.price}</td>
					<td>$(product.quantity}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>