<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="EjecucionesAsignadas.aspx.cs" Inherits="EjecucionesAsignadas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div><h2>LISTADO DE EJECUCIONES DE MANTENIMIENTO ASIGNADAS</h2></div>
    <div>
        <asp:GridView  AlternatingRowStyle-HorizontalAlign="left" Width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="sqlEject"  EmptyDataText="No hay registros de datos para mostrar." AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ID="gvM">
                    <alternatingrowstyle backcolor="White" />
            <Columns>
                <asp:BoundField DataField="IdEjecucionM" HeaderText="IdEjecucionM" InsertVisible="False" ReadOnly="True" SortExpression="IdEjecucionM" Visible="False" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="FechaEjecucion" HeaderText="FechaEjecucion" SortExpression="FechaEjecucion" />
                <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                <asp:BoundField DataField="IdTareaMtto" HeaderText="IdTareaMtto" SortExpression="IdTareaMtto" />
                <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" SortExpression="IdOrdenMttoP" />
                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" InsertVisible="False" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" Visible="False" />
                <asp:CommandField SelectText="Ver" ShowSelectButton="True">
                <ControlStyle ForeColor="#0099FF" />
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
        <asp:SqlDataSource runat="server" ID="sqlEject" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT EjecucionM.IdEjecucionM, EjecucionM.Estado, EjecucionM.FechaEjecucion, EjecucionM.Duracion, EjecucionM.Observaciones, EjecucionM.IdTareaMtto, EjecucionM.IdOrdenMttoP, Usuario.IdUsuario, Usuario.Email FROM EjecucionM INNER JOIN OrdenMttoPreventivo ON EjecucionM.IdOrdenMttoP = OrdenMttoPreventivo.IdOrdenMttoP INNER JOIN Usuario ON OrdenMttoPreventivo.IdUsuario = Usuario.IdUsuario WHERE (Usuario.Email = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="Correo" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

