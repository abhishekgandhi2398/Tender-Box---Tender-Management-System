<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   


<div style="margin:0 15px 0 15px;padding:5px">
<h4>Quotation details of Company - </h4><hr>  
<table class="table table-striped table-light table-hover" id="quotationDetailsList"> 
<tbody>
	<c:forEach var="quotation" items="${list}">
     <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Tender Reference Number</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge">${quotation.refNumber}</label></td></tr>
    <!-- <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Company Name</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge"></label></td></tr> -->
    <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Company Registration Number</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge">${quotation.regNumber}</label></td></tr>
    <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Description</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge">${quotation.description}</label></td></tr>
    <tr><td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Quotation Amount</label></td><td><label class="col-form-label col-form-label-lg" for="inputLarge">${quotation.amount}</label></td></tr>
   </c:forEach>     
   </tbody> 
 </tbody>  
   </table>  
