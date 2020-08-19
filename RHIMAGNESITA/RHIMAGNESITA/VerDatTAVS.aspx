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
                         <asp:TextBox ID="txtNombreTAVS" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Duracion:</th>
                    <td>
                       <asp:TextBox runat="server" ID="txtDuracionTAVS" placeholder="Horas" class="form-control" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Fecha de Ejecucion:</th>
                    <td>
                         <asp:TextBox ID="txtFechaTAVS" runat="server" TextMode="Date"></asp:TextBox>
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
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm"  />
    </div>
    <div>
        <asp:SqlDataSource ID="SqldsTAVS" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdTareaAS, NombreAS, Duracion, FechaEjecucion, IdOrdenMttoP, IdOrdenMttoC FROM TareaAveriaServicio WHERE (IdTareaAS = @idTAVS)">
            <SelectParameters>
                <asp:SessionParameter Name="idTAVS" SessionField="idTareaAVS" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

