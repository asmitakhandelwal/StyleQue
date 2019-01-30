<%@ include file="header.jsp" %>

<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner"style= "width:100%; height:75%;">
      <div class="item active">
        <img src=".\resources\images\carousel_1.jpg" style="width:100%; height:100%;">
      </div>

      <div class="item">
        <img src=".\resources\images\carousel_2.jpg" style="width:100%; height:100%;">
      </div>

      <div class="item">
        <img src=".\resources\images\carousel_3.png" style="width:100%; height:100%;">
      </div>

      <div class="item">
        <img src=".\resources\images\carousel_4.jpg" style="width:100%; height:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

 <br/>
<br/>
<div class="container text-center">    
  <div class="row">
    <div class="col-sm-4">
      <img src=".\resources\images\4.jpg" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <img src=".\resources\images\2.jpg" class="img-responsive" style="width:100%" alt="Image">  
    </div>
<div class="col-sm-4"> 
      <img src=".\resources\images\3.jpg" class="img-responsive" style="width:100%" alt="Image">  
    </div></div></div>
    <br>
<br/>
<br/>

</head>

<%@ include file ="footer.jsp" %>

