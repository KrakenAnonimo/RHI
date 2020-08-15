﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatEM.aspx.cs" Inherits="VerDatEM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 91px; position: relative; top: 0px; left: 40px">
        <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
    </div>
    <div>
        <table class="table table-hover table-dark">
            <thead>
                <tr>
                    <th scope="col">
                        <h4>Datos de la Ejecucion de Mantenimiento</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Codigo de Ejecucion:</th>
                    <td>
                        <asp:Label ID="lblIdEM" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Estado:</th>
                    <td>
                        <asp:Label ID="lblEstado" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Fecha de Ejecucion:</th>
                    <td>
                        <asp:Label ID="lblFechaTAVS" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Duracion:</th>
                    <td>
                        <asp:Label ID="lblDuracion" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Observaciones:</th>
                    <td>
                        <asp:Label ID="lblObservaciones" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo de la Tarea Mtto:</th>
                    <td>
                        <asp:Label ID="lblIdTM" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo de la Orden Mtto Preventiva:</th>
                    <td>
                        <asp:Label ID="lblIdOP" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="auto-style7">
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm"  />
    </div>
    <div>
        <asp:SqlDataSource ID="SqldsEjecucionM" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdEjecucionM, Estado, FechaEjecucion, Duracion, Observaciones, IdTareaMtto, IdOrdenMttoP FROM EjecucionM WHERE (IdEjecucionM = @idEjecucionM)">
            <SelectParameters>
                <asp:SessionParameter Name="idEjecucionM" SessionField="idEjecucionMtto" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

