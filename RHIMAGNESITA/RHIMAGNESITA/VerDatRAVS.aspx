<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatRAVS.aspx.cs" Inherits="VerDatRAVS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                        <asp:Label ID="lblNumeroR" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Titulo:</th>
                    <td>
                        <asp:TextBox ID="txtTitulo" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Descripcion:</th>
                    <td>
                        <asp:TextBox ID="txtDescripcion" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Fecha del Reporte:</th>
                    <td>
                        <asp:TextBox ID="txtFechaR" runat="server" TextMode="Date"></asp:TextBox>
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
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm" />
    </div>
    <div>
        <asp:SqlDataSource ID="SqldsRAVS" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdReporteAS, NumReporte, Titulo, Descripcion, FechaReporte, IdElemento, IdUsuario FROM ReporteAveriaServicio WHERE (IdReporteAS = @idRAVS)">
            <SelectParameters>
                <asp:SessionParameter Name="idRAVS" SessionField="idReporteAVS" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

