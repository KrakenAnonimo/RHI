<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ResultadoEP.aspx.cs" Inherits="ResultadoEP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="position: relative; top: 0px; left: 40px">
            <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
        </div>
        <div>
            <div>
                <div style="align-content: center; align-items: center; text-align: center;">
                    <h2>Lista de Resultados Planificacion de Elemento</h2>
                </div>
            </div>
        </div>
        <div style="align-content: center; align-items: center; text-align: center;">
            <asp:Panel runat="server">
                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="100%" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqldsDatos" PageSize="5" AutoGenerateColumns="False" DataKeyNames="IdElemento,IdPlanificacion" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                    <Columns>
                        <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" InsertVisible="False" ReadOnly="True" SortExpression="IdElemento" Visible="False" />
                        <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" Visible="False" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:BoundField DataField="IdArea" HeaderText="IdArea" SortExpression="IdArea" Visible="False" />
                        <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" InsertVisible="False" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False" />
                        <asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion" />
                        <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                        <asp:BoundField DataField="EstadoP" HeaderText="EstadoP" SortExpression="EstadoP" />
                        <asp:BoundField DataField="IdElemento1" HeaderText="IdElemento1" SortExpression="IdElemento1" Visible="False" />
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
                <asp:SqlDataSource runat="server" ID="SqldsDatos" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT Elemento.IdElemento, Elemento.Codigo, Elemento.Nombre, Elemento.Descripcion, Elemento.Estado, Elemento.IdArea, Planificacion.IdPlanificacion, Planificacion.FechaPlanificacion, Planificacion.Observaciones, Planificacion.Estado AS EstadoP, Planificacion.IdElemento FROM Elemento INNER JOIN Planificacion ON Elemento.IdElemento = Planificacion.IdElemento WHERE (Planificacion.Estado = @Estado)">
                    <selectparameters>
                    <asp:Parameter DefaultValue="Ejecutado" Name="Estado" />
                </selectparameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

