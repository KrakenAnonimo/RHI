<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ListaEjecucionM.aspx.cs" Inherits="ListaEjecucionM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div><h2>LISTADO DE EJECUCIONES DE MANTENIMIENTO ASIGNADAS</h2></div>
    <div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT EjecucionM.IdEjecucionM, EjecucionM.Estado, EjecucionM.FechaEjecucion, EjecucionM.Duracion, EjecucionM.Observaciones, EjecucionM.IdTareaMtto, EjecucionM.IdOrdenMttoP, Usuario.IdUsuario, Usuario.Email FROM EjecucionM INNER JOIN OrdenMttoPreventivo ON EjecucionM.IdOrdenMttoP = OrdenMttoPreventivo.IdOrdenMttoP INNER JOIN Usuario ON OrdenMttoPreventivo.IdUsuario = Usuario.IdUsuario WHERE (Usuario.Email = @Email)">
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="Correo" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

