<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatA.aspx.cs" Inherits="VerDatA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            height: 37px;
        }

        .auto-style8 {
            height: 22px;
        }
    </style>
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
                        <h4>Datos del Area</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row" >Codigo del Area:</th>
                    <td class="auto-style7">
                        <asp:Label ID="lblIdA" runat="server" Text=""></asp:Label>

                    </td>
                </tr>
                <tr>
                    <th scope="row">Nombre del Area:</th>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNombreA" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Ubicacion:</th>
                    <td></asp:Label><asp:TextBox ID="txtUbicacion" runat="server" Text=""></asp:TextBox>

                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <br />
    <div class="auto-style7">
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm" OnClick="btnEliminar_Click" />
    </div>
    <div>
        <asp:SqlDataSource ID="SqldsArea" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdArea, Nombre, Ubicacion FROM Area WHERE (IdArea = @idArea)">
            <SelectParameters>
                <asp:SessionParameter Name="idArea" SessionField="idArea" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

