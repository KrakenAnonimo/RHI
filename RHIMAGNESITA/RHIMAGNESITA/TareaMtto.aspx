<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TareaMtto.aspx.cs" Inherits="TareaMtto" %>

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
                            <div class="card-header"><strong>REGISTRAR TAREA MANTENIMIENTO</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label for="NombreTM" class=" form-control-label">Nombre</label>
                                    <asp:TextBox ID="txtNombreTM" runat="server" placeholder="Nombre de la TareaMtto" class="form-control" TextMode="SingleLine"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="Duracion" class=" form-control-label">Duracion</label>
                                    <asp:TextBox ID="txtDuracion" runat="server" placeholder="Duracion" class="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:TextBox ID="txtDescripcion" runat="server" Rows="9" placeholder="Descripcion..." class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Elemento</label>
                                    </div>
                                    <div style="align-content: center; align-items: center; text-align: center;">
                                        <asp:TextBox ID="txtBuscarE" runat="server" placeholder="Buscar..."></asp:TextBox>
                                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary btn-sm" OnClick="btnBuscar_Click" />
                                    </div>
                                    <div class="text-center">
                                        <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="50%" runat="server" AutoGenerateColumns="False" DataKeyNames="IdElemento" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" ID="gvElementos" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                                            <Columns>
                                                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" ReadOnly="True" SortExpression="IdElemento" Visible="False"></asp:BoundField>
                                                <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo"></asp:BoundField>
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"></asp:BoundField>
                                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" Visible="False"></asp:BoundField>
                                                <asp:BoundField DataField="IdArea" HeaderText="IdArea" SortExpression="IdArea" Visible="False"></asp:BoundField>
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
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Elemento] WHERE [IdElemento] = @IdElemento" InsertCommand="INSERT INTO [Elemento] ([Codigo], [Nombre], [Descripcion], [Estado], [IdArea]) VALUES (@Codigo, @Nombre, @Descripcion, @Estado, @IdArea)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdElemento], [Codigo], [Nombre], [Descripcion], [Estado], [IdArea] FROM [Elemento]" UpdateCommand="UPDATE [Elemento] SET [Codigo] = @Codigo, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Estado] = @Estado, [IdArea] = @IdArea WHERE [IdElemento] = @IdElemento">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Codigo" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Estado" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="IdArea" Type="Int32"></asp:Parameter>
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Codigo" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="Estado" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="IdArea" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                    <div style="align-content: center; align-items: center; text-align: center;" class="auto-style12">
                                        <asp:Label ID="lblQueElemento" runat="server" Text="Elemento Seleccionado: "></asp:Label>
                                        <br />
                                        <asp:Label ID="lblElemento" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div style="align-content: center; align-items: center; text-align: center;">
                                        <asp:GridView ID="GridView1" runat="server" Visible="False"></asp:GridView>
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

