<%-- 
    Document   : error
    Created on : 15 juin 2025, 18:09:57
    Author     : djim
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page d'erreur</title>
    </head>
    <body>
        <p> Oups! <c:out value="${message}" /></p>
        <c:out value="${exception.getMessage()}"/>
        <a href="/form">Retour au formulaire</a>
    </body>
</html>