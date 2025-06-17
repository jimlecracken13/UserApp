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
        <style>

            h1{
                text-align: center;
            }
            form
            {
                display: flex;
                flex-direction: column;
                align-items: center;
                align-content: center;
                padding: 5px;
                background: linear-gradient(90deg, rgba(140, 171, 160, 1) 20%, rgba(177, 204, 189, 1) 52%, rgba(204, 203, 194, 1) 92%);
                width: 50%;
                border: 2px solid black;
                margin-left: 25%;
                border-radius: 10px;
            }
            form div
            {
                margin: 5%;
                width: 50%;
                display: flex;
                flex-direction: row;
                align-content: flex-end;
                align-items: center;
            }
            form div label
            {
                width: 10%;
            }
            form div input
            {
                margin-left: 20%;
                width: 60%;
            }
            form input[type="submit"]
            {
                border-radius: 4px;
                width: 150px;
                height: 30px;
                color: white;
                background:#131417;
            }
            #message
            {
                margin-left: 25%;
                border: 2px black solid;
                width: 50%;
                border-color: red;
                text-align: center;
            }
            #exist
            {
                width: 100%;
                border: 2px solid red;
                text-align: center;
            }
            form input[type="submit"]:hover
            {
                background-color: black;
            }
        </style>
    </head>
    <body>

        <h1>Bienvenue !</h1>

        <form method="post" action="/userdetails">
            <c:if test="${not empty message}">

                <div >
                    <label id="exist"> <c:out value="${message}" /> </label>
                </div>

            </c:if>
            <div>
                <label for="nom">
                    Nom
                </label>
                <input type="text" id="nom" name="nom">
            </div>
            <div>
                <label for="prenom">
                    Prenom
                </label>
                <input type="text" id="prenom" name="prenom">
            </div>
            <div>
                <label for="email">
                    Email
                </label>
                <input type="email" id="email" name="email">  
            </div>
            <input type="submit" value="Envoyer">

        </form>
        <c:if test="${not empty reponse}">
            <p id="message">
                <c:out value="${reponse}" />
            </p>

        </c:if>
    </body>
</html>
