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
        <style>
            body {
                background: #f4f6f8;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100vh;
                margin: 0;
            }

            .error-box {
                background-color: #fff;
                padding: 40px 50px;
                border-radius: 12px;
                box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
                text-align: center;
                animation: fadeIn 0.5s ease-in-out;
                max-width: 600px;
                width: 90%;
            }

            h1 {
                font-size: 2.2rem;
                color: #e74c3c;
                margin-bottom: 15px;
            }

            p {
                font-size: 1.1rem;
                color: #555;
                margin: 10px 0;
            }

            .error-message {
                color: #c0392b;
                font-weight: bold;
            }

            .back-link {
                display: inline-block;
                margin-top: 25px;
                padding: 10px 25px;
                background-color: #3498db;
                color: white;
                text-decoration: none;
                border-radius: 6px;
                transition: background-color 0.3s ease, transform 0.2s;
            }

            .back-link:hover {
                background-color: #2980b9;
                transform: scale(1.05);
            }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                    transform: translateY(-15px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }
        </style>
    </style>
</head>
<body>
    <p> Oups! Une Erreur est survenue</p>
    <p>Message: <c:out value="${message}" /></p>
    <a class="back-link" href="/form">Retour au formulaire</a>
</body>
</html>