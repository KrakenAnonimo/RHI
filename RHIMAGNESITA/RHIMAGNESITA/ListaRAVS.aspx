<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaRAVS.aspx.cs" Inherits="ListaRAVS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 91px; position: relative; top: 0px; left: 40px">
        <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
    </div>
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <h2>Lista Reportes de Averia o Servicios</h2>
        </div>
    </div>
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IdReporteAS" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black" GridLines="Vertical" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="IdReporteAS" HeaderText="IdReporteAS" ReadOnly="True" SortExpression="IdReporteAS" Visible="False" />
                        <asp:BoundField DataField="NumReporte" HeaderText="NumReporte" SortExpression="NumReporte" />
                        <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="FechaReporte" HeaderText="FechaReporte" SortExpression="FechaReporte" />
                        <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False" />
                        <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" Visible="False" />
                        <asp:CommandField SelectText="Ver" ShowSelectButton="True">
                            <ControlStyle ForeColor="#3EC1D5" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [ReporteAveriaServicio] WHERE [IdReporteAS] = @IdReporteAS" InsertCommand="INSERT INTO [ReporteAveriaServicio] ([NumReporte], [Titulo], [Descripcion], [FechaReporte], [IdElemento], [IdUsuario]) VALUES (@NumReporte, @Titulo, @Descripcion, @FechaReporte, @IdElemento, @IdUsuario)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdReporteAS], [NumReporte], [Titulo], [Descripcion], [FechaReporte], [IdElemento], [IdUsuario] FROM [ReporteAveriaServicio]" UpdateCommand="UPDATE [ReporteAveriaServicio] SET [NumReporte] = @NumReporte, [Titulo] = @Titulo, [Descripcion] = @Descripcion, [FechaReporte] = @FechaReporte, [IdElemento] = @IdElemento, [IdUsuario] = @IdUsuario WHERE [IdReporteAS] = @IdReporteAS">
                    <DeleteParameters>
                        <asp:Parameter Name="IdReporteAS" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NumReporte" Type="Int32" />
                        <asp:Parameter Name="Titulo" Type="String" />
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="FechaReporte" Type="String" />
                        <asp:Parameter Name="IdElemento" Type="Int32" />
                        <asp:Parameter Name="IdUsuario" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NumReporte" Type="Int32" />
                        <asp:Parameter Name="Titulo" Type="String" />
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="FechaReporte" Type="String" />
                        <asp:Parameter Name="IdElemento" Type="Int32" />
                        <asp:Parameter Name="IdUsuario" Type="Int32" />
                        <asp:Parameter Name="IdReporteAS" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

