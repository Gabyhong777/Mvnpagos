<%-- 
    Document   : notifications
    Created on : 1/11/2024, 4:19:36 p. m.
    Author     : Raul-PC
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notificaciones</title>
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
            height: 60px; /* Altura de la barra superior */
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

        /* Contenido de notificaciones */
        .notifications-container {
            flex: 1;
            margin: 20px;
        }
        .notification-box {
            background-color: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 15px;
            position: relative;
        }
        .notification-box h4 {
            font-size: 16px;
            color: #1e3a8a;
            margin: 0;
        }
        .notification-box p {
            font-size: 14px;
            color: #666;
            margin: 5px 0 10px;
        }
        .notification-box .notification-date {
            font-size: 12px;
            color: #aaa;
        }
        .notification-box .options {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }
        .notification-box .options-menu {
            display: none;
            position: absolute;
            top: 20px;
            right: 10px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 5px;
            width: 100px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            font-size: 12px;
            text-align: center;
        }
        .notification-box .options:hover .options-menu {
            display: block;
        }

        /* Barra de navegación inferior */
        .footer-nav {
            background-color: #1e3a8a; /* Mismo color que la barra superior */
            color: #fff;
            display: flex;
            justify-content: space-around;
            align-items: center;
            height: 60px; /* Misma altura que la barra superior */
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

    <!-- Contenedor de notificaciones -->
    <div class="notifications-container">
        <!-- Notificación de ejemplo 1 -->
        <div class="notification-box">
            <h4>Se ha ingresado un nuevo pago</h4>
            <p>Un nuevo pago ha sido registrado en el sistema.</p>
            <span class="notification-date">01 de Noviembre, 2024</span>
            <div class="options">
                ⋮
                <div class="options-menu">
                    Más información
                </div>
            </div>
        </div>

        <!-- Notificación de ejemplo 2 -->
        <div class="notification-box">
            <h4>Pago pendiente</h4>
            <p>Tienes un pago pendiente de realizar.</p>
            <span class="notification-date">31 de Octubre, 2024</span>
            <div class="options">
                ⋮
                <div class="options-menu">
                    Más información
                </div>
            </div>
        </div>
    </div>

    <!-- Barra de navegación inferior -->
    <nav class="footer-nav">
        <a href="home.jsp">
            <a href="Welcome.jsp">
            <img src="home-logo.png" alt="Inicio"> <!-- Cambia 'home.png' a la ruta de tu ícono -->
            <span>Inicio</span>
        </a>
        <a href="notifications.jsp">
            <img src="notificaciones.png" alt="Notificaciones"> 
            <span>Notificaciones</span>
        </a>
        <a href="settings.jsp">
            <img src="CONFIG.png" alt="Configuración"> 
            <span>Configuración</span>
        </a>
    </nav>
</body>
</html>
