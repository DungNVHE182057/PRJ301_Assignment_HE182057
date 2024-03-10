<%-- 
    Document   : update
    Created on : Mar 3, 2024, 5:06:15 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop - Update a Product</title>
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
    </head>
    <body>
        <!-- Jumbotron -->
            <div class="p-3 text-center bg-white border-bottom">
              <div class="container">
                <div class="row gy-3 d-flex justify-content-between">
                  <!-- Left elements -->
                  <div class="col-lg-2 col-sm-4 col-4">
                    <a href="" target="_blank" class="float-start">
                        <img src="image/base-battery-logo.png" height="35" />
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
            
            <c:set var="p" value="${requestScope.updateProduct}" />
        
        
        <div class="container">
            <header class="my-4">
                <h3>Update a product</h3>
            </header>
            <form action="updateProduct" method="post">
                
                <!-- Text input -->
                <div data-mdb-input-init class="form-group mb-4">
                    <label class="form-label" >Product name</label>
                    <input type="text" name="name" class="form-control" value="${p.pname}"/>
                  
                </div>
                <!-- 2 column grid layout with text inputs for the first and last names -->
                
                <div class="row mb-4">
                  <div class="col">
                    <div data-mdb-input-init class="form-group">
                      <label class="form-label" >Category</label>
                      <select class="form-select" aria-label="Default select example" name="category">
                          <option selected>Select a category</option>
                          <option value="1" >Clothes</option>
                          <option value="2" >Shoes</option>
                          <option value="3" >Sport</option>
                          <option value="4" >Technology</option>
                          <option value="5" >Accessories</option>
                          <option value="6" >Perfume</option>
                          <option value="7" >Others</option>

                        </select>
                      <!--<input type="text" id="form6Example1" class="form-control" />-->
                    </div>
                  </div>
                  <div class="col">
                    <div data-mdb-input-init class="form-group">
                        <label class="form-label" >Price</label>
                        <input type="text" name="price" class="form-control" value="${p.price}"/>
                      
                    </div>
                  </div>
                </div>
                <div class="row mb-4">
                    <div class="col">
                    <div data-mdb-input-init class="form-group">
                        <label class="form-label" >Discount</label>
                        <input type="text" name="discount" class="form-control" value="${p.discount}"/>
                      
                    </div>
                  </div>
                  <div class="col">
                    <div data-mdb-input-init class="form-group">
                      <label class="form-label" >Quantity</label>

                      <input type="text" name="quantity" class="form-control" value="${p.inStock}"/>
                    </div>
                  </div>
                  
                </div>
                

                <!-- Text input -->
                <div data-mdb-input-init class="form-group mb-4">
                   <label class="form-label" >Image</label>
                   <input type="text" name="image" class="form-control" value="${p.imageLink}"/>
                  
                </div>


                <!-- Message input -->
                <div data-mdb-input-init class="form-group mb-4">
                  <label class="form-label">Description</label>
                  <textarea class="form-control" name="description" rows="4" placeholder="${p.description}"></textarea>
                 
                </div>

               
                  <input type="text" name="id" class="form-control" value="${p.id}" style="display: none"/>
                <!-- Submit button -->
                <button data-mdb-ripple-init type="submit" class="btn btn-primary btn-block mb-4">Update</button>
              </form>
            </div>
    </body>
</html>
