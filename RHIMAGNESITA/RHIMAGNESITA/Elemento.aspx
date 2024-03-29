﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Elemento.aspx.cs" Inherits="Elemento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 50%;
            text-align: center;
            padding-left: 15px;
            padding-right: 15px;
            left: 360px;
            top: -75px;
        }

        .auto-style8 {
            width: 97%;
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
        <div class="content">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="auto-style7">
                        <div class="card">
                            <div class="card-header"><strong>REGISTRAR ElEMENTO</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label for="Codigo" class=" form-control-label">Codigo</label>
                                    <asp:TextBox ID="txtCodigo" runat="server" placeholder="Codigo del elemento" class="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="Nombre" class=" form-control-label">Nombre</label>
                                    <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre del elemento" class="form-control"></asp:TextBox>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                    </div>
                                    <div class="text-center" style="width: 97%; position: relative; left: 9px; top: 0px">
                                        <asp:TextBox ID="txtDescripcion" runat="server" Rows="9" placeholder="Descripcion..." class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="Estado" class=" form-control-label">Estado</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbEstado" runat="server" class="form-control-sm form-control" Style="width: 97%; position: relative; left: 9px; top: 0px">
                                            <asp:ListItem>Disponible</asp:ListItem>
                                            <asp:ListItem>Mantenimiento</asp:ListItem>
                                            <asp:ListItem>Fuera de servicio</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-center">
                                            <label for="selectSm" class="form-control-label">Area</label>
                                        </div>
                                        <div class="text-center">
                                            <asp:DropDownList ID="cmbArea" runat="server" CssClass="auto-style8">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div>
                                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
                                        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Todo" class="btn btn-danger btn-sm" OnClick="btnLimpiar_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

