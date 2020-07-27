<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TareaAveriaServicio.aspx.cs" Inherits="TareaAveriaServicio" %>

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
                            <div class="card-header"><strong>REGISTRAR TAREA AVERIA SERVICIO</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label for="NumeroR" class=" form-control-label">Nombre Averia Servicio</label>
                                        <asp:TextBox ID="txtNumeroR" runat="server" placeholder="Ingrese un nombre de la averia o el servicio" class="form-control" TextMode="Number"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="Duracion" class=" form-control-label">Duracion</label>
                                        <asp:TextBox ID="txtDuracion" runat="server" placeholder="Duracion" class="form-control" TextMode="Number"></asp:TextBox>
                                    </div>
                                    <div class="auto-style8">
                                        <label for="FechaP" class=" form-control-label">Fecha de Ejecucion</label>
                                        <asp:TextBox ID="txtFechaP" runat="server" placeholder="" class="form-control" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <div class="row form-group">
                                        <div class="text-center">
                                            <label for="selectSm" class="form-control-label">Orden de Mtto Preventivo</label>
                                        </div>
                                        <div class="text-center">
                                            <asp:DropDownList ID="cmbOrdenMttoPreventivo" runat="server" CssClass="auto-style8" Height="33px" Width="655px">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="text-center">
                                            <label for="selectSm" class="form-control-label">Orden de Mtto Correctivo</label>
                                        </div>
                                        <div class="text-center">
                                            <asp:DropDownList ID="cmbOrdenMttoCorrectivo" runat="server" CssClass="auto-style8" Height="33px" Width="655px">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div>
                                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" />
                                        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Todo" class="btn btn-danger btn-sm" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

