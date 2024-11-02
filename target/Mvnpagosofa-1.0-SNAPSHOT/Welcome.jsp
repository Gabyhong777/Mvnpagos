<%-- 
    Document   : Welcome
    Created on : 1/11/2024, 12:58:43 p. m.
    Author     : Raul-PC
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido</title>
    <style>
        /* Estilo general */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Encabezado */
        .header {
            background-color: #1e3a8a; /* Azul opaco */
            color: #fff;
            padding: 15px;
            display: flex;
            align-items: center;
            justify-content: space-between;
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

        /* Contenido de bienvenida */
        .welcome-content {
            text-align: center;
            margin: 50px 20px;
        }
        .welcome-content h1 {
            font-size: 24px;
            color: #1e3a8a;
        }
        .welcome-content p {
            font-size: 16px;
            color: #666;
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
            height: 100%
        }
        
       .footer-nav img {
            width: 24px; /* Ajusta el tamaño del icono */
            height: 24px;
            margin-bottom: 5px
       }
       
        .footer-nav a span {
            font-size: 12px;
            color: #e5e7eb;
        }

        /* Botón de agregar */
        .add-button {
            position: fixed;
            bottom: 80px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 60px;
            background-color: #1e3a8a;
            color: #fff;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 36px;
            text-decoration: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
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
            <span>Bienvenido, <%= session.getAttribute("username") %>!</span>
            <img src="Sara alca.png" alt="Perfil"> 
        </div>
    </header>

    <!-- Contenido principal de bienvenida -->
    <div class="welcome-content">
        <h1>Bienvenido a PAGOSOFA</h1>
        <p>Has iniciado sesión con éxito. Usa el botón de abajo para agregar un pago.</p>
    </div>

    <!-- Botón de agregar pago -->
    <a href="addPayment.jsp" class="add-button">+</a>

    <!-- Barra de navegación inferior -->
    <nav class="footer-nav">
        <a href="home.jsp">
            <a href="${pageContext.request.contextPath}/Welcome">
            <img src="home-logo.png" alt="Inicio"> 
            <span>Inicio</span>
        </a>
        <a href="notifications.jsp">
            <a href="${pageContext.request.contextPath}/notifications">
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
