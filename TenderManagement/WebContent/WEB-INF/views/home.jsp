<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Home</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- <link rel='stylesheet' type='text/css' media='screen' href='stylesheets/main.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='stylesheets/layout.css'> -->
<%--     <link  rel="stylesheet" href="<c:url value='/resources/stylesheets/main.css'/>"> --%>
    <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="<c:url value='/resources/scripts/main.js'/>"></script>
  </head>
<body>
    <header>
        <h1 class="text-primary" style="margin-left: 1rem;">Tender Box</h1>
    </header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <a class="navbar-brand" href="home"><i class="fa fa-home"></i>&nbsp&nbsp&nbsp Tenders</a>
        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="aboutus">About Us <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login">Login</a>
              </li>
            </ul>
        </div>      
    </nav>
</body>
</html>