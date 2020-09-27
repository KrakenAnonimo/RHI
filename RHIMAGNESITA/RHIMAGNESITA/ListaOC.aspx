<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaOC.aspx.cs" Inherits="ListaOC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 91px; position: relative; top: 0px; left: 40px">
        <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
    </div>
    <div>
        <div style="top: -11px; left: 188px; width: 100%; text-align: center;">
            <h2>Lista de las Ordenes de Mantenimiento Correctivas</h2>
        </div>
    </div>
    <div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <label for="Ejecucion" class=" form-control-label">
                Buscar por Ejecucion: 
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Height="22px" Width="193px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>Ejecutada</asp:ListItem>
                    <asp:ListItem>Sin Ejecutar</asp:ListItem>
                </asp:RadioButtonList>
            </label>
        </div>
    </div>
    </div>
    <div style="align-content: center; align-items: center; text-align: center;">
        <label for="NombreA" class=" form-control-label">Buscar por Disciplina: </label>
        <div>
            <asp:TextBox ID="txtBuscarE" runat="server" placeholder="Buscar..."></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary btn-sm" OnClick="btnBuscar_Click" />
        </div>
    </div>
    <div>
        <div style="width: 100%;">
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView AlternatingRowStyle-HorizontalAlign="Center" Width="100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdOrdenMttoC" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="15" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                    <AlternatingRowStyle BackColor="White" HorizontalAlign="Left" />
                    <Columns>
                        <asp:BoundField DataField="IdOrdenMttoC" HeaderText="IdOrdenMttoC" ReadOnly="True" SortExpression="IdOrdenMttoC" Visible="False">
                            <FooterStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="NumOrden" HeaderText="NumOrden" SortExpression="NumOrden">
                            <FooterStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Disciplina" HeaderText="Disciplina" SortExpression="Disciplina">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="HoraInicio" HeaderText="HoraInicio" SortExpression="HoraInicio">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FechaFinal" HeaderText="FechaFinal" SortExpression="FechaFinal">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="HoraFinal" HeaderText="HoraFinal" SortExpression="HoraFinal">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Ejecutado" HeaderText="Ejecutado" SortExpression="Ejecutado">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TrabajoIE" HeaderText="TrabajoIE" SortExpression="TrabajoIE">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Revisado" HeaderText="Revisado" SortExpression="Revisado">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" SortExpression="IdOrdenMttoP" Visible="False">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" Visible="False">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField SelectText="Ver" ShowSelectButton="True">
                            <ControlStyle ForeColor="#3EC1D5" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle HorizontalAlign="Left" />
                    <EmptyDataRowStyle HorizontalAlign="Left" />
                    <FooterStyle BackColor="#ffffff" VerticalAlign="Middle" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#00BCD4" Font-Bold="True" ForeColor="White" Font-Overline="False" Font-Size="15px" HorizontalAlign="Left" Height="30px" />
                    <PagerStyle BackColor="#ffffff" ForeColor="Black" HorizontalAlign="center" />
                    <RowStyle BackColor="#ffffff" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#848384" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                    <SortedAscendingCellStyle BackColor="#ffffff" HorizontalAlign="Left" />
                    <SortedAscendingHeaderStyle BackColor="#848384" HorizontalAlign="Left" />
                    <SortedDescendingCellStyle BackColor="#ffffff" HorizontalAlign="Left" />
                    <SortedDescendingHeaderStyle BackColor="#00BCD4" HorizontalAlign="Left" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [OrdenMttoCorrectivo] WHERE [IdOrdenMttoC] = @IdOrdenMttoC" InsertCommand="INSERT INTO [OrdenMttoCorrectivo] ([NumOrden], [Disciplina], [FechaInicio], [HoraInicio], [FechaFinal], [HoraFinal], [Ejecutado], [TrabajoIE], [Observaciones], [Revisado], [IdOrdenMttoP], [IdUsuario]) VALUES (@NumOrden, @Disciplina, @FechaInicio, @HoraInicio, @FechaFinal, @HoraFinal, @Ejecutado, @TrabajoIE, @Observaciones, @Revisado, @IdOrdenMttoP, @IdUsuario)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdOrdenMttoC], [NumOrden], [Disciplina], [FechaInicio], [HoraInicio], [FechaFinal], [HoraFinal], [Ejecutado], [TrabajoIE], [Observaciones], [Revisado], [IdOrdenMttoP], [IdUsuario] FROM [OrdenMttoCorrectivo]" UpdateCommand="UPDATE [OrdenMttoCorrectivo] SET [NumOrden] = @NumOrden, [Disciplina] = @Disciplina, [FechaInicio] = @FechaInicio, [HoraInicio] = @HoraInicio, [FechaFinal] = @FechaFinal, [HoraFinal] = @HoraFinal, [Ejecutado] = @Ejecutado, [TrabajoIE] = @TrabajoIE, [Observaciones] = @Observaciones, [Revisado] = @Revisado, [IdOrdenMttoP] = @IdOrdenMttoP, [IdUsuario] = @IdUsuario WHERE [IdOrdenMttoC] = @IdOrdenMttoC">
                    <DeleteParameters>
                        <asp:Parameter Name="IdOrdenMttoC" Type="Int32" />
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
                        <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
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
                        <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                        <asp:Parameter Name="IdUsuario" Type="Int32" />
                        <asp:Parameter Name="IdOrdenMttoC" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

