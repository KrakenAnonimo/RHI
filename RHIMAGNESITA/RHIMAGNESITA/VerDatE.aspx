<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatE.aspx.cs" Inherits="VerDatE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            height: 53px;
        }
    </style>
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
                        <h4>Datos del Elemento</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Codigo del Elemento:</th>
                    <td>
                        <asp:Label ID="lblIdE" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo:</th>
                    <td>
                        <asp:Label ID="lblCodigo" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Nombre del Elemento:</th>
                    <td>
                        <asp:TextBox ID="txtNombreE" runat="server" Text="" Width="117px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row" class="auto-style7">Descripcion:</th>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDescripcion" runat="server" Text="" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Estado:</th>
                    <td>
                        <asp:DropDownList ID="cmbEstado" runat="server">
                            <asp:ListItem>Mantenimiento</asp:ListItem>
                            <asp:ListItem>Disponible</asp:ListItem>
                            <asp:ListItem>Fuera de Servicio</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo del Area:</th>
                    <td>
                        <asp:Label ID="lblIdA" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="auto-style7">
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm"/>
        <asp:Button ID="btnDescargarExcel" runat="server" Text="Descargar Excel" class="btn btn-warning btn-sm" OnClick="btnDescargarExcel_Click"/>
         <asp:Button ID="btnDescargarPdf" runat="server" Text="Descargar PDF" class="btn btn-warning btn-sm" OnClick="btnDescargarPdf_Click"/>
    </div>
    <div>
        <asp:SqlDataSource ID="SqldsElemento" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdElemento, Codigo, Nombre, Descripcion, Estado, IdArea FROM Elemento WHERE (IdElemento = @IdElemento)">
            <SelectParameters>
                <asp:SessionParameter Name="IdElemento" SessionField="idElemento" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

