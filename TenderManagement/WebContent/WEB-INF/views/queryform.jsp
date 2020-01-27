<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<div style="margin:0 15px 0 15px;padding:5px" >  
   <h4>Write your Query</h4><hr>
       <form:form method="post" action="submitquery">    
        <table >    
         <tr>    
          <td>Query Reference : </td>   
          <td><form:input path="queryRef"  /></td>  
         </tr>    
         <tr>    
          <td> Subject :</td>    
          <td><form:input path="subject" /></td>  
         </tr>   
         <tr>    
          <td>Description :</td>    
          <td><form:input path="description" /></td>  
         </tr>       
          <tr>    
          <td>Department :</td>    
          <td><form:input path="department" /></td>  
         </tr> 
          
          <tr>    
          <td> Tender Reference :</td>    
          <td><form:input path="tenderRef" /></td>  
         </tr>   
         <tr>    
          
              
          <td><input type="submit" value="save" /></td>    
         </tr>    
        </table>    
       </form:form>
   
   				
</body>
</html>