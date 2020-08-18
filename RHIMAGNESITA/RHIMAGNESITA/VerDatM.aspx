<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatM.aspx.cs" Inherits="VerDatM" %>

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
                        <h4>Datos del Material</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Codigo del Material:</th>
                    <td>
                        <asp:Label ID="lblIdM" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo:</th>
                    <td>
                        <asp:Label ID="lblCodigo" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Nombre del Material:</th>
                    <td>
                        <asp:TextBox ID="txtNombreM" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Descripcion:</th>
                    <td>
                        <asp:TextBox ID="txtDescripcionM" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Unidad:</th>
                    <td>
                        <asp:TextBox ID="txtUnidadM" runat="server" placeholder="Ingrese la unidad" class="form-control" TextMode="SingleLine"></asp:TextBox>
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
        <asp:SqlDataSource ID="SqldsMaterial" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdMaterial, Codigo, Nombre, Descripcion, Unidad FROM Material WHERE (IdMaterial = @idMaterial)">
            <SelectParameters>
                <asp:SessionParameter Name="idMaterial" SessionField="idMaterial" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

