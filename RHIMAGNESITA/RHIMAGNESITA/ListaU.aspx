<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaU.aspx.cs" Inherits="ListaU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <h2>Lista de Usuarios</h2>
        </div>
    </div>
    <div style="align-content: center; align-items: center; text-align: center;">
        <asp:Label>Buscar por Documento:</asp:Label>
        <asp:TextBox ID="txtBuscar" runat="server" placeholder="Buscar..."></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary btn-sm" OnClick="btnBuscar_Click" />
    </div>
    <div style="align-content: center; align-items: center; text-align: center;">
        <aps:label>Filtrar tabla por Rol:</aps:label>
        <div style="align-content: center; align-items: center;>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" DataSourceID="SqldsRoles" DataTextField="Rol" DataValueField="IdRol" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"></asp:RadioButtonList>
        </div>
    </div>
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" ID="GridView1" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                    <DeleteParameters>
                        <asp:Parameter Name="IdUsuario" Type="Int32"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Documento" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Apellido" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Telefono" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Email" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Clave" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Ciudad" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Direccion" Type="String"></asp:Parameter>
                        <asp:Parameter Name="IdRol" Type="Int32"></asp:Parameter>
                    </InsertParameters>
                    <UpdateParameters>
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
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqldsRoles" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.* FROM Rol"></asp:SqlDataSource>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
