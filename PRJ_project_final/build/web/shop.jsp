<%-- 
    Document   : shop
    Created on : Feb 27, 2024, 11:46:39 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop Page</title>
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
                      
                      
                        <button class="mx-1 border rounded py-1 px-3 nav-link d-flex align-items-center" target="_blank" onclick="window.location='home'">
                            <i class="fa fa-sign-out m-1 me-md-2"></i>
                            <p class="d-none d-md-block mb-0">Shopping</p>
                        </button>        
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
            
             <!-- intro -->
          <section class="pt-3">
            <div class="container">
              <div class="row gx-3">
                <main class="col-lg-9">
                  <div class="card-banner p-5 bg-primary rounded-5" style="height: 350px;">
                    <div style="max-width: 500px;">
                      <h2 class="text-white">
                        Wanna buy something? <br />
                        You can shop like a normal user!!!
                      </h2>
                      <p class="text-white">No matter how far along you are in your sophistication as an amateur astronomer, there is always one.</p>
                      <a href="home" class="btn btn-light shadow-0 text-primary"> Shopping now </a>
                    </div>
                  </div>
                </main>
                <aside class="col-lg-3">
                  <div class="card-banner h-100 rounded-5" style="background-color: #f87217;">
                    <div class="card-body text-center pb-5">
                      <h5 class="pt-5 text-white">About us</h5>
                      <p class="text-white">More information about this project</p>
                      <a href="#footer" class="btn btn-outline-light"> View more </a>
                    </div>
                  </div>
                </aside>
              </div>
              <!-- row //end -->
            </div>
            <!-- container end.// -->
          </section>
          <!-- intro -->
            <section>
            <div class="container my-5">
              <header class="mb-4 d-flex justify-content-between">
                <h3>My products</h3>
                <button onclick = "window.location = 'addProduct'" class="btn btn-primary shadow-0 me-1">
                    <i class="fa-xl fa-fw fa-solid fa-circle-plus" style="margin-right: 8px"></i>
                    <span>Add a new product</span>
                </button>
              </header>
                <div class="row">
                    <c:forEach items="${requestScope.myProducts}" var="p">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card my-2">
                              <a href="detail?id=${p.id}" class="" style="width: 100%; padding-bottom: 100%; position: relative">
                                <img src="${p.imageLink}" class="card-img-top rounded-2 " style="width: 100%; height: 100%; position: absolute"/>
                              </a>
                              <div class="card-body p-0 pt-2">

                                    
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
                                    
                                    
                                    
                                <div class="card-footer d-flex align-items-end  pt-1 px-0 mx-2 pb-0 mt-auto mb-2">
                                    <button onclick = 'updateProduct("${p.id}")' class="btn btn-primary shadow-0 me-1">Update</button>
                                    <button onclick = 'deleteProduct("${p.id}")' class="btn btn-danger shadow-0 me-1">Delete</button>

                                  </div>    
                                <!--<a href="#!" class="btn btn-light border px-2 pt-2 float-end icon-hover"><i class="fas fa-heart fa-lg px-1 text-secondary"></i> Save</a>-->
                              </div>
                            </div>
                          </div>

                    </c:forEach>
                </div>
                
                
             
                  
            </div>
          </section>
                  <%@include file="footer.jsp" %>

          <script
          type="text/javascript"
          src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.umd.min.js"
          >
              
        </script>
        <script src="js/site.js"></script>
    </body>
</html>
