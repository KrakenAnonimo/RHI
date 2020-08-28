<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaEM.aspx.cs" Inherits="ListaEM" %>

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
            <h2>Lista Ejecuciones de Mantenimiento</h2>
        </div>
    </div>
    <br />
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:GridView AlternatingRowStyle-HorizontalAlign="NotSet" Width="100%" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdEjecucionM" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." PageSize="5" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                <alternatingrowstyle backcolor="White" HorizontalAlign="Left" />
                <columns>
                    <asp:BoundField DataField="IdEjecucionM" HeaderText="IdEjecucionM" ReadOnly="True" SortExpression="IdEjecucionM" Visible="False" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                    <asp:BoundField DataField="FechaEjecucion" HeaderText="FechaEjecucion" SortExpression="FechaEjecucion" />
                    <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                    <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                    <asp:BoundField DataField="IdTareaMtto" HeaderText="IdTareaMtto" SortExpression="IdTareaMtto" Visible="False" />
                    <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" SortExpression="IdOrdenMttoP" Visible="False" />
                    <asp:CommandField SelectText="Ver" ShowSelectButton="True" >
                    <ControlStyle ForeColor="#3EC1D5" />
                    </asp:CommandField>
                </columns>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [EjecucionM] WHERE [IdEjecucionM] = @IdEjecucionM" InsertCommand="INSERT INTO [EjecucionM] ([Estado], [FechaEjecucion], [Duracion], [Observaciones], [IdTareaMtto], [IdOrdenMttoP]) VALUES (@Estado, @FechaEjecucion, @Duracion, @Observaciones, @IdTareaMtto, @IdOrdenMttoP)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdEjecucionM], [Estado], [FechaEjecucion], [Duracion], [Observaciones], [IdTareaMtto], [IdOrdenMttoP] FROM [EjecucionM]" UpdateCommand="UPDATE [EjecucionM] SET [Estado] = @Estado, [FechaEjecucion] = @FechaEjecucion, [Duracion] = @Duracion, [Observaciones] = @Observaciones, [IdTareaMtto] = @IdTareaMtto, [IdOrdenMttoP] = @IdOrdenMttoP WHERE [IdEjecucionM] = @IdEjecucionM">
                <deleteparameters>
                    <asp:Parameter Name="IdEjecucionM" Type="Int32" />
                </deleteparameters>
                <insertparameters>
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="FechaEjecucion" Type="String" />
                    <asp:Parameter Name="Duracion" Type="String" />
                    <asp:Parameter Name="Observaciones" Type="String" />
                    <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                    <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                </insertparameters>
                <updateparameters>
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="FechaEjecucion" Type="String" />
                    <asp:Parameter Name="Duracion" Type="String" />
                    <asp:Parameter Name="Observaciones" Type="String" />
                    <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                    <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                    <asp:Parameter Name="IdEjecucionM" Type="Int32" />
                </updateparameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

