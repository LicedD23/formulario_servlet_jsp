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
       
          <style>
    body {
      font-family: 'Segoe UI', Arial, sans-serif;
      margin: 0;
      padding: 400px;
      background-color: #cde0fb96;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100px;
    }
    
    .login-container {
      background-color: #00a4ff33;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      padding: 40px;
      width: 100%;
      max-width: 400px;
    }
    
    .login-header {
      text-align: center;
      margin-bottom: 30px;
    }
    
    .login-header h1 {
      color: #192531;
      font-size: 28px;
      font-weight: 600;
      margin: 0;
    }
    
    .input-group {
      margin-bottom: 20px;
    }
    
    .input-group label {
      display: block;
      margin-bottom: 6px;
      color: #424e57;
      font-weight: 500;
    }
    
    .input-group input {
      width: 100%;
      padding: 12px;
      border: 1px solid #ddd;
      border-radius: 4px;
      font-size: 16px;
      box-sizing: border-box;
      transition: border-color 0.3s;
    }
    
    .input-group input:focus {
      border-color: #3498db;
      outline: none;
    }
    
    .submit-button {
      background-color: #00365b;
      color: white;
      border: none;
      border-radius: 4px;
      padding: 12px;
      font-size: 16px;
      font-weight: 500;
      width: 100%;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    
    .submit-button:hover {
      background-color: #2980b9;
    }
    
    @media (max-width: 480px) {
      .login-container {
        padding: 30px 20px;
      }
    }
  </style>
    </head>
    <body>
        <div class="login-container">
    <div class="login-header">
      <h1>Ingreso de Usuario</h1>
    </div>
    <form name="Ingreso" action="ValidarUsuario" method="POST">
      <div class="input-group">
        <label for="usuario">Usuario:</label>
        <input type="text" id="usuario" name="usuario" placeholder="Ingrese su nombre de usuario" required />
      </div>
      <div class="input-group">
        <label for="clave">Clave:</label>
        <input type="password" id="clave" name="clave" placeholder="Ingrese su contraseña" required />
      </div>
      <button type="submit" class="submit-button">Ingresar</button>
    </form>
  </div>
    </body>
</html>
