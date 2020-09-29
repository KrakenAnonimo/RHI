<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="OrdenesAsignadas.aspx.cs" Inherits="OrdenesAsignadas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="text-center">
        <h2>LISTADO DE ORDENES ASIGNADAS</h2></div>
    <div>
        <div style="width: 91px; position: relative; top: 0px; left: 40px">
        <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
    </div>
        <asp:GridView  AlternatingRowStyle-HorizontalAlign="left" Width="100%"  runat="server" ID="gvOrdenesA" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdOrdenMttoP,IdUsuario" DataSourceID="sqlOrdenA" PageSize="5" EmptyDataText="No hay registros de datos para mostrar."  BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle" OnSelectedIndexChanged="gvOrdenesA_SelectedIndexChanged" >
<AlternatingRowStyle HorizontalAlign="Left"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" InsertVisible="False" ReadOnly="True" SortExpression="IdOrdenMttoP" Visible="False" />
                <asp:BoundField DataField="NumOrden" HeaderText="NumOrden" SortExpression="NumOrden" />
                <asp:BoundField DataField="Disciplina" HeaderText="Disciplina" SortExpression="Disciplina" />
                <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio" />
                <asp:BoundField DataField="HoraInicio" HeaderText="HoraInicio" SortExpression="HoraInicio" />
                <asp:BoundField DataField="FechaFinal" HeaderText="FechaFinal" SortExpression="FechaFinal" />
                <asp:BoundField DataField="HoraFinal" HeaderText="HoraFinal" SortExpression="HoraFinal" />
                <asp:BoundField DataField="Ejecutado" HeaderText="Ejecutado" SortExpression="Ejecutado" />
                <asp:BoundField DataField="TrabajoIE" HeaderText="TrabajoIE" SortExpression="TrabajoIE" />
                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                <asp:BoundField DataField="Revisado" HeaderText="Revisado" SortExpression="Revisado" />
                <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" SortExpression="IdPlanificacion" />
                <asp:BoundField DataField="IdReporteAS" HeaderText="IdReporteAS" SortExpression="IdReporteAS" />
                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" InsertVisible="False" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" Visible="False" />
                <asp:CommandField SelectText="Ver" ShowSelectButton="True">
                <ControlStyle ForeColor="#0099FF" />
                <FooterStyle ForeColor="#0099FF" />
                </asp:CommandField>
            </Columns>
               <editrowstyle horizontalalign="Left" />
                    <emptydatarowstyle horizontalalign="Left" />
                    <footerstyle backcolor="#ffffff" verticalalign="Middle" horizontalalign="Left" />
                    <headerstyle backcolor="#00BCD4" font-bold="True" forecolor="White" font-overline="False" font-size="15px" horizontalalign="Center" height="30px" />
                    <pagerstyle backcolor="#ffffff" forecolor="Black" horizontalalign="center" />
                    <rowstyle backcolor="#ffffff" horizontalalign="Left" />
                    <selectedrowstyle backcolor="#848384" font-bold="True" forecolor="White" horizontalalign="Left" />
                    <sortedascendingcellstyle backcolor="#848384" horizontalalign="Left" />
                    <sortedascendingheaderstyle backcolor="#848384" horizontalalign="Left" />
                    <sorteddescendingcellstyle backcolor="#848384" horizontalalign="Left" />
                    <sorteddescendingheaderstyle backcolor="#00BCD4" horizontalalign="Left" />
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="sqlOrdenA" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT OrdenMttoPreventivo.IdOrdenMttoP, OrdenMttoPreventivo.NumOrden, OrdenMttoPreventivo.Disciplina, OrdenMttoPreventivo.FechaInicio, OrdenMttoPreventivo.HoraInicio, OrdenMttoPreventivo.FechaFinal, OrdenMttoPreventivo.HoraFinal, OrdenMttoPreventivo.Ejecutado, OrdenMttoPreventivo.TrabajoIE, OrdenMttoPreventivo.Observaciones, OrdenMttoPreventivo.Revisado, OrdenMttoPreventivo.IdPlanificacion, OrdenMttoPreventivo.IdReporteAS, Usuario.IdUsuario, Usuario.Email FROM OrdenMttoPreventivo INNER JOIN Usuario ON OrdenMttoPreventivo.IdUsuario = Usuario.IdUsuario WHERE (Usuario.Email = @email) AND (OrdenMttoPreventivo.Ejecutado = @ejecu)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="Correo" />
                <asp:Parameter DefaultValue="Sin Ejecutar" Name="ejecu" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

