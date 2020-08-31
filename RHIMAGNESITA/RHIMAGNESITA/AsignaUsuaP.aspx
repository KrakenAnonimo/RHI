<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AsignaUsuaP.aspx.cs" Inherits="AsignaUsuaP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 50%;
            text-align: center;
            padding-left: 15px;
            padding-right: 15px;
            left: 360px;
            top: -75px;
        }

        .auto-style8 {
            width: 688px;
            height: 179px;
            position: absolute;
            top: 136px;
            left: 346px;
            z-index: 1;
        }
        .auto-style9 {
            width: 688px;
            height: 139px;
            position: absolute;
            top: 289px;
            left: 384px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--No mover estos espacios-->
    <br />
    <!--No mover estos espacios-->
    <!--Resto del codigo-->
    <div class="jumbotron">
        <div class="content">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="auto-style7">
                        <div class="card">
                            <div class="card-header"><strong>ASIGNAR USUARIO A PLANIFICACION</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Asignar</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbUsP" runat="server" BackColor="White" DataSourceID="sqlRols" DataTextField="Rol" DataValueField="IdRol" ForeColor="Black" OnSelectedIndexChanged="cmbUsP_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="sqlRols" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.* FROM Rol"></asp:SqlDataSource>
                                    </div>
                                    <br />
                                    <div style="align-content: center; align-items: center; text-align: center;">
                                        <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="40%" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5" ID="gvUsua" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="gvUsua_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False"></asp:BoundField>
                                                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento"></asp:BoundField>
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido"></asp:BoundField>
                                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" Visible="False"></asp:BoundField>
                                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" Visible="False"></asp:BoundField>
                                                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False"></asp:BoundField>
                                                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" Visible="False"></asp:BoundField>
                                                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" Visible="False"></asp:BoundField>
                                                <asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False"></asp:BoundField>
                                                <asp:CommandField ShowSelectButton="True" />
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
                                    </div>
                                    <div class="auto-style8">
                                        <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="40%" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlanificacion" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." ID="gvPlanif" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="19px" PageSize="5" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="gvPlanif_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False"></asp:BoundField>
                                                <asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion"></asp:BoundField>
                                                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones"></asp:BoundField>
                                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:BoundField>
                                                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False"></asp:BoundField>
                                                <asp:CommandField ShowSelectButton="True" />
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
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Planificacion] WHERE [IdPlanificacion] = @IdPlanificacion" InsertCommand="INSERT INTO [Planificacion] ([FechaPlanificacion], [Observaciones], [Estado], [IdElemento]) VALUES (@FechaPlanificacion, @Observaciones, @Estado, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPlanificacion], [FechaPlanificacion], [Observaciones], [Estado], [IdElemento] FROM [Planificacion]" UpdateCommand="UPDATE [Planificacion] SET [FechaPlanificacion] = @FechaPlanificacion, [Observaciones] = @Observaciones, [Estado] = @Estado, [IdElemento] = @IdElemento WHERE [IdPlanificacion] = @IdPlanificacion">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32"></asp:Parameter>
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="FechaPlanificacion" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Estado" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="FechaPlanificacion" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Estado" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32"></asp:Parameter>
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                    <div>
                                        <asp:GridView Width="50%" ID="gvUsuarioElegido" runat="server"></asp:GridView>
                                    </div>
                                    <div class="auto-style9">
                                        <asp:GridView Width="50%" ID="gvPlanificaiconElegido" runat="server"></asp:GridView>
                                    </div>
                                    <br />
                                    <div class="row form-group">
                                        <div style="align-content: center; align-items: center; text-align: center;">
                                            <asp:Button ID="btnGuardar" runat="server" Text="Asignar" class="btn btn-success btn-sm" Width="126px" OnClick="btnGuardar_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>

