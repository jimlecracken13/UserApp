/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Objects;

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
    
   
    @Override
public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    User user = (User) o;
    return Objects.equals(email, user.email);
           
}

@Override
public int hashCode() {
    return Objects.hash(email); 
}
}