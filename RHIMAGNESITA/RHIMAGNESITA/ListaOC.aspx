<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ListaOC.aspx.vb" Inherits="ListaOC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div> 
        <div style="position: relative; top: -11px; left: 188px; width: 1000px;"><h2>Lista de las Ordenes de Mantenimiento Correctivas</h2></div>
        <div top: 6px; left: 5px; z-index: 1; height: 171px; width: 1285px" style="width: 836px; position: relative; top: -13px; left: 238px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdOrdenMttoC" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IdOrdenMttoC" HeaderText="IdOrdenMttoC" ReadOnly="True" SortExpression="IdOrdenMttoC" Visible="False" />
                    <asp:BoundField DataField="NumOrden" HeaderText="NumOrden" SortExpression="NumOrden" />
                    <asp:BoundField DataField="Disciplina" HeaderText="Disciplina" SortExpression="Disciplina" />
                    <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio" />
                    <asp:BoundField DataField="HoraInicio" HeaderText="HoraInicio" SortExpression="HoraInicio" />
                    <asp:BoundField DataField="FechaFinal" HeaderText="FechaFinal" SortExpression="FechaFinal" />
                    <asp:BoundField DataField="HoraFinal" HeaderText="HoraFinal" SortExpression="HoraFinal" />
                    <asp:BoundField DataField="Ejecutado" HeaderText="Ejecutado" SortExpression="Ejecutado" />
                    <asp:BoundField DataField="TrabajoIE" HeaderText="TrabajoIE" SortExpression="TrabajoIE" />
                    <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                    <asp:BoundField DataField="Revisado" HeaderText="Revisado" SortExpression="Revisado" />
                    <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" SortExpression="IdOrdenMttoP" Visible="False" />
                    <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" Visible="False" />
                    <asp:CommandField SelectText="Ver" ShowSelectButton="True">
                        <ControlStyle ForeColor="#3EC1D5" />
                    </asp:CommandField>
                </Columns>
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
        </div>
    </div>
</asp:Content>

