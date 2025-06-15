<%-- 
    Document   : userform
    Created on : 15 juin 2025, 18:11:12
    Author     : djim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Form</title>
    </head>
    <body>
        <h1>Bienvenue !</h1>
        <form method="post" action="/userdetails">
            <label for="nom">
               Nom
            </label>
            <input type="text" id="nom" name="nom">
            <label for="prenom">
              Prenom
            </label>
            <input type="text" id="prenom" name="prenom">
            <label for="email">
               Email
            </label>
            <input type="email" id="email" name="email">
            <input type="submit" value="Envoyer">
        </form>
        <c:if test="${!empty response}">
            <p>
                <c:out value="${response}" />
            </p>
        </c:if>
    </body>
</html>
