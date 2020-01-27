<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    


<div style="margin:0 15px 0 15px;padding:5px">
<h4>List of all Employees</h4><hr>
 <table class="table table-striped table-light">
    <thead>
   <tr>
    <th scope="col">Full Name</th><th scope="col">Employee ID</th><th scope="col">Password</th><th scope="col">Date of Birth</th>
    <th scope="col">Department</th>
   </tr>
   </thead>
   <tbody>
        <c:forEach var="employee" items="${list}">  
       
             <tr>  
   <td>${employee.fullname}</td>  
   <td>${employee.id}</td>  
   <td>${employee.password}</td>  
   <td>${employee.date}</td>
    <td>${employee.department}</td> 
   
   </tr> 
    </c:forEach>
   </tbody>
</table>
</div>
