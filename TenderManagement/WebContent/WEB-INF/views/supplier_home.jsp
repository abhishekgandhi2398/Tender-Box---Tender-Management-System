<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Supplier Home</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link  rel="stylesheet" href="<c:url value='/resources/stylesheets/layout.css'/>">
    <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="<c:url value='/resources/scripts/main.js'/>"></script>
  </head>
<body>
  
  <header>
    <h1 class="text-primary" style="margin-left: 1rem;">Tender Box</h1>
  </header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="collapse navbar-collapse" id="navbarColor01">
          <ul class="navbar-nav mr-auto">
            <li  class="nav-item">
              <a class="navbar-brand" href="home.html"><i class="fa fa-home"></i>&nbsp&nbsp&nbsp Tenders</a>
            </li>
              <li class="nav-item active">
              <a class="nav-link" href="#">Dashboard</a>
            </li>
          </ul>  
    </nav>
    <aside>
      <div class="list-group">
          <button onclick="loadSupplierDashBoard()" class="list-group-item  list-group-item-action d-flex justify-content-between align-items-center">
            <i class="fa fa-home" style="font-size:20px;"></i>
            <!-- <a href="admin_home.html" style="color:inherit;text-decoration: none"> Home</a> -->
            Home</button>
        <button class="dropdown-btn list-group-item  list-group-item-action d-flex justify-content-between align-items-center"> <span><i class="fa fa-bars" style="font-size:20px;"></i></span>
          Tenders
        </button>
        <div class="dropdown-container">
          <ul>
          <li><a href="#">Link 1</a></li>
          <li><a href="#">Link 1</a></li>
          <li><a href="#">Link 1</a></li>
        </ul>
        </div>
        <a href="home" class="dropdown-btn list-group-item  list-group-item-action d-flex justify-content-between align-items-center" onclick="logout()">
          <span><i class="fa fa-power-off" style="font-size:20px;"></i></span>
              Logout
        </a>
        
      </div>

    </aside>
    <section id="section">
      <path >
        <lable class=" alert alert-primary list-group">
        <strong style="padding-left:15px;">Supplier Home</strong style="padding-left:15px;">
        </lable>
      </path>
      <contentBox id="contentBox"> </contentBox>
    </section> 
    <script>

    window.onload=loadSupplierDashBoard;     
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}
    </script>
</body>
</html>