﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Planificacion.aspx.cs" Inherits="Planificacion" %>

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
            width: 97%;
            position: relative;
            left: 0px;
            top: 1px;
        }

        .auto-style9 {
            width: 225px;
            position: relative;
            top: 28px;
            left: -4px;
        }

        .auto-style10 {
            width: 232px;
            position: relative;
            top: -191px;
            left: 434px;
            height: 173px;
        }

        .auto-style11 {
            width: 549px;
            position: relative;
            top: -1px;
            left: 51px;
        }

        .auto-style12 {
            width: 321px;
            position: relative;
            left: 183px;
            top: 1px;
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
                            <div class="card-header"><strong>REGISTRAR PLANIFICACION</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                 <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Planificaciones con elemento</label>
                                    </div>
                                </div>
                                <div class="auto-style12">
                                    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlanificacion" DataSourceID="SqlDataSource4" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" ID="gvPlanificacion">
                                        <columns>
<asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False"></asp:BoundField>
<asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion"></asp:BoundField>
<asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:BoundField>
<asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False"></asp:BoundField>
</columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Planificacion] WHERE [IdPlanificacion] = @IdPlanificacion" InsertCommand="INSERT INTO [Planificacion] ([FechaPlanificacion], [Observaciones], [Estado], [IdElemento]) VALUES (@FechaPlanificacion, @Observaciones, @Estado, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPlanificacion], [FechaPlanificacion], [Observaciones], [Estado], [IdElemento] FROM [Planificacion]" UpdateCommand="UPDATE [Planificacion] SET [FechaPlanificacion] = @FechaPlanificacion, [Observaciones] = @Observaciones, [Estado] = @Estado, [IdElemento] = @IdElemento WHERE [IdPlanificacion] = @IdPlanificacion">
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
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Elemento</label>
                                    </div>
                                </div>
                                <div class="auto-style11">
                                    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="IdElemento" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" Width="540px" ID="gvElemento">
                                        <columns>
<asp:BoundField DataField="IdElemento" HeaderText="IdElemento" ReadOnly="True" SortExpression="IdElemento" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo"></asp:BoundField>
<asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
<asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" Visible="False"></asp:BoundField>
<asp:BoundField DataField="IdArea" HeaderText="IdArea" SortExpression="IdArea" Visible="False"></asp:BoundField>
                                            <asp:CommandField ShowSelectButton="True" />
</columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Elemento] WHERE [IdElemento] = @IdElemento" InsertCommand="INSERT INTO [Elemento] ([Codigo], [Nombre], [Descripcion], [Estado], [IdArea]) VALUES (@Codigo, @Nombre, @Descripcion, @Estado, @IdArea)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdElemento], [Codigo], [Nombre], [Descripcion], [Estado], [IdArea] FROM [Elemento]" UpdateCommand="UPDATE [Elemento] SET [Codigo] = @Codigo, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Estado] = @Estado, [IdArea] = @IdArea WHERE [IdElemento] = @IdElemento">
                                        <deleteparameters>
<asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
</deleteparameters>
                                        <insertparameters>
<asp:Parameter Name="Codigo" Type="String"></asp:Parameter>
<asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
<asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
<asp:Parameter Name="Estado" Type="String"></asp:Parameter>
<asp:Parameter Name="IdArea" Type="Int32"></asp:Parameter>
</insertparameters>
                                        <updateparameters>
<asp:Parameter Name="Codigo" Type="String"></asp:Parameter>
<asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
<asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
<asp:Parameter Name="Estado" Type="String"></asp:Parameter>
<asp:Parameter Name="IdArea" Type="Int32"></asp:Parameter>
<asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
</updateparameters>
                                    </asp:SqlDataSource>
                                </div>
                                <div class="form-group">
                                    <label for="FechaP" class=" form-control-label">Fecha Planificacion</label>
                                    <asp:TextBox ID="txtFechaP" runat="server" placeholder="Elija una fecha de planificacion" class="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:TextBox ID="txtObservaciones" runat="server" Rows="9" placeholder="Observaciones..." class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Estado</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbEstado" runat="server" CssClass="auto-style8">
                                            <asp:ListItem>Por Ejecutar</asp:ListItem>
                                            <asp:ListItem>Ejecutada</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <label for="selectSm" class="form-control-label">Asignar a:</label>
                                </div>

                                <div>
                                    <asp:DropDownList runat="server" AutoPostBack="True" ID="cmbRoles" DataSourceID="SqldsRol" DataTextField="Rol" DataValueField="IdRol" OnSelectedIndexChanged="cmbRoles_SelectedIndexChanged"></asp:DropDownList>

                                    <asp:SqlDataSource runat="server" ID="SqldsRol" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.* FROM Rol"></asp:SqlDataSource>
                                </div>

                                <div class="auto-style9">
                                    <asp:GridView ID="gvUsuario" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" OnSelectedIndexChanged="gvUsuario_SelectedIndexChanged" Height="34px" Width="237px">
                                        <alternatingrowstyle backcolor="White" />
                                        <columns>
                                            <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                                            <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" Visible="False" />
                                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" Visible="False" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" Visible="False" />
                                            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False" />
                                            <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" Visible="False" />
                                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" Visible="False" />
                                            <asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False" />
                                            <asp:CommandField ShowSelectButton="True" />
                                        </columns>
                                        <footerstyle backcolor="#CCCC99" />
                                        <headerstyle backcolor="#6B696B" font-bold="True" forecolor="White" />
                                        <pagerstyle backcolor="#F7F7DE" forecolor="Black" horizontalalign="Right" />
                                        <rowstyle backcolor="#F7F7DE" />
                                        <selectedrowstyle backcolor="#CE5D5A" font-bold="True" forecolor="White" />
                                        <sortedascendingcellstyle backcolor="#FBFBF2" />
                                        <sortedascendingheaderstyle backcolor="#848384" />
                                        <sorteddescendingcellstyle backcolor="#EAEAD3" />
                                        <sorteddescendingheaderstyle backcolor="#575357" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                                        <deleteparameters>
                                            <asp:Parameter Name="IdUsuario" Type="Int32" />
                                        </deleteparameters>
                                        <insertparameters>
                                            <asp:Parameter Name="Documento" Type="String" />
                                            <asp:Parameter Name="Nombre" Type="String" />
                                            <asp:Parameter Name="Apellido" Type="String" />
                                            <asp:Parameter Name="Telefono" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="Clave" Type="String" />
                                            <asp:Parameter Name="Ciudad" Type="String" />
                                            <asp:Parameter Name="Direccion" Type="String" />
                                            <asp:Parameter Name="IdRol" Type="Int32" />
                                        </insertparameters>
                                        <updateparameters>
                                            <asp:Parameter Name="Documento" Type="String" />
                                            <asp:Parameter Name="Nombre" Type="String" />
                                            <asp:Parameter Name="Apellido" Type="String" />
                                            <asp:Parameter Name="Telefono" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="Clave" Type="String" />
                                            <asp:Parameter Name="Ciudad" Type="String" />
                                            <asp:Parameter Name="Direccion" Type="String" />
                                            <asp:Parameter Name="IdRol" Type="Int32" />
                                            <asp:Parameter Name="IdUsuario" Type="Int32" />
                                        </updateparameters>
                                    </asp:SqlDataSource>

                                </div>
                                <div style="width: 152px; position: relative; top: -80px; left: 262px">
                                    <asp:Label ID="lblTexto" runat="server" Text="Usuario Elegido: "></asp:Label>
                                    <br />
                                    <asp:Label ID="lblUsuario" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="auto-style10">
                                    <asp:GridView ID="gvElegidos" runat="server"></asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
                                </div>
                                <div class="row form-group">
                                    <div>
                                        <div>
                                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
                                            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Todo" class="btn btn-danger btn-sm" OnClick="btnLimpiar_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

