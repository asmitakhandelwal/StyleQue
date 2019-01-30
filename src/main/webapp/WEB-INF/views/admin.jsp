<%@ include file="header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator page</h1>
            <p class="lead">Welcome to the administrator page!</p>
        </div>
        <h3>
            <a href="<c:url value="/admin/allProducts" /> ">Product Management</a>
        </h3>
        <br/><br/>
        <h3>
            <a href="<c:url value="/admin/customer" /> ">Customer Management</a>
        </h3>
<%@ include file="footer.jsp" %>