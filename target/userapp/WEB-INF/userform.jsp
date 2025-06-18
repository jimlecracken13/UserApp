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
            body{
                background-color: #8caba0;
            }
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
                box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
            }
            form div
            {
                margin: 3%;
                width: 50%;
                display: flex;
                flex-direction: row;
                align-content: flex-end;
                align-items: center;
            }
            form div label
            {
                width: 20%;
                font-weight: bold;
                font-family: sans-serif;
            }
            form div input
            {
                margin-left: 20%;
                width: 65%;
                height: 20px;
                border-radius: 15px;
                transition: box-shadow 0.3s ease;
            }
            form div input:focus {
                outline: none;
                box-shadow: 0 0 5px #666;
            }
            form input[type="submit"]
            {
                border-radius: 10px;
                width: 165px;
                height: 30px;
                color: white;
                background:#131417;
                margin-top: 20px;
                margin-bottom: 25px;
                font-weight: bold;
                cursor: pointer;
                transition: background-color 0.4s ease, transform 0.3s ease;
            }
            #message
            {
                margin-left: 25%;
                border: 2px black solid;
                width: 50%;
                border-color: red;
                text-align: center;
                padding: 5px;
                font-size: 1.1em;
                font-weight: bold;
                border-radius: 15px;
                box-shadow: 2px 1.5px 2px rgba(0.10,0.2,0,0.15);
                background-color: white;
            }
            #exist
            {
                width: 100%;
                border: 1px solid red;
                text-align: center;
                border-radius: 15px;
                box-shadow: 2px 0px 2px #131417;
                background-color: white;
            }
            form input[type="submit"]:hover
            {
                background-color:activeborder;

                transform: scale(1.05);
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
