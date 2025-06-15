/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author djim
 */
public class User {
    private String nom;
    private String email;
    private String prenom;
    //constructeur de la classe
    public User(String nom,String prenom, String email)
    {
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
    }
    //getters
    public String getNom()
    {
        return nom;
    }
    public String getEmail()
    {
        return email;
    }
    public String getPrenom()
    {
        return prenom;
    }
    //setters
    public void setNom(String nom)
    {
        this.nom = nom;
    }
    public void setPrenom(String prenom)
    {
        this.prenom = prenom;
    }
    public void setEmail(String email)
    {
        this.email = email;
    }
}