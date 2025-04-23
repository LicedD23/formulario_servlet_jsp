<%-- 
    Document   : resultado
    Created on : 11/04/2025, 11:56:52 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de Validacion</title>
    </head>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            color: #f4f4f4;
            line-height: 1.6;
            padding: 0;
            margin: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .container {
            background-color: #5b585847;
            border-radius: 10px;
            box-shadow: 0 3px 20px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 90%;
            max-width: 600px;
            text-align: center;
        }
        
        h1 {
            color: #333;
            margin-bottom: 30px;
            font-size: 28px;
            position: relative;
            padding-bottom: 15px;
        }
        
        h1:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 4px;
            background-color: #333;
            border-radius: 2px;
        }
        
        p {
            margin: 15px 0;
            font-size: 18px;
        }
        
        .success-message {
            background-color: #333;
            border-left: 4px solid #020202;
            padding: 15px 20px;
            border-radius: 5px;
            text-align: left;
            margin-bottom: 20px;
        }
        
        .error-message {
            background-color: #333;
            border-left: 4px solid #000000;
            padding: 15px 20px;
            border-radius: 5px;
            text-align: left;
            margin-bottom: 20px;
        }
        
        .username {
            font-weight: bold;
            color: #ffffff;
        }
        
        a {
            display: inline-block;
            margin-top: 15px;
            padding: 12px 30px;
            background-color: #777575;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 500;
            transition: all 0.3s ease;
        }
        
        a:hover {
            background-color: #1e40af;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(37, 99, 235, 0.2);
        }
        
        .menu {
            margin-top: 30px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 15px;
        }
        
        .menu-item {
            background-color: #f3f4f6;
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            transition: all 0.3s ease;
            text-decoration: none;
            color: #374151;
            font-weight: 500;
        }
        
        .menu-item:hover {
            background-color: #e5e7eb;
            transform: translateY(-2px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bienvenido a este sitio web</h1>
        
        <% 
            Boolean valido = (Boolean)request.getAttribute("esValido");
            if(valido != null && valido) { 
        %>
            <div class="success-message">
                <p>Bienvenido, <span class="username">${usuario}</span></p>
                <p>Has iniciado sesión correctamente.</p>
            </div>
            
            <!-- Menú de opciones -->
            <div class="menu">

                <a href="perfil.jsp" class="menu-item">Inicio</a>
                <a href="configuracion.jsp" class="menu-item">Documentos</a>
                <a href="reportes.jsp" class="menu-item">Categoria</a>
                <a href="cerrarsesion.jsp" class="menu-item">Cerrar Sesión</a>
                <a href="sesiones.jsp" class="munu-item">Sesiones</a>

                <a href="perfil.jsp" class="menu-item">Perfil</a>
                <a href="configuracion.jsp" class="menu-item">Configuración</a>
                            </div>
            
        <% } else { %>
            <div class="error-message">
                <p>Usuario o contraseña incorrectos.</p>
            </div>
            <a href="login.jsp">Volver a intentar</a>
        <% } %>
    </div>
</body>
</html>
