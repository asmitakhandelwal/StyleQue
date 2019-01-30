<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Update Product</h1>
            <p class="lead">Update the product information</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/updateProduct/${productId}"
                   method="post" modelAttribute="product" enctype="multipart/form-data">

         <form:hidden path="productId" value="${product.productId}"/>

            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="Bag" />Bags</label>
                <label class="checkbox-inline"><form:radiobutton path="category" id="category" value="Shoes" />Shoes</label>
                
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="description" id="description" class="form-Control" value="${product.description}"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:errors path="price" cssStyle="color:#ff0000;" />
                <form:input path="price" id="price" class="form-Control" value="${product.price}" />
            </div>

            <div class="form-group">
                <label for="quantity">Quantity</label>
                <form:errors path="quantity" cssStyle="color:#ff0000;" />
                <form:input path="quantity" id="quantity" class="form-Control" value="${product.quantity}"/>
            </div>

            <div class="form-group">
                <label class="control-label" for="image">Upload Picture</label>
                <form:input id="image" path="productImage" type="file" class="form:input-large" />
            </div>

            <br/><br/>

            <input type="submit" value="submit" class="btn btn-default">

        </form:form>
    </div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>