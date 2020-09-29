<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ListaOrdenesAsignadas.aspx.cs" Inherits="ListaOrdenesAsignadas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="text-center">
        <h2>Listado de Ordenes de Mantenimiento Preventivo Asignadas</h2>
    </div>
    <div>
        <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%" ID="GVOrdenP" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
<AlternatingRowStyle HorizontalAlign="Left"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="NumOrden" HeaderText="NumOrden" SortExpression="NumOrden" />
                <asp:BoundField DataField="Disciplina" HeaderText="Disciplina" SortExpression="Disciplina" />
                <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio" />
                <asp:BoundField DataField="HoraInicio" HeaderText="HoraInicio" SortExpression="HoraInicio" />
                <asp:BoundField DataField="FechaFinal" HeaderText="FechaFinal" SortExpression="FechaFinal" />
                <asp:BoundField DataField="HoraFinal" HeaderText="HoraFinal" SortExpression="HoraFinal" />
                <asp:BoundField DataField="Ejecutado" HeaderText="Ejecutado" SortExpression="Ejecutado" />
                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                <asp:BoundField DataField="Revisado" HeaderText="Revisado" SortExpression="Revisado" />
                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" Visible="False" />
                <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" SortExpression="IdPlanificacion" Visible="False" />
                <asp:BoundField DataField="IdReporteAS" HeaderText="IdReporteAS" SortExpression="IdReporteAS" Visible="False" />
                <asp:CommandField SelectText="Ver" ShowSelectButton="True" />
            </Columns>
             <EditRowStyle HorizontalAlign="Left" />
                    <EmptyDataRowStyle HorizontalAlign="Left" />
                    <FooterStyle BackColor="#ffffff" VerticalAlign="Middle" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#00BCD4" Font-Bold="True" ForeColor="White" Font-Overline="False" Font-Size="15px" HorizontalAlign="Center" Height="30px" />
                    <PagerStyle BackColor="#ffffff" ForeColor="Black" HorizontalAlign="center" />
                    <RowStyle BackColor="#ffffff" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#848384" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                    <SortedAscendingCellStyle BackColor="#848384" HorizontalAlign="Left" />
                    <SortedAscendingHeaderStyle BackColor="#848384" HorizontalAlign="Left" />
                    <SortedDescendingCellStyle BackColor="#848384" HorizontalAlign="Left" />
                    <SortedDescendingHeaderStyle BackColor="#00BCD4" HorizontalAlign="Left" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" SelectCommand="SELECT Usuario.Email, OrdenMttoPreventivo.* FROM OrdenMttoPreventivo INNER JOIN Usuario ON OrdenMttoPreventivo.IdUsuario = Usuario.IdUsuario WHERE (Usuario.Email = @Email)">
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="Correo" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>

