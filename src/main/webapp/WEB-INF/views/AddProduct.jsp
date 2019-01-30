<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>


            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/AddProduct"
                   method="post" modelAttribute="product" enctype="multipart/form-data">
                   
            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="name" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="Bag" />Bags</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="Shoes" />Shoes</label>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="description" id="description" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:errors path="price" cssStyle="color:#ff0000;" />
                <form:input path="price" id="price" class="form-Control" />
            </div>

            <div class="form-group">
                 <label for="quantity">Quantity</label>
                <form:errors path="quantity" cssStyle="color:#ff0000;" />
                <form:input path="quantity" id="quantity" class="form-Control" />
            </div>


            <div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input type="file" path="productImage" id="productImage"/>
            </div>
        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">

    </form:form>
