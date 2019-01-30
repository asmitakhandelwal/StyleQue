<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<div class="container" >
    <div clas="col-md-6">
    <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image"/>
    </div>
      <div class="col-md-6">
        <div class="row">
          <h2>${product.productName}</h2>
        </div>
          <div class="row"> 
            <h3>${product.price}</h3>
          </div>
          <div>
            <h4>${product.quantity}</h4>
          </div>
            <div>
               <h4>${product.description}</h4>
            </div>
      </div>
 </div>
<%@ include file="footer.jsp"%>
