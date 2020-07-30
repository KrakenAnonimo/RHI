<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Planificacion.aspx.cs" Inherits="Planificacion" %>

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
                            <div class="card-header"><strong>REGISTRAR PLANIFICACION</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label for="FechaP" class=" form-control-label">Fecha Planificacion</label>
                                    <asp:TextBox ID="txtFechaP" runat="server" placeholder="Elija una fecha de planificacion" class="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:TextBox ID="txtObservaciones" runat="server" Rows="9" placeholder="Observaciones..." class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Elemento</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbElemento" runat="server" CssClass="auto-style8">
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

