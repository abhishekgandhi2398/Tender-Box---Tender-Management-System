<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   


<div style="margin:0 15px 0 15px;padding:5px">
<h4>List of all Queries</h4><hr> 
	
	<div style="margin:0 15px 0 15px;padding:5px">

 <table class="table table-hover table-striped table-light">
    <thead>
   <tr>
    <th scope="col">Query Reference</th><th scope="col">Subject</th><th scope="col">Description</th><th scope="col">Department</th>
    <th scope="col">Tender Reference</th>
   </tr>
   </thead>
  <tbody>
        <c:forEach var="query" items="${list}">  
        <tr class="">
            <th scope="row">${ query.queryRef}</th>
            <td>${ query.subject}</td>
            <td scope="row">${ query.description}</td>
             <td scope="row">${ query.department}</td>
              <td scope="row">${ query.tenderRef}</td>        
        </tr>
    </c:forEach>
   </tbody>
</table>
</div>
	
	
	 
