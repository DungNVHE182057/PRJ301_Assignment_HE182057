<%-- 
    Document   : home
    Created on : Feb 20, 2024, 10:45:57 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
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
        <link rel="stylesheet" href="css/form.css"/>
        <link rel="stylesheet" href="css/toast.css"/>


    </head>
    <body>


        <header>
            <%@include file="header.jsp" %>

            
          </header>

          <!-- intro -->
          <section class="pt-3">
            <div class="container">
              <div class="row gx-3">
                <main class="col-lg-9">
                  <div class="card-banner p-5 bg-primary rounded-5" style="height: 350px;">
                    <div style="max-width: 500px;">
                      <h2 class="text-white">
                        Great products with <br />
                        best deals
                      </h2>
                      <p class="text-white">No matter how far along you are in your sophistication as an amateur astronomer, there is always one.</p>
                      <a href="#productList" class="btn btn-light shadow-0 text-primary"> View more </a>
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

          <!-- category -->
          <section>
            <div class="container pt-5">
                <header class="mb-4">
                <h3>Categories</h3>
              </header>
              <nav class="row gy-4">
                <div class="col-lg-6 col-md-12">
                  <div class="row">
                    
                    <div class="col-3">
                      <a href="list?cate=Clothes" class="text-center d-flex flex-column justify-content-center">
                        <button type="button" class="btn btn-outline-secondary mx-auto p-3 mb-2" data-mdb-ripple-color="dark">
                          <i class="fa-solid fa-shirt fa-xl fa-fw"></i>
                        </button>
                        <div class="text-dark">Clothes</div>
                      </a>
                    </div>
                    <div class="col-3">
                      <a href="list?cate=Shoes" class="text-center d-flex flex-column justify-content-center">
                        <button type="button" class="btn btn-outline-secondary mx-auto p-3 mb-2" data-mdb-ripple-color="dark">
                          <i class="fa-solid fa-shoe-prints fa-xl fa-fw"></i>
                        </button>
                        <div class="text-dark">Shoes</div>
                      </a>
                    </div>
                     <div class="col-3">
                      <a href="list?cate=Sport" class="text-center d-flex flex-column justify-content-center">
                        <button type="button" class="btn btn-outline-secondary mx-auto p-3 mb-2" data-mdb-ripple-color="dark">
                          <i class="fa-solid fa-volleyball fa-xl fa-fw"></i>
                        </button>
                        <div class="text-dark">Sport</div>
                      </a>
                    </div>
                    <div class="col-3">
                      <a href="list?cate=Technology" class="text-center d-flex flex-column justify-content-center">
                        <button type="button" class="btn btn-outline-secondary mx-auto p-3 mb-2" data-mdb-ripple-color="dark">
                          <i class="fa-solid fa-microchip fa-xl fa-fw"></i>
                        </button>
                        <div class="text-dark">Technology</div>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 col-md-12">
                  <div class="row">
                    <div class="col-3">
                        <a href="list?cate=Accessories" class="text-center d-flex flex-column justify-content-center">
                        <button type="button" class="btn btn-outline-secondary mx-auto p-3 mb-2" data-mdb-ripple-color="dark">
                          <i class="fa-solid fa-wrench fa-xl fa-fw"></i>
                        </button>
                        <div class="text-dark">Accessories</div>
                      </a>
                    </div>
                    <div class="col-3">
                      <a href="list?cate=Perfume" class="text-center d-flex flex-column justify-content-center">
                        <button type="button" class="btn btn-outline-secondary mx-auto p-3 mb-2" data-mdb-ripple-color="dark">
                          <i class="fa-solid fa-droplet fa-xl fa-fw"></i>
                        </button>
                        <div class="text-dark">Perfume</div>
                      </a>
                    </div>
                    <div class="col-3">
                      <a href="list?cate=Furniture" class="text-center d-flex flex-column justify-content-center">
                        <button type="button" class="btn btn-outline-secondary mx-auto p-3 mb-2" data-mdb-ripple-color="dark">
                          <i class="fa-solid fa-chair fa-xl fa-fw"></i>
                        </button>
                        <div class="text-dark">Furniture</div>
                      </a>
                    </div>
                    <div class="col-3">
                      <a href="list?cate=Others" class="text-center d-flex flex-column justify-content-center">
                        <button type="button" class="btn btn-outline-secondary mx-auto p-3 mb-2" data-mdb-ripple-color="dark">
                         <i class="fa-solid fa-bars fa-xl fa-fw"></i>
                        </button>
                        <div class="text-dark">Others</div>
                      </a>
                    </div>
                </div>
                
              </nav>
            </div>
          </section>
          <!-- category -->

          <!-- Products -->
          <section>
              <div class="container my-5" id="productList">
              <header class="mb-4">
                <h3>New products</h3>
              </header>
                <div class="row">
                    <c:forEach items="${requestScope.productList}" var="p">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="card w-100 my-2 ">
                              <a href="detail?id=${p.id}" class="" style="width: 100%; padding-bottom: 100%; position: relative">
                                <img src="${p.imageLink}" class="card-img-top rounded-2 " style="width: 100%; height: 100%; position: absolute"/>
                              </a>
                              <div class="card-body d-flex flex-column">
                                
                               
                                    
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
                                    
                                    
                                    
                                <div class="card-footer d-flex align-items-end justify-content-around pt-3 px-0 pb-0 mt-auto">
                                    <button onclick = 'addToCart("${p.id}")' class="btn btn-primary shadow-0 me-1">Add to cart</button>
                                    <a href="detail?id=${p.id}" class="btn btn-light border icon-hover px-2 pt-2">More Details</a>
                                  </div> 
                                  
                                <!--<a href="#!" class="btn btn-light border px-2 pt-2 float-end icon-hover"><i class="fas fa-heart fa-lg px-1 text-secondary"></i> Save</a>-->
                              </div>
                            </div>
                          </div>

                    </c:forEach>
                </div>
                
                
             
                  
            </div>
          </section>
          <!-- Recommended -->

          <!-- Footer -->
          <%@include file="footer.jsp" %>
          <!-- Footer -->
          <!-- MDB -->
        <script
          type="text/javascript"
          src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.umd.min.js"
          >
              
        </script>
        <script src="js/site.js"></script>
    </body>
    
</html>
