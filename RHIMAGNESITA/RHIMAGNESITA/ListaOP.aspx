<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaOP.aspx.cs" Inherits="ListaOP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            position: relative;
            left: 320px;
            top: 13px;
            width: 211px;
            height: 23px;
        }
        .auto-style9 {
            width: 277px;
        }
        .auto-style10 {
            width: 159px;
            position: relative;
            left: 767px;
            top: -9px;
        }
        .auto-style11 {
            width: 220px;
        }
        .auto-style12 {
            width: 130px;
            position: relative;
            left: 947px;
            top: -33px;
        }
        .auto-style13 {
            width: 262px;
        }
        .auto-style14 {
            width: 82px;
            position: relative;
            left: 1108px;
            top: -58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="width: 91px; position: relative; top: 0px; left: 40px">
        <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
    </div>
    <div> 
        <div style="position: relative; top: -15px; left: 233px; width: 1000px; margin-left: 40px;"><h2>Lista de las Ordenes de Mantenimiento Preventivas</h2>
        </div>
        </div>
      <br />
      <br />
      <br />
     <div style="margin-left: 40px;" class="auto-style7">
       <div class="auto-style9">
           <asp:RadioButtonList ID="rblEjec" runat="server" CssClass="auto-style11" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblEjec_SelectedIndexChanged" >
               <asp:ListItem>Ejecutada</asp:ListItem>
               <asp:ListItem>Sin Ejecutar</asp:ListItem>
           </asp:RadioButtonList>
       </div>
    </div>
      <div class="auto-style10">
                <label for="NombreA" class=" form-control-label">Buscar por Dicsiplina</label>        
   </div>
        <div class="auto-style12">
            <asp:TextBox ID="txtBuscarD" runat="server" placeholder="Buscar..." class="auto-style13" Width="129px"></asp:TextBox>
        </div>
        <div class="auto-style14">
            <asp:Button ID="btnBuscarD" runat="server" Text="Buscar" class="btn btn-primary btn-sm" Style="left: 111px; top: -58px" OnClick="btnBuscarD_Click"  />
        </div>
     <div>
         <div top: 6px; left: 5px; z-index: 1; height: 171px; width: 1285px" style="width: 836px; position: relative; top: -38px; left: 282px; margin-left: 40px;">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdOrdenMttoP" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" ReadOnly="True" SortExpression="IdOrdenMttoP" />
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
                     <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" SortExpression="IdPlanificacion" Visible="False" />
                     <asp:BoundField DataField="IdReporteAS" HeaderText="IdReporteAS" SortExpression="IdReporteAS" Visible="False" />
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
</asp:Content>

