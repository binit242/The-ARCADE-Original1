<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>The ARCADE - Add Products </title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body>
   <%

	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	
	response.setHeader("Expires", "0"); //proxies

	if(session.getAttribute("aemail")==null ){
		response.sendRedirect("admin-login.jsp");
	}
	
%>
    <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="product.jsp">
          <h1 class="tm-site-title mb-0"><img src="image\logo.png.png" alt=""></h1>
        </a>
        <button
          class="navbar-toggler ml-auto mr-0"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mx-auto h-100">
           
           
            <li class="nav-item">
              <a class="nav-link active" style="background-color: white; color: black;" href="product.jsp">
                 <img style="width:40px; " src="image/drop.gif" > <b>PRODUCTS</b> 
                <span class="sr-only">(current)</span>
              </a>
            </li>
            
            
             <li class="nav-item">
              <a class="nav-link active" style="background-color: beige; color: black;" href="blog-li.jsp">
                 <img style="width:40px; " src="image/edit-info.png" > <b>BLOGS</b> 
                <span class="sr-only">(current)</span>
              </a>
            </li>

         
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link d-block" href="Admin_logout">
                <img style="width:40px; " src="image/out.gif" ><b>Logout</b>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12">
                <h2 class="tm-block-title d-inline-block">Add Product</h2>
              </div>
            </div>
            <div class="row tm-edit-product-row">
              <div class="col-xl-6 col-lg-6 col-md-12">
              
                <form  class="tm-edit-product-form" method="post" enctype='multipart/form-data' action="Upload_file" >
                  <div class="form-group mb-3">
                    <label
                      for="name"
                      >Product Name
                    </label>
                    <input
                      id="name"
                      name="pdname"
                      type="text"
                      class="form-control validate"
                      required
                    />
                  </div>
                  
                  
                  <div class="form-group mb-3">
                    <label
                      for="price"
                      >Product Price
                    </label>
                    <input
                      id="name"
                      name="pdprice"
                      type="text"
                      class="form-control validate"
                      required
                    />
                  </div>
                  
                  
                  
                  <div class="form-group mb-3">
                    <label
                      for="details"
                      >Description</label>
                    <input
                      id="name"
                      name="pddetails"
                      type="text"
                      class="form-control validate"
                      required
                    />
                  </div>
                  
                  <div class="form-group mb-3">
                    <label
                      for="category"
                      >Category</label>
                    <input
                      id="name"
                      name="pdcat"
                      type="text"
                      class="form-control validate"
                      required
                    />
                  </div>
                  
                  
              </div>
              <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                <div class="tm-product mx-auto">
                  
                   <img style="width: 300px; border-radius:25px; " src="image/picani.gif">  
                </div>
              </div>
              
              <div class="col-12 mt-1 mb-4">
                  <input id="fileInput" type="file" style="display:none;" name="image" />
                  <input
                    type="button"
                    class="btn btn-primary btn-block mx-auto"
                    value="UPLOAD PRODUCT IMAGE  **{Should be in 945x760}"
                    onclick="document.getElementById('fileInput').click();"
                  />
                </div>
                
              <div class="col-12">
                <button type="submit" class="btn btn-primary btn-block text-uppercase">Add Product Now</button>
              </div>
            </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
          <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2024</b> All rights reserved to team ARCADE. 
            
            Design: <a rel="nofollow noopener" href="https://www.instagram.com/p/DCMP6LEy1xl/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==" class="tm-footer-link">US</a>
        </p>
        </div>
    </footer> 

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
  </body>
</html>
