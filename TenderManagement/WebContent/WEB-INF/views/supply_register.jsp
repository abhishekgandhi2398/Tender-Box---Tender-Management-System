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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

        <style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p,.bootstrap-iso .h2, .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button, .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}</style>
    
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
 

	<div class="bootstrap-iso">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<form:form class="form-horizontal" method="post" action="supplierSave">
						<h2 class="text-center">Contractor Registration</h2>
						<div class="form-group ">
							<label class="control-label col-sm-2 requiredField" for="name">
								Contractor Name <span class="asteriskField"> * </span>
							</label>
							<div class="col-sm-10">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-user"> </i>
									</div>
									<form:input class="form-control" id="name" path="companyName"
										placeholder="Full Name" />
								</div>
							</div>
						</div>
						 <div class="form-group">
							<label class="control-label col-sm-2 requiredField" for="number">
								Registration Number <span class="asteriskField"> * </span>
							</label>
							<div class="col-sm-10">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-phone"> </i>
									</div>
									<form:input class="form-control" id="number" path="regNumber"
										placeholder="Registration Number" type="text" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2 requiredField" for="email">
								Enter Email ID <span class="asteriskField"> * </span>
							</label>
							<div class="col-sm-10">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-envelope" aria-hidden="true"></i>

									</div>
									<form:input class="form-control" id="email" path="email"
										placeholder="Email ID" type="email" />
								</div>
							</div>
						</div>

						<div class="form-group ">
							<label class="control-label col-sm-2 requiredField" for="address">
								Contractor Address <span class="asteriskField"> * </span>
							</label>
							<div class="col-sm-10">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-home"> </i>
									</div>
									<form:input class="form-control" id="address" path="regAddress"
										placeholder="Contractor Address" type="text" />
								</div>
							</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-2" for="namePartners"> Name
								of Partner </label>
							<div class="col-sm-10">
								<input class="form-control" id="name2" name="namePartners"
									placeholder="Name of Partners" type="text" />
							</div>
						</div>
						<!-- <div class="form-group ">
							<label class="control-label col-sm-2 requiredField">
								Bidder Type <span class="asteriskField"> * </span>
							</label>
							<div class="col-sm-10">
								<div class="radio">
									<label class="radio"> <input name="radio" type="radio"
										value="Indian" /> Indian <input name="radio" type="radio"
										value="Foregin" /> Foregin
									</label>
								</div>
							</div>
						</div> -->
						<div class="form-group ">
							<label class="control-label col-sm-2 requiredField" for="city">
								City <span class="asteriskField"> * </span>
							</label>
							<div class="col-sm-10">
								<select class="select form-control" id="city" name="city">
									<option value="Mumbai">Mumbai</option>
									<option value="Pune">Pune</option>
									<option value="Nagpur">Nagpur</option>
									<option value="Nashik">Nashik</option>
									<option value="Aurangabad	">Aurangabad</option>
									<option value="Solapur">Solapur</option>
									<option value="Amravati">Amravati</option>
									<option value="Dhule">Dhule</option>
								</select>
							</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-2 requiredField" for="state">
								State <span class="asteriskField"> * </span>
							</label>
							<div class="col-sm-10">
								<select class="select form-control" id="state" name="state">
									<option value="Andra Pradesh">Andra Pradesh</option>
									<option value="Arunachal Pradesh">Arunachal Pradesh</option>
									<option value="Assam">Assam</option>
									<option value="Bihar">Bihar</option>
									<option value="Chhattisgarh">Chhattisgarh</option>
									<option value="Goa">Goa</option>
									<option value="Gujarat">Gujarat</option>
									<option value="Haryana">Haryana</option>
									<option value="Himachal Pradesh">Himachal Pradesh</option>
									<option value="Jammu and Kashmir">Jammu and Kashmir</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Karnataka">Karnataka</option>
									<option value="Kerala">Kerala</option>
									<option value="Madya Pradesh">Madya Pradesh</option>
									<option value="Maharashtra">Maharashtra</option>
									<option value="Manipur">Manipur</option>
									<option value="Meghalaya">Meghalaya</option>
									<option value="Mizoram">Mizoram</option>
									<option value="Nagaland">Nagaland</option>
									<option value="Orissa">Orissa</option>
									<option value="Punjab">Punjab</option>
									<option value="Rajasthan">Rajasthan</option>
									<option value="Sikkim">Sikkim</option>
									<option value="Tamil Nadu">Tamil Nadu</option>
									<option value="Telagana">Telagana</option>
									<option value="Tripura">Tripura</option>
									<option value="Uttaranchal">Uttaranchal</option>
									<option value="Uttar Pradesh">Uttar Pradesh</option>
									<option value="West Bengal">West Bengal</option>
								</select>
							</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-2 requiredField"
								for="postCode"> Postal Code <span
								class="asteriskField"> * </span>
							</label>
							<div class="col-sm-10">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-phone"> </i>
									</div>
									<input class="form-control" id="postalcode" name="postCode"
										placeholder="Postal Code" type="text" />
								</div>
							</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-2 requiredField"
								for="panTan"> PAN Number <span class="asteriskField">
									* </span>
							</label>
							<div class="col-sm-10">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-calculator"> </i>
									</div>
									<input class="form-control" id="pannumber" name="panTan"
										placeholder="PAN Number" type="text" />
								</div>
							</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-2 requiredField" for="estYear">
								Establishment Year <span class="asteriskField"> * </span>
							</label>
							<div class="col-sm-10">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="fa fa-calendar"> </i>
									</div>
									<input class="form-control" id="date" name="estYear"
										placeholder="YYYY/MM/DD" type="text" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-10 col-sm-offset-2">
								<button class="btn btn-primary " name="submit" type="submit">
									Register</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>