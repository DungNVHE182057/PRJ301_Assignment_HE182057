<%-- 
    Document   : home
    Created on : Feb 20, 2024, 10:45:57 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
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
    </head>
    <body>
        <section class="vh-100 bg-info" >
            <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-10">
                  <div class="card" style="border-radius: 1rem;">
                    <div class="row g-0">
                      <div class="col-md-6 col-lg-5 d-none d-md-block">
                        <img src="https://th.bing.com/th/id/OIP.S0Rl8BNN7u2UvA8CyiIWPgHaIU?rs=1&pid=ImgDetMain"
                          alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem; height: 100%;" />
                      </div>
                      <div class="col-md-6 col-lg-7 d-flex align-items-center">
                        <div class="card-body p-4 p-lg-5 text-black">
                            

                            <form action="login" method="post">

                            <div class="d-flex align-items-center mb-3 pb-1">
                              <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                              <span class="h1 fw-bold mb-0">Men's Base</span>
                            </div>

                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>
                            <p style="color: red">
                                ${requestScope.loginError}
                            </p>
                            <div class="form-outline mb-4">
                                <input type="text" name="username" class="form-control form-control-lg" placeholder="Username"/>
                              <label class="form-label" >Username</label>
                            </div>

                            <div class="form-outline mb-4">
                                <input type="password" name="password" class="form-control form-control-lg" placeholder="Password"/>
                              <label class="form-label" >Password</label>
                            </div>
                            
                            <div class="pt-1 mb-4 mt-3">
                              <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                            </div>

                            <a class="small text-muted" href="#!">Forgot password?</a>
                            <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="register"
                                style="color: #393f81; font-weight: 600">Register here</a></p>
                            
                          </form>

                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
        <!-- MDB -->
        <script
          type="text/javascript"
          src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.umd.min.js"
        ></script>
    </body>
</html>

