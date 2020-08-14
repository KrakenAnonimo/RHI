<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaTAVS.aspx.cs" Inherits="ListaTAVS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 467px;
            position: relative;
            left: 531px;
            top: -6px;
            height: 190px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="position: relative; top: -11px; left: 188px; width: 1000px;" class="t-cn">
            <h2>Lista de Tareas Averia o Servicio</h2>
        </div>
        <div class="auto-style7">

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IdTareaAS" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black" GridLines="Vertical" PageSize="5" Width="316px">
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

        </div>
    </div>
</asp:Content>

