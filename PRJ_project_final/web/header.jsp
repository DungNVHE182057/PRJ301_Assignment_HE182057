<%-- 
    Document   : header
    Created on : Mar 2, 2024, 8:34:51 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <!-- Jumbotron -->
            <div class="p-3 text-center bg-white border-bottom">
              <div class="container">
                <div class="row gy-3">
                  <!-- Left elements -->
                  <div class="col-lg-2 col-sm-4 col-4">
                    <a href="" target="_blank" class="float-start">
                        <img src="image/base-battery-logo.png" height="35" class="float-start"/>
                    </a>
                  </div>
                  <!-- Left elements -->

                  <!-- Center elements -->
                  <div class="order-lg-last col-lg-5 col-sm-8 col-8">
                    <div class="d-flex float-end">
                        <%--<c:set var="u" value="${sessionScope.user}"/>--%>
                      <c:choose>
                            <c:when test="${sessionScope.user.role_id==1}">
                                
                                <button class="mx-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank" onclick="viewCart()">
                                    <i class="fas fa-shopping-cart m-1 me-md-2"></i>
                                    <p class="d-none d-md-block mb-0">My cart</p>
                                </button>
                                
                                <button class="mx-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank" onclick="logOut()">
                                    <i class="fa fa-sign-out m-1 me-md-2"></i>
                                    <p class="d-none d-md-block mb-0">Log out</p>
                                </button>
                            </c:when> 
                            <c:when test="${sessionScope.user.role_id==2}">
                                <button class="mx-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank" onclick='window.location="shop"'>
                                    <i class="fa fa-sign-out m-1 me-md-2"></i>
                                    <p class="d-none d-md-block mb-0">My Shop</p>
                                </button>
                                <button class="mx-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank" onclick="viewCart()">
                                    <i class="fas fa-shopping-cart m-1 me-md-2"></i>
                                    <p class="d-none d-md-block mb-0">My Cart</p>
                                </button>
                                
                                <button class="mx-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank" onclick="logOut()">
                                    <i class="fa fa-sign-out m-1 me-md-2"></i>
                                    <p class="d-none d-md-block mb-0">Log out</p>
                                </button>
                            </c:when> 
                            <c:otherwise>

                                <button class="mx-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank" onclick="logIn()">
                                    <i class="fas fa-user-alt m-1 me-md-2"></i>
                                    <p class="d-none d-md-block mb-0">Log in</p>
                                </button>
                                <button class="mx-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank" onclick="register()">
                        
                                    <i class="fa-regular fa-registered m-1 me-md-2"></i>
                                    <p class="d-none d-md-block mb-0">Register</p>
                                </button>
                            </c:otherwise>
                        </c:choose>
                    </div>
                  </div>
                  <!-- Center elements -->

                  <!-- Right elements -->
                  <div class="col-lg-5 col-md-12 col-12">
                    <div class="input-group float-center">
                        <form action="list" style="display: flex;
    width: 100%;">
                            <div class="form-outline mb-0">
                                <input type="text" name="searchKey" class="form-control bg-light border" placeholder="Search for Products" style=""/>
                          <label class="form-label" for="form1">Search</label>
                        </div>
                        <button type="submit" class="btn btn-primary shadow-0">
                          <i class="fas fa-search"></i>
                        </button>
                        </form>
                        
                    </div>
                  </div>
                  <!-- Right elements -->
                </div>
              </div>
            </div>
            <!-- Jumbotron -->
    </body>
</html>
