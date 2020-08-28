<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaTM.aspx.cs" Inherits="ListaTM" %>

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
            <h2>Lista Tareas de Mantenimiento</h2>
        </div>
    </div>
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdTareaMtto" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." PageSize="5" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="IdTareaMtto" HeaderText="IdTareaMtto" ReadOnly="True" SortExpression="IdTareaMtto" Visible="False" />
                        <asp:BoundField DataField="NombreTM" HeaderText="NombreTM" SortExpression="NombreTM" />
                        <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [TareaMtto] WHERE [IdTareaMtto] = @IdTareaMtto" InsertCommand="INSERT INTO [TareaMtto] ([NombreTM], [Duracion], [Descripcion], [IdElemento]) VALUES (@NombreTM, @Duracion, @Descripcion, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdTareaMtto], [NombreTM], [Duracion], [Descripcion], [IdElemento] FROM [TareaMtto]" UpdateCommand="UPDATE [TareaMtto] SET [NombreTM] = @NombreTM, [Duracion] = @Duracion, [Descripcion] = @Descripcion, [IdElemento] = @IdElemento WHERE [IdTareaMtto] = @IdTareaMtto">
                    <DeleteParameters>
                        <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NombreTM" Type="String" />
                        <asp:Parameter Name="Duracion" Type="String" />
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="IdElemento" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NombreTM" Type="String" />
                        <asp:Parameter Name="Duracion" Type="String" />
                        <asp:Parameter Name="Descripcion" Type="String" />
                        <asp:Parameter Name="IdElemento" Type="Int32" />
                        <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

