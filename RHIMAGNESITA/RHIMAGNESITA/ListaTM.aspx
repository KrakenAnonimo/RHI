<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListaTM.aspx.cs" Inherits="ListaTM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 384px;
            position: relative;
            left: 513px;
            top: -7px;
            height: 196px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div style="position: relative; top: -11px; left: 188px; width: 1000px;" class="t-cn">
            <h2>Lista Tareas de Mantenimiento</h2>
        </div>
        <div class="auto-style7">

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdTareaMtto" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." PageSize="5" Width="363px">
                <Columns>
                    <asp:BoundField DataField="IdTareaMtto" HeaderText="IdTareaMtto" ReadOnly="True" SortExpression="IdTareaMtto" Visible="False" />
                    <asp:BoundField DataField="NombreTM" HeaderText="NombreTM" SortExpression="NombreTM" />
                    <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False" />
                    <asp:CommandField SelectText="Ver" ShowSelectButton="True">
                    <ControlStyle ForeColor="#3EC1D5" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [TareaMtto] WHERE [IdTareaMtto] = @IdTareaMtto" InsertCommand="INSERT INTO [TareaMtto] ([NombreTM], [Duracion], [Descripcion], [IdElemento]) VALUES (@NombreTM, @Duracion, @Descripcion, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdTareaMtto], [NombreTM], [Duracion], [Descripcion], [IdElemento] FROM [TareaMtto]" UpdateCommand="UPDATE [TareaMtto] SET [NombreTM] = @NombreTM, [Duracion] = @Duracion, [Descripcion] = @Descripcion, [IdElemento] = @IdElemento WHERE [IdTareaMtto] = @IdTareaMtto">
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
</asp:Content>

