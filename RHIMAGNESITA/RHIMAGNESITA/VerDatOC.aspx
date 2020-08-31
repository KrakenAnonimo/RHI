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
                        <asp:TextBox ID="txtDisciplina" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Fecha de Inicio:</th>
                    <td>
                        <asp:TextBox ID="txtFechaI" runat="server" Text="" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Hora de Inicio:</th>
                    <td>
                        <asp:TextBox ID="txtHoraI" runat="server" Text="" TextMode="Time"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Fecha de Final:</th>
                    <td>
                        <asp:TextBox ID="txtFechaF" runat="server" Text="" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Hora de Final:</th>
                    <td>
                        <asp:TextBox ID="txtHoraF" runat="server" Text="" TextMode="Time"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Ejecutado:</th>
                    <td>
                        <asp:DropDownList ID="cmbEjecutado" runat="server">
                            <asp:ListItem>Sin Ejecutar</asp:ListItem>
                            <asp:ListItem>Ejecutado</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Tabajo Interno/Externo:</th>
                    <td>
                        <asp:DropDownList ID="cmbTIXE" runat="server" Height="23px" Width="101px">
                            <asp:ListItem>Interno</asp:ListItem>
                            <asp:ListItem>Externo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Observaciones:</th>
                    <td>
                       <asp:TextBox ID="txtObservaciones" runat="server" Text="" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <th scope="row">Revisado:</th>
                    <td>
                        <asp:DropDownList ID="cmbRevisado" runat="server" Height="18px">
                            <asp:ListItem>Supervisor</asp:ListItem>
                            <asp:ListItem>Planificador</asp:ListItem>
                        </asp:DropDownList>
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
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm" />
    </div>
    <div>
        <asp:SqlDataSource ID="SqldsOrdenMttoC" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdOrdenMttoC, NumOrden, Disciplina, FechaInicio, HoraInicio, FechaFinal, HoraFinal, Ejecutado, TrabajoIE, Observaciones, Revisado, IdOrdenMttoP, IdUsuario FROM OrdenMttoCorrectivo WHERE (IdOrdenMttoC = @idOrdenC)">
            <SelectParameters>
                <asp:SessionParameter Name="idOrdenC" SessionField="idOrdenMttoC" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

