<%-- 
    Document   : list
    Created on : Feb 23, 2024, 6:17:39 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Page</title>
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
        <link rel="stylesheet" href="css/form.css"/>
    </head>
    <body>
        <header>
           <%@include file="header.jsp" %>

            <!-- Heading -->
            <div class="bg-primary mb-4">
              <div class="container py-4">
                  <h3 class="text-white mt-2">${requestScope.category}</h3>
                <!-- Breadcrumb -->
                <nav class="d-flex mb-2">
                  <h6 class="mb-0">
                    <a href="home" class="text-white-50">Home</a>
                    <span class="text-white-50 mx-2"> > </span>
                    <a href="" class="text-white-50">Category</a>
                    <span class="text-white-50 mx-2"> > </span>
                    <a href="" class="text-white"><u>${requestScope.category}</u></a>
                  </h6>
                </nav>
                <!-- Breadcrumb -->
              </div>
            </div>
            <!-- Heading -->
          </header>

          <!-- sidebar + content -->
          <section class="">
            <div class="container">
              <div class="row">
                <!-- sidebar -->
                <div class="col-lg-3 bg-secondary">
                   

                </div>
                <!-- sidebar -->
                <!-- content -->
                <div class="col-lg-9">


                  <div class="row">
                      <c:forEach items="${requestScope.listFound}" var="p">
                        <div class="col-lg-4 col-md-6 col-sm-6 d-flex">
                          <div class="card w-100 my-2">
                            <img src="${p.imageLink}" class="card-img-top" style="width: 100%; height: 100%"/>
                            <div class="card-body d-flex flex-column">
<!--                              <div class="d-flex flex-row">
                                <h5 class="mb-1 me-1">$${p.price}</h5>
                                
                              </div>-->
                                    <c:choose >
                                        <c:when test="${p.discount == 0}">
                                            <div style="height: 80px">
                                                <h5 class="card-title mx-2">$${p.price}</h5>
                                                <p class="card-text mb-0 mx-2">${p.pname}</p>
                                                <p class="text-muted">

                                                </p>   
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div style="height: 80px">
                                                <c:set var="fr" value="${p.price*(100-p.discount)/100}" />
                                                <h5 class="card-title mx-2 d-inline-block">$<fmt:formatNumber value="${fr}" pattern="#,##0.00" /> </h5>
                                                <del class="d-inline-block">$${p.price}</del>
                                                <p class="card-text mb-0 mx-2">${p.pname}</p>
                                                <p class="text-muted">

                                                </p>   
                                            </div>
                                        </c:otherwise>
                                    </c:choose>    






                              <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                               <button onclick = 'addToCart("${p.id}")' class="btn btn-primary shadow-0 me-1">Add to cart</button>
                                <a href="detail?id=${p.id}" class="btn btn-light border icon-hover px-2 pt-2">More Details</a>
                              </div>
                            </div>
                          </div>
                        </div>
                    </c:forEach>  
                    
                    
                    
                    
                  </div>

                  <hr />

                  <!-- Pagination -->
                  
                </div>
              </div>
            </div>            
          </section>
          <!-- sidebar + content -->

          <%@include file="footer.jsp" %>
          
          
          <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.umd.min.js"
            >  
        </script>
        <script src="js/site.js"></script>
    </body>
</html>
