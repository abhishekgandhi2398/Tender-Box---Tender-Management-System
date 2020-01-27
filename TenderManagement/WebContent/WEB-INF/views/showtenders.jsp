<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

  <link href="<c:url value="/resources/stylesheets/main.css" />" rel="stylesheet">

    
</head>
<body>
<div class="align-items-center" style="margin:0 15px 0 15px;">
    <table class="table table-hover">
    <thead>
   <tr>
    <th scope="col">Reference</th><th scope="col">Department</th><th scope="col">Description</th><th scope="col"></th>
   </tr>
   </thead>
   <tbody>
        <c:forEach var="tender" items="${list}">  
        <tr class="table-active">
            <th scope="row">${ tender.ref_number}</th>
            <td>test</td>
            <td>test</td>
            <td><button type="button" class="btn btn-outline-info">More</button></td>
        </tr>
    </c:forEach>
   </tbody>
</table>
</div>
</body>
</html>