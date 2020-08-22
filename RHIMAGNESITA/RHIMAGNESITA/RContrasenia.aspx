<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RContrasenia.aspx.cs" Inherits="RContrasenia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Recuperar Contraseña</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link rel="apple-touch-icon" sizes="76x76" href="Vista/Login/assets/img/favicon.png" />
    <link rel="icon" type="image/png" href="Vista/Login/assets/img/favicon.png" />

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

    <!-- CSS Files -->
    <link href="Vista/Login/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Vista/Login/assets/css/material-bootstrap-wizard.css" rel="stylesheet" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="Vista/Login/assets/css/demo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="image-container set-full-height" style="background-image: url('Vista/Login/assets/img/wizard-book.jpg')">
            <!--   Creative Tim Branding   -->
            <a href="index.aspx">
                <div class="logo-container">
                    <div class="logo">
                        <img src="Vista/Login/assets/img/new_logo.png">
                    </div>
                    <div class="brand">
                        RHI-Magnesita
                    </div>
                </div>
            </a>

            <!--  Made With Material Kit  -->
            <a href="index.aspx" class="made-with-mk">
                <div class="brand">MK</div>
                <div class="made-with">x <strong>-x</strong></div>
            </a>

            <!--   Big container   -->
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                        <!--      Wizard container        -->
                        <div class="wizard-container">
                            <div class="card wizard-card" data-color="red" id="wizard">
                                <form action="" method="">
                                    <!--        You can switch " data-color="blue" "  with one of the next bright colors: "green", "orange", "red", "purple"             -->

                                    <div class="wizard-header">
                                        <h3 class="wizard-title">Login/Sign up
                                        </h3>
                                        <h5>Recupere su contraseña para acceder al sistema.</h5>
                                    </div>
                                    <div class="wizard-navigation">
                                        <ul>
                                            <li><a href="#captain" data-toggle="tab">Recuperacion de contraseña</a></li>
                                        </ul>
                                    </div>
                                    <div class="tab-content">
                                        <div class="tab-pane" id="captain">
                                            <h4 class="info-text">Ingrese los campos requeridos.</h4>
                                            <div class="row">
                                                <div class="col-sm-10 col-sm-offset-1">
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="material-icons">email</i>
                                                        </span>
                                                        <div class="form-group label-floating">
                                                            <label class="control-label">Correo Electronico</label>
                                                            <asp:TextBox ID="txtRCorreo" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="wizard-footer">
                                            <div class="pull-right">
                                                <asp:Button ID="btnEnviarClave" runat="server" Text="Enviar" class='btn btn-finish btn-fill btn-danger btn-wd' OnClick="btnEnviarClave_Click" />
                                            </div>
                                            <div class="pull-left">
                                                <asp:Button ID="btnAtras" runat="server" Text="Atras" class='btn  btn-fill btn-default ' OnClick="btnAtras_Click" />
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div>
                                        </div>
                                    </div>
                                    
                                </form>
                            </div>
                        </div>
                        <!-- wizard container -->
                    </div>
                </div>
                <!-- row -->
            </div>
            <!--  big container -->

            <div class="footer">
                <div class="container text-center">
                    <i class="fa fa-heart heart"></i><a href="">Editado por el:</a> Grupo 2 <a href="">.</a>
                </div>
            </div>
        </div>
    </form>
</body>
<!--   Core JS Files   -->
<script src="Vista/Login/assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="Vista/Login/assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="Vista/Login/assets/js/jquery.bootstrap.js" type="text/javascript"></script>

<!--  Plugin for the Wizard -->
<script src="Vista/Login/assets/js/material-bootstrap-wizard.js"></script>

<!--  More information about jquery.validate here: 	 -->
<script src="Vista/Login/assets/js/jquery.validate.min.js"></script>
</body>
</html>
