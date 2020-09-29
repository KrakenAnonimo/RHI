<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="EjecucionesAsignadas.aspx.cs" Inherits="EjecucionesAsignadas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="text-center">
        <h2>LISTADO DE EJECUCIONES DE MANTENIMIENTO ASIGNADAS</h2>
    </div>
    <div>
        <div style="width: 91px; position: relative; top: 0px; left: 40px">
            <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
        </div>
        <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="sqlEject" EmptyDataText="No hay registros de datos para mostrar." AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ID="gvM">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="IdEjecucionM" HeaderText="IdEjecucionM" InsertVisible="False" ReadOnly="True" SortExpression="IdEjecucionM" Visible="False" />
                <asp:BoundField DataField="FechaEjecucion" HeaderText="FechaEjecucion" SortExpression="FechaEjecucion" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                <asp:BoundField DataField="IdTareaMtto" HeaderText="IdTareaMtto" SortExpression="IdTareaMtto" Visible="False" />
                <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" SortExpression="IdOrdenMttoP" Visible="False" />
                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" InsertVisible="False" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" Visible="False" />
                <asp:CommandField SelectText="Ver" ShowSelectButton="True">
                    <ControlStyle ForeColor="#0099FF" />
                </asp:CommandField>
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
        <asp:SqlDataSource runat="server" ID="sqlEject" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT EjecucionM.IdEjecucionM, EjecucionM.Estado, EjecucionM.FechaEjecucion, EjecucionM.Duracion, EjecucionM.Observaciones, EjecucionM.IdTareaMtto, EjecucionM.IdOrdenMttoP, Usuario.Email FROM EjecucionM INNER JOIN OrdenMttoPreventivo ON EjecucionM.IdOrdenMttoP = OrdenMttoPreventivo.IdOrdenMttoP INNER JOIN Usuario ON OrdenMttoPreventivo.IdUsuario = Usuario.IdUsuario WHERE (Usuario.Email = @email) AND (EjecucionM.Estado = @ejecu)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="Correo" />
                <asp:Parameter DefaultValue="Sin Ejecutar" Name="ejecu" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

