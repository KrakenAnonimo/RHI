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

        .auto-style6 {
            width: 97%;
            position: relative;
            left: 0px;
            top: 1px;
        }

        .auto-style8 {
            width: 314px;
            position: relative;
            left: -88px;
            top: 63px;
        }
        .auto-style9 {
            width: 445px;
            position: relative;
            left: 256px;
            top: -82px;
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
                                        <asp:DropDownList ID="cmbUsP" runat="server" CssClass="auto-style6" BackColor="White" DataSourceID="sqlRols" DataTextField="Rol" DataValueField="IdRol" ForeColor="Black" OnSelectedIndexChanged="cmbUsP_SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="sqlRols" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.* FROM Rol"></asp:SqlDataSource>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="auto-style8">

                                        <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5" ID="gvUsua" ForeColor="Black" GridLines="Vertical">
                                            <AlternatingRowStyle BackColor="White" />
                                            <columns>
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
</columns>
                                            <footerstyle backcolor="#CCCC99" />
                                            <headerstyle backcolor="#6B696B" font-bold="True" forecolor="White" />
                                            <pagerstyle backcolor="#F7F7DE" forecolor="Black" horizontalalign="Right" />
                                            <rowstyle BackColor="#F7F7DE" />
                                            <selectedrowstyle backcolor="#CE5D5A" font-bold="True" forecolor="White" />
                                            <sortedascendingcellstyle backcolor="#FBFBF2" />
                                            <sortedascendingheaderstyle backcolor="#848384" />
                                            <sorteddescendingcellstyle backcolor="#EAEAD3" />
                                            <sorteddescendingheaderstyle backcolor="#575357" />
                                        </asp:GridView>
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
                                    <div class="auto-style9">
                                        <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlanificacion" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." ID="gvPlanif" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="19px" PageSize="5" Width="255px" ForeColor="Black" GridLines="Vertical">
                                            <AlternatingRowStyle BackColor="White" />
                                            <columns>
<asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False"></asp:BoundField>
<asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion"></asp:BoundField>
<asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones"></asp:BoundField>
<asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:BoundField>
<asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False"></asp:BoundField>
                                                <asp:CommandField ShowSelectButton="True" />
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
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Planificacion] WHERE [IdPlanificacion] = @IdPlanificacion" InsertCommand="INSERT INTO [Planificacion] ([FechaPlanificacion], [Observaciones], [Estado], [IdElemento]) VALUES (@FechaPlanificacion, @Observaciones, @Estado, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPlanificacion], [FechaPlanificacion], [Observaciones], [Estado], [IdElemento] FROM [Planificacion]" UpdateCommand="UPDATE [Planificacion] SET [FechaPlanificacion] = @FechaPlanificacion, [Observaciones] = @Observaciones, [Estado] = @Estado, [IdElemento] = @IdElemento WHERE [IdPlanificacion] = @IdPlanificacion">
                                            <deleteparameters>
<asp:Parameter Name="IdPlanificacion" Type="Int32"></asp:Parameter>
</deleteparameters>
                                            <insertparameters>
<asp:Parameter Name="FechaPlanificacion" Type="String"></asp:Parameter>
<asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
<asp:Parameter Name="Estado" Type="String"></asp:Parameter>
<asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
</insertparameters>
                                            <updateparameters>
<asp:Parameter Name="FechaPlanificacion" Type="String"></asp:Parameter>
<asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
<asp:Parameter Name="Estado" Type="String"></asp:Parameter>
<asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
<asp:Parameter Name="IdPlanificacion" Type="Int32"></asp:Parameter>
</updateparameters>
                                        </asp:SqlDataSource>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="row form-group" style="position: relative; left: 11px; top: -100px">
                                        <div>
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

