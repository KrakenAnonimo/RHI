<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaP.aspx.cs" Inherits="ListaP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 883px;
            position: relative;
            left: 244px;
            top: -4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style7"> 
        <div style="position: relative; top: -11px; left: 188px; width: 1000px;"><h2>Lista de las Planificaciones</h2></div>
        <div top: 6px; left: 5px; z-index: 1; height: 171px; width: 1285px" style="width: 836px; position: relative; top: -13px; left: 238px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlanificacion" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False" />
                    <asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion" />
                    <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                    <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False" />
                    <asp:CommandField SelectText="Ver" ShowSelectButton="True" >
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Planificacion] WHERE [IdPlanificacion] = @IdPlanificacion" InsertCommand="INSERT INTO [Planificacion] ([FechaPlanificacion], [Observaciones], [Estado], [IdElemento]) VALUES (@FechaPlanificacion, @Observaciones, @Estado, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPlanificacion], [FechaPlanificacion], [Observaciones], [Estado], [IdElemento] FROM [Planificacion]" UpdateCommand="UPDATE [Planificacion] SET [FechaPlanificacion] = @FechaPlanificacion, [Observaciones] = @Observaciones, [Estado] = @Estado, [IdElemento] = @IdElemento WHERE [IdPlanificacion] = @IdPlanificacion">
                <DeleteParameters>
                    <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FechaPlanificacion" Type="String" />
                    <asp:Parameter Name="Observaciones" Type="String" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="IdElemento" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FechaPlanificacion" Type="String" />
                    <asp:Parameter Name="Observaciones" Type="String" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="IdElemento" Type="Int32" />
                    <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        </div>
</asp:Content>

