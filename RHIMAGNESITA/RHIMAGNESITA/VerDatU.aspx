<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatU.aspx.cs" Inherits="VerDatU" %>

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
                        <asp:Label ID="lblIdR" runat="server" Text=""></asp:Label>
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
        <asp:SqlDataSource ID="SqldsUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdUsuario, Documento, Nombre, Apellido, Telefono, Email, Ciudad, Direccion, IdRol FROM Usuario WHERE (IdUsuario = @idUsuario)">
            <SelectParameters>
                <asp:SessionParameter Name="idUsuario" SessionField="idUsuario" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

