<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<meta charset="ISO-8859-1">
<html>
<head>
<font face="Courier New"></font>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
</head>
<header>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">StyleQue</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">

					<li><a href="./Home">Home</a></li>
					<li><a href="./About_us">About us</a></li>
					<li><a href="./Contact_us">Contact us</a></li>
					<li><a href="<c:url value="/allProducts"/>">All Products</a></li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="<c:url value="/admin/AddProduct"/>">Add Product</a></li>
					</security:authorize>
				</ul>
		
				<ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/perform_logout" />">Logout</a></li>

                            <security:authorize access="hasRole('ROLE_USER')">
                            <li> <a href="<c:url value="/user/home"/>">Cart</a></li>
                         </security:authorize>
                         
                         
                            <security:authorize access="hasRole('ROLE_ADMIN')">
                            <li> <a href="<c:url value="/admin"/>">Admin Page</a></li>
                         </security:authorize>
                         </c:if>
                         
                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li><a href="<c:url value="/login" />">Login</a></li>
                            <li><a href="<c:url value="/register" />">Sign Up</a></li>
                        </c:if>
                    </ul>
			</div>
		</div>
	</nav>
</header>
</head>
</html>