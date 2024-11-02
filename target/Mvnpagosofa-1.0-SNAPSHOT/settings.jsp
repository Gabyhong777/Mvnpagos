<%-- 
    Document   : settings
    Created on : 1/11/2024, 4:35:10 p. m.
    Author     : Raul-PC
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configuración</title>
    <style>
        /* Estilo general */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Encabezado */
        .header {
            background-color: #1e3a8a; /* Azul opaco */
            color: #fff;
            padding: 15px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 60px;
        }
        .header .logo {
            width: 50px;
            height: auto;
        }
        .header .search-bar {
            flex-grow: 1;
            margin: 0 20px;
            display: flex;
            justify-content: center;
        }
        .header .search-bar input[type="text"] {
            width: 100%;
            max-width: 400px;
            padding: 8px;
            border: none;
            border-radius: 20px;
        }
        .header .profile {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .header .profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }

        /* Contenedor de configuraciones */
        .settings-container {
            flex: 1;
            margin: 20px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .settings-option {
            background-color: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            font-size: 16px;
            color: #333;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .settings-option:hover {
            background-color: #e5e7eb;
        }

        /* Barra de navegación inferior */
        .footer-nav {
            background-color: #1e3a8a; /* Mismo color que la barra superior */
            color: #fff;
            display: flex;
            justify-content: space-around;
            align-items: center;
            height: 60px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .footer-nav a {
            color: #fff;
            font-size: 24px;
            text-decoration: none;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            width: 100%;
            height: 100%;
        }
        .footer-nav img {
            width: 24px;
            height: 24px;
            margin-bottom: 5px;
        }
        .footer-nav a span {
            font-size: 12px;
            color: #e5e7eb;
        }
    </style>
</head>
<body>

    <!-- Encabezado -->
    <header class="header">
        <!-- Logo de la empresa -->
        <img src="sofa.png" alt="Logo de la Empresa" class="logo">
        
        <!-- Barra de búsqueda -->
        <div class="search-bar">
            <input type="text" placeholder="Buscar...">
        </div>
        
        <!-- Perfil del usuario -->
        <div class="profile">
            <span>Bienvenido a Pagosofa</span>
            <img src="Sara alca.png" alt="Perfil"> <!-- Cambia 'profile.png' según la imagen de perfil -->
        </div>
    </header>

    <!-- Contenedor de opciones de configuración -->
    <div class="settings-container">
        <div class="settings-option" onclick="window.location.href='profile.jsp'">
            Perfil
        </div>
        <div class="settings-option" onclick="window.location.href='help.jsp'">
            Ayuda
        </div>
        <div class="settings-option" onclick="window.location.href='pageInfo.jsp'">
            Información de la página
        </div>
        <div class="settings-option" onclick="window.location.href='changePassword.jsp'">
            Cambiar contraseña
        </div>
        <div class="settings-option" onclick="window.location.href='logout.jsp'">
            Cerrar sesión
        </div>
    </div>

    <!-- Barra de navegación inferior -->
    <nav class="footer-nav">
        <a href="Welcome.jsp">
          
            <img src="home-logo.png" alt="Inicio"> <!-- Cambia 'home.png' a la ruta de tu ícono -->
            <span>Inicio</span>
        </a>
        <a href="notifications.jsp">
             <a href="${pageContext.request.contextPath}/notifications">
            <img src="notificaciones.png" alt="Notificaciones"> <!-- Cambia 'bell.png' a la ruta de tu ícono -->
            <span>Notificaciones</span>
        </a>
        <a href="settings.jsp">
            <img src="CONFIG.png" alt="Configuración"> <!-- Cambia 'settings.png' a la ruta de tu ícono -->
            <span>Configuración</span>
        </a>
    </nav>

</body>
</html>

