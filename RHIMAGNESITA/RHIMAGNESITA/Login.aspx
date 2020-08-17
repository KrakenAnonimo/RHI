<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <title>Login/Sing up</title>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="Vista/Login/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <!-- partial:index.partial.html -->
        <p class="tip">Click on button in image container</p>
        <div class="cont">
            <div class="form sign-in">
                <h2>Logearse</h2>
                <label>
                    <span>Email</span>
                    <input type="email" />
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" />
                </label>
                <p class="forgot-pass">Olvido la contraseña?</p>
                <button type="button" class="submit">Sign In</button>
            </div>
            <div class="sub-cont">
                <div class="img">
                    <div class="img__text m--up">
                        <h2>Es Nuevo?</h2>
                        <p>Regístrate Ahora!</p>
                    </div>
                    <div class="img__text m--in">
                        <h2>Ya tiene una cuenta?</h2>
                        <p>Si ya tiene una cuenta, inicie sesión.
                        </p>
                    </div>
                    <div class="img__btn">
                        <span class="m--up">Registrarse</span>
                        <span class="m--in">Logearse</span>
                    </div>
                </div>
                <div class="form sign-up">
                    <h2>Registrarse</h2>
                    <label>
                        <span>Nombre</span>
                        <input type="text" />
                    </label>
                    <label>
                        <span>Email</span>
                        <input type="email" />
                    </label>
                    <label>
                        <span>Password</span>
                        <input type="password" />
                    </label>
                    <button type="button" class="submit">Sign Up</button>
                    <button type="button" class="fb-btn">Join with <span>facebook</span></button>
                </div>
            </div>
        </div>

        <!-- partial -->
        <script src="/Vista/Login/script.js"></script>
    </form>
</body>
</html>
