﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaEM.aspx.cs" Inherits="ListaEM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 567px;
            position: relative;
            left: 405px;
            top: -33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 91px; position: relative; top: 0px; left: 40px">
        <asp:ImageButton ID="imgbtnAtras" runat="server" ImageUrl="~/Vista/Iconos/atras.png" OnClick="imgbtnAtras_Click" />
    </div>
    <div>
         <div style="position: relative; top: -11px; left: 188px; width: 1000px;" class="t-cn">
            <h2>Lista Ejecuciones de Mantenimiento</h2>
        </div>
        </div>
    <br />
    <div>
        <div top: 6px; left: 5px; z-index: 1; height: 171px; width: 1285px" class="auto-style7">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdEjecucionM" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." PageSize="5" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="523px">
                            <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IdEjecucionM" HeaderText="IdEjecucionM" ReadOnly="True" SortExpression="IdEjecucionM" Visible="False" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                    <asp:BoundField DataField="FechaEjecucion" HeaderText="FechaEjecucion" SortExpression="FechaEjecucion" />
                    <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                    <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                    <asp:BoundField DataField="IdTareaMtto" HeaderText="IdTareaMtto" SortExpression="IdTareaMtto" Visible="False" />
                    <asp:BoundField DataField="IdOrdenMttoP" HeaderText="IdOrdenMttoP" SortExpression="IdOrdenMttoP" Visible="False" />
                    <asp:CommandField SelectText="Ver" ShowSelectButton="True" >
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [EjecucionM] WHERE [IdEjecucionM] = @IdEjecucionM" InsertCommand="INSERT INTO [EjecucionM] ([Estado], [FechaEjecucion], [Duracion], [Observaciones], [IdTareaMtto], [IdOrdenMttoP]) VALUES (@Estado, @FechaEjecucion, @Duracion, @Observaciones, @IdTareaMtto, @IdOrdenMttoP)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdEjecucionM], [Estado], [FechaEjecucion], [Duracion], [Observaciones], [IdTareaMtto], [IdOrdenMttoP] FROM [EjecucionM]" UpdateCommand="UPDATE [EjecucionM] SET [Estado] = @Estado, [FechaEjecucion] = @FechaEjecucion, [Duracion] = @Duracion, [Observaciones] = @Observaciones, [IdTareaMtto] = @IdTareaMtto, [IdOrdenMttoP] = @IdOrdenMttoP WHERE [IdEjecucionM] = @IdEjecucionM">
                <DeleteParameters>
                    <asp:Parameter Name="IdEjecucionM" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="FechaEjecucion" Type="String" />
                    <asp:Parameter Name="Duracion" Type="String" />
                    <asp:Parameter Name="Observaciones" Type="String" />
                    <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                    <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="FechaEjecucion" Type="String" />
                    <asp:Parameter Name="Duracion" Type="String" />
                    <asp:Parameter Name="Observaciones" Type="String" />
                    <asp:Parameter Name="IdTareaMtto" Type="Int32" />
                    <asp:Parameter Name="IdOrdenMttoP" Type="Int32" />
                    <asp:Parameter Name="IdEjecucionM" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
          </div>
    </div>
</asp:Content>

