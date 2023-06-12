<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="WTramites.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .login-container {
            width: max-content;
            margin: 0 auto;
            background: white;
            border-radius: 5px;
            padding: 20px;
            margin-top: 50px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            background-color: #2e3d50;
            color: white;
        }

        .login-container label {
            display: block;
            margin-bottom: 10px;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-bottom: 20px;
        }

        .login-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background: #8894a2;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .error-message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <form id="form1" runat="server" onsubmit="return validateForm()">
            <label for="txtUser">Usuario:</label>
            <input type="text" id="txtUser" name="txtUser" runat="server" />

            <br />

            <label for="txtPass">Contraseña:</label>
            <input type="password" id="txtPass" name="txtPass" runat="server" />

            <br />

            <input type="submit" value="Iniciar sesión" runat="server" OnServerClick="btnIniciarSesion_Click" PostBackUrl="inicio.aspx" />

            <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message" Visible="false"></asp:Label>
        </form>
    </div>

    <script>
        function validateForm() {
            var usuario = document.getElementById("txtUsuario").value;
            var contrasena = document.getElementById("txtContrasena").value;

            if (usuario === "" || contrasena === "") {
                document.getElementById("lblErrorMessage").innerText = "Por favor, ingrese tanto el usuario como la contraseña.";
                document.getElementById("lblErrorMessage").style.display = "block";
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
