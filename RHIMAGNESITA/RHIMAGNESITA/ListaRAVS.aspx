<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaRAVS.aspx.cs" Inherits="ListaRAVS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 606px;
            position: relative;
            left: 397px;
            top: -5px;
            height: 192px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 91px; position: relative; top: 0px; left: 40px">
        <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
    </div>
    <div>
        <div style="position: relative; top: -11px; left: 188px; width: 1000px;" class="t-cn">
            <h2>Lista Reportes de Averia o Servicios</h2>
        </div>
    </div>
    <div>
        <div class="auto-style7">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IdReporteAS" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black" GridLines="Vertical" PageSize="5" Width="548px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
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
        </div>
    </div>
</asp:Content>

