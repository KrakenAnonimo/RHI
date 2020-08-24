<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorASP.aspx.cs" Inherits="ErrorASP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8">
    <title>RHI-MAGNESITA</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <style type="text/css">
        .auto-style5 {
            height: 20px;
            color: rgb(0, 0, 0);
            background: #000000;
            text-align: center;
        }

        .auto-style6 {
            height: 20px;
            color: rgb(0, 0, 0);
            background: #999999;
            text-align: center;
        }

        .auto-style7 {
            text-align: center;
        }
    </style>

    <!-- Favicons -->
    <link href="Vista/PgPrin/img/favicon.png" rel="icon">
    <link href="Vista/PgPrin/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="Vista/PgPrin/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="Vista/PgPrin/lib/nivo-slider/css/nivo-slider.css" rel="stylesheet">
    <link href="Vista/PgPrin/lib/owlcarousel/owl.carousel.css" rel="stylesheet">
    <link href="Vista/PgPrin/lib/owlcarousel/owl.transitions.css" rel="stylesheet">
    <link href="Vista/PgPrin/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="Vista/PgPrin/lib/animate/animate.min.css" rel="stylesheet">
    <link href="Vista/PgPrin/lib/venobox/venobox.css" rel="stylesheet">

    <!-- Nivo Slider Theme -->
    <link href="Vista/PgPrin/css/nivo-slider-theme.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="Vista/PgPrin/css/style.css" rel="stylesheet">

    <!-- Responsive Stylesheet File -->
    <link href="Vista/PgPrin/css/responsive.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div id="preloader"></div>
                <header>
                    <!-- header-area start -->
                    <div id="sticker" class="header-area">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">

                                    <!-- Navigation -->
                                    <nav class="navbar navbar-default">
                                        <!-- Brand and toggle get grouped for better mobile display -->
                                        <div class="navbar-header">
                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".bs-example-navbar-collapse-1" aria-expanded="false">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                            <!-- Brand -->
                                            <a class="navbar-brand page-scroll sticky-logo" href="inicio1.aspx">
                                                <h1><span>RHI-</span>MAGNESITA</h1>
                                                <!-- Uncomment below if you prefer to use an image logo -->
                                                <!-- <img src="img/logo.png" alt="" title=""> -->
                                            </a>
                                        </div>
                                        <!-- Collect the nav links, forms, and other content for toggling -->
                                        <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1" id="navbar-example">
                                            <ul class="nav navbar-nav navbar-right">

                                                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-sliders" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                        <path fill-rule="evenodd" d="M14 3.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0zM11.5 5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3zM7 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0zM4.5 10a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3zm9.5 3.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0zM11.5 15a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z" />
                                                        <path fill-rule="evenodd" d="M9.5 4H0V3h9.5v1zM16 4h-2.5V3H16v1zM9.5 14H0v-1h9.5v1zm6.5 0h-2.5v-1H16v1zM6.5 9H16V8H6.5v1zM0 9h2.5V8H0v1z" />
                                                    </svg><span class="caret"></span></a>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a class="nav-link" href="Perfil.aspx"><i class="fa fa- user"></i>Mi Perfil</a></li>
                                                        <li><a class="page-scroll" href="index.aspx" id="btnsalir" onclick="btnSalir_Click">Salir</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </nav>
                                    </ul>
                                </div>
                                <!-- navbar-collapse -->
                                </nav>
                                <!-- END: Navigation -->
                            </div>
                        </div>
                    </div>
            </div>
            <div>
                <img src="Vista/PgPrin/img/xddx.jpg" width="100%" class="img-fluid" alt="Responsive image" />
            </div>
            <div class="auto-style6">
                <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
                &nbsp;<asp:Label ID="lblUsuario" runat="server" Text=""></asp:Label>
            </div>

            <p class="auto-style5"></p>
            <div class="auto-style7">
                <h1>Error de Acceso al Control de Registro de datos, ingrese con alguno de estos roles (Admin,Supervisor,Planificador).</h1>
            </div>
            <!-- header-area end -->
            </header>
            <!-- header end -->
        </div>
    </form>
    <!--fin Var-->
    <!--Pie-->
    <div>
        <footer>
            <p class="auto-style5"></p>
            <div class="footer-area-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="copyright text-center">
                                <p>
                                    &copy; Copyright <strong>RIH-MAGNESITA</strong>. Todos los derechos reservados.
                                </p>
                            </div>
                            <div class="credits">
                                Editado por el <a href="">Grupo-2</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="Vista/PgPrin/lib/jquery/jquery.min.js"></script>
    <script src="Vista/PgPrin/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="Vista/PgPrin/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="Vista/PgPrin/lib/venobox/venobox.min.js"></script>
    <script src="Vista/PgPrin/lib/knob/jquery.knob.js"></script>
    <script src="Vista/PgPrin/lib/wow/wow.min.js"></script>
    <script src="Vista/PgPrin/lib/parallax/parallax.js"></script>
    <script src="Vista/PgPrin/lib/easing/easing.min.js"></script>
    <script src="Vista/PgPrin/lib/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
    <script src="Vista/PgPrin/lib/appear/jquery.appear.js"></script>
    <script src="Vista/PgPrin/lib/isotope/isotope.pkgd.min.js"></script>

    <script src="Vista/PgPrin/js/main.js"></script>
    </div>
        </form>
</body>
</html>
