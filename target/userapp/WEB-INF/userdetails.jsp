<%-- 
    Document   : userdetails
    Created on : 15 juin 2025, 18:10:37
    Author     : djim
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Details</title>
        
    </head>
    <body>
        <p>Bienvenue <c:out value="${user.prenom}" /> - 
            <c:out value="${user.nom}" /></p>
        <c:forEach items="${listUser}" var="user" varStatus="status">
            <p><c:out value="${status.count}" /> : <c:out value="${user.prenom}" /> - 
            <c:out value="${user.nom}" /></p>
        </c:forEach>
    </body>
</html>
