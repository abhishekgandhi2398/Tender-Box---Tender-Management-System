<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
   
<div style="margin:0 15px 0 15px;padding:5px">
<h4>List of all Bidders for Tender Reference ${bidderList[0].tender_ref_number }</h4><hr>
 <table class="table table-hover table-striped table-light" id="empBidderListTable">
    <thead>
   <tr>
    <th scope="col">Company Name</th><th scope="col">Registration Number</th><th scope="col">Quoted Amount</th><th scope="col"></th><th scope="col"></th>
   </tr>
   </thead>
  <tbody>
  <tbody>
        <c:forEach var="bidder" items="${bidderList}">  
        <tr class="">
            <td>${ bidder.company_name}</td>
            <td align="center">${ bidder.reg_number}</td>
            <td>here show amount</td>
            <td><button class="btn btn-primary btn-block"   onclick="loadQuotation(this)">Show Quotation</button></td>
            <td><button class="btn btn-success btn-block">Approve Quotation</button></td>
        </tr>
    </c:forEach>
   </tbody>

 
   </tbody>
</table>
</div>   