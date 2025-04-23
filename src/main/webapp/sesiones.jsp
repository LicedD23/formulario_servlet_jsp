<%-- 
    Document   : sesiones
    Created on : 23/04/2025, 8:46:23 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manejo de Sesiones</title> 
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background-color: #e0e0e0;
            margin: 0;
            padding: 20px;
            color: #333;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #f5f5f5;
            border-radius: 8px;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
            padding: 25px;
        }
        
        h1 {
            color: #1a1a1a;
            text-align: center;
            border-bottom: 2px solid #999;
            padding-bottom: 15px;
            margin-top: 0;
        }
        
        h2 {
            color: #404040;
            font-size: 1.2rem;
            margin-top: 20px;
            border-left: 4px solid #707070;
            padding-left: 10px;
        }
        
        p {
            margin-bottom: 10px;
            line-height: 1.5;
            color: #505050;
        }
        
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 6px;
            margin: 15px 0;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }
        
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
            background-color: #f9f9f9;
        }
        
        input[type="submit"] {
            background-color: #707070;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.2s;
        }
        
        input[type="submit"]:hover {
            background-color: #505050;
        }
        
        form input[value="Limpiar sesión"] {
            background-color: #8a8a8a;
        }
        
        form input[value="Limpiar sesión"]:hover {
            background-color: #757575;
        }
        
        .session-info, .client-info, .saved-data {
            background-color: #fff;
            padding: 15px;
            border-radius: 6px;
            margin-bottom: 20px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }
        
        .saved-data {
            background-color: #ececec;
        }
        
        @media (max-width: 600px) {
            .container {
                padding: 15px;
            }
            
            form {
                padding: 15px;
            }
        }
    </style>
</head> 
<body> 
    <div class="container">
        <h1>Manejo de Sesiones en JSP</h1> 
        
        <% 
            Integer visitas = (Integer) session.getAttribute("contadorVisitas"); 
            if (visitas == null) { 
                visitas = 1; 
                
            } else { 
                visitas++; 
            } 
            session.setAttribute("contadorVisitas", visitas); 
            
        
            String navegador = request.getHeader("User-Agent"); 
        %> 
        
        <div class="session-info">
            <h2>Información de sesión:</h2> 
            <p><strong>ID de sesión:</strong> <%= session.getId() %></p> 
            <p><strong>Número de visitas:</strong> <%= visitas %></p> 
            <p><strong>Fecha de primera visita:</strong>  
            <%  
                if(session.getAttribute("primeraVisita") == null) { 
                    session.setAttribute("primeraVisita", new java.util.Date()); 
                } 
                out.print(session.getAttribute("primeraVisita")); 
            %> 
            </p>
        </div>
        
        <div class="client-info">
            <h2>Información del cliente:</h2> 
            <p><strong>Tu navegador es:</strong> <%= navegador %></p> 
            <p><strong>Tu dirección IP es:</strong> <%= request.getRemoteAddr() %></p> 
        </div>
        
        <h2>Formulario para agregar datos a la sesión:</h2> 
        <form method="post"> 
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre"><br><br> 
            <label for="color">Color favorito:</label>
            <input type="text" id="color" name="color"><br><br> 
            <input type="submit" value="Guardar en sesión"> 
        </form> 
        
        <% 
        
            if(request.getMethod().equals("POST")) { 
                String nombre = request.getParameter("nombre"); 
                String color = request.getParameter("color"); 
                
                if(nombre != null && !nombre.trim().isEmpty()) { 
                    session.setAttribute("nombreUsuario", nombre); 
                } 
                
                if(color != null && !color.trim().isEmpty()) { 
                    session.setAttribute("colorFavorito", color); 
                } 
            } 
            
            
            String nombreGuardado = (String) session.getAttribute("nombreUsuario"); 
            String colorGuardado = (String) session.getAttribute("colorFavorito"); 
        %> 
        
        <% if(nombreGuardado != null || colorGuardado != null) { %> 
            <div class="saved-data">
                <h2>Datos guardados en sesión:</h2> 
                <% if(nombreGuardado != null) { %> 
                    <p><strong>Nombre:</strong> <%= nombreGuardado %></p> 
                <% } %> 
                <% if(colorGuardado != null) { %> 
                    <p><strong>Color favorito:</strong> <%= colorGuardado %></p> 
                <% } %>
            </div>
            <form method="post" action="?accion=limpiar"> 
                <input type="hidden" name="accion" value="limpiar"> 
                <input type="submit" value="Limpiar sesión"> 
            </form> 
        <% } %> 
        
        <% 
        
            if("limpiar".equals(request.getParameter("accion"))) { 
                session.invalidate(); 
                response.sendRedirect("sesiones.jsp"); 
            } 
        %> 
    </div>
</body> 
</html>