<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaGeneral.aspx.cs" Inherits="ListaGeneral" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div style="width: 175px; position: relative; top: 4px; left: 91px;"><asp:Button runat="server" Text="Lista de Usuarios" class="btn btn-warning btn-sm" ID="btnListaU"/>
        <br />
        <asp:Image runat="server"></asp:Image>
    </div>
    <div style="width: 144px; position: relative; top: -28px; left: 286px;"><asp:Button runat="server" Text="Lista de Areas" class="btn btn-warning btn-sm" ID="btnListaA"/></div>
    <div style="width: 188px; position: relative; top: -60px; left: 453px;"><asp:Button runat="server" Text="Lista de Materiales" class="btn btn-warning btn-sm" ID="btnListaM"/></div>
    <div style="width: 192px; position: relative; top: -94px; left: 660px;"><asp:Button runat="server" Text="Lista de Elementos" class="btn btn-warning btn-sm" ID="btnListaE"/></div>
    <div style="width: 231px; position: relative; top: -127px; left: 872px;"><asp:Button runat="server" Text="Lista de Planificaciones" class="btn btn-warning btn-sm" ID="btnListaP"/></div>
    <div style="width: 250px; position: relative; top: -92px; left: 185px;"><asp:Button runat="server" Text="Lista de Ordenes de MttoC" class="btn btn-warning btn-sm" ID="btnListaOC"/></div>
    <div style="width: 250px; position: relative; top: -126px; left: 657px;"><asp:Button runat="server" Text="Lista de Ordenes de MttoP" class="btn btn-warning btn-sm" ID="btnListaOP"/></div>
    <div style="width: 221px; position: relative; top: -96px; left: 79px;"><asp:Button runat="server" Text="Lista de Tareas de Mtto" class="btn btn-warning btn-sm" ID="btnListaTM"/></div>
    <div style="width: 219px; position: relative; top: -129px; left: 326px;"><asp:Button runat="server" Text="Lista de Tareas de AvS" class="btn btn-warning btn-sm" ID="btnListaTAVS"/></div>
    <div style="width: 226px; position: relative; top: -163px; left: 563px;"><asp:Button runat="server" Text="Lista de Reporte de AVS" class="btn btn-warning btn-sm" ID="btnListaRAVS"/></div>
    <div style="width: 242px; position: relative; top: -196px; left: 854px;"><asp:Button runat="server" Text="Lista de Ejecucion de Mtto" class="btn btn-warning btn-sm" ID="btnListaEM"/></div>
    <br />
</asp:Content>

