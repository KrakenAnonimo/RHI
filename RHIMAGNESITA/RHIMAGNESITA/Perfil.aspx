<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Perfil.aspx.cs" Inherits="Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <hr>
    <div class="container bootstrap snippet">
        <div class="row">
            <div class="col-sm-10">
                <h1>Perfil</h1>
            </div>
            <div class="col-sm-1">
                <a href="/users" class="pull-right">
                    <img title="profile image" class="img-circle img-responsive" src="Vista/PgPrin/img/apple-touch-icon.png"></a>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3">
                <!--left col-->
                <div class="text-center">
                    <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                    <h6>Cargar una nueva foto...</h6>
                    <input type="file" class="text-center center-block file-upload">
                </div>
                <br>
                <ul class="list-group">
                    <li class="list-group-item text-muted">Actividad <i class="fa fa-dashboard fa-1x"></i></li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>
                        <asp:Label ID="lblRol" runat="server" Text=""></asp:Label></strong></span><asp:Label ID="lblidU" runat="server" Text=""></asp:Label></li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Ordenes</strong></span>O</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Tareas</strong></span>T</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong>Planificaciones</strong></span>P</li>
                </ul>
            </div>
            <!--/col-3-->
            <div class="col-sm-9">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="perfil.aspx">Inicio</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <hr>
                        <form class="form" action="##" method="post" id="Perfil">
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="Documento">
                                        <h4>Documento</h4>
                                    </label>
                                    <asp:Label ID="lblDocumento" runat="server" Text="" class="form-control"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="Nombre">
                                        <h4>Nombre</h4>
                                    </label>
                                    <asp:Label ID="lblNombre" runat="server" Text="" class="form-control"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="Apellido">
                                        <h4>Apellido</h4>
                                    </label>
                                    <asp:Label ID="lblApellido" runat="server" Text="" class="form-control"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="Telefono">
                                        <h4>Telefono</h4>
                                    </label>
                                    <asp:Label ID="lblTelefono" runat="server" Text="" class="form-control"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="email">
                                        <h4>Email</h4>
                                    </label>
                                    <asp:Label ID="lblEmail" runat="server" Text="" class="form-control"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="Clave">
                                        <h4>Clave</h4>
                                    </label>
                                    <asp:Label ID="lblClave" runat="server" Text="" class="form-control"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="Ciudad">
                                        <h4>Ciudad</h4>
                                    </label>
                                    <asp:Label ID="lblCiudad" runat="server" Text="" class="form-control"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="Direccion">
                                        <h4>Direccion</h4>
                                    </label>
                                    <asp:Label ID="lblDireccion" runat="server" Text="" class="form-control"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" />
                                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" class="btn btn-danger btn-sm" />
                                </div>
                                <asp:SqlDataSource ID="SqldsDatos" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.IdRol, Rol.Rol, Usuario.IdUsuario, Usuario.Documento, Usuario.Nombre, Usuario.Apellido, Usuario.Telefono, Usuario.Email, Usuario.Ciudad, Usuario.Direccion, Usuario.IdRol AS Expr1 FROM Rol INNER JOIN Usuario ON Rol.IdRol = Usuario.IdRol WHERE (Usuario.IdUsuario = @idUsuario)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="idUsuario" SessionField="idUsuario" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </form>
                        <hr>
                    </div>
                </div>
            <!--/tab-content-->

        </div>
        <!--/col-9-->
    </div>
    <!--/row-->
</asp:Content>
