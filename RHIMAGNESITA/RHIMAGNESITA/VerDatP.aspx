<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerDatP.aspx.cs" Inherits="VerDatP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
   
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
                        <h4>Datos de la Planificacion</h4>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Codigo de Planificacion:</th>
                    <td>
                        <asp:Label ID="lblIdP" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Fecha de la Planificacion:</th>
                    <td>
                        <asp:TextBox ID="txtFechaP" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
               <tr>
                    <th scope="row" class="auto-style7">Observaciones:</th>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtObservaciones" runat="server" Text="" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Estado:</th>
                    <td>
                        <asp:DropDownList ID="cmbEstadoP" runat="server">
                            <asp:ListItem>Por Ejecutar</asp:ListItem>
                            <asp:ListItem>Ejecutada</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Codigo del Elemento:</th>
                    <td>
                        <asp:Label ID="lblIdE" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div >
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm" OnClick="btnEliminar_Click" />
        <asp:Button ID="btnDescargarExcel" runat="server" Text="Descargar Excel" class="btn btn-warning btn-sm" OnClick="btnDescargarExcel_Click" />
        <asp:Button ID="btnDescargarPdf" runat="server" Text="Descargar PDF" class="btn btn-warning btn-sm" OnClick="btnDescargarPdf_Click" />
    </div>
    <div>
        <asp:SqlDataSource ID="SqldsPlanificacion" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT IdPlanificacion, FechaPlanificacion, Observaciones, Estado, IdElemento FROM Planificacion WHERE (IdPlanificacion = @IdPlanificacion)">
            <SelectParameters>
                <asp:SessionParameter Name="IdPlanificacion" SessionField="idPlanificacion" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

