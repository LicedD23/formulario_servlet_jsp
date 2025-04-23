<%-- 
    Document   : cerrarsesion
    Created on : 23/04/2025, 9:20:22 a. m.
    Author     : Personal
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cerrar Sesión</title>
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
        .card {
            background: white;
            border-radius: 4px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
            padding: 20px;
            text-align: center;
            margin-top: 50px;
        }
        .btn {
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin: 10px;
        }
        .btn-primary {
            background-color: #e74c3c;
            color: white;
        }
        .btn-secondary {
            background-color: #7f8c8d;
            color: white;
        }
        .btn-primary:hover {
            background-color: #c0392b;
        }
        .btn-secondary:hover {
            background-color: #6c7a7d;
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
    </style>
</head>
<body>
    <div class="container">
        <h1>Cerrar Sesión</h1>
        
        <!-- Menú de opciones -->
        <div class="menu">
            <a href="perfil.jsp" class="menu-item">Perfil</a>
            <a href="configuracion.jsp" class="menu-item">Configuración</a>
            <a href="reportes.jsp" class="menu-item">Reportes</a>
            <a href="cerrarSesion.jsp" class="menu-item active">Cerrar Sesión</a>
        </div>
        
        <div class="card">
            <h2>¿Estás seguro de que deseas cerrar sesión?</h2>
            <p>Se cerrará tu sesión actual y serás redirigido a la página de inicio de sesión.</p>
            
            <div>
                <a href="login.jsp" class="btn btn-primary">Sí, cerrar sesión</a>
                <a href="perfil.jsp" class="btn btn-secondary">No, volver a mi perfil</a>
            </div>
        </div>
    </div>
</body>
</html>
