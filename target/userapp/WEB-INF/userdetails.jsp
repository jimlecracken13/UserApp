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
        <style>
            body{
                display: flex;
                flex-direction: column;
                align-content: center;
                align-items: center;
            }
            div
            {
                border: 2px solid black;
                border-radius: 4px;
                margin: 1%;
                width: 70%;
                padding-left: 2%;
            }
        </style>
    </head>
    <body>
        <h3>Bienvenue <c:out value="${user.prenom}" /> - 
        <c:out value="${user.nom}" /></h3>
        <c:forEach items="${listUser}" var="user" varStatus="status">
        <div>
           <h4><c:out value="${status.count}" /></h4>
        <p>Nom:  <c:out value="${user.nom}" /></p>
        <p>Prenom: <c:out value="${user.prenom}" /></p>
        <p>Email: <c:out value="${user.email}" /></p> 
        </div>
        
        </c:forEach>
    </body>
</html>
