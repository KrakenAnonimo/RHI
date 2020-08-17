<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <title>Login/Sing Up</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Raleway:300,600" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel="stylesheet" href="/Vista/Login/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <!-- partial:index.partial.html -->
        <div class="container">
            <section id="formHolder">

                <div class="row">

                    <!-- Brand Box -->
                    <div class="col-sm-6 brand">
                        <a href="index.aspx" class="logo">RHI <span>.</span></a>

                        <div class="heading">
                            <h2>Magnesita</h2>
                            <p>Company</p>
                        </div>

                        <div class="success-msg">
                            <p>Perfecto! Eres un nuevo miembro ahora.</p>
                            <a href="Login.aspx">Ingresar</a>
                        </div>
                    </div>


                    <!-- Form Box -->
                    <div class="col-sm-6 form">

                        <!-- Login Form -->
                        <div class="login form-peice">
                            <form class="login-form" action="#" method="post">
                                <div class="form-group">
                                    <label for="email">Email </label>
                                    <asp:TextBox ID="txtEmailLog" runat="server" class="email" TextMode="Email" ValidateRequestMode="Enabled"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="password">Contraseña</label>
                                    <asp:TextBox ID="txtPasswordLog" runat="server" class="pass" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox>
                                    <span class="error"></span>
                                </div>
                                <div class="CTA">
                                    <!--Boton ingresar -->
                                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />

                                    <!--fin del cod boton -->
                                    <a class="switch">Soy nuevo</a>
                                </div>
                            </form>
                        </div>

                        <!-- End Login Form -->


                        <!-- Signup Form -->
                        <div class="signup form-peice switched">
                            <form class="signup-form" action="#" method="post">

                                <div class="form-group">
                                    <label for="name">Nombre </label>
                                    <asp:TextBox ID="txtNombre" runat="server" class="name" TextMode="SingleLine"></asp:TextBox>
                                    <span class="error"></span>
                                </div>

                                <div class="form-group">
                                    <label for="email">Email </label>
                                    <asp:TextBox ID="txtEmail" runat="server" class="email" TextMode="Email"></asp:TextBox>
                                    <span class="error"></span>
                                </div>

                                <div class="form-group">
                                    <label for="phone">Numero Telefonico - <small>Opcional</small></label>
                                    <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="password">Contraseña</label>
                                    <asp:TextBox ID="txtPassword" runat="server" class="pass" TextMode="Password"></asp:TextBox>
                                    <span class="error"></span>
                                </div>

                                <div class="form-group">
                                    <label for="passwordCon">Confirmar Contraseña</label>
                                    <asp:TextBox ID="txtPasswordCon" runat="server" class="passConfirm" TextMode="Password"></asp:TextBox>
                                    <span class="error"></span>
                                </div>

                                <div class="CTA">
                                    <!--Boton ingresar -->
                                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />

                                    <!--fin del cod boton -->
                                    <a class="switch">Ya tengo una cuenta.</a>
                                </div>
                            </form>
                        </div>
                        <!-- End Signup Form -->
                    </div>
                </div>

            </section>


            <footer>
                <p>
                    Hecho por: <a target="_blank">Grupo 2</a>
                </p>
            </footer>

        </div>
    </form>
    <!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
    <script src="Vista/Login/script.js"></script>
    </form>
    <div>
        <asp:SqlDataSource ID="SqldsLogin" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.Rol, Usuario.Clave, Usuario.Email FROM Rol INNER JOIN Usuario ON Rol.IdRol = Usuario.IdRol WHERE (Usuario.Clave = @clave) AND (Usuario.Email = @usuario)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtEmailLog" Name="usuario" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtPasswordLog" Name="clave" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</body>
</html>
