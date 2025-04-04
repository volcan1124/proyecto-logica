/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.proyectosebastianmendezcomercial;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author Sebastian Mendez
 */
public class ProyectosebastianmendezComercial {
      private static Connection connection;

    public static void main(String[] args) {
        conectarBaseDeDatos();
        crearSuperadministrador();
    }
    
    public static void conectarBaseDeDatos(){
    String connectionURL="jdbc:sqlserver://172.30.30.35:1433;"
            +"databaseName=COMERCIAL_SEBASTIAN;"
            +"user=root;"
            +"password=root;"
            +"encrtpt=true;"
            +"trustServerCertificate=true;";
    try{connection =DriverManager.getConnection(connectionURL);
        System.out.println("Conexion exitosa"); 
    }catch(SQLException e){
        System.out.println("Error al conectar a la base de datos"+ e.getMessage());
    }
}
    private static void crearSuperadministrador(){
    String Identificacion="1032386072";
    String Nombre_Usuario="SuperAdmin";
    String Clave="superadmin";
    String claveEncriptada=encriptar(Clave);

    String query="INSERT INTO Usuarios (Identificacion, Nombre_Usuario, Clave_Encriptada, Usuario_normal, Usuario_Administrador, Usuario_Superadministrador) " + "VALUES(?,?,?,1,0,0)";

    try(PreparedStatement ps= connection.PrepareStatement(query)){
        ps.setString(1, Identificacion);
        ps.setString(2, Nombre_Usuario);
        ps.setString(1, Clave);
        ps.setString(1, claveEncriptada);
        int filasAfectadas=ps.executeUpdate();
        if (filasAfectadas>0) {
            System.out.println("Superadministrador creado correctamente");
        }

    }catch(Exception e){
        System.out.println("Error al crear superadministrador");
    }

}
private static String encriptar(String Clave){
    try{
        //obtenemos una estancia del algoritmo de encriptacion SHA-256
        MessageDigest digest=MessageDigest.getInstance("SHA-256");
        //convierte la clave (string) en un arreglo de bytes y lo encripta
        byte[] hash=digest.digest(Clave.getBytes());
        //crea un stringBuilder para construir la cadena encriptada en un formato hexagecimal
        StringBuilder hexString= new StringBuilder();

        //Recorre cada byte del arreglo en bytes encriptados 
        for(byte b: hash){
            //convierte el byte a su representacion hexagecimal (Base 16)
            String hex = Integer.toHexString(oxff & b);
            //Si la representacion hexagecimal tiene solo un caracter, agrega in '0' al inicio
            if(hex.length()==1) hexString.append('0');
            //agregamos la representacion hexagecimal al StringBuilder
            hexString.append(hex);
        }
        //retorna y envia la cadena encriptada en formato hexagecimal
        return hexString.toHexString();

    }catch(NoSuchAlgorithmException e){
        //captura y maneja la excepcion si el algoritmo SHA-256 no esta disponible
        e.printStackTrace();
        return null;//Retornamos null en caso de error
    }
}
}
