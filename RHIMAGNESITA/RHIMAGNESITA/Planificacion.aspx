<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Planificacion.aspx.cs" Inherits="Planificacion" %>

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
            width: 97%;
            position: relative;
            left: 0px;
            top: 1px;
        }
        .auto-style9 {
            position: absolute;
            left: 150px;
            top: 101px;
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
                                        <label for="selectSm" class="form-control-label">Elemento</label>
                                    </div>
                                    <!-- <div class="text-center">
                                        <asp:DropDownList ID="cmbElemento" runat="server" CssClass="auto-style8">
                                        </asp:DropDownList>
                                    </div> -->
                                </div>
                                <br />
                                <div class="text-left">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IdElemento" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." CssClass="auto-style9">
                                        <columns>
                                             <asp:CommandField ShowSelectButton="True" />
                                             <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" ReadOnly="True" SortExpression="IdElemento" Visible="False" />
                                             <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                                             <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                             <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" Visible="False" />
                                             <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                             <asp:BoundField DataField="IdArea" HeaderText="IdArea" SortExpression="IdArea" />
                                         </columns>
                                        <footerstyle backcolor="White" forecolor="#000066" />
                                        <headerstyle backcolor="#006699" font-bold="True" forecolor="White" />
                                        <pagerstyle backcolor="White" forecolor="#000066" horizontalalign="Left" />
                                        <rowstyle forecolor="#000066" />
                                        <selectedrowstyle backcolor="#669999" font-bold="True" forecolor="White" />
                                        <sortedascendingcellstyle backcolor="#F1F1F1" />
                                        <sortedascendingheaderstyle backcolor="#007DBB" />
                                        <sorteddescendingcellstyle backcolor="#CAC9C9" />
                                        <sorteddescendingheaderstyle backcolor="#00547E" />
                                    </asp:GridView>
                                </div>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Elemento] WHERE [IdElemento] = @IdElemento" InsertCommand="INSERT INTO [Elemento] ([Codigo], [Nombre], [Descripcion], [Estado], [IdArea]) VALUES (@Codigo, @Nombre, @Descripcion, @Estado, @IdArea)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdElemento], [Codigo], [Nombre], [Descripcion], [Estado], [IdArea] FROM [Elemento]" UpdateCommand="UPDATE [Elemento] SET [Codigo] = @Codigo, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Estado] = @Estado, [IdArea] = @IdArea WHERE [IdElemento] = @IdElemento">
                                    <deleteparameters>
                                         <asp:Parameter Name="IdElemento" Type="Int32" />
                                     </deleteparameters>
                                    <insertparameters>
                                         <asp:Parameter Name="Codigo" Type="String" />
                                         <asp:Parameter Name="Nombre" Type="String" />
                                         <asp:Parameter Name="Descripcion" Type="String" />
                                         <asp:Parameter Name="Estado" Type="String" />
                                         <asp:Parameter Name="IdArea" Type="Int32" />
                                     </insertparameters>
                                    <updateparameters>
                                         <asp:Parameter Name="Codigo" Type="String" />
                                         <asp:Parameter Name="Nombre" Type="String" />
                                         <asp:Parameter Name="Descripcion" Type="String" />
                                         <asp:Parameter Name="Estado" Type="String" />
                                         <asp:Parameter Name="IdArea" Type="Int32" />
                                         <asp:Parameter Name="IdElemento" Type="Int32" />
                                     </updateparameters>
                                </asp:SqlDataSource>
                                <br />
                                <br />
                                <br />
                                <div class="form-group">
                                    <label for="FechaP" class=" form-control-label">Fecha Planificacion</label>
                                    <asp:TextBox ID="txtFechaP" runat="server" placeholder="Elija una fecha de planificacion" class="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:TextBox ID="txtObservaciones" runat="server" Rows="9" placeholder="Observaciones..." class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Estado</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbEstado" runat="server" CssClass="auto-style8">
                                            <asp:ListItem>Por Ejecutar</asp:ListItem>
                                            <asp:ListItem>Ejecutada</asp:ListItem>
                                            <asp:ListItem>Nueva</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Revisado por:</label>
                                        &nbsp;
                                    </div>
                                    <div class="text-left">
                                        <asp:CheckBoxList ID="chxblRoles" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" CssClass="auto-style11" Height="16px" style="margin-left: 210px" Width="321px">
                                            <asp:ListItem>Supervisor</asp:ListItem>
                                            <asp:ListItem>Planificador</asp:ListItem>
                                        </asp:CheckBoxList>
                                    </div>
                                    <div>
                                        <br />
                                        <br />
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

