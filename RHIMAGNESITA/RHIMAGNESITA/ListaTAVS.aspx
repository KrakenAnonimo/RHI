<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaTAVS.aspx.cs" Inherits="ListaTAVS" %>

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
            <h2>Lista de Tareas Averia o Servicio</h2>
        </div>
    </div>
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IdTareaAS" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black" GridLines="Vertical" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="IdTareaAS" HeaderText="IdTareaAS" ReadOnly="True" SortExpression="IdTareaAS" Visible="False" />
                        <asp:BoundField DataField="NombreAS" HeaderText="NombreAS" SortExpression="NombreAS" />
                        <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                        <asp:BoundField DataField="FechaEjecucion" HeaderText="FechaEjecucion" SortExpression="FechaEjecucion" />
                        <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" SortExpression="IdOrdenMttoP" Visible="False" />
                        <asp:BoundField DataField="IdOrdenMttoC" HeaderText="IdOrdenMttoC" SortExpression="IdOrdenMttoC" Visible="False" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [TareaAveriaServicio] WHERE [IdTareaAS] = @IdTareaAS" InsertCommand="INSERT INTO [TareaAveriaServicio] ([NombreAS], [Duracion], [FechaEjecucion], [IdOrdenMttoP], [IdOrdenMttoC]) VALUES (@NombreAS, @Duracion, @FechaEjecucion, @IdOrdenMttoP, @IdOrdenMttoC)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdTareaAS], [NombreAS], [Duracion], [FechaEjecucion], [IdOrdenMttoP], [IdOrdenMttoC] FROM [TareaAveriaServicio]" UpdateCommand="UPDATE [TareaAveriaServicio] SET [NombreAS] = @NombreAS, [Duracion] = @Duracion, [FechaEjecucion] = @FechaEjecucion, [IdOrdenMttoP] = @IdOrdenMttoP, [IdOrdenMttoC] = @IdOrdenMttoC WHERE [IdTareaAS] = @IdTareaAS">
                    <DeleteParameters>
                        <asp:Parameter Name="IdTareaAS" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NombreAS" Type="String" />
                        <asp:Parameter Name="Duracion" Type="String" />
                        <asp:Parameter Name="FechaEjecucion" Type="String" />
                        <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                        <asp:Parameter Name="IdOrdenMttoC" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NombreAS" Type="String" />
                        <asp:Parameter Name="Duracion" Type="String" />
                        <asp:Parameter Name="FechaEjecucion" Type="String" />
                        <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                        <asp:Parameter Name="IdOrdenMttoC" Type="Int32" />
                        <asp:Parameter Name="IdTareaAS" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

