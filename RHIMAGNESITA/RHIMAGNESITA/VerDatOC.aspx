<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatOC.aspx.cs" Inherits="VerDatOC" %>

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
                        <h4>Datos de la Orden Mtto Correctiva</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Codigo de Orden:</th>
                    <td>
                        <asp:Label ID="lblIdOC" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Numero de la Orden:</th>
                    <td>
                        <asp:Label ID="lblNumeroOP" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Disciplina:</th>
                    <td>
                        <asp:Label ID="lblDisciplina" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Fecha de Inicio:</th>
                    <td>
                        <asp:Label ID="lblFechaI" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Hora de Inicio:</th>
                    <td>
                        <asp:Label ID="lblHoraI" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Fecha de Final:</th>
                    <td>
                        <asp:Label ID="lblFechaF" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Hora de Final:</th>
                    <td>
                        <asp:Label ID="lblHoraF" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Ejecutado:</th>
                    <td>
                        <asp:Label ID="lblEjecutado" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Tabajo Interno/Externo:</th>
                    <td>
                        <asp:Label ID="lblTrabajoIE" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Observaciones:</th>
                    <td>
                        <asp:Label ID="lblObservaciones" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Revisado:</th>
                    <td>
                        <asp:Label ID="lblRevisado" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Codigo de la Orden Mtto Preventiva:</th>
                    <td>
                        <asp:Label ID="lblIdOP" runat="server" Text=""></asp:Label>
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

