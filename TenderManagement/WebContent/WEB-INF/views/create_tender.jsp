<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<div style="margin:0 15px 0 15px;padding:5px" >  
   <h4>Create a new Tender</h4><hr> 
       <form:form method="post" action="save">    
        <table class="table table-striped table-light table-hover">    
         <tr>    
          <td scope="col"><label class="col-form-label" for="inputLarge">Reference Number</label></td>  
          <td><form:input  class="form-control form-control-lg" type="text" placeholder=" alphanumeric " path="ref_number"  /></td>  
         </tr>       
          <td scope="col"><label class="col-form-label" for="inputLarge">Description</label></td>   
          <td><form:input  class="form-control form-control-lg" type="text" placeholder=".form-control-lg" path="description" /></td>  
         </tr>   
          <td scope="col"><label class="col-form-label" for="inputLarge">Base Amount</label></td>   
          <td><form:input class="form-control form-control-lg" type="text" placeholder="budget of tender in numbers only" path="base_amount" /></td>  
         </tr>   
          <tr>    
          <td scope="col"><label class="col-form-label" for="inputLarge">Opening Date</label></td>   
          <td><form:input class="form-control form-control-lg" type="text" placeholder="yyyy/mm/dd" path="start_date" /></td>  
         </tr> 
         
         <tr>    
          <td scope="col"><label class="col-form-label" for="inputLarge">Closing Date</label></td>    
          <td><form:input class="form-control form-control-lg" type="text" placeholder="yyyy/mm/dd" path="end_date" /></td>  
         </tr>
         
         <tr>    
          <td scope="col"><label class="col-form-label" for="inputLarge">Department</label></td> 
          <td><form:input class="form-control form-control-lg" type="text" placeholder="department" path="department" /></td>  
         </tr>    
        </table>   
        <button type="submit" class="btn btn-success btn-block btn-lg"><big>Create Tender</big></button> 
</form:form>
      