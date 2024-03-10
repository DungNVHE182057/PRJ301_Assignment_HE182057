<%-- 
    Document   : admin
    Created on : Feb 24, 2024, 12:30:19 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
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
    <style>
        
    </style>
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
        <!-- Begin Page Content -->
                <div class="container">

                    

                    <!-- Content Row -->
                    <div class="row">
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Total Revenue</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">$${requestScope.revenue}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Number of Users</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${requestScope.userCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                           <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Number of Shops
                                            </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${requestScope.shopCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Orders Count</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${requestScope.orderCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->

                    
<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Account Management</h1>
                    <form action="admin" method="get">
                        <select class="form-select" aria-label="Default select example" name="role" onchange="this.parentNode.submit()">
                            <option selected>Select Account Roles</option>
                            <option value ="4">All</option>
                            <option value="1">User</option>
                            <option value="2">Shop</option>
                        </select>
                        
                    </form>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Username</th>
                                            <th>Role</th>
                                            <th>Password</th>
                                            <th>Action</th>
                                            <th>Note</th>
                                            
                                            
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <c:forEach items="${listUsers}" var="u">
                                            <tr>
                                                <td>${u.id}</td>
                                                <td>${u.username}</td>
                                                
                                                <td>${u.role_id==1? "user":"shop"}</td>
                                                <td>
                                                    <span class="form-outline mb-0">
                                                        <input id="${u.username}" type="password" value="${u.password}" class="form-control bg-light border"/>
                                                    </span>
                                                    
                                                        
                                                    
                                                </td>
                                                <td>
                                                    <button type="submit" class="btn  btn-primary btn-secondary shadow-0 toggleBtn" onclick="togglePass('${u.username}',this)">
                                                      Show
                                                    </button>
                                                </td>

                                                
                                                
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
                <div class="row">   
                    <!-- Content Row -->
                    <div class="col-lg-7 mb-4">

        <!-- Project Card Example -->
                            <div class="card shadow mb-4">




                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Diamond Users</h6>
                                </div>




                                <div class="card-body">


                                    <div class="table-responsive project-list">
                                        <table class="table project-table table-centered table-nowrap">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Rank</th>
                                                    <th scope="col">User</th>
                                                    <th scope="col">Orders</th>
                                                    <th scope="col">Total Money</th>

                                                </tr>
                                            </thead>
                                            <tbody>

                                                <c:forEach items="${topUsers}" var="u" varStatus="loop">
                                                <tr>
                                                    <th scope="row">${loop.index + 1}</th>
                                                    <td>${u.username}</td>
                                                    <td>${u.orders}</td>
                                                    <td>$${u.total}</td>      
                                                </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                   </div>             



                                </div>
                            </div>
        </div>
                            <!-- Donut Chart -->
                            <div class="col-lg-5 card">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Best Seller Products</h6>
                                </div>
                                <div class="card-body">
                                <div class="table-responsive project-list">
                                        <table class="table project-table table-centered table-nowrap">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Rank</th>
                                                    <th scope="col">Product</th>
                                                    <th scope="col">Sold</th>
                                                    

                                                </tr>
                                            </thead>
                                            <tbody>

                                                <c:forEach items="${topProducts}" var="u" varStatus="loop">
                                                <tr>
                                                    <th scope="row">${loop.index + 1}</th>
                                                    <td>${u.pname}</td>
                                                    <td>${u.sold}</td>
                                                       
                                                </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                   </div>  
                                </div>
                            </div>
                    
    </div>     
<!-- Begin Page Content -->
                
                        
                        <%@include file="footer.jsp" %>

    
    <!-- end row -->
                <script
          type="text/javascript"
          src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.umd.min.js"
          >
              
        </script>
        
        <script>
            function togglePass(inputId,button) {
                var x = document.getElementById(inputId);
                if (x.type === "password") {
                  x.type = "text";
                  button.innerText = "Hide";
                  button.classList.remove("btn-secondary");
                } else {
                  x.type = "password";
                  button.innerText = "Show";
                  button.classList.add("btn-secondary");
                }
              }
              
              

        </script>
        <script src="js/site.js"></script>
    </body>
</html>
