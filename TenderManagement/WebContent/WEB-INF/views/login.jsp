<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html lang="en">
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>
<link rel='stylesheet' type='text/css' media='screen' href='stylesheets/main.css'>
<link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	.login-form {
		width: 340px;
		margin: 50px auto;
	}
    .login-form form {        
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }


</style>    
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
                <a class="nav-link" href="#">About Us <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login">Login</a>
              </li>
            </ul>
        </div>      
    </nav>
<div class="login-form">
    <form:form action="validateUser" method="post">
        
        <h2 class="text-center">Sign In</h2>   
        <div class="form-group">
        	<div class="form-group">
                <form:input type="text" class="form-control" placeholder="Enter Email Address" id="inputDefault" path="username"/>
            </div>
        </div>
		<div class="form-group">
            <div class="form-group">
                <form:input type="password" class="form-control" placeholder="Enter Password" id="inputDefault" path="password"/>
            </div>
        </div>       
        <div class="form-group">
            <select class="custom-select" required="required" name="profileType">
              <option selected="">Select the profile</option>
              <option value="1">Administrator</option>
              <option value="2">Employee</option>
              <option value="3">Supplier</option>
            </select>
          </div> 
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block"><big>Log in</big></button>
        </div>
        <div class="clearfix">
            <a href="supplyregister"  class="text-justify">New Supplier? Register Yourself here</a>
        </div>        
    </form:form>
   <!-- <p class="text-center small">Don't have an account! <a href="employee_register.html">Sign up here</a>.</p>-->
</div>
</body>
</html> 