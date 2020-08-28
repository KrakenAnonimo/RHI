<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaM.aspx.cs" Inherits="ListaM" %>

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
            <h2>Lista de Materialess</h2>
        </div>
        </div>
         <br />
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:GridView AlternatingRowStyle-HorizontalAlign="NotSet" Width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdMaterial" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                <AlternatingRowStyle BackColor="White" HorizontalAlign="Left" />
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

