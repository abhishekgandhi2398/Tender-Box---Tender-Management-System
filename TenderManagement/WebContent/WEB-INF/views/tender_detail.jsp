<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   


<div style="margin:0 15px 0 15px;padding:5px">
<h4>Detail of Tender Reference - ${list[0].ref_number }</h4><hr>  
<table class="table table-striped table-light table-hover" id="tenderDetailsList"> 
<tbody>
	<c:forEach var="tender" items="${list}">
     <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Reference Number</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge">${tender.ref_number}</label></td></tr>
    <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Department</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge">${tender.department}</label></td></tr>
    <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Description</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge">${tender.description}</label></td></tr>
    <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Base Amount</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge">${tender.base_amount}</label></td></tr>
    <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Opening Date</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge">${tender.start_date}</label></td></tr>
    <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Closing Date</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge">${tender.end_date}</label></td></tr>
   </c:forEach>     
   </tbody> 
 </tbody>  
   </table>  
