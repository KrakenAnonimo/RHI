<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaA.aspx.cs" Inherits="ListaA" %>

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
            <h2>Lista de Areas</h2>
        </div>
    </div>
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#ffffff" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IdArea" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black" GridLines="Vertical" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                    <AlternatingRowStyle BackColor="White" HorizontalAlign="Left" />
                    <Columns>
                        <asp:BoundField DataField="IdArea" HeaderText="IdArea" ReadOnly="True" SortExpression="IdArea" Visible="False" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Ubicacion" HeaderText="Ubicacion" SortExpression="Ubicacion" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Area] WHERE [IdArea] = @IdArea" InsertCommand="INSERT INTO [Area] ([Nombre], [Ubicacion]) VALUES (@Nombre, @Ubicacion)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdArea], [Nombre], [Ubicacion] FROM [Area]" UpdateCommand="UPDATE [Area] SET [Nombre] = @Nombre, [Ubicacion] = @Ubicacion WHERE [IdArea] = @IdArea">
                    <DeleteParameters>
                        <asp:Parameter Name="IdArea" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Ubicacion" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Ubicacion" Type="String" />
                        <asp:Parameter Name="IdArea" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

