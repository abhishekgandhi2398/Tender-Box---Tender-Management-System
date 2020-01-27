<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<div style="margin:0 15px 0 15px;padding:5px" >  
   <h4>Add New Employee</h4><hr>
       <form:form method="post" action="register">    
        <table class="table table-striped table-light table-hover">    
         <tr>    
          <td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Name</label></td><td><form:input class="form-control form-control-lg" type="text" placeholder=" enter employee name" path="fullname"  /></td>  
         </tr>    
         <tr>    
          <td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Employee ID</label></td><td><form:input class="form-control form-control-lg" type="text" placeholder=" only numbers are allowed " path="id" /></td>  
         </tr>   
         <tr>    
          <td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Password</label></td><td><form:input class="form-control form-control-lg" type="password" placeholder=" alphanumeric and 6+ characters " path="password" /></td>  
         </tr>   
          <tr>    
          <td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Date of Birth</label></td><td><form:input class="form-control form-control-lg" type="text" placeholder=" yyyy/mm/dd " path="date" /></td>  
         </tr>   
         <tr>    
          <td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Department</label></td><td><form:input class="form-control form-control-lg" type="text" placeholder=" employee department" path="department" /></td>  
         </tr>        
        </table>  
        <button type="submit" value="register" class="btn btn-success btn-block btn-lg"><big>REGISTER</big></button>  
       </form:form>
</div>