<%-- 
    Document   : add
    Created on : Mar 3, 2024, 5:06:30 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Font Awesome -->
        <link href="/css/home.css" rel="stylesheet" type="text/css"/>
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          rel="stylesheet"
        />
        <!-- Google Fonts -->
        <link
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
          rel="stylesheet"
        />
        <!-- MDB -->
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.min.css"
          rel="stylesheet"
        />
        <title>Shop - Add a product</title>
    </head>
    <body>
        <!-- Jumbotron -->
            <div class="p-3 text-center bg-white border-bottom">
              <div class="container">
                <div class="row gy-3 d-flex justify-content-between">
                  <!-- Left elements -->
                  <div class="col-lg-2 col-sm-4 col-4">
                    <a href="https://mdbootstrap.com/" target="_blank" class="float-start">
                      <img src="https://mdbootstrap.com/img/logo/mdb-transaprent-noshadows.png" height="35" />
                    </a>
                  </div>
                  <!-- Left elements -->

                  <!-- Center elements -->
                  <div class="order-lg-last col-lg-5 col-sm-8 col-8">
                    <div class="d-flex float-end">
                      
                      
                                
                        <button class="mx-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank" onclick="logOut()">
                            <i class="fa fa-sign-out m-1 me-md-2"></i>
                            <p class="d-none d-md-block mb-0">Log out</p>
                        </button>
                            
                    </div>
                  </div>
                  <!-- Center elements -->

                  
                </div>
              </div>
            </div>
            <!-- Jumbotron -->
            
        
        
        
        <div class="container">
            <header class="my-4">
                <h3>Add a new product</h3>
            </header>
            <form action="addProduct" method="post">
                
                <!-- Text input -->
                <div data-mdb-input-init class="form-group mb-4">
                    <label class="form-label" >Product name</label>
                    <input type="text" name="name" class="form-control" />
                  
                </div>
                <!-- 2 column grid layout with text inputs for the first and last names -->
                <div class="row mb-4">
                  <div class="col">
                    <div data-mdb-input-init class="form-group">
                      <label class="form-label" >Category</label>
                      <select class="form-select" aria-label="Default select example" name="category">
                          <option selected>Select a category</option>
                          <option value="1">Clothes</option>
                          <option value="2">Shoes</option>
                          <option value="3">Sport</option>
                      
                          <option value="4">Technology</option>
                          <option value="5">Accessories</option>
                          <option value="6">Perfume</option>
                          <option value="7">Others</option>

                        </select>
                      <!--<input type="text" id="form6Example1" class="form-control" />-->
                    </div>
                  </div>
                  <div class="col">
                    <div data-mdb-input-init class="form-group">
                        <label class="form-label" >Price</label>
                        <input type="text" name="price" class="form-control" />
                      
                    </div>
                  </div>
                </div>
                <div class="row mb-4">
                    <div class="col">
                    <div data-mdb-input-init class="form-group">
                        <label class="form-label" for="form6Example2">Discount</label>
                        <input type="text" name="discount" class="form-control" />
                      
                    </div>
                  </div>
                  <div class="col">
                    <div data-mdb-input-init class="form-group">
                      <label class="form-label" for="form6Example1">Quantity</label>

                      <input type="text" name="quantity" class="form-control" />
                    </div>
                  </div>
                  
                </div>
                

                <!-- Text input -->
                <div data-mdb-input-init class="form-group mb-4">
                   <label class="form-label" for="form6Example4">Image</label>
                   <input type="text" name="image" class="form-control" />
                  
                </div>


                <!-- Message input -->
                <div data-mdb-input-init class="form-group mb-4">
                  <label class="form-label">Description</label>
                  <textarea class="form-control" name="description" rows="4"></textarea>
                 
                </div>

               

                <!-- Submit button -->
                <button data-mdb-ripple-init type="submit" class="btn btn-primary btn-block mb-4">Add</button>
              </form>
            </div>
    </body>
</html>