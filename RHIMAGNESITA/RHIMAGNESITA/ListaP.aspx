<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaP.aspx.cs" Inherits="ListaP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 91px; position: relative; top: 0px; left: 40px">
        <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
    </div>
    <div>
        <div>
            <div style="align-content: center; align-items: center; text-align: center;">
                <h2>Lista de las Planificaciones</h2>
            </div>
        </div>
    </div>
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <div class="text-center">
                <asp:Label runat="server">Buscar por Estado: </asp:Label>
                <asp:TextBox ID="txtBuscar" runat="server" placeholder="Buscar..." class="auto-style13" TextMode="Date"></asp:TextBox>
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary btn-sm" OnClick="btnBuscar_Click" />
                </asp:RadioButtonList>
            </div>
        </div>
    </div>
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlanificacion" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <alternatingrowstyle backcolor="White" />
                    <columns>
                        <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" InsertVisible="False" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion" />
                        <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False" />
                        <asp:CommandField SelectText="Ver" ShowSelectButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Planificacion] WHERE [IdPlanificacion] = @IdPlanificacion" InsertCommand="INSERT INTO [Planificacion] ([FechaPlanificacion], [Observaciones], [Estado], [IdElemento]) VALUES (@FechaPlanificacion, @Observaciones, @Estado, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Planificacion.IdPlanificacion, Planificacion.FechaPlanificacion, Planificacion.Observaciones, Planificacion.Estado, Planificacion.IdElemento, Elemento.Nombre FROM Elemento INNER JOIN Planificacion ON Elemento.IdElemento = Planificacion.IdElemento" UpdateCommand="UPDATE [Planificacion] SET [FechaPlanificacion] = @FechaPlanificacion, [Observaciones] = @Observaciones, [Estado] = @Estado, [IdElemento] = @IdElemento WHERE [IdPlanificacion] = @IdPlanificacion">
                    <deleteparameters>
                        <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                    </deleteparameters>
                    <insertparameters>
                        <asp:Parameter Name="FechaPlanificacion" Type="String" />
                        <asp:Parameter Name="Observaciones" Type="String" />
                        <asp:Parameter Name="Estado" Type="String" />
                        <asp:Parameter Name="IdElemento" Type="Int32" />
                    </insertparameters>
                    <updateparameters>
                        <asp:Parameter Name="FechaPlanificacion" Type="String" />
                        <asp:Parameter Name="Observaciones" Type="String" />
                        <asp:Parameter Name="Estado" Type="String" />
                        <asp:Parameter Name="IdElemento" Type="Int32" />
                        <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                    </updateparameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

