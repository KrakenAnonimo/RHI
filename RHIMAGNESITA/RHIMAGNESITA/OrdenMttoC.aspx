﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="OrdenMttoC.aspx.cs" Inherits="OrdenMttoC" %>

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

        .auto-style13 {
            width: 688px;
            height: 44px;
            position: absolute;
            top: 316px;
            left: 261px;
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
                            <div class="card-header"><strong>REGISTRO DE ORDEN DE MTTO CORRECTIVO</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="auto-style3">
                                    <label for="NumOrdenC" class=" form-control-label">Numero de la orden</label>
                                    <asp:TextBox ID="txtNumOrdenC" runat="server" placeholder="Numero de la Orden del Mtto Correctivo" class="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Orden de Mtto Preventivo</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbOrdenMttoP" runat="server" CssClass="auto-style8">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Asignar a:</label>
                                    </div>
                                    <div style="align-content: center; align-items: center; text-align: center;">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style11" DataSourceID="SqldsRoles" DataTextField="Rol" DataValueField="IdRol" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1" RepeatDirection="Horizontal"></asp:RadioButtonList>
                                    </div>
                                    <div style="align-content: center; align-items: center; text-align: center;">
                                        <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="60%" ID="gvUsuarios" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
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

                                        <asp:SqlDataSource ID="SqldsRoles" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Rol.* FROM Rol"></asp:SqlDataSource>

                                        <asp:SqlDataSource ID="SqldsElegidos" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>"></asp:SqlDataSource>

                                    </div>
                                    <div class="auto-style13">
                                        <asp:Label ID="lblQuien" runat="server" Text="Usuario Seleccionado: "></asp:Label>
                                        <br />
                                        <asp:Label ID="lblUsuario" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="text-center">
                                        <asp:GridView ID="gvListaElegidos" runat="server" Visible="False"></asp:GridView>
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <label for="Disciplina" class=" form-control-label">Disciplina</label>
                                        <div class="text-center">
                                            <asp:DropDownList ID="cmbDisciplina" runat="server" class="form-control-sm form-control">
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
                                        <asp:TextBox ID="txtFechaOF" runat="server" placeholder="Fecha final del reporte" class="form-control" TextMode="Date"></asp:TextBox>
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
                                            <asp:DropDownList ID="cmbEjecucionOr" runat="server" class="form-control-sm form-control" >
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
                                            <asp:DropDownList ID="cmbRevision" runat="server" class="form-control-sm form-control" >
                                                <asp:ListItem>Supervisor</asp:ListItem>
                                                <asp:ListItem>Planificador</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
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

