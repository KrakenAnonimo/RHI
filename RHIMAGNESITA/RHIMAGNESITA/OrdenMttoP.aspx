<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrdenMttoP.aspx.cs" Inherits="OrdenMttoP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-bottom: 15px;
            text-align: center;
        }

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
            margin-bottom: 15px;
            text-align: left;
        }

        .auto-style10 {
            position: relative;
            left: 392px;
            top: -189px;
        }

        .auto-style15 {
            position: relative;
            left: 53px;
            top: 4px;
        }

        .auto-style16 {
            position: relative;
            left: -7px;
            top: -25px;
        }

        .auto-style17 {
            position: relative;
            left: 181px;
            top: 9px;
        }

        .auto-style18 {
            text-align: center;
            height: 132px;
            width: 306px;
            position: relative;
            top: 144px;
            left: -15px;
        }

        .auto-style19 {
            display: block;
            width: 74%;
            height: 19px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            position: relative;
            left: 204px;
            top: 15px;
        }

        .auto-style20 {
            margin-bottom: 15px;
            width: 262px;
            height: 54px;
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
                            <div class="card-header"><strong>REGISTRO DE ORDEN DE MTTO PREVENTIVO</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Reporte Averia Servicio</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbAveriaServicio" runat="server" CssClass="auto-style8">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <label for="selectSm" class="form-control-label">Planificacion</label>
                                </div>
                                <div class="text-center">
                                    <div class="auto-style20">
                                        <asp:TextBox ID="txtBuscarE" runat="server" placeholder="Buscar..." class="auto-style19" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary btn-sm" Style="position: relative; left: 111px; top: -58px" OnClick="btnBuscar_Click" />
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div>
                                        <asp:GridView ID="gvPlanificacion" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlanificacion" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" CssClass="auto-style16" PageSize="5" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                            <columns>
                                                <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False" />
                                                <asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion" />
                                                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                                                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False" />
                                                <asp:CommandField ShowSelectButton="True" />
                                            </columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Planificacion] WHERE [IdPlanificacion] = @IdPlanificacion" InsertCommand="INSERT INTO [Planificacion] ([FechaPlanificacion], [Observaciones], [IdElemento]) VALUES (@FechaPlanificacion, @Observaciones, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPlanificacion], [FechaPlanificacion], [Observaciones], [IdElemento] FROM [Planificacion]" UpdateCommand="UPDATE [Planificacion] SET [FechaPlanificacion] = @FechaPlanificacion, [Observaciones] = @Observaciones, [IdElemento] = @IdElemento WHERE [IdPlanificacion] = @IdPlanificacion">
                                            <deleteparameters>
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                            </deleteparameters>
                                            <insertparameters>
                                                <asp:Parameter Name="FechaPlanificacion" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                            </insertparameters>
                                            <updateparameters>
                                                <asp:Parameter Name="FechaPlanificacion" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                            </updateparameters>
                                        </asp:SqlDataSource>

                                    </div>
                                    <div style="width: 240px; position: relative; top: -118px; left: 411px">
                                        <asp:GridView ID="gvPlanificaciones" runat="server"></asp:GridView>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Asignar a:</label>
                                        &nbsp;
                                    </div>
                                    <div class="auto-style9">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="auto-style17" DataSourceID="SqlDataSource4" DataTextField="Rol" DataValueField="IdRol" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                                        </asp:RadioButtonList>
                                    </div>
                                    <div>
                                        <asp:GridView ID="gvUsuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource3" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" CssClass="auto-style15" PageSize="5" OnSelectedIndexChanged="gvUsuario_SelectedIndexChanged">
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
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
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

                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.* FROM Rol"></asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>"></asp:SqlDataSource>

                                    </div>
                                    <div class="auto-style18">
                                        <asp:GridView ID="gvListaElegidos" runat="server" CssClass="auto-style10"></asp:GridView>
                                    </div>
                                </div>
                                <div class="auto-style3">
                                    <label for="NumOrdenP" class=" form-control-label">Numero de la orden</label>
                                    <asp:TextBox ID="txtNumOrdenP" runat="server" placeholder="Numero de la Orden del Mtto Preventivo" class="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                                <div class="auto-style3">
                                    <label for="Disciplina" class=" form-control-label">Disciplina</label>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbDis" runat="server" CssClass="auto-style8">
                                            <asp:ListItem Value="Mecanico">Mecanico</asp:ListItem>
                                            <asp:ListItem Value="Electrico">Electrico</asp:ListItem>
                                            <asp:ListItem Value="Soldadura">Soldadura</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="auto-style3">
                                    <label for="FechaOI" class=" form-control-label">Fecha Inicial</label>
                                    <asp:TextBox ID="txtFechaOI" runat="server" placeholder="Fecha inicial del reporte" class="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="auto-style3">
                                    <label for="HoraI" class=" form-control-label">Hora Inicial</label>
                                    <asp:TextBox ID="txtHoraI" runat="server" placeholder="Duracion" class="form-control" TextMode="Time"></asp:TextBox>
                                </div>
                                <div class="auto-style3">
                                    <label for="FechaOF" class=" form-control-label">Fecha Final</label>
                                    <asp:TextBox ID="txtFechaOF" runat="server" placeholder="Fecha Final del reporte" class="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="auto-style3">
                                    <label for="HoraF" class=" form-control-label">Hora Final</label>
                                    <asp:TextBox ID="txtHoraF" runat="server" placeholder="Duracion" class="form-control" TextMode="Time"></asp:TextBox>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class=" form-control-label">Ejecucion de la Orden</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbEjecucionOr" runat="server" class="form-control-sm form-control" Style="width: 97%; position: relative; left: 9px; top: 0px">
                                            <asp:ListItem>Sin Ejecutar</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="TrabajoIE" class=" form-control-label">Trabajo IE</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbTrabajoIE" runat="server" class="form-control-sm form-control" Style="width: 97%; position: relative; left: 9px; top: 0px">
                                            <asp:ListItem>Interno</asp:ListItem>
                                            <asp:ListItem>Externo</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                    </div>
                                    <div class="text-center" style="width: 97%; position: relative; left: 9px; top: 0px">
                                        <asp:TextBox ID="txtObservaciones" runat="server" Rows="9" placeholder="Observaciones..." class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="Revisado" class=" form-control-label">Revisado por:</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbRevisado" runat="server" class="form-control-sm form-control" Style="width: 97%; position: relative; left: 9px; top: 0px">
                                            <asp:ListItem>Supervisor</asp:ListItem>
                                            <asp:ListItem>Planificador</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
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

