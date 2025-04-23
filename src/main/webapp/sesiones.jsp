<%-- 
    Document   : sesiones
    Created on : 23/04/2025, 8:46:23 a. m.
    Author     : SENA
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manejo de Sesiones en JSP</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f0f0f0;
            color: #333;
            padding: 20px;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }
        
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
            border-bottom: 2px solid #ddd;
            padding-bottom: 15px;
        }
        
        .section {
            margin-bottom: 30px;
            background-color: #f7f7f7;
            padding: 20px;
            border-radius: 6px;
            border-left: 4px solid #aaa;
        }
        
        h2 {
            color: #444;
            margin-bottom: 15px;
            font-size: 20px;
        }
        
        .info-item {
            margin-bottom: 10px;
            color: #555;
        }
        
        .info-label {
            font-weight: bold;
            display: inline-block;
            min-width: 150px;
        }
        
        .form-group {
            margin-bottom: 15px;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: 500;
        }
        
        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f9f9f9;
            color: #333;
        }
        
        input[type="text"]:focus {
            outline: none;
            border-color: #888;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        
        button {
            background-color: #666;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 500;
            transition: background-color 0.3s;
        }
        
        button:hover {
            background-color: #555;
        }
        
        .btn-secondary {
            background-color: #999;
        }
        
        .btn-secondary:hover {
            background-color: #888;
        }
        
        .saved-data {
            background-color: #eaeaea;
            padding: 15px;
            border-radius: 4px;
            margin-top: 10px;
        }
        
        .data-item {
            margin-bottom: 8px;
        }
        
        .footer {
            text-align: center;
            margin-top: 30px;
            color: #777;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Manejo de Sesiones en JSP</h1>
        
        <div class="section">
            <h2>Información de sesión:</h2>
            <div class="info-item"><span class="info-label">ID de sesión:</span> <%= session.getId() %></div>
            <div class="info-item"><span class="info-label">Número de visitas:</span> <%= session.getAttribute("visitas") != null ? session.getAttribute("visitas") : "0" %></div>
            <div class="info-item"><span class="info-label">Fecha de primera visita:</span> <%= session.getAttribute("fechaPrimeraVisita") %></div>
        </div>
        
        <div class="section">
            <h2>Información del cliente:</h2>
            <div class="info-item"><span class="info-label">Tu navegador es:</span> <%= request.getHeader("User-Agent") %></div>
            <div class="info-item"><span class="info-label">Tu dirección IP es:</span> <%= request.getRemoteAddr() %></div>
        </div>
        
        <div class="section">
            <h2>Formulario para agregar datos a la sesión:</h2>
            <form action="sesiones.jsp" method="post">
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                
                <div class="form-group">
                    <label for="color">Color favorito:</label>
                    <input type="text" id="color" name="color" required>
                </div>
                
                <button type="submit">Guardar en sesión</button>
            </form>
        </div>
        
        <% if(session.getAttribute("nombre") != null && session.getAttribute("color") != null) { %>
        <div class="section">
            <h2>Datos guardados en sesión:</h2>
            <div class="saved-data">
                <div class="data-item"><span class="info-label">Nombre:</span> <%= session.getAttribute("nombre") %></div>
                <div class="data-item"><span class="info-label">Color favorito:</span> <%= session.getAttribute("color") %></div>
            </div>
            <form action="sesiones.jsp" method="post" style="margin-top: 15px;">
                <input type="hidden" name="limpiar" value="true">
                <button type="submit" class="btn-secondary">Limpiar sesión</button>
            </form>
        </div>
        <% } %>
        
        <div class="footer">
            <p>Sistema de Manejo de Sesiones JSP - <%= new java.util.Date() %></p>
        </div>
    </div>
</body>
</html>