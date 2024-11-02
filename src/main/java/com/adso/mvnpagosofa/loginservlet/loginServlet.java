package com.adso.mvnpagosofa.loginservlet;

/* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String USERNAME = "admin";
    private static final String PASSWORD = "password123";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Obtener los parámetros del formulario
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validar las credenciales de usuario
        if (USERNAME.equals(username) && PASSWORD.equals(password)) {
            // Credenciales correctas: crear una sesión y redirigir a la página de bienvenida
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("Welcome.jsp");
        } else {
            // Credenciales incorrectas: redirigir a una página de error o mostrar un mensaje
            response.sendRedirect("index.html?error=1");
        }
    }
}
   