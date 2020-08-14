<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaM.aspx.cs" Inherits="ListaM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            position: relative;
            left: 454px;
            top: 1px;
            width: 544px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="position: relative; top: -11px; left: 188px; width: 1000px;" class="t-cn">
            <h2>Lista de Materiales</h2>
        </div>
        <div top: 6px; left: 5px; z-index: 1; height: 171px; width: 1285px" class="auto-style7">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdMaterial" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" Width="482px">
                <AlternatingRowStyle BackColor="White" />
                <columns>
                    <asp:BoundField DataField="IdMaterial" HeaderText="IdMaterial" ReadOnly="True" SortExpression="IdMaterial" Visible="False" />
                    <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:BoundField DataField="Unidad" HeaderText="Unidad" SortExpression="Unidad" />
                    <asp:CommandField SelectText="Ver" ShowSelectButton="True">
                    <ControlStyle ForeColor="#3EC1D5" />
                    </asp:CommandField>
                </columns>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Material] WHERE [IdMaterial] = @IdMaterial" InsertCommand="INSERT INTO [Material] ([Codigo], [Nombre], [Descripcion], [Unidad]) VALUES (@Codigo, @Nombre, @Descripcion, @Unidad)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdMaterial], [Codigo], [Nombre], [Descripcion], [Unidad] FROM [Material]" UpdateCommand="UPDATE [Material] SET [Codigo] = @Codigo, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Unidad] = @Unidad WHERE [IdMaterial] = @IdMaterial">
                <deleteparameters>
                    <asp:Parameter Name="IdMaterial" Type="Int32" />
                </deleteparameters>
                <insertparameters>
                    <asp:Parameter Name="Codigo" Type="String" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Descripcion" Type="String" />
                    <asp:Parameter Name="Unidad" Type="String" />
                </insertparameters>
                <updateparameters>
                    <asp:Parameter Name="Codigo" Type="String" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Descripcion" Type="String" />
                    <asp:Parameter Name="Unidad" Type="String" />
                    <asp:Parameter Name="IdMaterial" Type="Int32" />
                </updateparameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

