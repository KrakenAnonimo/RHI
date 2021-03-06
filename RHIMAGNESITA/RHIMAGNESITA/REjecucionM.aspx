﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="REjecucionM.aspx.cs" Inherits="REjecucionM" %>

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
     <div style="width: 91px; position: relative; top: 0px; left: 40px">
        <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
    </div>
    <!--Resto del codigo-->
    <div class="jumbotron">
        <div class="animated fadeIn">
            <div class="row">
                <div class="auto-style7">
                    <div class="card">
                        <div class="card-header"><strong>EJECUCION DE MANTENIMIENTO</strong></div>
                        <br />
                        <br />
                        <div class="form-group">
                            <div class="text-center">
                                <label for="selectSm" class="form-control-label">Orden de Mantenimiento Preventiva</label>
                            </div>
                            <div class="text-center">
                                <asp:Label ID="lblEjcM" runat="server" Text="" class="form-control" Visible="False"></asp:Label>
                                <asp:Label ID="lblOrdenMttoP" runat="server" Text="" class="form-control"></asp:Label>
                            </div>
                        </div>
                        <div class="text-center">
                            <div class="text-center">
                                <label for="selectSm" class="form-control-label">Tarea de Mtto</label>
                            </div>
                            <div class="text-center">
                                <asp:Label ID="lblTareaMtto" runat="server" Text="" class="form-control"></asp:Label>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="text-center">
                                <label for="Revisado" class=" form-control-label">Estado</label>
                            </div>
                            <div class="text-center">
                                <asp:DropDownList runat="server" ID="cmbEstado" class="form-control-sm form-control" Style="width: 97%; position: relative; left: 9px; top: 0px">
                                    <asp:ListItem>En Ejecucion</asp:ListItem>
                                    <asp:ListItem>Ejecutada</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="card-body card-block">
                            <div class="text-center">
                                <label for="FechaOF" class=" form-control-label">Fecha Ejecucion</label>
                                <asp:Label ID="lblFechaEjecucion" runat="server" Text="" class="form-control"></asp:Label>
                            </div>
                            <div class="text-center">
                                <label for="Horas" class=" form-control-label">Duracion</label>
                                <asp:Label ID="lblDuracion" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                            <div class="form-group">
                                <div class="text-center">
                                    <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                </div>
                                <div class="text-center">
                                    <asp:TextBox runat="server" Rows="9" placeholder="Observaciones..." class="form-control" ID="txtObservaciones" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button runat="server" Text="Guardar" class="btn btn-success btn-sm" ID="btnGuardar" OnClick="btnGuardar_Click" />
                            <asp:Button ID="btnDescargarExcel" runat="server" Text="Descargar Excel" class="btn btn-warning btn-sm" OnClick="btnDescargarExcel_Click" />
                            <asp:Button ID="btnDescargarPdf" runat="server" Text="Descargar PDF" class="btn btn-warning btn-sm" OnClick="btnDescargarPdf_Click" />
                            <asp:SqlDataSource ID="sqlEM" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT EjecucionM.IdEjecucionM, EjecucionM.Estado, EjecucionM.FechaEjecucion, EjecucionM.Duracion, EjecucionM.Observaciones, EjecucionM.IdTareaMtto, EjecucionM.IdOrdenMttoP, OrdenMttoPreventivo.NumOrden, TareaMtto.NombreTM FROM EjecucionM INNER JOIN OrdenMttoPreventivo ON EjecucionM.IdOrdenMttoP = OrdenMttoPreventivo.IdOrdenMttoP INNER JOIN TareaMtto ON EjecucionM.IdTareaMtto = TareaMtto.IdTareaMtto WHERE (EjecucionM.IdEjecucionM = @idejecu)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="idejecu" SessionField="idEjecucionM" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

