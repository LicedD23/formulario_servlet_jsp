<%-- 
    Document   : perfil
    Created on : 23/04/2025, 9:11:48 a. m.
    Author     : Personal
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Perfil de Usuario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], 
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .btn {
            background-color: #333;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #ddd;
        }
        .menu {
            background-color: #333;
            padding: 10px 0;
            margin-bottom: 20px;
        }
        .menu-item {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            margin-right: 5px;
        }
        .menu-item:hover {
            background-color: #e5e7eb;
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }
        .active {
            background-color: #555;
        }
        .success-message {
            background-color: #dff0d8;
            color: #3c763d;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 4px;
        }
        .error-message {
            background-color: #f2dede;
            color: #a94442;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Perfil de Usuario</h1>
        
        <% 
        Boolean actualizado = (Boolean)request.getAttribute("perfilActualizado");
        String username = (String)session.getAttribute("username");
        String email = (String)session.getAttribute("email");
        String nombre = (String)session.getAttribute("nombre");
        String apellido = (String)session.getAttribute("apellido");
        
        if(actualizado != null && actualizado) { 
        %>
            <div class="success-message">
                <p>¡Perfil actualizado correctamente!</p>
            </div>
        <% } %>
        
        <!-- Menú de opciones -->
        <div class="menu">
            <a href="perfil.jsp" class="menu-item active">Perfil</a>
            <a href="configuracion.jsp" class="menu-item">Configuración</a>
            <a href="reportes.jsp" class="menu-item">Reportes</a>
            <a href="cerrarsesion.jsp" class="menu-item">Cerrar Sesión</a>
        </div>
        
        <form action="actualizarPerfil" method="post">
            <div class="form-group">
                <label for="username">Nombre de usuario:</label>
                <input type="text" id="username" name="username" value="admin" readonly>
            </div>
            
            <div class="form-group">
                <label for="email">Correo electrónico:</label>
                <input type="email" id="email" name="email" value="<%= email %>">
            </div>
            
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" value="<%= nombre %>">
            </div>
            
            <div class="form-group">
                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido" value="<%= apellido %>">
            </div>
            
            <div class="form-group">
                <label for="password">Nueva contraseña (dejar en blanco para mantener la actual):</label>
                <input type="password" id="password" name="password">
            </div>
            
            <div class="form-group">
                <label for="confirmPassword">Confirmar nueva contraseña:</label>
                <input type="password" id="confirmPassword" name="confirmPassword">
            </div>
            
            <button type="submit" class="btn">Guardar cambios</button>
        </form>
    </div>
</body>
</html>