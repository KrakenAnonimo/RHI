<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Resultado.aspx.cs" Inherits="Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            position: relative;
            left: 177px;
            top: -22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 91px; position: relative; top: 0px; left: 40px">
        <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
    </div>
    <div>
        <div style="align-content: left; align-items: left; text-align: left;">
            <h2>LISTA SEGUIMIENTOS</h2>
        </div>
    </div>
    <br />
    <div>
        <label for="SeguimientoP" class=" form-control-label">Seguimiento Preventivo</label>
    </div>
    <br />
    <div>
        <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%"  ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IdElemento,IdPlanificacion,IdOrdenMttoP" DataSourceID="SqlDataSource1" PageSize="5" SelectedRowStyle-HorizontalAlign="left" HeaderStyle-HorizontalAlign="left" FooterStyle-HorizontalAlign="left" EmptyDataRowStyle-HorizontalAlign="left" EditRowStyle-HorizontalAlign="left" HorizontalAlign="left" PagerStyle-HorizontalAlign="center" RowStyle-HorizontalAlign="left" SortedAscendingCellStyle-HorizontalAlign="left" SortedAscendingHeaderStyle-HorizontalAlign="left" SortedDescendingCellStyle-HorizontalAlign="left" SortedDescendingHeaderStyle-HorizontalAlign="left" HeaderStyle-VerticalAlign="Middle">
            <Columns>
                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" InsertVisible="False" ReadOnly="True" SortExpression="IdElemento" Visible="False" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" InsertVisible="False" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False" />
                <asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" Visible="False" />
                <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" InsertVisible="False" ReadOnly="True" SortExpression="IdOrdenMttoP" Visible="False" />
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
                <asp:BoundField DataField="Expr2" HeaderText="Expr2" SortExpression="Expr2" Visible="False" />
                <asp:BoundField DataField="IdReporteAS" HeaderText="IdReporteAS" SortExpression="IdReporteAS" Visible="False" />
                <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" Visible="False" />
            </Columns>
            <EditRowStyle HorizontalAlign="Left" />
            <EmptyDataRowStyle HorizontalAlign="Left" />
            <FooterStyle BackColor="#ffffff" VerticalAlign="Middle" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#00BCD4" Font-Bold="True" ForeColor="White" Font-Overline="False" Font-Size="15px" HorizontalAlign="left" Height="30px" />
            <PagerStyle BackColor="#ffffff" ForeColor="Black" HorizontalAlign="left" />
            <RowStyle BackColor="#ffffff" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#848384" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
            <SortedAscendingCellStyle BackColor="#848384" HorizontalAlign="Left" />
            <SortedAscendingHeaderStyle BackColor="#848384" HorizontalAlign="Left" />
            <SortedDescendingCellStyle BackColor="#848384" HorizontalAlign="Left" />
            <SortedDescendingHeaderStyle BackColor="#00BCD4" HorizontalAlign="Left" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Elemento.IdElemento, Elemento.Nombre, Planificacion.IdPlanificacion, Planificacion.FechaPlanificacion, Planificacion.Estado, Planificacion.IdElemento, OrdenMttoPreventivo.IdOrdenMttoP, OrdenMttoPreventivo.NumOrden, OrdenMttoPreventivo.Disciplina, OrdenMttoPreventivo.FechaInicio, OrdenMttoPreventivo.HoraInicio, OrdenMttoPreventivo.FechaFinal, OrdenMttoPreventivo.HoraFinal, OrdenMttoPreventivo.Ejecutado, OrdenMttoPreventivo.TrabajoIE, OrdenMttoPreventivo.Observaciones, OrdenMttoPreventivo.Revisado, OrdenMttoPreventivo.IdPlanificacion, OrdenMttoPreventivo.IdReporteAS, OrdenMttoPreventivo.IdUsuario FROM Elemento INNER JOIN Planificacion ON Elemento.IdElemento = Planificacion.IdElemento INNER JOIN OrdenMttoPreventivo ON Planificacion.IdPlanificacion = OrdenMttoPreventivo.IdPlanificacion WHERE (OrdenMttoPreventivo.Ejecutado = @EjecutadoOP) AND (Planificacion.Estado = @EjecutadoP)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Ejecutado" Name="EjecutadoOP" />
                <asp:Parameter DefaultValue="Ejecutado" Name="EjecutadoP" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <br />
    <div>
        <label for="SeguimientoC" class=" form-control-label">Seguimiento Correctivo</label>
    </div>
    <br />
    <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%"  ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IdTareaAS,IdOrdenMttoC" DataSourceID="SqlDataSource2" PageSize="5" SelectedRowStyle-HorizontalAlign="left" HeaderStyle-HorizontalAlign="left" FooterStyle-HorizontalAlign="left" EmptyDataRowStyle-HorizontalAlign="left" EditRowStyle-HorizontalAlign="left" HorizontalAlign="left" PagerStyle-HorizontalAlign="center" RowStyle-HorizontalAlign="left" SortedAscendingCellStyle-HorizontalAlign="left" SortedAscendingHeaderStyle-HorizontalAlign="left" SortedDescendingCellStyle-HorizontalAlign="left" SortedDescendingHeaderStyle-HorizontalAlign="left" HeaderStyle-VerticalAlign="Middle">
        <Columns>
            <asp:BoundField DataField="IdTareaAS" HeaderText="IdTareaAS" InsertVisible="False" ReadOnly="True" SortExpression="IdTareaAS" Visible="False" />
            <asp:BoundField DataField="NombreAS" HeaderText="NombreAS" SortExpression="NombreAS" />
            <asp:BoundField DataField="IdOrdenMttoC" HeaderText="IdOrdenMttoC" InsertVisible="False" ReadOnly="True" SortExpression="IdOrdenMttoC" Visible="False" />
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
        </Columns>
        <EditRowStyle HorizontalAlign="Left" />
            <EmptyDataRowStyle HorizontalAlign="Left" />
            <FooterStyle BackColor="#ffffff" VerticalAlign="Middle" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#00BCD4" Font-Bold="True" ForeColor="White" Font-Overline="False" Font-Size="15px" HorizontalAlign="left" Height="30px" />
            <PagerStyle BackColor="#ffffff" ForeColor="Black" HorizontalAlign="left" />
            <RowStyle BackColor="#ffffff" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#848384" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
            <SortedAscendingCellStyle BackColor="#848384" HorizontalAlign="Left" />
            <SortedAscendingHeaderStyle BackColor="#848384" HorizontalAlign="Left" />
            <SortedDescendingCellStyle BackColor="#848384" HorizontalAlign="Left" />
            <SortedDescendingHeaderStyle BackColor="#00BCD4" HorizontalAlign="Left" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT TareaAveriaServicio.IdTareaAS, TareaAveriaServicio.NombreAS, OrdenMttoCorrectivo.IdOrdenMttoC, OrdenMttoCorrectivo.NumOrden, OrdenMttoCorrectivo.Disciplina, OrdenMttoCorrectivo.FechaInicio, OrdenMttoCorrectivo.HoraInicio, OrdenMttoCorrectivo.FechaFinal, OrdenMttoCorrectivo.HoraFinal, OrdenMttoCorrectivo.Ejecutado, OrdenMttoCorrectivo.TrabajoIE, OrdenMttoCorrectivo.Observaciones, OrdenMttoCorrectivo.Revisado, OrdenMttoCorrectivo.IdOrdenMttoP, OrdenMttoCorrectivo.IdUsuario FROM OrdenMttoCorrectivo INNER JOIN TareaAveriaServicio ON OrdenMttoCorrectivo.IdOrdenMttoC = TareaAveriaServicio.IdOrdenMttoC WHERE (OrdenMttoCorrectivo.Ejecutado = @EjecutadoOC)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Ejecutado" Name="EjecutadoOC" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>

