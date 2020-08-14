<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaGeneral.aspx.cs" Inherits="ListaGeneral" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div style="width: 175px; position: relative; top: 4px; left: 91px;">
        <div style="width: 70px; position: relative; top: 1px; left: 25px; z-index: 1; height: 64px">
            <asp:Image runat="server" ImageUrl="~/Vista/Iconos/User.png"></asp:Image>
        </div>
        <asp:Button runat="server" Text="Lista de Usuarios" class="btn btn-warning btn-sm" ID="btnListaU" />
    </div>
    <div style="width: 144px; position: relative; top: -28px; left: 286px;">
        <asp:Button runat="server" Text="Lista de Areas" class="btn btn-warning btn-sm" ID="btnListaA" OnClick="btnListaA_Click" />
    </div>
    <div style="width: 188px; position: relative; top: -60px; left: 453px;">
        <asp:Button runat="server" Text="Lista de Materiales" class="btn btn-warning btn-sm" ID="btnListaM" OnClick="btnListaM_Click" />
    </div>
    <div style="width: 192px; position: relative; top: -94px; left: 660px;">
        <asp:Button runat="server" Text="Lista de Elementos" class="btn btn-warning btn-sm" ID="btnListaE" OnClick="btnListaE_Click" />
    </div>
    <div style="width: 231px; position: relative; top: -127px; left: 872px;">
        <asp:Button runat="server" Text="Lista de Planificaciones" class="btn btn-warning btn-sm" ID="btnListaP" OnClick="btnListaP_Click" />
    </div>
    <div style="width: 250px; position: relative; top: -92px; left: 185px;">
        <div style="width: 70px; position: relative; top: 1px; left: 51px; z-index: 1; height: 64px">
            <asp:Image runat="server" ImageUrl="~/Vista/Iconos/Orden.png"></asp:Image>
        </div>
        <asp:Button runat="server" Text="Lista de Ordenes de MttoC" class="btn btn-warning btn-sm" ID="btnListaOC" OnClick="btnListaOC_Click" />
    </div>
    <div style="width: 250px; position: relative; top: -188px; left: 557px;">
         <div style="width: 70px; position: relative; top: 1px; left: 51px; z-index: 1; height: 64px">
            <asp:Image runat="server" ImageUrl="~/Vista/Iconos/Orden.png"></asp:Image>
        </div>
        <asp:Button runat="server" Text="Lista de Ordenes de MttoP" class="btn btn-warning btn-sm" ID="btnListaOP" OnClick="btnListaOP_Click" />
    </div>
    <div style="width: 221px; position: relative; top: -96px; left: 79px;">
        <div style="width: 70px; position: relative; top: 1px; left: 41px; z-index: 1; height: 64px">
            <asp:Image runat="server" ImageUrl="~/Vista/Iconos/Tarea.png"></asp:Image>
        </div>
        <asp:Button runat="server" Text="Lista de Tareas de Mtto" class="btn btn-warning btn-sm" ID="btnListaTM" OnClick="btnListaTM_Click" />
    </div>
    <div style="width: 219px; position: relative; top: -129px; left: 326px;">
        <asp:Button runat="server" Text="Lista de Tareas de AvS" class="btn btn-warning btn-sm" ID="btnListaTAVS" OnClick="btnListaTAVS_Click" />
    </div>
    <div style="width: 226px; position: relative; top: -163px; left: 563px;">
        <asp:Button runat="server" Text="Lista de Reporte de AVS" class="btn btn-warning btn-sm" ID="btnListaRAVS" OnClick="btnListaRAVS_Click" />
    </div>
    <div style="width: 242px; position: relative; top: -196px; left: 854px;">
        <asp:Button runat="server" Text="Lista de Ejecucion de Mtto" class="btn btn-warning btn-sm" ID="btnListaEM" OnClick="btnListaEM_Click" />
    </div>
    <br />
</asp:Content>

