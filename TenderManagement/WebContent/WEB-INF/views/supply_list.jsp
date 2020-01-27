<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<div style="margin:0 15px 0 15px;padding:5px">  
<h4>Supplier List</h4><hr>
<table class="table table-hover table-striped table-light">
<thead>
<tr>
<th class="col">Registration Number</th><th class="col">Company Name</th><th class="col">Registration Address</th>
<th class="col">Name of Partners</th><th class="col">State</th><th class="col">City</th>
<th class="col">Pin Code</th><th class="col">Pan Number</th><th class="col">Establishment Year</th>
<th class="col">Email Id</th>
</tr>
</thead>  
<tbody>
   <c:forEach var="supplier" items="${list}">   
   <tr>
    <th class="row">${supplier.regNumber}</th>   
   <td>${supplier.companyName} </td>  
    
  	<td>${supplier.regAddress}</td>
  	<td>${supplier.namePartners}</td>
  	<td>${supplier.state}</td>
  	<td>${supplier.city}</td>
  	<td>${supplier.postCode}</td>
  	<td>${supplier.panTan}</td>
  	<td>${supplier.estYear}</td>
  	<td>${supplier.email}</td>
     </tr>  
   </c:forEach>  

</tbody>  
</table>  
</div>



