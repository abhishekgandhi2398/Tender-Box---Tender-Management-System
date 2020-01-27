
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<div style="margin:0 15px 0 15px;padding:5px" class="bg-light">
   <h4>Apply for Tender Reference - ${ref}</h4><hr>
       <form:form method="post" action="suppliertenderapplysave">    
        <table  class="table table-striped table-light ">    
         <tr>    
         <td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Tender Reference Number</label></td>   
          <td><form:input class="form-control form-control-lg" type="text" placeholder=" enter tender number" path="refNumber"  /></td>  
         </tr> 
         <tr>    
          <td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Company Registration Number</label></td>  
          <td><form:input class="form-control form-control-lg" type="text" placeholder=" only numbers are allowed" path="regNumber"  /></td>  
         </tr> 
            
         <tr>    
          <td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Description</label></td>    
          <td><form:textarea class="form-control form-control-lg" path="description" rows="5" cols="30"/></td>  
         </tr>   
         <tr>    
           <td scope="col"><label class="col-form-label col-form-label-lg" for="inputLarge">Quotation Amount</label></td>    
          <td><form:input class="form-control form-control-lg" type="text" placeholder="only numbers are allowed" path="amount" /></td>  
         </tr> 
         </table>
                 <button type="submit"  class="btn btn-success btn-lg btn-block">Submit</button> 
         </form:form>
</div>