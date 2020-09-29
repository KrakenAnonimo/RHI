<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Planificacion.aspx.cs" Inherits="Planificacion" %>

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

        .auto-style8 {
            text-align: center;
            width: 658px;
            height: 187px;
            position: absolute;
            top: 196px;
            left: 411px;
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
                            <div class="card-header"><strong>REGISTRAR PLANIFICACION</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">PLANIFICACION CON ELEMENTO</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Busque un Elemento con su planificacion para selecionarlo:</label>
                                    </div>
                                </div>
                                <div>
                                    <div class="text-center">
                                        <div style="align-content: center; align-items: center; text-align: center;">
                                            <asp:TextBox ID="txtBuscarE" runat="server" placeholder="Buscar..."></asp:TextBox>
                                            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary btn-sm" OnClick="btnBuscar_Click" />
                                        </div>
                                        <div>
                                            <asp:Label runat="server" Text="Elementos existentes con sus planificaciones:" ID="lbltexto"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="text-center">
                                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="50%" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlanificacion" DataSourceID="SqlDataSource4" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" ID="gvPlanificacion" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False"></asp:BoundField>
                                        <asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion"></asp:BoundField>
                                        <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" Visible="False"></asp:BoundField>
                                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:BoundField>
                                        <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False"></asp:BoundField>
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
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Planificacion] WHERE [IdPlanificacion] = @IdPlanificacion" InsertCommand="INSERT INTO [Planificacion] ([FechaPlanificacion], [Observaciones], [Estado], [IdElemento]) VALUES (@FechaPlanificacion, @Observaciones, @Estado, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPlanificacion], [FechaPlanificacion], [Observaciones], [Estado], [IdElemento] FROM [Planificacion]" UpdateCommand="UPDATE [Planificacion] SET [FechaPlanificacion] = @FechaPlanificacion, [Observaciones] = @Observaciones, [Estado] = @Estado, [IdElemento] = @IdElemento WHERE [IdPlanificacion] = @IdPlanificacion">
                                    <DeleteParameters>
                                        <asp:Parameter Name="IdPlanificacion" Type="Int32"></asp:Parameter>
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="FechaPlanificacion" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="Estado" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="FechaPlanificacion" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="Estado" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="IdPlanificacion" Type="Int32"></asp:Parameter>
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div>
                            <div class="auto-style8">
                                <asp:GridView AlternatingRowStyle-HorizontalAlign="left" Width="50%" runat="server" AutoGenerateColumns="False" DataKeyNames="IdElemento" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" ID="gvElemento" OnSelectedIndexChanged="gvElemento_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" SelectedRowStyle-HorizontalAlign="NotSet" HeaderStyle-HorizontalAlign="NotSet" FooterStyle-HorizontalAlign="NotSet" EmptyDataRowStyle-HorizontalAlign="NotSet" EditRowStyle-HorizontalAlign="NotSet" HorizontalAlign="NotSet" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="NotSet" SortedAscendingCellStyle-HorizontalAlign="NotSet" SortedAscendingHeaderStyle-HorizontalAlign="NotSet" SortedDescendingCellStyle-HorizontalAlign="NotSet" SortedDescendingHeaderStyle-HorizontalAlign="NotSet" HeaderStyle-VerticalAlign="Middle">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" ReadOnly="True" SortExpression="IdElemento" Visible="False"></asp:BoundField>
                                        <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo"></asp:BoundField>
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" Visible="False"></asp:BoundField>
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
                                   <selectedrowstyle backcolor="#848384" font-bold="True" forecolor="White" horizontalalign="Left" />
                                    <SortedAscendingCellStyle BackColor="#848384" HorizontalAlign="Left" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" HorizontalAlign="Left" />
                                    <SortedDescendingCellStyle BackColor="#848384" HorizontalAlign="Left" />
                                    <SortedDescendingHeaderStyle BackColor="#00BCD4" HorizontalAlign="Left" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Elemento] WHERE [IdElemento] = @IdElemento" InsertCommand="INSERT INTO [Elemento] ([Codigo], [Nombre], [Descripcion], [Estado], [IdArea]) VALUES (@Codigo, @Nombre, @Descripcion, @Estado, @IdArea)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdElemento], [Codigo], [Nombre], [Descripcion], [Estado], [IdArea] FROM [Elemento]" UpdateCommand="UPDATE [Elemento] SET [Codigo] = @Codigo, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Estado] = @Estado, [IdArea] = @IdArea WHERE [IdElemento] = @IdElemento">
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
                        </div>
                        <div style="align-content: center; align-items: center; text-align: center;">
                            <asp:Label runat="server" Text="Elemento Seleccionado: " ID="lblelemento"></asp:Label>
                        </div>
                        <div>
                            <div class="text-center">
                                <div style="align-content: center; align-items: center;" class="text-left">
                                    <asp:GridView runat="server" ID="gvElementoS" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="16px" Width="100%" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="White" />
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
                                </div>
                            </div>
                        </div>
                        <div class="text-center">
                            <div style="align-content: center; align-items: center; text-align: center;">
                                <label for="FechaP" class=" form-control-label">Fecha Planificacion</label>
                                <asp:TextBox ID="txtFechaP" runat="server" placeholder="Elija una fecha de planificacion" class="form-control" TextMode="Date" Width="740px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-center">
                            <div style="align-content: center; align-items: center; text-align: center;">
                                <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                <asp:TextBox ID="txtObservaciones" runat="server" Rows="9" placeholder="Observaciones..."  class="form-control" TextMode="MultiLine" Width="740px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-center">
                            <label for="selectSm" class="form-control-label">Estado</label>
                        </div>
                        <div class="text-center">
                            <div style="align-content: center; align-items: center; text-align: center;">
                                <asp:DropDownList ID="cmbEstado" runat="server" class="form-control">
                                    <asp:ListItem>Sin Ejecutar</asp:ListItem>
                                    <asp:ListItem>Ejecutada</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="text-center">
                            <div style="align-content: center; align-items: center; text-align: center;">
                                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
                                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar Todo" class="btn btn-danger btn-sm" OnClick="btnLimpiar_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

