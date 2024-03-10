/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function logOut() {
    if(confirm("Are you sure to log out?")){
        window.location= "logout";
    }
}
function logIn(){
    window.location= "login";

}
function register(){
    window.location= "register";

}
function addToCart(id){
    
    window.location= "add?id="+id;
    
}
function viewCart(){
    window.location= "cart";
}
function viewWishlist(){
    window.location="cart";
}
function updateProduct(id){
    window.location = "updateProduct?id="+id;
}
function deleteProduct(id){
    if(confirm("Are you sure to delete this product")){
        window.location = "deleteProduct?id="+id;
    }
}