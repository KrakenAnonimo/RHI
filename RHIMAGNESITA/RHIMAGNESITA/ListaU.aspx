<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaU.aspx.cs" Inherits="ListaU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    .auto-style7 {
        width: 698px;
        position: relative;
        left: 446px;
        top: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div>
        <div style="position: relative; top: -11px; left: 188px; width: 1000px;" class="t-cn">
            <h2>Lista de Usuarios</h2>
        </div>
        <div class="auto-style7">
            <div class="t-cn">
            <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" Width="238px">
                <AlternatingRowStyle BackColor="White" />
                <columns>
<asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento"></asp:BoundField>
<asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
<asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido"></asp:BoundField>
<asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono"></asp:BoundField>
<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad"></asp:BoundField>
<asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion"></asp:BoundField>
<asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False"></asp:BoundField>
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
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                <deleteparameters>
<asp:Parameter Name="IdUsuario" Type="Int32"></asp:Parameter>
</deleteparameters>
                <insertparameters>
<asp:Parameter Name="Documento" Type="String"></asp:Parameter>
<asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
<asp:Parameter Name="Apellido" Type="String"></asp:Parameter>
<asp:Parameter Name="Telefono" Type="String"></asp:Parameter>
<asp:Parameter Name="Email" Type="String"></asp:Parameter>
<asp:Parameter Name="Clave" Type="String"></asp:Parameter>
<asp:Parameter Name="Ciudad" Type="String"></asp:Parameter>
<asp:Parameter Name="Direccion" Type="String"></asp:Parameter>
<asp:Parameter Name="IdRol" Type="Int32"></asp:Parameter>
</insertparameters>
                <updateparameters>
<asp:Parameter Name="Documento" Type="String"></asp:Parameter>
<asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
<asp:Parameter Name="Apellido" Type="String"></asp:Parameter>
<asp:Parameter Name="Telefono" Type="String"></asp:Parameter>
<asp:Parameter Name="Email" Type="String"></asp:Parameter>
<asp:Parameter Name="Clave" Type="String"></asp:Parameter>
<asp:Parameter Name="Ciudad" Type="String"></asp:Parameter>
<asp:Parameter Name="Direccion" Type="String"></asp:Parameter>
<asp:Parameter Name="IdRol" Type="Int32"></asp:Parameter>
<asp:Parameter Name="IdUsuario" Type="Int32"></asp:Parameter>
</updateparameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

