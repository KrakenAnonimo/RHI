<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatA.aspx.cs" Inherits="VerDatA" %>

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
                        <h4>Datos del Area</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Codigo del Area:</th>
                    <td>
                        <asp:Label ID="lblIdA" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Nombre del Area:</th>
                    <td>
                        <asp:Label ID="lblNombreA" runat="server" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Ubicacion:</th>
                    <td>
                        <asp:Label ID="lblUbicacion" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="auto-style7">
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm"  />
    </div>
</asp:Content>

