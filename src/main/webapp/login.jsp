<%-- 
    Document   : login
    Created on : 11/04/2025, 11:43:09 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login de usuario</title>
    </head>
    <body>
        <div>Ingreso Usuario</div>
        <form name="Ingreso" action="ValidarUsuario" method="post">
            <br><br>
            Usuario:<input type="text" name="usuario" value="" />
            <br><br>
            Clave:<input type="password" name="clave" value="" />
            <br><br>
            <input type="submit" value="Ingresar" />
            <br><br>
        </form>
    </body>
</html>
