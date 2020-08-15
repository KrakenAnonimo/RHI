<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatRAVS.aspx.cs" Inherits="VerDatRAVS" %>

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
                        <h4>Datos del Reporte de la Averio/Servicio</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Codigo del Reporte:</th>
                    <td>
                        <asp:Label ID="lblIdR" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Numero del Reporte:</th>
                    <td>
                        <asp:Label ID="lblReporte" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Titulo:</th>
                    <td>
                        <asp:Label ID="lblTitulo" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Descripcion:</th>
                    <td>
                        <asp:Label ID="lblDescripcion" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Fecha del Reporte:</th>
                    <td>
                        <asp:Label ID="lblFechaR" runat="server" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo del Elemento:</th>
                    <td>
                        <asp:Label ID="lblIdE" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo del Usuario:</th>
                    <td>
                        <asp:Label ID="lblIdU" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="auto-style7">
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm" />
    </div>
</asp:Content>

