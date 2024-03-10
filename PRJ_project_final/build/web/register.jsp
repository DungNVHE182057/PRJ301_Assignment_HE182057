<%-- 
    Document   : register
    Created on : Feb 21, 2024, 7:01:47 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <section class="vh-100 bg-image bg-info">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
              <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                  <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="card" style="border-radius: 15px;">
                      <div class="card-body p-5">
                        <h2 class="text-uppercase text-center mb-5">Create an account</h2>
                        <p style="color: red">
                            ${requestScope.uerror}
                        </p>
                        <p style="color: red">
                            ${requestScope.perror}
                        </p>
                        <form action="register" method="post">

                          <div class="form-outline mb-4">
                            <input type="text" name="username" class="form-control form-control-lg" placeholder="Username"/>
                            <label class="form-label" for="username">User Name</label>
                          </div>

                       

                          <div class="form-outline mb-4">
                            <input type="password" name="password" class="form-control form-control-lg" placeholder="Password"/>
                            <label class="form-label" for="password">Password</label>
                          </div>

                          <div class="form-outline mb-4">
                            <input type="password" name="re-password" class="form-control form-control-lg" placeholder="Repeat your password"/>
                            <label class="form-label" for="re-password">Repeat your password</label>
                          </div>
                            
                            <h6 class="text-center">Register as: </h6>
                            <div class="text-center">
                                <div class="form-check form-check-inline my-2 mx-3">
                                  <input class="form-check-input" type="radio" name="role"
                                    value="1" checked /> User Account
                                </div>

                                <div class="form-check form-check-inline mx-3">
                                  <input class="form-check-input" type="radio" name="role" 
                                    value="2" />Shop Account
                                </div>
                            </div>
                          

                          <div class="d-flex justify-content-center mt-3">
                            <button type="submit"
                              class="btn btn-info btn-block btn-lg gradient-custom-4 text-black">Register</button>
                          </div>

                          <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="login"
                              class="fw-bold text-body"><u>Login here</u></a></p>

                        </form>

                        

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
