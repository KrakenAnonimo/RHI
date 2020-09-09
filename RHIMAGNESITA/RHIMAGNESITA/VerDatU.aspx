<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatU.aspx.cs" Inherits="VerDatU" %>

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
                        <h4>Datos del Usuario</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Codigo del Usuario:</th>
                    <td>
                        <asp:Label ID="lblIdU" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Documento:</th>
                    <td>
                        <asp:TextBox ID="txtDocumento" runat="server" Text="" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Nombre:</th>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Apellido:</th>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Telefono:</th>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server" Text="" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Email:</th>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Text="" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Ciudad:</th>
                    <td>
                        <asp:TextBox ID="txtCiudad" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Direccion:</th>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo del Rol:</th>
                    <td>
                        <asp:DropDownList ID="cmbRolUsua" runat="server" DataSourceID="sqlRol" DataTextField="Rol" DataValueField="IdRol">
                        </asp:DropDownList>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="auto-style7">
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm" OnClick="btnEliminar_Click" />
        <asp:Button ID="btnDescargarExcel" runat="server" Text="Descargar Excel" class="btn btn-warning btn-sm" OnClick="btnDescargarExcel_Click" />
        <asp:Button ID="btnDescargarPdf" runat="server" Text="Descargar PDF" class="btn btn-warning btn-sm" OnClick="btnDescargarPdf_Click" />
    </div>
    <div>
        <asp:SqlDataSource ID="SqldsUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdUsuario, Documento, Nombre, Apellido, Telefono, Email, Ciudad, Direccion, IdRol FROM Usuario WHERE (IdUsuario = @idUsuario)">
            <SelectParameters>
                <asp:SessionParameter Name="idUsuario" SessionField="idUsuario" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlRol" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.* FROM Rol"></asp:SqlDataSource>
    </div>
</asp:Content>

