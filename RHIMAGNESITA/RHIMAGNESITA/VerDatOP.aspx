<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatOP.aspx.cs" Inherits="VerDatOP" %>

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
                        <h4>Datos de la Orden Mtto Preventiva</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Codigo de Orden:</th>
                    <td>
                        <asp:Label ID="lblIdOP" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Numero de la Orden:</th>
                    <td>
                        <asp:Label ID="lblNumero" runat="server"></asp:Label>
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
                    <th scope="row">Codigo de la Planificacion:</th>
                    <td>
                        <asp:Label ID="lblIdP" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Codigo del Reporte Averia/Servicio:</th>
                    <td>
                        <asp:Label ID="lblidRAVS" runat="server" Text=""></asp:Label>
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
    <div>
        <asp:SqlDataSource ID="SqldsOrdenMttoP" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdOrdenMttoP, NumOrden, Disciplina, FechaInicio, HoraInicio, FechaFinal, HoraFinal, Ejecutado, TrabajoIE, Observaciones, Revisado, IdPlanificacion, IdReporteAS, IdUsuario FROM OrdenMttoPreventivo WHERE (IdOrdenMttoP = @idOrdenP)">
            <SelectParameters>
                <asp:SessionParameter Name="idOrdenP" SessionField="idOrdenMttoP" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

