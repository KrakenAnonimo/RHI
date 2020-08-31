<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ReporteInventario.aspx.cs" Inherits="ReporteInventario" %>

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
            <h2>Reporte de inventario y herramientas</h2>
        </div>
    </div>
    <div style="align-content: center; align-items: center; text-align: center;">
        <div class="text-left">
            <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="IdArea,IdElemento" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" PageSize="5" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                <Columns>
                    <asp:BoundField DataField="IdArea" HeaderText="IdArea" InsertVisible="False" ReadOnly="True" SortExpression="IdArea" Visible="False" />
                    <asp:BoundField DataField="Ubicacion" HeaderText="Ubicacion" SortExpression="Ubicacion" />
                    <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" InsertVisible="False" ReadOnly="True" SortExpression="IdElemento" Visible="False" />
                    <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                    <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" Visible="False" />
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Area.IdArea, Area.Ubicacion, Elemento.IdElemento, Elemento.Codigo, Elemento.Nombre, Elemento.Descripcion, Elemento.Estado, Elemento.IdArea AS Expr1 FROM Area INNER JOIN Elemento ON Area.IdArea = Elemento.IdArea"></asp:SqlDataSource>
    </div>
    <br />
    <br />
</asp:Content>

