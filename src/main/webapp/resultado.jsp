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
    <body>
        <h1>Bienvenido a este sitio web</h1>
          
    <%  
        Boolean valido = (Boolean)request.getAttribute("esValido"); 
        if(valido != null && valido) {  
    %> 
            <p>Bienvenido , ${usuario}!</p> 
        <p>Has iniciado sesión correctamente.</p> 
    <% } else { %> 
        <p>Usuario o contraseña incorrectos.</p> 
        <a href="login.jsp">Volver a intentar</a> 
    <%}%>
   
    <h2>Menu de opciones</h2>
    <div
        <form name="Menu" action="Menu de opciones" method="post">
            
            <input type="submit" value="Inicio" />
            <input type="submit" value="Documentos" />
            <input type="submit" value="Categorias" />
            <input type="submit" value="Ayuda" />
            
    </div>
   
                              
    </form> 
     
            
    </body>
</html>
