﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="EjecucionM.aspx.cs" Inherits="EjecucionM" %>

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

        .auto-style14 {
            text-align: center;
            width: 686px;
            height: 30px;
        }

        .auto-style15 {
            width: 658px;
            height: 195px;
            position: absolute;
            top: 51px;
            left: 416px;
            z-index: 1;
        }

        .auto-style16 {
            width: 658px;
            height: 22px;
            position: absolute;
            top: 22px;
            left: 230px;
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
        <div class="animated fadeIn">
            <div class="row">
                <div class="auto-style7">
                    <div class="card">
                        <div class="card-header"><strong>REGISTRAR EJECUCION DE MANTENIMIENTO</strong></div>
                        <div class="form-group">
                            <div style="align-content: flex-start; align-items: flex-start; text-align: left;">
                                <label for="selectSm" class="form-control-label">Elige la Orden de Mantenimiento Preventiva</label>
                            </div>
                            <div>
                                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="30%" ID="gvOrdenMP" runat="server" AutoGenerateColumns="False" DataKeyNames="IdOrdenMttoP" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle" OnSelectedIndexChanged="gvOrdenMP_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" ReadOnly="True" SortExpression="IdOrdenMttoP" Visible="False" />
                                        <asp:BoundField DataField="NumOrden" HeaderText="NumOrden" SortExpression="NumOrden" />
                                        <asp:BoundField DataField="Disciplina" HeaderText="Disciplina" SortExpression="Disciplina" />
                                        <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio" Visible="False" />
                                        <asp:BoundField DataField="HoraInicio" HeaderText="HoraInicio" SortExpression="HoraInicio" Visible="False" />
                                        <asp:BoundField DataField="FechaFinal" HeaderText="FechaFinal" SortExpression="FechaFinal" Visible="False" />
                                        <asp:BoundField DataField="HoraFinal" HeaderText="HoraFinal" SortExpression="HoraFinal" Visible="False" />
                                        <asp:BoundField DataField="Ejecutado" HeaderText="Ejecutado" SortExpression="Ejecutado" />
                                        <asp:BoundField DataField="TrabajoIE" HeaderText="TrabajoIE" SortExpression="TrabajoIE" Visible="False" />
                                        <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" Visible="False" />
                                        <asp:BoundField DataField="Revisado" HeaderText="Revisado" SortExpression="Revisado" />
                                        <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" SortExpression="IdPlanificacion" Visible="False" />
                                        <asp:BoundField DataField="IdReporteAS" HeaderText="IdReporteAS" SortExpression="IdReporteAS" Visible="False" />
                                        <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" Visible="False" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [OrdenMttoPreventivo] WHERE [IdOrdenMttoP] = @IdOrdenMttoP" InsertCommand="INSERT INTO [OrdenMttoPreventivo] ([NumOrden], [Disciplina], [FechaInicio], [HoraInicio], [FechaFinal], [HoraFinal], [Ejecutado], [TrabajoIE], [Observaciones], [Revisado], [IdPlanificacion], [IdReporteAS], [IdUsuario]) VALUES (@NumOrden, @Disciplina, @FechaInicio, @HoraInicio, @FechaFinal, @HoraFinal, @Ejecutado, @TrabajoIE, @Observaciones, @Revisado, @IdPlanificacion, @IdReporteAS, @IdUsuario)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdOrdenMttoP], [NumOrden], [Disciplina], [FechaInicio], [HoraInicio], [FechaFinal], [HoraFinal], [Ejecutado], [TrabajoIE], [Observaciones], [Revisado], [IdPlanificacion], [IdReporteAS], [IdUsuario] FROM [OrdenMttoPreventivo]" UpdateCommand="UPDATE [OrdenMttoPreventivo] SET [NumOrden] = @NumOrden, [Disciplina] = @Disciplina, [FechaInicio] = @FechaInicio, [HoraInicio] = @HoraInicio, [FechaFinal] = @FechaFinal, [HoraFinal] = @HoraFinal, [Ejecutado] = @Ejecutado, [TrabajoIE] = @TrabajoIE, [Observaciones] = @Observaciones, [Revisado] = @Revisado, [IdPlanificacion] = @IdPlanificacion, [IdReporteAS] = @IdReporteAS, [IdUsuario] = @IdUsuario WHERE [IdOrdenMttoP] = @IdOrdenMttoP">
                                    <DeleteParameters>
                                        <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="NumOrden" Type="Int32" />
                                        <asp:Parameter Name="Disciplina" Type="String" />
                                        <asp:Parameter Name="FechaInicio" Type="String" />
                                        <asp:Parameter DbType="Time" Name="HoraInicio" />
                                        <asp:Parameter Name="FechaFinal" Type="String" />
                                        <asp:Parameter DbType="Time" Name="HoraFinal" />
                                        <asp:Parameter Name="Ejecutado" Type="String" />
                                        <asp:Parameter Name="TrabajoIE" Type="String" />
                                        <asp:Parameter Name="Observaciones" Type="String" />
                                        <asp:Parameter Name="Revisado" Type="String" />
                                        <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                        <asp:Parameter Name="IdReporteAS" Type="Int32" />
                                        <asp:Parameter Name="IdUsuario" Type="Int32" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="NumOrden" Type="Int32" />
                                        <asp:Parameter Name="Disciplina" Type="String" />
                                        <asp:Parameter Name="FechaInicio" Type="String" />
                                        <asp:Parameter DbType="Time" Name="HoraInicio" />
                                        <asp:Parameter Name="FechaFinal" Type="String" />
                                        <asp:Parameter DbType="Time" Name="HoraFinal" />
                                        <asp:Parameter Name="Ejecutado" Type="String" />
                                        <asp:Parameter Name="TrabajoIE" Type="String" />
                                        <asp:Parameter Name="Observaciones" Type="String" />
                                        <asp:Parameter Name="Revisado" Type="String" />
                                        <asp:Parameter Name="IdPlanificacion" Type="Int32" />
                                        <asp:Parameter Name="IdReporteAS" Type="Int32" />
                                        <asp:Parameter Name="IdUsuario" Type="Int32" />
                                        <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div>
                            <asp:GridView ID="gvMP" runat="server" PageSize="2" Visible="False"></asp:GridView>
                            <asp:GridView ID="gvTM" runat="server" PageSize="2" Visible="False"></asp:GridView>
                        </div>
                        <div>
                            <div class="auto-style16">
                                <label for="selectSm" class="form-control-label">Elige la Tarea de Mantenimiento</label>
                            </div>
                            <div class="auto-style15">
                                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="40%" ID="gvTareaMtto" runat="server" AutoGenerateColumns="False" DataKeyNames="IdTareaMtto" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle" OnSelectedIndexChanged="gvTareaMtto_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="IdTareaMtto" HeaderText="IdTareaMtto" ReadOnly="True" SortExpression="IdTareaMtto" Visible="False" />
                                        <asp:BoundField DataField="NombreTM" HeaderText="NombreTM" SortExpression="NombreTM" />
                                        <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" Visible="False" />
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
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [TareaMtto] WHERE [IdTareaMtto] = @IdTareaMtto" InsertCommand="INSERT INTO [TareaMtto] ([NombreTM], [Duracion], [Descripcion], [IdElemento]) VALUES (@NombreTM, @Duracion, @Descripcion, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdTareaMtto], [NombreTM], [Duracion], [Descripcion], [IdElemento] FROM [TareaMtto]" UpdateCommand="UPDATE [TareaMtto] SET [NombreTM] = @NombreTM, [Duracion] = @Duracion, [Descripcion] = @Descripcion, [IdElemento] = @IdElemento WHERE [IdTareaMtto] = @IdTareaMtto">
                                    <DeleteParameters>
                                        <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="NombreTM" Type="String" />
                                        <asp:Parameter Name="Duracion" Type="String" />
                                        <asp:Parameter Name="Descripcion" Type="String" />
                                        <asp:Parameter Name="IdElemento" Type="Int32" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="NombreTM" Type="String" />
                                        <asp:Parameter Name="Duracion" Type="String" />
                                        <asp:Parameter Name="Descripcion" Type="String" />
                                        <asp:Parameter Name="IdElemento" Type="Int32" />
                                        <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="auto-style3">
                                <label for="Revisado" class=" form-control-label">Estado</label>
                            </div>
                            <div class="auto-style14">
                                <asp:DropDownList runat="server" ID="cmbEstado" class="form-control-sm form-control" Style="width: 97%; position: relative; left: 9px; top: 0px">
                                    <asp:ListItem>Sin Ejecutar</asp:ListItem>
                                    <asp:ListItem>Ejecutado</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="card-body card-block">
                            <div class="auto-style3">
                                <label for="FechaOF" class=" form-control-label">Fecha Ejecucion</label>
                                <asp:TextBox runat="server" placeholder="Fecha de Ejecucion" class="form-control" ID="txtFechaEj" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="auto-style3">
                                <label for="Horas" class=" form-control-label">Duracion</label>
                                <asp:TextBox runat="server" ID="txtDuracion" placeholder="Horas" class="form-control" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <div class="text-center">
                                    <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                </div>
                                <div class="text-center">
                                    <asp:TextBox runat="server" Rows="9" placeholder="Observaciones..." class="form-control" ID="txtObservaciones" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button runat="server" Text="Guardar" class="btn btn-success btn-sm" ID="btnGuardar" OnClick="btnGuardar_Click" />
                            <asp:Button runat="server" Text="Limpiar Todo" class="btn btn-danger btn-sm" ID="btnLimpiar" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

