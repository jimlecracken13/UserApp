# Objectifs pédagogiques :
Comprendre le rôle et le cycle de vie d’un Servlet


Savoir créer et intégrer un formulaire HTML dans une JSP


Manipuler les requêtes GET et POST dans les Servlets


Apprendre à transmettre les données entre Servlet et JSP


Utiliser les sessions, la redirection, et la gestion des erreurs


Découvrir l’utilité d’un filtre Servlet (Filter)


# Contexte :
Tu dois développer une mini-application web en Java EE permettant à un utilisateur de remplir un formulaire avec son nom et son email, puis d’afficher les informations saisies dans une nouvelle page. Cette application devra également inclure la gestion de session, une page d’erreur, et un filtre de journalisation simple.
Énoncé du TP
1. Créer un projet web nommé UserApp
Configure le projet pour fonctionner avec un serveur Tomcat.


Structure de base : servlets, model, jsp.



# 2. Créer une classe User dans un package model
Elle doit contenir au moins deux attributs : nom et email


Fournir un constructeur et les accesseurs nécessaires


# 3. Créer une JSP userForm.jsp
Permettant de saisir :


Le nom de l’utilisateur


L’email de l’utilisateur


Le formulaire doit envoyer les données vers un Servlet nommé UserServlet


# 4. Pour le Servlet UserServlet
Il doit recevoir les données envoyées depuis le formulaire via POST
Il doit créer un objet User à partir des données du formulaire
Il doit stocker l’objet dans la session
Il doit ensuite rediriger l’utilisateur vers une page userDetails.jsp
Créer une validation côté serveur (vérifier si les champs ne sont pas vides)
Gérer plusieurs utilisateurs en mémoire


# 5. Pour la  JSP userDetails.jsp
Cette page doit afficher les informations de l’utilisateur à partir de l’objet stocké en session et la liste des Users déjà enregistrés.
Si aucune donnée n’est trouvée, elle doit rediriger vers le formulaire


# 6. Créer une page error.jsp
Elle doit afficher un message d’erreur clair si une exception se produit dans l’application




7. Mettre en place un filtre Servlet 
Ce filtre doit intercepter toutes les requêtes


Il doit afficher dans la console le chemin de chaque requête interceptée
