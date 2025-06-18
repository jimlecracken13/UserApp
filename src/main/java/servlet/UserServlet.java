/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import model.User;

/**
 *
 * @author djim
 */
@WebServlet(name = "UserServlet", urlPatterns = {"/userdetails"})
public class UserServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            //on recupère les valeurs des champs
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String email = request.getParameter("email");
            //int resultat = 10/0;
            //validation des données
            if (!nom.isBlank() && !prenom.isBlank() && !email.isBlank()) {
                //creer une instance de user
                User user = new User(nom, prenom, email);
               
                //stocker l'objet crée dans une session
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                //liste pour recupérer la liste des utilisateurs
                List<User> listUser = (List<User>) request
                        .getServletContext()
                        .getAttribute("listUser");
                if (listUser == null) {
                    listUser = new ArrayList<>();
                    request.getServletContext().setAttribute("listUser", listUser);
                }
                //verifier si le user n'est pas déjà dans la liste
                if (listUser.contains(user)) {
                    //renvoyer un message sur la page du formulaire
                    session.setAttribute("message", "Utilisateur déjà inscrit");
                    response.sendRedirect("/form"); // ou l’URL de ta page formulaire

                } else {
                    
                    listUser.add(user);
                    //rediriger l'utilisateur vers la page détails
                    this.getServletContext()
                            .getRequestDispatcher("/WEB-INF/userdetails.jsp")
                            .forward(request, response);
                }
            } else {
                 request.getSession().setAttribute("reponse", "Remplissez tous les champs");
                response.sendRedirect("/form");
            }
        } catch (Exception e) {
            String message = e.getMessage();
            request.setAttribute("message", message);

            //on envois vers la page error
            this.getServletContext()
                    .getRequestDispatcher("/WEB-INF/error.jsp")
                    .forward(request, response);
            //message console
            e.printStackTrace();
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
