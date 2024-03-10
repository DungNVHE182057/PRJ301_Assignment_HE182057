<%-- 
    Document   : detail
    Created on : Feb 23, 2024, 8:15:38 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Page</title>
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
        <%@include file="header.jsp" %>
        <c:set var="p" value="${requestScope.detail}"/>
        <!--Main layout-->
        <main class="mt-5 pt-4">
            <div class="container mt-5">
                <!--Grid row-->
                <div class="row d-flex justify-content-between">
                    <!--Grid column-->
                    <div class="col-md-6 mb-4" style="width: 40%; padding-bottom: 40%; position: relative;">
                        <img src="${p.imageLink}" class="img-fluid" alt="" style="width: 100%; height: 100%; position: absolute"/>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6 mb-4">
                        <!--Content-->
                        <div class="p-4">
                            <div class="mb-3">
                                <div class="my-5">
                                    <h6 class="mb-0"><a href="home" class="text-body"><i
                                          class="fas fa-long-arrow-alt-left me-2"></i>Back to shop</a></h6>
                                  </div>
                                <a href="">
                                    <span class="badge bg-dark me-1">Category 2</span>
                                </a>
                                <a href="">
                                    <span class="badge bg-info me-1">New</span>
                                </a>
                                <a href="">
                                    <span class="badge bg-danger me-1">Bestseller</span>
                                </a>
                            </div>
                            
                            
                            <c:choose >
                                <c:when test="${p.discount == 0}">
                                    <p class="lead">
                                
                                <span>$${p.price}</span>
                            </p>
                                </c:when>
                                <c:otherwise>
                                    
                                        
                                    <c:set var="fr" value="${p.price*(100-p.discount)/100}" />    
                                    <p class="lead">
                                        <span class="me-1">
                                            <del>$${p.price}</del>
                                        </span>
                                        <span class="text-danger">$<fmt:formatNumber value="${fr}" pattern="#,##0.00" /></span>
                                    </p>
                                </c:otherwise>
                            </c:choose>   

                            
                            
                            

                            <strong><p style="font-size: 20px;">Description</p></strong>

                            <p>${p.description}</p>

                            
                                
                            <button class="btn btn-primary ms-1" onclick="addToCart(${p.id})">
                                Add to cart
                                <i class="fas fa-shopping-cart ms-1"></i>
                            </button>
                                
                                
                            
                        </div>
                        <!--Content-->
                    </div>
                    <!--Grid column-->
                </div>
                <!--Grid row-->

                <hr />



        <%@include file="footer.jsp" %>
        
        
        <script src="js/site.js"></script>
    </body>
</html>
