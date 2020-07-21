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

        .auto-style1 {
            margin-right: 0px;
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
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
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
                                        <li><a href="#">Listas de Datos</a></li>
                                        <li class="active">Tablas</li>
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
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Roles</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IdRol" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="4">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" />
                                                <asp:BoundField DataField="IdRol" HeaderText="IdRol" ReadOnly="True" SortExpression="IdRol" Visible="False" />
                                                <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Rol] WHERE [IdRol] = @IdRol" InsertCommand="INSERT INTO [Rol] ([Rol]) VALUES (@Rol)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdRol], [Rol] FROM [Rol]" UpdateCommand="UPDATE [Rol] SET [Rol] = @Rol WHERE [IdRol] = @IdRol">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Rol" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Rol" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Supervisores</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" SelectText="Ver" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                                                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False" />
                                                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                                                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                                <asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Planificadores</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource3" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                                                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False" />
                                                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                                                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                                <asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Tecnicos</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource3" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                                                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False" />
                                                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                                                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                                <asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Soldadores</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource5" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                                                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False" />
                                                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                                                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                                <asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Sisos</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource6" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                                                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False" />
                                                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                                                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                                <asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Asistentes de Mtto</strong>
                                </div>
                                <div class="card-body">
                                    <!--inicio de la tabla-->
                                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource6" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Editar" />
                                            <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                                            <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False" />
                                            <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                            <asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                                        <DeleteParameters>
                                            <asp:Parameter Name="IdUsuario" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Documento" Type="String" />
                                            <asp:Parameter Name="Nombre" Type="String" />
                                            <asp:Parameter Name="Apellido" Type="String" />
                                            <asp:Parameter Name="Telefono" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="Clave" Type="String" />
                                            <asp:Parameter Name="Ciudad" Type="String" />
                                            <asp:Parameter Name="Direccion" Type="String" />
                                            <asp:Parameter Name="IdRol" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Documento" Type="String" />
                                            <asp:Parameter Name="Nombre" Type="String" />
                                            <asp:Parameter Name="Apellido" Type="String" />
                                            <asp:Parameter Name="Telefono" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="Clave" Type="String" />
                                            <asp:Parameter Name="Ciudad" Type="String" />
                                            <asp:Parameter Name="Direccion" Type="String" />
                                            <asp:Parameter Name="IdRol" Type="Int32" />
                                            <asp:Parameter Name="IdUsuario" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <!--Fin de la tabla-->
                                    <div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Usuarios</strong>
                                </div>
                                <div class="card-body">
                                    <!--inicio de la tabla-->
                                    <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource6" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                            <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                                            <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False" />
                                            <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                            <asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                                        <DeleteParameters>
                                            <asp:Parameter Name="IdUsuario" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Documento" Type="String" />
                                            <asp:Parameter Name="Nombre" Type="String" />
                                            <asp:Parameter Name="Apellido" Type="String" />
                                            <asp:Parameter Name="Telefono" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="Clave" Type="String" />
                                            <asp:Parameter Name="Ciudad" Type="String" />
                                            <asp:Parameter Name="Direccion" Type="String" />
                                            <asp:Parameter Name="IdRol" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Documento" Type="String" />
                                            <asp:Parameter Name="Nombre" Type="String" />
                                            <asp:Parameter Name="Apellido" Type="String" />
                                            <asp:Parameter Name="Telefono" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="Clave" Type="String" />
                                            <asp:Parameter Name="Ciudad" Type="String" />
                                            <asp:Parameter Name="Direccion" Type="String" />
                                            <asp:Parameter Name="IdRol" Type="Int32" />
                                            <asp:Parameter Name="IdUsuario" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <!--Fin de la tabla-->
                                    <div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Area</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataKeyNames="IdArea" DataSourceID="SqlDataSource9" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdArea" HeaderText="IdArea" ReadOnly="True" SortExpression="IdArea" Visible="False" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Ubicacion" HeaderText="Ubicacion" SortExpression="Ubicacion" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Area] WHERE [IdArea] = @IdArea" InsertCommand="INSERT INTO [Area] ([Nombre], [Ubicacion]) VALUES (@Nombre, @Ubicacion)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdArea], [Nombre], [Ubicacion] FROM [Area]" UpdateCommand="UPDATE [Area] SET [Nombre] = @Nombre, [Ubicacion] = @Ubicacion WHERE [IdArea] = @IdArea">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdArea" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Ubicacion" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Ubicacion" Type="String" />
                                                <asp:Parameter Name="IdArea" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Elementos</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" DataKeyNames="IdElemento" DataSourceID="SqlDataSource10" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" ReadOnly="True" SortExpression="IdElemento" Visible="False" />
                                                <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                                <asp:BoundField DataField="IdArea" HeaderText="IdArea" SortExpression="IdArea" Visible="False" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Elemento] WHERE [IdElemento] = @IdElemento" InsertCommand="INSERT INTO [Elemento] ([Codigo], [Nombre], [Descripcion], [Estado], [IdArea]) VALUES (@Codigo, @Nombre, @Descripcion, @Estado, @IdArea)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdElemento], [Codigo], [Nombre], [Descripcion], [Estado], [IdArea] FROM [Elemento]" UpdateCommand="UPDATE [Elemento] SET [Codigo] = @Codigo, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Estado] = @Estado, [IdArea] = @IdArea WHERE [IdElemento] = @IdElemento">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Codigo" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="Estado" Type="String" />
                                                <asp:Parameter Name="IdArea" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Codigo" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="Estado" Type="String" />
                                                <asp:Parameter Name="IdArea" Type="Int32" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Material</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataKeyNames="IdMaterial" DataSourceID="SqlDataSource11" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdMaterial" HeaderText="IdMaterial" ReadOnly="True" SortExpression="IdMaterial" Visible="False" />
                                                <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                                <asp:BoundField DataField="Unidad" HeaderText="Unidad" SortExpression="Unidad" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Material] WHERE [IdMaterial] = @IdMaterial" InsertCommand="INSERT INTO [Material] ([Codigo], [Nombre], [Descripcion], [Unidad]) VALUES (@Codigo, @Nombre, @Descripcion, @Unidad)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdMaterial], [Codigo], [Nombre], [Descripcion], [Unidad] FROM [Material]" UpdateCommand="UPDATE [Material] SET [Codigo] = @Codigo, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Unidad] = @Unidad WHERE [IdMaterial] = @IdMaterial">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdMaterial" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Codigo" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="Unidad" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Codigo" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="Unidad" Type="String" />
                                                <asp:Parameter Name="IdMaterial" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Ordenes de Mtto Correctivo</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" DataKeyNames="IdOrdenMttoC" DataSourceID="SqlDataSource12" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdOrdenMttoC" HeaderText="IdOrdenMttoC" ReadOnly="True" SortExpression="IdOrdenMttoC" Visible="False" />
                                                <asp:BoundField DataField="NumOrden" HeaderText="NumOrden" SortExpression="NumOrden" />
                                                <asp:BoundField DataField="Disciplina" HeaderText="Disciplina" SortExpression="Disciplina" />
                                                <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio" />
                                                <asp:BoundField DataField="HoraInicio" HeaderText="HoraInicio" SortExpression="HoraInicio" />
                                                <asp:BoundField DataField="FechaFinal" HeaderText="FechaFinal" SortExpression="FechaFinal" />
                                                <asp:BoundField DataField="HoraFinal" HeaderText="HoraFinal" SortExpression="HoraFinal" />
                                                <asp:BoundField DataField="Ejecutado" HeaderText="Ejecutado" SortExpression="Ejecutado" />
                                                <asp:BoundField DataField="TrabajoIE" HeaderText="TrabajoIE" SortExpression="TrabajoIE" />
                                                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                                                <asp:BoundField DataField="Revisado" HeaderText="Revisado" SortExpression="Revisado" />
                                                <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" SortExpression="IdOrdenMttoP" Visible="False" />
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" Visible="False" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [OrdenMttoCorrectivo] WHERE [IdOrdenMttoC] = @IdOrdenMttoC" InsertCommand="INSERT INTO [OrdenMttoCorrectivo] ([NumOrden], [Disciplina], [FechaInicio], [HoraInicio], [FechaFinal], [HoraFinal], [Ejecutado], [TrabajoIE], [Observaciones], [Revisado], [IdOrdenMttoP], [IdUsuario]) VALUES (@NumOrden, @Disciplina, @FechaInicio, @HoraInicio, @FechaFinal, @HoraFinal, @Ejecutado, @TrabajoIE, @Observaciones, @Revisado, @IdOrdenMttoP, @IdUsuario)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdOrdenMttoC], [NumOrden], [Disciplina], [FechaInicio], [HoraInicio], [FechaFinal], [HoraFinal], [Ejecutado], [TrabajoIE], [Observaciones], [Revisado], [IdOrdenMttoP], [IdUsuario] FROM [OrdenMttoCorrectivo]" UpdateCommand="UPDATE [OrdenMttoCorrectivo] SET [NumOrden] = @NumOrden, [Disciplina] = @Disciplina, [FechaInicio] = @FechaInicio, [HoraInicio] = @HoraInicio, [FechaFinal] = @FechaFinal, [HoraFinal] = @HoraFinal, [Ejecutado] = @Ejecutado, [TrabajoIE] = @TrabajoIE, [Observaciones] = @Observaciones, [Revisado] = @Revisado, [IdOrdenMttoP] = @IdOrdenMttoP, [IdUsuario] = @IdUsuario WHERE [IdOrdenMttoC] = @IdOrdenMttoC">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdOrdenMttoC" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="NumOrden" Type="Int32" />
                                                <asp:Parameter Name="Disciplina" Type="String" />
                                                <asp:Parameter Name="FechaInicio" Type="String" />
                                                <asp:Parameter DbType="Time" Name="HoraInicio" />
                                                <asp:Parameter Name="FechaFinal" Type="String" />
                                                <asp:Parameter DbType="Time" Name="HoraFinal" />
                                                <asp:Parameter Name="Ejecutado" Type="String" />
                                                <asp:Parameter Name="TrabajoIE" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="Revisado" Type="String" />
                                                <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="NumOrden" Type="Int32" />
                                                <asp:Parameter Name="Disciplina" Type="String" />
                                                <asp:Parameter Name="FechaInicio" Type="String" />
                                                <asp:Parameter DbType="Time" Name="HoraInicio" />
                                                <asp:Parameter Name="FechaFinal" Type="String" />
                                                <asp:Parameter DbType="Time" Name="HoraFinal" />
                                                <asp:Parameter Name="Ejecutado" Type="String" />
                                                <asp:Parameter Name="TrabajoIE" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="Revisado" Type="String" />
                                                <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                                <asp:Parameter Name="IdOrdenMttoC" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Ordenes de Mtto Preventivo</strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" DataKeyNames="IdOrdenMttoP" DataSourceID="SqlDataSource13" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" ReadOnly="True" SortExpression="IdOrdenMttoP" Visible="False" />
                                                <asp:BoundField DataField="NumOrden" HeaderText="NumOrden" SortExpression="NumOrden" />
                                                <asp:BoundField DataField="Disciplina" HeaderText="Disciplina" SortExpression="Disciplina" />
                                                <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio" />
                                                <asp:BoundField DataField="HoraInicio" HeaderText="HoraInicio" SortExpression="HoraInicio" />
                                                <asp:BoundField DataField="FechaFinal" HeaderText="FechaFinal" SortExpression="FechaFinal" />
                                                <asp:BoundField DataField="HoraFinal" HeaderText="HoraFinal" SortExpression="HoraFinal" />
                                                <asp:BoundField DataField="Ejecutado" HeaderText="Ejecutado" SortExpression="Ejecutado" />
                                                <asp:BoundField DataField="TrabajoIE" HeaderText="TrabajoIE" SortExpression="TrabajoIE" />
                                                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                                                <asp:BoundField DataField="Revisado" HeaderText="Revisado" SortExpression="Revisado" />
                                                <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" SortExpression="IdPlanificacion" Visible="False" />
                                                <asp:BoundField DataField="IdReporteAS" HeaderText="IdReporteAS" SortExpression="IdReporteAS" Visible="False" />
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" Visible="False" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [OrdenMttoPreventivo] WHERE [IdOrdenMttoP] = @IdOrdenMttoP" InsertCommand="INSERT INTO [OrdenMttoPreventivo] ([NumOrden], [Disciplina], [FechaInicio], [HoraInicio], [FechaFinal], [HoraFinal], [Ejecutado], [TrabajoIE], [Observaciones], [Revisado], [IdPlanificacion], [IdReporteAS], [IdUsuario]) VALUES (@NumOrden, @Disciplina, @FechaInicio, @HoraInicio, @FechaFinal, @HoraFinal, @Ejecutado, @TrabajoIE, @Observaciones, @Revisado, @IdPlanificacion, @IdReporteAS, @IdUsuario)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdOrdenMttoP], [NumOrden], [Disciplina], [FechaInicio], [HoraInicio], [FechaFinal], [HoraFinal], [Ejecutado], [TrabajoIE], [Observaciones], [Revisado], [IdPlanificacion], [IdReporteAS], [IdUsuario] FROM [OrdenMttoPreventivo]" UpdateCommand="UPDATE [OrdenMttoPreventivo] SET [NumOrden] = @NumOrden, [Disciplina] = @Disciplina, [FechaInicio] = @FechaInicio, [HoraInicio] = @HoraInicio, [FechaFinal] = @FechaFinal, [HoraFinal] = @HoraFinal, [Ejecutado] = @Ejecutado, [TrabajoIE] = @TrabajoIE, [Observaciones] = @Observaciones, [Revisado] = @Revisado, [IdPlanificacion] = @IdPlanificacion, [IdReporteAS] = @IdReporteAS, [IdUsuario] = @IdUsuario WHERE [IdOrdenMttoP] = @IdOrdenMttoP">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="NumOrden" Type="Int32" />
                                                <asp:Parameter Name="Disciplina" Type="String" />
                                                <asp:Parameter Name="FechaInicio" Type="String" />
                                                <asp:Parameter DbType="Time" Name="HoraInicio" />
                                                <asp:Parameter Name="FechaFinal" Type="String" />
                                                <asp:Parameter DbType="Time" Name="HoraFinal" />
                                                <asp:Parameter Name="Ejecutado" Type="String" />
                                                <asp:Parameter Name="TrabajoIE" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="Revisado" Type="String" />
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                                <asp:Parameter Name="IdReporteAS" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="NumOrden" Type="Int32" />
                                                <asp:Parameter Name="Disciplina" Type="String" />
                                                <asp:Parameter Name="FechaInicio" Type="String" />
                                                <asp:Parameter DbType="Time" Name="HoraInicio" />
                                                <asp:Parameter Name="FechaFinal" Type="String" />
                                                <asp:Parameter DbType="Time" Name="HoraFinal" />
                                                <asp:Parameter Name="Ejecutado" Type="String" />
                                                <asp:Parameter Name="TrabajoIE" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="Revisado" Type="String" />
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                                <asp:Parameter Name="IdReporteAS" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                                <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Planificaciones </strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlanificacion" DataSourceID="SqlDataSource14" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False" />
                                                <asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion" />
                                                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                                                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Planificacion] WHERE [IdPlanificacion] = @IdPlanificacion" InsertCommand="INSERT INTO [Planificacion] ([FechaPlanificacion], [Observaciones], [IdElemento]) VALUES (@FechaPlanificacion, @Observaciones, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPlanificacion], [FechaPlanificacion], [Observaciones], [IdElemento] FROM [Planificacion]" UpdateCommand="UPDATE [Planificacion] SET [FechaPlanificacion] = @FechaPlanificacion, [Observaciones] = @Observaciones, [IdElemento] = @IdElemento WHERE [IdPlanificacion] = @IdPlanificacion">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="FechaPlanificacion" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="FechaPlanificacion" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Reportes Averias Servivios </strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" DataKeyNames="IdReporteAS" DataSourceID="SqlDataSource15" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdReporteAS" HeaderText="IdReporteAS" ReadOnly="True" SortExpression="IdReporteAS" Visible="False" />
                                                <asp:BoundField DataField="NumReporte" HeaderText="NumReporte" SortExpression="NumReporte" />
                                                <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                                <asp:BoundField DataField="FechaReporte" HeaderText="FechaReporte" SortExpression="FechaReporte" />
                                                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" />
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [ReporteAveriaServicio] WHERE [IdReporteAS] = @IdReporteAS" InsertCommand="INSERT INTO [ReporteAveriaServicio] ([NumReporte], [Titulo], [Descripcion], [FechaReporte], [IdElemento], [IdUsuario]) VALUES (@NumReporte, @Titulo, @Descripcion, @FechaReporte, @IdElemento, @IdUsuario)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdReporteAS], [NumReporte], [Titulo], [Descripcion], [FechaReporte], [IdElemento], [IdUsuario] FROM [ReporteAveriaServicio]" UpdateCommand="UPDATE [ReporteAveriaServicio] SET [NumReporte] = @NumReporte, [Titulo] = @Titulo, [Descripcion] = @Descripcion, [FechaReporte] = @FechaReporte, [IdElemento] = @IdElemento, [IdUsuario] = @IdUsuario WHERE [IdReporteAS] = @IdReporteAS">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdReporteAS" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="NumReporte" Type="Int32" />
                                                <asp:Parameter Name="Titulo" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="FechaReporte" Type="String" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="NumReporte" Type="Int32" />
                                                <asp:Parameter Name="Titulo" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="FechaReporte" Type="String" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                                <asp:Parameter Name="IdReporteAS" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Tarea Averias Servicios </strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" DataKeyNames="IdTareaAS" DataSourceID="SqlDataSource16" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdTareaAS" HeaderText="IdTareaAS" ReadOnly="True" SortExpression="IdTareaAS" Visible="False" />
                                                <asp:BoundField DataField="NombreAS" HeaderText="NombreAS" SortExpression="NombreAS" />
                                                <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                                                <asp:BoundField DataField="FechaEjecucion" HeaderText="FechaEjecucion" SortExpression="FechaEjecucion" />
                                                <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" SortExpression="IdOrdenMttoP" />
                                                <asp:BoundField DataField="IdOrdenMttoC" HeaderText="IdOrdenMttoC" SortExpression="IdOrdenMttoC" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [TareaAveriaServicio] WHERE [IdTareaAS] = @IdTareaAS" InsertCommand="INSERT INTO [TareaAveriaServicio] ([NombreAS], [Duracion], [FechaEjecucion], [IdOrdenMttoP], [IdOrdenMttoC]) VALUES (@NombreAS, @Duracion, @FechaEjecucion, @IdOrdenMttoP, @IdOrdenMttoC)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdTareaAS], [NombreAS], [Duracion], [FechaEjecucion], [IdOrdenMttoP], [IdOrdenMttoC] FROM [TareaAveriaServicio]" UpdateCommand="UPDATE [TareaAveriaServicio] SET [NombreAS] = @NombreAS, [Duracion] = @Duracion, [FechaEjecucion] = @FechaEjecucion, [IdOrdenMttoP] = @IdOrdenMttoP, [IdOrdenMttoC] = @IdOrdenMttoC WHERE [IdTareaAS] = @IdTareaAS">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdTareaAS" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="NombreAS" Type="String" />
                                                <asp:Parameter Name="Duracion" Type="String" />
                                                <asp:Parameter Name="FechaEjecucion" Type="String" />
                                                <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                                                <asp:Parameter Name="IdOrdenMttoC" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="NombreAS" Type="String" />
                                                <asp:Parameter Name="Duracion" Type="String" />
                                                <asp:Parameter Name="FechaEjecucion" Type="String" />
                                                <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                                                <asp:Parameter Name="IdOrdenMttoC" Type="Int32" />
                                                <asp:Parameter Name="IdTareaAS" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Tarea Mtto </strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView17" runat="server" AutoGenerateColumns="False" DataKeyNames="IdTareaMtto" DataSourceID="SqlDataSource17" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdTareaMtto" HeaderText="IdTareaMtto" ReadOnly="True" SortExpression="IdTareaMtto" Visible="False" />
                                                <asp:BoundField DataField="NombreTM" HeaderText="NombreTM" SortExpression="NombreTM" />
                                                <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [TareaMtto] WHERE [IdTareaMtto] = @IdTareaMtto" InsertCommand="INSERT INTO [TareaMtto] ([NombreTM], [Duracion], [Descripcion], [IdElemento]) VALUES (@NombreTM, @Duracion, @Descripcion, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdTareaMtto], [NombreTM], [Duracion], [Descripcion], [IdElemento] FROM [TareaMtto]" UpdateCommand="UPDATE [TareaMtto] SET [NombreTM] = @NombreTM, [Duracion] = @Duracion, [Descripcion] = @Descripcion, [IdElemento] = @IdElemento WHERE [IdTareaMtto] = @IdTareaMtto">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="NombreTM" Type="String" />
                                                <asp:Parameter Name="Duracion" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="NombreTM" Type="String" />
                                                <asp:Parameter Name="Duracion" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                                <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Ejejcucion M </strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView18" runat="server" AutoGenerateColumns="False" DataKeyNames="IdEjecucionM" DataSourceID="SqlDataSource18" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdEjecucionM" HeaderText="IdEjecucionM" ReadOnly="True" SortExpression="IdEjecucionM" Visible="False" />
                                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                                <asp:BoundField DataField="FechaEjecucion" HeaderText="FechaEjecucion" SortExpression="FechaEjecucion" />
                                                <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                                                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                                                <asp:BoundField DataField="IdTareaMtto" HeaderText="IdTareaMtto" SortExpression="IdTareaMtto" />
                                                <asp:BoundField DataField="IdOrdenMtto" HeaderText="IdOrdenMtto" SortExpression="IdOrdenMtto" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [EjecucionM] WHERE [IdEjecucionM] = @IdEjecucionM" InsertCommand="INSERT INTO [EjecucionM] ([Estado], [FechaEjecucion], [Duracion], [Observaciones], [IdTareaMtto], [IdOrdenMtto]) VALUES (@Estado, @FechaEjecucion, @Duracion, @Observaciones, @IdTareaMtto, @IdOrdenMtto)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdEjecucionM], [Estado], [FechaEjecucion], [Duracion], [Observaciones], [IdTareaMtto], [IdOrdenMtto] FROM [EjecucionM]" UpdateCommand="UPDATE [EjecucionM] SET [Estado] = @Estado, [FechaEjecucion] = @FechaEjecucion, [Duracion] = @Duracion, [Observaciones] = @Observaciones, [IdTareaMtto] = @IdTareaMtto, [IdOrdenMtto] = @IdOrdenMtto WHERE [IdEjecucionM] = @IdEjecucionM">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdEjecucionM" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Estado" Type="String" />
                                                <asp:Parameter Name="FechaEjecucion" Type="String" />
                                                <asp:Parameter Name="Duracion" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                                                <asp:Parameter Name="IdOrdenMtto" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Estado" Type="String" />
                                                <asp:Parameter Name="FechaEjecucion" Type="String" />
                                                <asp:Parameter Name="Duracion" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                                                <asp:Parameter Name="IdOrdenMtto" Type="Int32" />
                                                <asp:Parameter Name="IdEjecucionM" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Uso Material </strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsoM" DataSourceID="SqlDataSource19" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdUsoM" HeaderText="IdUsoM" ReadOnly="True" SortExpression="IdUsoM" Visible="False" />
                                                <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                                                <asp:BoundField DataField="IdEjecucionM" HeaderText="IdEjecucionM" SortExpression="IdEjecucionM" />
                                                <asp:BoundField DataField="IdMaterial" HeaderText="IdMaterial" SortExpression="IdMaterial" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [UsoMaterial] WHERE [IdUsoM] = @IdUsoM" InsertCommand="INSERT INTO [UsoMaterial] ([Cantidad], [IdEjecucionM], [IdMaterial]) VALUES (@Cantidad, @IdEjecucionM, @IdMaterial)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsoM], [Cantidad], [IdEjecucionM], [IdMaterial] FROM [UsoMaterial]" UpdateCommand="UPDATE [UsoMaterial] SET [Cantidad] = @Cantidad, [IdEjecucionM] = @IdEjecucionM, [IdMaterial] = @IdMaterial WHERE [IdUsoM] = @IdUsoM">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdUsoM" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Cantidad" Type="String" />
                                                <asp:Parameter Name="IdEjecucionM" Type="Int32" />
                                                <asp:Parameter Name="IdMaterial" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Cantidad" Type="String" />
                                                <asp:Parameter Name="IdEjecucionM" Type="Int32" />
                                                <asp:Parameter Name="IdMaterial" Type="Int32" />
                                                <asp:Parameter Name="IdUsoM" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Uso Planificacion </strong>
                                </div>
                                <div class="card-body">
                                    <div>
                                        <!--inicio de la tabla-->
                                        <asp:GridView ID="GridView20" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuaPlanificacion" DataSourceID="SqlDataSource20" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:CommandField SelectText="Ver" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="Editar" />
                                                <asp:BoundField DataField="IdUsuaPlanificacion" HeaderText="IdUsuaPlanificacion" ReadOnly="True" SortExpression="IdUsuaPlanificacion" Visible="False" />
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" />
                                                <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" SortExpression="IdPlanificacion" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [UsuaPlanificacion] WHERE [IdUsuaPlanificacion] = @IdUsuaPlanificacion" InsertCommand="INSERT INTO [UsuaPlanificacion] ([IdUsuario], [IdPlanificacion]) VALUES (@IdUsuario, @IdPlanificacion)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuaPlanificacion], [IdUsuario], [IdPlanificacion] FROM [UsuaPlanificacion]" UpdateCommand="UPDATE [UsuaPlanificacion] SET [IdUsuario] = @IdUsuario, [IdPlanificacion] = @IdPlanificacion WHERE [IdUsuaPlanificacion] = @IdUsuaPlanificacion">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdUsuaPlanificacion" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                                <asp:Parameter Name="IdUsuaPlanificacion" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <!--Fin de la tabla-->
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- .animated -->
            </div>
            <!-- .content -->
            <div class="clearfix"></div>
            <footer class="site-footer">
                <div class="footer-inner bg-white">
                    <div class="row">
                        <div class="col-sm-6">
                            Copyright &copy; 2018 Ela Admin
                       
                        </div>
                        <div class="col-sm-6 text-right">
                            Designed by <a href="https://colorlib.com">Colorlib</a>
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
