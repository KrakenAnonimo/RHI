<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>RHI ADMIN </title>
    <meta name="description" content="RHI Admin panel">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="Vista/PnAdmin/images/favicon.png">
    <link rel="shortcut icon" href="Vista/PnAdmin/images/favicon.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="Vista/PnAdmin/assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="Vista/PnAdmin/assets/css/style.css">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />

    <style>
        #weatherWidget .currentDesc {
            color: #ffffff !important;
        }

        .traffic-chart {
            min-height: 335px;
        }

        #flotPie1 {
            height: 150px;
        }

            #flotPie1 td {
                padding: 3px;
            }

            #flotPie1 table {
                top: 20px !important;
                right: -10px !important;
            }

        .chart-container {
            display: table;
            min-width: 270px;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        #flotLine5 {
            height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }

        #cellPaiChart {
            height: 160px;
        }
    </style>
</head>

<body>
    <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="PanelAdmin.aspx"><i class="menu-icon fa fa-laptop"></i>Inicio</a>
                    </li>
                    <li class="menu-title">Elementos</li>
                    <!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-th"></i>Registros</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-th"></i><a href="FormulariosAdmin.aspx">Registro de datos</a></li>
                        </ul>
                    </li>

                    <li class="menu-title">Reportes </li>
                    <!-- /.menu-title -->

                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-tasks"></i>Listas de datos</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon  fa fa-table"></i><a href="ListasAdmin.aspx">Tablas</a></li>
                        </ul>
                    </li>
                    <li class="menu-title">Extras</li>
                    <!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="menu-icon fa fa-glass"></i>Pages</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="page-login.html">Salir</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->
    <!-- Right Panel -->
    <div id="right-panel" class="right-panel">
        <!-- Header-->
        <header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href="./">
                        <img src="Vista/PnAdmin/images/logo.png" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="./">
                        <img src="Vista/PnAdmin/images/logo.png" alt="Logo"></a>
                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Buscar ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>
                        <div class="dropdown for-message">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="message" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-envelope"></i>
                                <span class="count bg-primary">0</span>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="message">
                                <p class="red">Tienes 4 emails</p>
                                <a class="dropdown-item media" href="#">
                                    <span class="photo media-left">
                                        <img alt="avatar" src="Vista/PnAdmin/images/avatar/1.jpg"></span>
                                    <div class="message media-body">
                                        <span class="name float-left">Jonathan Smith</span>
                                        <span class="time float-right">Just now</span>
                                        <p>Hello, this is an example msg</p>
                                    </div>
                                </a>
                                <a class="dropdown-item media" href="#">
                                    <span class="photo media-left">
                                        <img alt="avatar" src="Vista/PnAdmin/images/avatar/2.jpg"></span>
                                    <div class="message media-body">
                                        <span class="name float-left">Jack Sanders</span>
                                        <span class="time float-right">5 minutes ago</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur</p>
                                    </div>
                                </a>
                                <a class="dropdown-item media" href="#">
                                    <span class="photo media-left">
                                        <img alt="avatar" src="Vista/PnAdmin/images/avatar/3.jpg"></span>
                                    <div class="message media-body">
                                        <span class="name float-left">Cheryl Wheeler</span>
                                        <span class="time float-right">10 minutes ago</span>
                                        <p>Hello, this is an example msg</p>
                                    </div>
                                </a>
                                <a class="dropdown-item media" href="#">
                                    <span class="photo media-left">
                                        <img alt="avatar" src="Vista/PnAdmin/images/avatar/4.jpg"></span>
                                    <div class="message media-body">
                                        <span class="name float-left">Rachel Santos</span>
                                        <span class="time float-right">15 minutes ago</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="Vista/PnAdmin/images/adminimagen.png" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa- user"></i>Mi Perfil</a>

                            <a class="nav-link" href="#"><i class="fa fa- user"></i>Notificaciones <span class="count">13</span></a>

                            <a class="nav-link" href="#"><i class="fa fa -cog"></i>Configuracion</a>

                            <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Salir</a>
                        </div>
                    </div>

                </div>
            </div>
        </header>
        <!-- /#header -->
        <!-- Header-->
        <form id="form1" runat="server">
            <div class="breadcrumbs">
                <div class="breadcrumbs-inner">
                    <div class="row m-0">
                        <div class="col-sm-4">
                            <div class="page-header float-left">
                                <div class="page-title">
                                    <h1>Panel</h1>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="page-header float-right">
                                <div class="page-title">
                                    <ol class="breadcrumb text-right">
                                        <li><a href="#">Panel</a></li>
                                        <li><a href="#">Registros</a></li>
                                        <li class="active">Registro de datos</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="animated fadeIn">
                    <div class="row">
                        <!--Formulario Rol-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Roles</strong></div>
                                <div class="card-body card-block">
                                    <div class="form-group">
                                        <label for="Rol" class=" form-control-label">Nombre del Rol</label><input type="text" id="Rol" placeholder="Nombre del Rol" class="form-control">
                                    </div>
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                        </div>
                        <!--Formulario Area-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Area</strong></div>
                                <div class="card-body card-block">
                                    <div class="form-group">
                                        <label for="NombreA" class=" form-control-label">Nombre</label><input type="text" id="NombreA" placeholder="Nombre del area" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Ubicacion" class=" form-control-label">Ubicacion</label><input type="text" id="UbicacionA" placeholder="Ubicacion" class="form-control">
                                    </div>
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                        </div>
                        <!--Formulario Usuario-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong class="card-title">Usuarios </strong></div>
                                <div class="card-body card-block">
                                    <div class="form-group">
                                        <label for="Documento" class=" form-control-label">Documento</label><input type="text" id="txtDocumento" placeholder="Ingrese el documento" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Nombre" class=" form-control-label">Nombre</label><input type="text" id="Nombre" placeholder="Ingrese su nombre" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Apellido" class=" form-control-label">Apellido</label><input type="text" id="Apellido" placeholder="Ingrese su apellido" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Telefono" class=" form-control-label">Telefono</label><input type="tel" id="Telefono" placeholder="Ingrese su telefono" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Email" class=" form-control-label">Email</label><input type="email" id="Email" placeholder="Email" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Clave" class=" form-control-label">Clave</label><input type="password" id="Clave" placeholder="Clave" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Ciudad" class=" form-control-label">Ciudad</label><input type="text" id="Ciudad" placeholder="Ciudad" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Direccion" class=" form-control-label">Direccion</label><input type="text" id="Direccion" placeholder="Direccion" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Rol</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="cmbRol" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                            <!-- .card -->
                        </div>
                        <!--/.col-->
                        <!--Formulario Material-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Material</strong></div>
                                <div class="card-body card-block">
                                    <div class="form-group">
                                        <label for="CodigoM" class=" form-control-label">Codigo</label><input type="number" id="CodigoM" placeholder="Codigo del material" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="NombreM" class=" form-control-label">Nombre</label><input type="text" id="NombreM" placeholder="Nombre del material" class="form-control">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Descripcion..." class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="vat" class=" form-control-label">Unidad</label><input type="text" id="UnidadM" placeholder="Unidad de material" class="form-control">
                                    </div>
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                        </div>

                        <!--Formulario TareaMtto-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Tarea de Mtto</strong></div>
                                <div class="card-body card-block">
                                    <div class="form-group">
                                        <label for="NombreTM" class=" form-control-label">Nombre</label><input type="text" id="NombreTM" placeholder="Nombre de la TareaMtto" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Duracion" class=" form-control-label">Duracion</label><input type="time" id="Duracion" placeholder="Duracion" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <div class="col col-md-3">
                                            <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Descripcion..." class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Elemento</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                        </div>
                        <!--Formulario Planificacion-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Planificacion</strong></div>
                                <div class="card-body card-block">
                                    <div class="form-group">
                                        <label for="FechaP" class=" form-control-label">Fecha Planificacion</label><input type="date" id="FechaP" placeholder="" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <div class="col col-md-3">
                                            <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Observaciones..." class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Elemento</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="cmbElemento1" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                        </div>
                        <!--Formulario Elemento-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Elemento</strong></div>
                                <div class="card-body card-block">
                                    <div class="form-group">
                                        <label for="CodigoE" class=" form-control-label">Codigo</label><input type="number" id="CodigoE" placeholder="Codigo del elemento" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="NombreE" class=" form-control-label">Nombre</label><input type="text" id="NombreE" placeholder="Nombre del elemento" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <div class="col col-md-3">
                                            <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Descripcion..." class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="EstadoE" class=" form-control-label">Estado</label><input type="text" id="EstadoE" placeholder="Estado del elemento" class="form-control">
                                    </div>
                                    <!-- Campo para el combo box-->
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                        </div>
                        <!--Formulario ReporteAVS-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Reporte Averia o Servicio</strong></div>
                                <div class="card-body card-block">
                                    <div class="form-group">
                                        <label for="NumeroR" class=" form-control-label">Numero de Reporte</label><input type="number" id="NumeroR" placeholder="Ingrese un numero de reporte" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Titulo" class=" form-control-label">Titulo</label><input type="text" id="Titulo" placeholder="Ingrese un titulo" class="form-control">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Descripcion..." class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="FechaR" class=" form-control-label">Fecha del soporte</label><input type="date" id="FechaR" placeholder="Fecha del reporte" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Usuario</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Elemento</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="cmbElemento" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                        </div>
                        <!--Formulario Orden MttoP-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Orden de Mtto Preventivo</strong></div>
                                <div class="card-body card-block">
                                    <div class="form-group">
                                        <label for="NombreO" class=" form-control-label">Nombre de la orden</label><input type="text" id="NombreO" placeholder="Nombre de la Orden de Mtto Preventivo" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Disciplina" class=" form-control-label">Disciplina</label><input type="text" id="Disciplina" placeholder="Diciplina" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="FechaOI" class=" form-control-label">Fecha Inicial</label><input type="date" id="FechaOI" placeholder="Fecha inicial del reporte" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="HoraI" class=" form-control-label">Hora Inicial</label><input type="time" id="HoraI" placeholder="Duracion" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="FechaOF" class=" form-control-label">Fecha Final</label><input type="date" id="FechaOF" placeholder="Fecha final del reporte" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="HoraF" class=" form-control-label">Hora Final</label><input type="time" id="HoraF" placeholder="Duracion" class="form-control">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="selectSm" class=" form-control-label">Ejecucion de la Orden</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <select name="SeleccionEjecucion" id="SeleccionEjecucion" class="form-control-sm form-control">
                                                <option value="0">Elija una opcion</option>
                                                <option value="1">Sin ejecutar</option>
                                                <option value="2">En Ejecucion</option>
                                                <option value="3">Finalizada</option>
                                                <option value="4">Cancelada</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col col-md-3">
                                            <label for="TrabajoIE" class=" form-control-label">Trabajo IE</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <select name="TrabajoIE" id="TrabajoIE" class="form-control-sm form-control">
                                                <option value="0">Elija una opcion</option>
                                                <option value="1">Interno</option>
                                                <option value="2">Externo</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col col-md-3">
                                            <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Observaciones..." class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col col-md-3">
                                            <label for="Revisado" class=" form-control-label">Revisado</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <select name="Revisado" id="Revisado" class="form-control-sm form-control">
                                                <option value="0">Elija una opcion</option>
                                                <option value="1">Revisado</option>
                                                <option value="2">No Revisado</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Planificacion</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="cmbPlanificacion" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Reporte Averia Servicio</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="cmbAveriaServicio" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Usuario</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                        </div>

                        <!--Formulario Orden MttoC-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Orden de Mtto Correctivo</strong></div>
                                <div class="card-body card-block">
                                    <div class="form-group">
                                        <label for="NombreO" class=" form-control-label">Nombre de la orden</label><input type="text" id="NombreO" placeholder="Nombre de la Orden de Mtto Preventivo" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="Disciplina" class=" form-control-label">Disciplina</label><input type="text" id="Disciplina" placeholder="Diciplina" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="FechaOI" class=" form-control-label">Fecha Inicial</label><input type="date" id="FechaOI" placeholder="Fecha inicial del reporte" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="HoraI" class=" form-control-label">Hora Inicial</label><input type="time" id="HoraI" placeholder="Duracion" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="FechaOF" class=" form-control-label">Fecha Final</label><input type="date" id="FechaOF" placeholder="Fecha final del reporte" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="HoraF" class=" form-control-label">Hora Final</label><input type="time" id="HoraF" placeholder="Duracion" class="form-control">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="selectSm" class=" form-control-label">Ejecucion de la Orden</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <select name="SeleccionEjecucion" id="SeleccionEjecucion" class="form-control-sm form-control">
                                                <option value="0">Elija una opcion</option>
                                                <option value="1">Sin ejecutar</option>
                                                <option value="2">En Ejecucion</option>
                                                <option value="3">Finalizada</option>
                                                <option value="4">Cancelada</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col col-md-3">
                                            <label for="TrabajoIE" class=" form-control-label">Trabajo IE</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <select name="TrabajoIE" id="TrabajoIE" class="form-control-sm form-control">
                                                <option value="0">Elija una opcion</option>
                                                <option value="1">Interno</option>
                                                <option value="2">Externo</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col col-md-3">
                                            <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Observaciones..." class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col col-md-3">
                                            <label for="Revisado" class=" form-control-label">Revisado</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <select name="Revisado" id="Revisado" class="form-control-sm form-control">
                                                <option value="0">Elija una opcion</option>
                                                <option value="1">Revisado</option>
                                                <option value="2">No Revisado</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Orden de Mtto Preventivo</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="cmbOrdenMttoP" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Usuario</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="cmbUsuario" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                        </div>
                        <!--Formulario EjecucionMtto-->
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header"><strong>Ejecucion Mtto</strong></div>
                                <div class="card-body card-block">
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="EstadoEMtto" class=" form-control-label">Estado</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <select name="EstadoEMtto" id="EstadoEMtto" class="form-control-sm form-control">
                                                <option value="0">Elija una opcion</option>
                                                <option value="1">Sin ejecutar</option>
                                                <option value="2">En Ejecucion</option>
                                                <option value="3">Finalizada</option>
                                                <option value="4">Cancelada</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="FechaEjecucion" class=" form-control-label">Fecha de ejecucion</label><input type="date" id="FechaEjecucion" placeholder="Fecha final del reporte" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="DuracionEMtto" class=" form-control-label">Duracion</label><input type="time" id="DuracionEMtto" placeholder="DuracionEMtto" class="form-control">
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Observaciones..." class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Tarea de Mantenimiento</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="cmbTareaMantenimiento" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <label for="selectSm" class="form-control-label">Orden de Mantenimiento</label>
                                        </div>
                                        <div class="text-left">
                                            <asp:DropDownList ID="cmbOdenMtto" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                    <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- .animated -->
            </div>
        </form>
        <!-- .content -->

        <div class="clearfix"></div>

        <footer class="site-footer">
            <div class="footer-inner bg-white">
                <div class="row">
                    <div class="col-sm-6">
                        Copyright &copy; por edicion Grupo-2
                    </div>
                    <div class="col-sm-6 text-right">
                        <a href="">Grupo-2</a>
                    </div>
                </div>
            </div>
            </form>
        </footer>

    </div>
    <!-- /#right-panel -->

    <!-- Right Panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="Vista/PnAdmin/assets/js/main.js"></script>


</body>
</html>
