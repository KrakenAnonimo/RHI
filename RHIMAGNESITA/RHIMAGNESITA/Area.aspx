<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Area.aspx.cs" Inherits="Area" %>

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
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--no mover estos espacios-->
    <br />
    <!--no mover estos espacios-->
    <!--resto del codigo.-->
    <div class="jumbotron">
        <div class="content">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="auto-style7">
                        <div class="card">
                            <div class="card-header"><strong>REGISTRAR AREA</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label for="NombreA" class=" form-control-label">Nombre del Area</label>
                                    <asp:TextBox ID="txtNombreA" runat="server" placeholder="Nombre del Area" class="form-control" TextMode="SingleLine"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="Ubicacion" class=" form-control-label">Ubicacion</label>
                                    <asp:TextBox ID="txtUbicacion" runat="server" placeholder="Ingrese la Ubicacion" class="form-control" TextMode="SingleLine"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click"/>
                                    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Todo" class="btn btn-danger btn-sm" OnClick="btnLimpiar_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

