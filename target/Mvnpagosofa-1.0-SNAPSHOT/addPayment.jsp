<%-- 
    Document   : addPayment
    Created on : 2/11/2024, 9:53:24 a. m.
    Author     : Raul-PC
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Añadir Pago</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }
        
        /* Barra superior */
        .top-bar {
            background-color: #1e3a8a; /* Azul opaco */
             height: 25px;
           color: #fff;
            padding: 15px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        
        .top-bar img.logo {
            height: 30px;
        }
        
        .top-bar .profile-icon {
            height: 40px;
            width: 40px;
            border-radius: 50%;
            background-color: white;
        }

        /* Barra de búsqueda */
        .search-bar {
            margin: 20px 0;
            display: flex;
            justify-content: center;
        }

        .search-bar input[type="text"] {
            padding: 8px;
            width: 60%;
            max-width: 500px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* Contenido principal */
  .payment-form-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .payment-form-container h2 {
            text-align: center;
            font-weight: bold;
            color: #0056b3; /* Color azul */
            margin-bottom: 20px;
        }

        .section-title {
            color: #0056b3;
            font-weight: bold;
            margin-top: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input[type="text"],
        .form-group input[type="password"],
        .form-group input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .checkbox-label {
            display: flex;
            align-items: center;
        }

        .checkbox-label input[type="checkbox"] {
            margin-right: 10px;
        }

        /* Barra de navegación inferior */
        .footer-nav {
            background-color: #1e3a8a;
            color: white;
            padding: 10px 0;
            display: flex;
            justify-content: space-around;
            align-items: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .footer-nav a {
            color: white;
            text-align: center;
            font-size: 14px;
            text-decoration: none;
        }

        .footer-nav img {
            height: 24px;
            width: 24px;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>

<div class="top-bar">
    <img src="sofa.png" alt="Logo" class="logo">
    <div class="search-bar">
        <input type="text" placeholder="Buscar...">
    </div>
    <img src="Sara alca.png" alt="Perfil" class="profile-icon">
</div>

<div class="payment-form-container">
    <h2>Añadir Pago</h2>

    <div class="section-title">Detalles de la Tarjeta</div>
    <div class="form-group">
        <label for="cardType">Tipo de Tarjeta</label>
        <input type="text" id="cardType" name="cardType">
    </div>
    <div class="form-group">
        <label for="cardNumber">Número de Tarjeta</label>
        <input type="text" id="cardNumber" name="cardNumber">
    </div>
    <div class="form-group">
        <label for="cardName">Nombre en la Tarjeta</label>
        <input type="text" id="cardName" name="cardName">
    </div>
    <div class="form-group">
        <label for="expiryDate">Fecha de Expiración</label>
        <input type="text" id="expiryDate" name="expiryDate">
    </div>
    <div class="form-group">
        <label for="cvv">CVV</label>
        <input type="text" id="cvv" name="cvv">
    </div>
    <div class="form-group checkbox-label">
        <input type="checkbox" id="saveCard" name="saveCard">
        <label for="saveCard">¿Guardar tarjeta para la próxima vez?</label>
    </div>

    <div class="section-title">Dirección de Facturación</div>
    <div class="form-group">
        <label for="fullName">Nombre Completo</label>
        <input type="text" id="fullName" name="fullName">
    </div>
    <div class="form-group">
        <label for="postalCode">Código Postal</label>
        <input type="text" id="postalCode" name="postalCode">
    </div>
    <div class="form-group">
        <label for="city">Ciudad</label>
        <input type="text" id="city" name="city">
    </div>
    <div class="form-group">
        <label for="country">País</label>
        <input type="text" id="country" name="country">
    </div>
    <div class="form-group">
        <label for="phone">Número de Teléfono</label>
        <input type="text" id="phone" name="phone">
    </div>
</div>

<!-- Barra de navegación inferior -->
<nav class="footer-nav">
    <a href="Welcome.jsp">
        <img src="home-logo.png" alt="Inicio">
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

