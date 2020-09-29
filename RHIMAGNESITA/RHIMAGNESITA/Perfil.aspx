<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="Perfil.aspx.cs" Inherits="Perfil" %>

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
        <script src="Vista/Notificaciones/js/push.min.js"></script>



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
    </div>
    <div class="row">
        <div class="col-sm-3">
            <!--left col-->
            <div class="text-center">
                <asp:Image ID="imgFoto" runat="server" class="avatar img-circle img-thumbnail" />
                <h6>Cargar una nueva foto...</h6>
                <asp:FileUpload ID="fUploadImagen" runat="server" class="text-center center-block file-upload" />
                <asp:Button ID="btnCargarImagen" runat="server" Text="Cargar Imagen " class="btn btn-warning btn-sm" OnClick="btnCargarImagen_Click" />
            </div>
            <br>
            <ul class="list-group">
                <li class="list-group-item text-muted">Actividad <i class="fa fa-dashboard fa-1x"></i></li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Id Rol:
                    
                    <asp:Label ID="lblRol" runat="server" Text=""></asp:Label></strong></span>Id Usuario:
                    <asp:Label ID="lblidU" runat="server" Text=""></asp:Label></li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Ordenes:
                    <asp:Button ID="btnOrdenes" runat="server" class="list-group-item text-muted" OnClick="btnOrdenes_Click"/></strong></span>O</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Tareas:
                    <asp:Label ID="lblT" runat="server" Text=""></asp:Label></strong></span>T</li>
                <li class="list-group-item text-right"><span class="pull-left"><strong>Planificaciones:
                    <asp:Label ID="lblP" runat="server" Text=""></asp:Label></strong></span>P</li>
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
                                <asp:Label ID="lblClave" runat="server" class="form-control"></asp:Label>
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
                            </div>
                            <asp:SqlDataSource ID="SqldsDatos" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.IdRol, Rol.Rol, Usuario.IdUsuario, Usuario.Documento, Usuario.Nombre, Usuario.Apellido, Usuario.Telefono, Usuario.Email, Usuario.Clave, Usuario.Ciudad, Usuario.Direccion, Usuario.IdRol AS Expr2, Usuario.IdUsuario AS Expr1, Usuario.Foto FROM Rol INNER JOIN Usuario ON Rol.IdRol = Usuario.IdRol WHERE (Usuario.Email = @correo)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="correo" SessionField="Correo" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqldsFoto" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" UpdateCommand="UPDATE Usuario SET Foto = @foto, Email = @correo WHERE (Email = @correo)">
                                <UpdateParameters>
                                    <asp:SessionParameter DefaultValue="&quot;&quot;" Name="foto" SessionField="foto" />
                                    <asp:SessionParameter DefaultValue="" Name="correo" SessionField="Correo" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>

                        <!-- Button to Open the Modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalEditarUsuario">
                            Editar Perfil
                        </button>
                        <!-- ventana modal de edicion de datos -->
                        <div id="modalEditarUsuario" class="modal fade" role="dialog">
                            <div class="modal-dialog">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Editar Usuario</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>

                                    <div class="modal-body">
                                        <form id="formRegistro">

                                            <div class="form-group">
                                                <asp:Label ID="lblCorreoUs" runat="server" class="form-control" Visible="False"></asp:Label>
                                            </div>
                                            <div class="form-group">
                                                <label for="lblDocumento">Documento:</label>
                                                <asp:TextBox ID="txtDocumento" runat="server" class="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group">
                                                <label for="lblNombre">Nombre:</label>
                                                <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group">
                                                <label for="lblApellido">Apellido:</label>
                                                <asp:TextBox ID="txtApellido" runat="server" class="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group">
                                                <label for="lblTelefono">Telefono:</label>
                                                <asp:TextBox ID="txtTelefono" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
                                            </div>

                                            <div class="form-group">
                                                <label for="lblEmail">Email:</label>
                                                <asp:TextBox ID="txtEmail" runat="server" class="form-control" TextMode="Email"></asp:TextBox>
                                            </div>

                                            <div class="form-group">
                                                <label for="lblClave">Clave:</label>
                                                <asp:TextBox type="password" ID="txtClave" runat="server" class="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group">
                                                <label for="lblCiudad">Clave:</label>
                                                <asp:TextBox ID="txtCiudad" runat="server" class="form-control"></asp:TextBox>
                                            </div>

                                            <div class="form-group">
                                                <label for="lblDireccion">Direccion:</label>
                                                <asp:TextBox ID="txtDireccion" runat="server" class="form-control"></asp:TextBox>
                                            </div>

                                        </form>
                                    </div>

                                    <div class="modal-footer">
                                        <asp:Button ID="btnEditar" runat="server" Text="Guardar Cambios" class="btn btn-warning btn-sm" OnClick="btnEditar_Click" />
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
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
