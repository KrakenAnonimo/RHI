<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Usuario.aspx.cs" Inherits="Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-bottom: 15px;
            text-align: center;
        }

        .auto-style4 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 50%;
            text-align: center;
            font-size: medium;
            left: 414px;
            top: -54px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style5 {
            height: 20px;
            color: rgb(0, 0, 0);
            background: #999999;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--No mover estos espacios-->
    <br />
    <br />
    <br />
    <br />
    <!--No mover estos espacios-->
    <!--Resto del codigo-->
    <div class="animated fadeIn">
        <div class="row">
            <div class="auto-style4">
                <div class="card"">
                    <div class="card-header"><strong class="card-title">REGISTRO DE USUARIOS </strong></div>
                    <br />
                    <br />
                    <div class="card-body card-block">
                        <div class="auto-style3">
                            <label for="Documento" class=" form-control-label">Documento</label><input type="text" id="txtDocumento" placeholder="Ingrese el documento" class="form-control">
                        </div>
                        <div class="auto-style3">
                            <label for="Nombre" class=" form-control-label">Nombre</label><input type="text" id="Nombre" placeholder="Ingrese su nombre" class="form-control">
                        </div>
                        <div class="auto-style3">
                            <label for="Apellido" class=" form-control-label">Apellido</label><input type="text" id="Apellido" placeholder="Ingrese su apellido" class="form-control">
                        </div>
                        <div class="auto-style3">
                            <label for="Telefono" class=" form-control-label">Telefono</label><input type="tel" id="Telefono" placeholder="Ingrese su telefono" class="form-control">
                        </div>
                        <div class="auto-style3">
                            <label for="Email" class=" form-control-label">Email</label><input type="email" id="Email" placeholder="Email" class="form-control">
                        </div>
                        <div class="auto-style3">
                            <label for="Clave" class=" form-control-label">Clave</label><input type="password" id="Clave" placeholder="Clave" class="form-control">
                        </div>
                        <div class="auto-style3">
                            <label for="Ciudad" class=" form-control-label">Ciudad</label><input type="text" id="Ciudad" placeholder="Ciudad" class="form-control">
                        </div>
                        <div class="auto-style3">
                            <label for="Direccion" class=" form-control-label">Direccion</label><input type="text" id="Direccion" placeholder="Direccion" class="form-control">
                        </div>
                        <!-- Campo para el combo box-->
                        <button type="button" class="btn btn-success btn-sm">Guardar</button>
                        <button type="button" class="btn btn-danger btn-sm">Borrar Todo</button>
                    </div>
                </div>
                <!-- .card -->
            </div>
        </div>
    <!--/.col-->
    </div>
</asp:Content>

