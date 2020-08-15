<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatTAVS.aspx.cs" Inherits="VerDatTAVS" %>

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
                        <h4>Datos de la Tarea Averia/Servicio</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Codigo de Tarea A/V:</th>
                    <td>
                        <asp:Label ID="lblIdTAVS" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Nombre de la Tarea:</th>
                    <td>
                        <asp:Label ID="lblNombreTAVS" runat="server" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Duracion:</th>
                    <td>
                        <asp:Label ID="lblDuracion" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Fecha de Ejecucion:</th>
                    <td>
                        <asp:Label ID="lblFechaTAVS" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo de la Orden Mtto Correctiva:</th>
                    <td>
                        <asp:Label ID="lblIdOC" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo de la Orden Mtto Preventiva:</th>
                    <td>
                        <asp:Label ID="lblIdOP" runat="server" Text=""></asp:Label>
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

