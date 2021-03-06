﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="OrdenMttoP.aspx.cs" Inherits="OrdenMttoP" %>

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

        .auto-style9 {
            width: 688px;
            height: 139px;
            position: absolute;
            top: 235px;
            left: 496px;
            z-index: 1;
        }
        .auto-style10 {
            width: 688px;
            height: 139px;
            position: absolute;
            top: 501px;
            left: 500px;
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
                            <div class="card-header"><strong>REGISTRO DE ORDEN DE MTTO PREVENTIVO</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Elija el Reporte Averia Servicio</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbAveriaServicio" runat="server" Class="form-control" >
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Busque y seleccione la planificacion a asignar:</label>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <div style="align-content: center; align-items: center; text-align: center;">
                                        <asp:TextBox ID="txtBuscarE" runat="server" placeholder="Buscar..." TextMode="Date"></asp:TextBox>
                                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary btn-sm" OnClick="btnBuscar_Click" />
                                    </div>
                                </div>
                                <br />
                                <div class="row form-group">
                                    <div>
                                        <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="60%" ID="gvPlanificacion" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlanificacion" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                                            <Columns>
                                                <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False" />
                                                <asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion" />
                                                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                                                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False" />
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
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Planificacion] WHERE [IdPlanificacion] = @IdPlanificacion" InsertCommand="INSERT INTO [Planificacion] ([FechaPlanificacion], [Observaciones], [IdElemento]) VALUES (@FechaPlanificacion, @Observaciones, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPlanificacion], [FechaPlanificacion], [Observaciones], [IdElemento] FROM [Planificacion]" UpdateCommand="UPDATE [Planificacion] SET [FechaPlanificacion] = @FechaPlanificacion, [Observaciones] = @Observaciones, [IdElemento] = @IdElemento WHERE [IdPlanificacion] = @IdPlanificacion">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="FechaPlanificacion" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="FechaPlanificacion" Type="String" />
                                                <asp:Parameter Name="Observaciones" Type="String" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                                <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>

                                    </div>
                                    <div class="auto-style9">
                                        <asp:GridView ID="gvPlanificaciones" runat="server"></asp:GridView>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Seleccione el rol y el usuario a asignar:</label>
                                        &nbsp;
                                    </div>
                                    <div style="align-content: center; align-items: center; text-align: center;">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Rol" DataValueField="IdRol" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                                        </asp:RadioButtonList>
                                    </div>
                                    <div>
                                        <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="60%" ID="gvUsuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource3" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" OnSelectedIndexChanged="gvUsuario_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                                            <Columns>
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
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuario] ([Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol]) VALUES (@Documento, @Nombre, @Apellido, @Telefono, @Email, @Clave, @Ciudad, @Direccion, @IdRol)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Documento], [Nombre], [Apellido], [Telefono], [Email], [Clave], [Ciudad], [Direccion], [IdRol] FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Documento] = @Documento, [Nombre] = @Nombre, [Apellido] = @Apellido, [Telefono] = @Telefono, [Email] = @Email, [Clave] = @Clave, [Ciudad] = @Ciudad, [Direccion] = @Direccion, [IdRol] = @IdRol WHERE [IdUsuario] = @IdUsuario">
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
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.* FROM Rol"></asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>"></asp:SqlDataSource>
                                    </div>
                                    <div class="auto-style10">
                                        <asp:GridView ID="gvListaElegidos" runat="server"></asp:GridView>
                                    </div>
                                </div>
                                <div>
                                    <label for="NumOrdenP" class=" form-control-label">Numero de la orden</label>
                                    <asp:TextBox ID="txtNumOrdenP" runat="server" placeholder="Numero de la Orden del Mtto Preventivo" class="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                                <div class="row form-group">
                                    <label for="Disciplina" class=" form-control-label">Disciplina</label>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbDis" runat="server" class=" form-control">
                                            <asp:ListItem Value="Mecanico">Mecanico</asp:ListItem>
                                            <asp:ListItem Value="Electrico">Electrico</asp:ListItem>
                                            <asp:ListItem Value="Soldadura">Soldadura</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <label for="FechaOI" class=" form-control-label">Fecha Inicial</label>
                                    <asp:TextBox ID="txtFechaOI" runat="server" placeholder="Fecha inicial del reporte" class="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="row form-group">
                                    <label for="HoraI" class=" form-control-label">Hora Inicial</label>
                                    <asp:TextBox ID="txtHoraI" runat="server" placeholder="Duracion" class="form-control" TextMode="Time"></asp:TextBox>
                                </div>
                                <div class="row form-group">
                                    <label for="FechaOF" class=" form-control-label">Fecha Final</label>
                                    <asp:TextBox ID="txtFechaOF" runat="server" placeholder="Fecha Final del reporte" class="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="row form-group">
                                    <label for="HoraF" class=" form-control-label">Hora Final</label>
                                    <asp:TextBox ID="txtHoraF" runat="server" placeholder="Duracion" class="form-control" TextMode="Time"></asp:TextBox>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class=" form-control-label">Ejecucion de la Orden</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbEjecucionOr" runat="server" class="form-control-sm form-control">
                                            <asp:ListItem>Sin Ejecutar</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="TrabajoIE" class=" form-control-label">Trabajo IE</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbTrabajoIE" runat="server" class="form-control-sm form-control">
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
                                        <asp:DropDownList ID="cmbRevisado" runat="server" class="form-control-sm form-control">
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

