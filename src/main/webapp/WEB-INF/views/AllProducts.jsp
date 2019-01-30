<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html:charset="UTF-8>

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
				<th>Description</th>
				<th>Category</th>
				<th>Images</th>
				<th>Details</th>
				
			</tr>
			<c:forEach var="product" items="${allProducts}">
				<tr>
					<td>${product.productName}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td>${product.description}</td>
					<td>${product.category}</td>
					<td><img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image" style="width:100%"/></td>
					<td><a href ="viewProduct/${product.productId}" >View More</a></td>
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<td><a href="deleteProduct/${product.productId}"> Delete product</a></td>
					<td><a href="updateProduct/${product.productId}">Update product</a></td>
					</security:authorize>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>