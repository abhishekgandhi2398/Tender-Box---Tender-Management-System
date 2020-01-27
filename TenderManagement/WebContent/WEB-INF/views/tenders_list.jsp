<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   


<div style="margin:0 15px 0 15px;padding:5px">
<h4>List of all Tenders</h4><hr> 
 <table class="table table-striped table-light" id="empTenderListTable">
    <thead>
   <tr>
    <th scope="col">Reference</th><th scope="col">Department</th><th scope="col">Description</th><th scope="col"></th>
   </tr>
   </thead>
  <tbody>
        <c:forEach var="tender" items="${list}">  
        <tr class="">
            <th scope="row">${ tender.ref_number}</th>
            <td>${ tender.department}</td>
            <td scope="row">${ tender.description}</td>
            <td><button type="button" class="btn btn-outline-secondary btn-block" onclick="loadTenderDetail(this)">Tender Details</button></td>
            <td><button type="button" class="btn btn-outline-info btn-block" onclick="loadBiddersList(this)">View Bidders</button></td>
        </tr>
    </c:forEach>
   </tbody>
</table>
</div>