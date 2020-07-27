<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Usuario.aspx.cs" Inherits="Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-bottom: 15px;
            text-align: center;
        }

        .auto-style4 {
            min-height: 1px;
            float: left;
            width: 50%;
            text-align: center;
            font-size: medium;
            padding-left: 15px;
            padding-right: 15px;
            height: 837px;
        }

        .auto-style7 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 50%;
            text-align: center;
            font-size: medium;
            padding-left: 15px;
            padding-right: 15px;
            left: 360px;
            top: -75px;
        }

        .auto-style5 {
            height: 20px;
            color: rgb(0, 0, 0);
            background: #999999;
            text-align: center;
        }

        .auto-style8 {
            width: 95%;
            position: relative;
            left: 0px;
            top: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--No mover estos espacios-->
    <br />
    <!--No mover estos espacios-->
    <!--Resto del codigo-->
    <div class="jumbotron">
        <div class="animated fadeIn">
            <div class="row">
                <div class="auto-style7">
                    <div class="card">
                        <div class="card-header"><strong class="card-title">REGISTRO DE USUARIOS </strong></div>
                        <br />
                        <br />
                        <div class="card-body card-block">
                            <div class="auto-style3">
                                <label for="Documento" class=" form-control-label">Documento</label>
                                <asp:TextBox ID="txtDocumento" runat="server" placeholder="Ingrese el documento" class="form-control" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="auto-style3">
                                <label for="Nombre" class=" form-control-label">Nombre</label>
                                <asp:TextBox ID="txtNombre" runat="server" placeholder="Ingrese su nombre" class="form-control" TextMode="SingleLine"></asp:TextBox>
                            </div>
                            <div class="auto-style3">
                                <label for="Apellido" class=" form-control-label">Apellido</label>
                                <asp:TextBox ID="txtApellido" runat="server" placeholder="Ingrese su apellido" class="form-control" TextMode="SingleLine"></asp:TextBox>
                            </div>
                            <div class="auto-style3">
                                <label for="Telefono" class=" form-control-label">Telefono</label>
                                <asp:TextBox ID="txtTelefono" runat="server" placeholder="Ingrese su telefono" class="form-control" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="auto-style3">
                                <label for="Email" class=" form-control-label">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" class="form-control" TextMode="Email"></asp:TextBox>
                            </div>
                            <div class="auto-style3">
                                <label for="Clave" class=" form-control-label">Clave</label>
                                <asp:TextBox ID="txtClave" runat="server" placeholder="Clave" class="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="auto-style3">
                                <label for="Ciudad" class=" form-control-label">Ciudad</label>
                                <asp:TextBox ID="txtCiudad" runat="server" placeholder="Ciudad" class="form-control" TextMode="SingleLine"></asp:TextBox>
                            </div>
                            <div class="auto-style3">
                                <label for="Direccion" class=" form-control-label">Direccion</label>
                                <asp:TextBox ID="txtDireccion" runat="server" placeholder="Direccion" class="form-control" TextMode="SingleLine"></asp:TextBox>
                            </div>
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="selectSm" class="form-control-label">Roles</label>
                                </div>
                                <div class="text-center">
                                    <asp:DropDownList ID="cmbRol" runat="server" CssClass="auto-style8" DataSourceID="SqldsRoles" DataTextField="Rol" DataValueField="IdRol">
                                    </asp:DropDownList>
                                </div>
                                <div>
                                    <asp:SqlDataSource ID="SqldsRoles" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" SelectCommand="SELECT [IdRol], [Rol] FROM [Rol]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" />
                                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Todo" class="btn btn-danger btn-sm" />
                            </div>
                        </div>
                    </div>
                    <!-- .card -->
                </div>
            </div>
        </div>
        <!--/.col-->
    </div>
</asp:Content>

