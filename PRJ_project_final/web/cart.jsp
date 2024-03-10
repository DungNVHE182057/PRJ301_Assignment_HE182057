<%-- 
    Document   : newjsp
    Created on : Feb 24, 2024, 6:58:38 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
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
        <section class="h-100 h-custom" style="background-color: #d2c9ff;">
            <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12">
                  <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                    <div class="card-body p-0">
                      <div class="row g-0">
                        <div class="col-lg-8">
                          <div class="p-5">
                            <div class="d-flex justify-content-between align-items-center mb-5">
                              <h1 class="fw-bold mb-0 text-black">Shopping Cart</h1>
                              <h6 class="mb-0 text-muted">3 items</h6>
                            </div>
                            
                              <c:forEach var="c" items="${requestScope.cart}">
                                <hr class="my-4">
                                <div class="row mb-4 d-flex justify-content-between align-items-center">
                                    <input type="checkbox" value="${c.price}" class="col-sm-1" data-id="${c.id}"/>

                                   <div class="col-md-2 col-lg-2 col-xl-2" style="width: 10%; padding-bottom: 10%; position: relative">
                                    <img
                                      src="${c.imageLink}"
                                      class="img-fluid rounded-3" style="width: 100%; height: 100%; position: absolute">
                                    
                                  </div>
                                  <div class="col-md-3 col-lg-3 col-xl-3">
                                    <h6 class="text-muted">${c.pname}</h6>
                                    <!--<h6 class="text-black mb-0">Cotton T-shirt</h6>-->
                                  </div>
                                  <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                    <button class="btn btn-link px-2"
                                      onclick="this.parentNode.querySelector('input[type=number]').stepDown(); this.parentNode.querySelector('input[type=number]').dispatchEvent(new Event('change'))">
                                        
                                      <i class="fas fa-minus down"></i>
                                    </button>

                                    <input min="0" name="quantity" value="1" type="number"
                                      class="form-control form-control-sm" />

                                    <button class="btn btn-link px-2"
                                      onclick="this.parentNode.querySelector('input[type=number]').stepUp(); this.parentNode.querySelector('input[type=number]').dispatchEvent(new Event('change'))">
                                      <i class="fas fa-plus up"></i>
                                    </button>
                                  </div>
                                  <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                    <h6 class="mb-0">$${c.price}</h6>
                                  </div>
                                  <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                    <a href="delcart?id=${c.id}" class="text-muted"><i class="fas fa-times"></i></a>
                                  </div>
                                </div>
                            </c:forEach>

                            <hr class="my-4">

                            <div class="pt-5">
                              <h6 class="mb-0"><a href="home" class="text-body"><i
                                    class="fas fa-long-arrow-alt-left me-2"></i>Back to shop</a></h6>
                            </div>
                          </div>
                        </div>
                          <div class="col-lg-4" style="background: lightgrey">
                            <div class="p-5">
                            <h3 class="fw-bold mb-5 mt-2 pt-1">Summary</h3>
                            
                            
                            
                            

                            <hr class="my-4">

                            <div class="d-flex justify-content-between mb-5">
                              <h5 class="text-uppercase">Total Price </h5>
                              <h5 id="total">$ 0</h5>
                            </div>
                            
                            

                            <button type="button" class="btn btn-dark btn-block btn-lg" onclick="purchase()"
                              data-mdb-ripple-color="dark">Purchase</button>

                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
        <script>
            const checkboxes = document.querySelectorAll('input[type="checkbox"]');
            const totalDisplay = document.getElementById('total');
            const multipliers = document.querySelectorAll('input[type="number"]');

            

            
            function calculateTotal() {
                let total = 0;
                checkboxes.forEach(function(checkbox, index) {
                    if (checkbox.checked) {
                        total += parseFloat(checkbox.value) * parseInt(multipliers[index].value);
                    }
                });
                
                totalDisplay.textContent = "$" + total.toFixed(2);
                return total.toFixed(2);
            }

            checkboxes.forEach(function(checkbox, index) {
                checkbox.addEventListener('change', calculateTotal);
            });

            multipliers.forEach(function(multiplier, index) {
                multiplier.addEventListener('change', function() {
                    if (checkboxes[index].checked) {
                        calculateTotal();
                    }                    
                });
            });

            function purchase(){
                

                window.location = "purchase?total="+calculateTotal();
            }


        </script>
    </body>
</html>
