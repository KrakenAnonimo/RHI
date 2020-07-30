<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Material.aspx.cs" Inherits="Material" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-bottom: 15px;
            text-align: center;
        }

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
    <!--No mover estos espacios-->
    <br />
    <!--No mover estos espacios-->
    <!--Resto del codigo-->
    <div class="jumbotron">
        <div class="animated fadeIn">
            <div class="row">
                  <div class="auto-style7">
                    <div class="card">
                        <div class="card-header"><strong>REGISTRO DE MATERIAL</strong></div>
                        <br />
                        <br />
                        <div class="card-body card-block">
                            <div class="auto-style3">
                                 <label for="Codigo" class=" form-control-label">Codigo</label>
                                <asp:TextBox ID="txtCodigo" runat="server" placeholder="Ingrese el Codigo" class="form-control" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="auto-style3">
                                <label for="Nombre" class=" form-control-label">Nombre</label>
                                <asp:TextBox ID="txtNombre" runat="server" placeholder="Ingrese su nombre" class="form-control" TextMode="SingleLine"></asp:TextBox>
                            </div>
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                </div>
                                <div class="text-center" style="width: 97%; position: relative; left: 9px; top: 0px">
                                   <asp:TextBox ID="txtDescripcion" runat="server" Rows="9" placeholder="Descripcion..." class="form-control" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="auto-style3">
                                <label for="UnidadM" class=" form-control-label">Unidad de Medida</label>
                                <asp:TextBox ID="txtUnidadM" runat="server" placeholder="Ingrese la unidad" class="form-control" TextMode="SingleLine"></asp:TextBox>
                            </div>
                           <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
                                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Todo" class="btn btn-danger btn-sm" OnClick="btnLimpiar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

