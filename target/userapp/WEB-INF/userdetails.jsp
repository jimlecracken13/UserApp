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
            :root {
                --primary-border-color: #6b9080; /* Couleur dérivée du gradient */
                --shadow-color: rgba(0, 0, 0, 0.15);
                --text-shadow-color: rgba(0, 0, 0, 0.3);
                --title-color: #00695c;
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                display: flex;
                background: #8caba0;
                background: linear-gradient(90deg, rgba(140, 171, 160, 1) 20%, rgba(177, 204, 189, 1) 52%, rgba(204, 203, 194, 1) 92%);
                flex-direction: column;
                align-items: center;
                justify-content: center;
                min-height: 100vh;
                font-family: 'Roboto', sans-serif; /* Police moderne */
            }

            div {
                border: 2px solid var(--primary-border-color);
                border-radius: 8px; /* Coins légèrement plus arrondis */
                margin: 1rem auto; /* Centrage horizontal, marge verticale cohérente */
                max-width: 800px; /* Limite pour grands écrans */
                width: 90%; /* Plus fluide sur petits écrans */
                padding: 1.5rem; /* Padding uniforme */
                box-shadow: 2px 2px 4px var(--shadow-color); /* Ombre plus marquée */
                background: rgba(255, 255, 255, 0.9); /* Fond blanc semi-transparent pour contraste */
            }

            h3 {
                font-size: 1.75rem; /* Taille en rem pour cohérence */
                color: var(--title-color);
                text-shadow: 1px 1px 3px var(--text-shadow-color); /* Ombre texte plus prononcée */
                margin-bottom: 1rem; /* Espacement sous le titre */
                font-weight: 500; /* Poids modéré pour modernité */
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
