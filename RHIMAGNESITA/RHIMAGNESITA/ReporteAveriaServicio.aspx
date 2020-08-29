<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="ReporteAveriaServicio.aspx.cs" Inherits="ReporteAveriaServicio" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--No mover estos espacios-->
    <br />
    <!--No mover estos espacios-->
    <!--Resto del Codigo-->
    <div class="jumbotron">
        <div class="content">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="auto-style7">
                        <div class="card">
                            <div class="card-header"><strong>REGISTRAR REPORTE AVERIA SERVICIO</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Elemento</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IdElemento" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5">
                                            <Columns>
                                                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" ReadOnly="True" SortExpression="IdElemento" Visible="False" />
                                                <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" Visible="False" />
                                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                                <asp:BoundField DataField="IdArea" HeaderText="IdArea" SortExpression="IdArea" Visible="False" />
                                                <asp:CommandField ShowSelectButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Elemento] WHERE [IdElemento] = @IdElemento" InsertCommand="INSERT INTO [Elemento] ([Codigo], [Nombre], [Descripcion], [Estado], [IdArea]) VALUES (@Codigo, @Nombre, @Descripcion, @Estado, @IdArea)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdElemento], [Codigo], [Nombre], [Descripcion], [Estado], [IdArea] FROM [Elemento]" UpdateCommand="UPDATE [Elemento] SET [Codigo] = @Codigo, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Estado] = @Estado, [IdArea] = @IdArea WHERE [IdElemento] = @IdElemento">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Codigo" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="Estado" Type="String" />
                                                <asp:Parameter Name="IdArea" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Codigo" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="Estado" Type="String" />
                                                <asp:Parameter Name="IdArea" Type="Int32" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>

                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Usuario</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5">
                                            <Columns>
                                                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" Visible="False" />
                                                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" Visible="False" />
                                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" Visible="False" />
                                                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False" />
                                                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" Visible="False" />
                                                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" Visible="False" />
                                                <asp:BoundField DataField="IdRol" HeaderText="IdRol" SortExpression="IdRol" Visible="False" />
                                                <asp:CommandField ShowSelectButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdUsuario" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Documento" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Apellido" Type="String" />
                                                <asp:Parameter Name="Telefono" Type="String" />
                                                <asp:Parameter Name="Email" Type="String" />
                                                <asp:Parameter Name="Clave" Type="String" />
                                                <asp:Parameter Name="Ciudad" Type="String" />
                                                <asp:Parameter Name="Direccion" Type="String" />
                                                <asp:Parameter Name="IdRol" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
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
                                            </UpdateParameters>
                                        </asp:SqlDataSource>

                                    </div>
                                </div> 
                                <div class="form-group">
                                    <label for="NumReporte" class=" form-control-label">Numero Reporte</label>
                                    <asp:TextBox ID="txtNumReporte" runat="server" placeholder="Numero del Reporte" class="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="Titulo" class=" form-control-label">Titulo</label>
                                    <asp:TextBox ID="txtTitulo" runat="server" placeholder="Titulo" class="form-control" TextMode="SingleLine"></asp:TextBox>                                    
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                    </div>
                                    <div class="text-center" style="width: 97%; position: relative; left: 9px; top: 0px">
                                        <asp:TextBox ID="txtDescripcion" runat="server" Rows="9" placeholder="Descripcion..." class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="FechaReporte" class=" form-control-label">Fecha Reporte</label>
                                    <asp:TextBox ID="txtFechaReporte" runat="server" placeholder="Fecha del Reporte" class="form-control" TextMode="Date"></asp:TextBox>
                                </div>                                                              
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
</asp:Content>

