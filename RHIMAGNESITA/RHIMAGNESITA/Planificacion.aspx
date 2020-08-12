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
            width: 96%;
            position: relative;
            left: 7px;
            top: 1px;
            height: 16px;
        }

        .auto-style11 {
            width: 421px;
            position: relative;
            left: -51px;
            top: -92px;
            height: 175px;
        }

        .auto-style12 {
            width: 246px;
            position: relative;
            left: 376px;
            top: 16px;
        }

        .auto-style13 {
            display: block;
            width: 74%;
            height: 19px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            position: relative;
            left: 204px;
            top: 15px;
        }

        .auto-style14 {
            margin-bottom: 15px;
            width: 262px;
            height: 54px;
        }

        .auto-style15 {
            height: 12px;
            width: 663px;
        }

        .auto-style16 {
            width: 296px;
            top: -120px;
            left: 183px;
            z-index: 3;
            height: 64px;
            position: relative;
        }

        .auto-style17 {
            width: 207px;
            position: relative;
            top: -133px;
            left: 217px;
        }

        .auto-style18 {
            text-align: center;
            width: 559px;
        }

        .auto-style19 {
            text-align: center;
            width: 571px;
        }

        .auto-style20 {
            text-align: center;
            width: 585px;
            height: 41px;
        }

        .auto-style21 {
            margin-bottom: 15px;
            width: 567px;
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
                            <div class="card-body card-block" id="gvElementos">
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">PLANIFICACION CON ELEMENTO</label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Busque el Elemento con su planificacion:</label>
                                    </div>
                                </div>
                                <div>
                                    <div class="auto-style14">
                                        <asp:TextBox ID="txtBuscarE" runat="server" placeholder="Buscar..." class="auto-style13"></asp:TextBox>
                                    </div>
                                    <div class="auto-style15">
                                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary btn-sm" Style="position: relative; left: 111px; top: -58px" OnClick="btnBuscar_Click" />
                                    </div>
                                </div>

                                <div class="auto-style12">
                                    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlanificacion" DataSourceID="SqlDataSource4" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" ID="gvPlanificacion" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="233px" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="White" />
                                        <columns>
<asp:BoundField DataField="IdPlanificacion" HeaderText="IdPlanificacion" ReadOnly="True" SortExpression="IdPlanificacion" Visible="False"></asp:BoundField>
<asp:BoundField DataField="FechaPlanificacion" HeaderText="FechaPlanificacion" SortExpression="FechaPlanificacion"></asp:BoundField>
<asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:BoundField>
<asp:BoundField DataField="IdElemento" HeaderText="IdElemento" SortExpression="IdElemento" Visible="False"></asp:BoundField>
</columns>
                                        <footerstyle backcolor="#CCCC99" />
                                        <headerstyle backcolor="#6B696B" font-bold="True" forecolor="White" />
                                        <pagerstyle backcolor="#F7F7DE" forecolor="Black" horizontalalign="Right" />
                                        <rowstyle BackColor="#F7F7DE" />
                                        <selectedrowstyle backcolor="#CE5D5A" font-bold="True" forecolor="White" />
                                        <sortedascendingcellstyle backcolor="#FBFBF2" />
                                        <sortedascendingheaderstyle backcolor="#848384" />
                                        <sorteddescendingcellstyle backcolor="#EAEAD3" />
                                        <sorteddescendingheaderstyle backcolor="#575357" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Planificacion] WHERE [IdPlanificacion] = @IdPlanificacion" InsertCommand="INSERT INTO [Planificacion] ([FechaPlanificacion], [Observaciones], [Estado], [IdElemento]) VALUES (@FechaPlanificacion, @Observaciones, @Estado, @IdElemento)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPlanificacion], [FechaPlanificacion], [Observaciones], [Estado], [IdElemento] FROM [Planificacion]" UpdateCommand="UPDATE [Planificacion] SET [FechaPlanificacion] = @FechaPlanificacion, [Observaciones] = @Observaciones, [Estado] = @Estado, [IdElemento] = @IdElemento WHERE [IdPlanificacion] = @IdPlanificacion">
                                        <deleteparameters>
<asp:Parameter Name="IdPlanificacion" Type="Int32"></asp:Parameter>
</deleteparameters>
                                        <insertparameters>
<asp:Parameter Name="FechaPlanificacion" Type="String"></asp:Parameter>
<asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
<asp:Parameter Name="Estado" Type="String"></asp:Parameter>
<asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
</insertparameters>
                                        <updateparameters>
<asp:Parameter Name="FechaPlanificacion" Type="String"></asp:Parameter>
<asp:Parameter Name="Observaciones" Type="String"></asp:Parameter>
<asp:Parameter Name="Estado" Type="String"></asp:Parameter>
<asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
<asp:Parameter Name="IdPlanificacion" Type="Int32"></asp:Parameter>
</updateparameters>
                                    </asp:SqlDataSource>
                                </div>

                                <div class="auto-style11">
                                    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="IdElemento" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" PageSize="5" Width="390px" ID="gvElemento" OnSelectedIndexChanged="gvElemento_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                        <alternatingrowstyle backcolor="White" />
                                        <columns>
<asp:BoundField DataField="IdElemento" HeaderText="IdElemento" ReadOnly="True" SortExpression="IdElemento" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo"></asp:BoundField>
<asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
<asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" Visible="False"></asp:BoundField>
<asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" Visible="False"></asp:BoundField>
<asp:BoundField DataField="IdArea" HeaderText="IdArea" SortExpression="IdArea" Visible="False"></asp:BoundField>
                                            <asp:CommandField ShowSelectButton="True" />
</columns>
                                        <footerstyle backcolor="#CCCC99" />
                                        <headerstyle backcolor="#6B696B" font-bold="True" forecolor="White" />
                                        <pagerstyle backcolor="#F7F7DE" forecolor="Black" horizontalalign="Right" />
                                        <rowstyle backcolor="#F7F7DE" />
                                        <selectedrowstyle backcolor="#CE5D5A" font-bold="True" forecolor="White" />
                                        <sortedascendingcellstyle backcolor="#FBFBF2" />
                                        <sortedascendingheaderstyle backcolor="#848384" />
                                        <sorteddescendingcellstyle backcolor="#EAEAD3" />
                                        <sorteddescendingheaderstyle backcolor="#575357" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" DeleteCommand="DELETE FROM [Elemento] WHERE [IdElemento] = @IdElemento" InsertCommand="INSERT INTO [Elemento] ([Codigo], [Nombre], [Descripcion], [Estado], [IdArea]) VALUES (@Codigo, @Nombre, @Descripcion, @Estado, @IdArea)" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT [IdElemento], [Codigo], [Nombre], [Descripcion], [Estado], [IdArea] FROM [Elemento]" UpdateCommand="UPDATE [Elemento] SET [Codigo] = @Codigo, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Estado] = @Estado, [IdArea] = @IdArea WHERE [IdElemento] = @IdElemento">
                                        <deleteparameters>
<asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
</deleteparameters>
                                        <insertparameters>
<asp:Parameter Name="Codigo" Type="String"></asp:Parameter>
<asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
<asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
<asp:Parameter Name="Estado" Type="String"></asp:Parameter>
<asp:Parameter Name="IdArea" Type="Int32"></asp:Parameter>
</insertparameters>
                                        <updateparameters>
<asp:Parameter Name="Codigo" Type="String"></asp:Parameter>
<asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
<asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
<asp:Parameter Name="Estado" Type="String"></asp:Parameter>
<asp:Parameter Name="IdArea" Type="Int32"></asp:Parameter>
<asp:Parameter Name="IdElemento" Type="Int32"></asp:Parameter>
</updateparameters>
                                    </asp:SqlDataSource>
                                </div>
                                <div class="auto-style17">
                                    <asp:Label runat="server" Text="Elemento Seleccionado: " ID="lblelemento"></asp:Label>
                                </div>
                                <div class="auto-style16">
                                    <asp:GridView runat="server" ID="gvElementoS" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="16px" Width="268px" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="White" />
                                        <footerstyle backcolor="#CCCC99" />
                                        <headerstyle backcolor="#6B696B" font-bold="True" forecolor="White" />
                                        <pagerstyle backcolor="#F7F7DE" forecolor="Black" horizontalalign="Right" />
                                        <rowstyle BackColor="#F7F7DE" />
                                        <selectedrowstyle backcolor="#CE5D5A" font-bold="True" forecolor="White" />
                                        <sortedascendingcellstyle backcolor="#FBFBF2" />
                                        <sortedascendingheaderstyle backcolor="#848384" />
                                        <sorteddescendingcellstyle backcolor="#EAEAD3" />
                                        <sorteddescendingheaderstyle backcolor="#575357" />
                                    </asp:GridView>
                                </div>
                                <div class="auto-style21">
                                    <label for="FechaP" class=" form-control-label">Fecha Planificacion</label>
                                    <asp:TextBox ID="txtFechaP" runat="server" placeholder="Elija una fecha de planificacion" class="form-control" TextMode="Date" Width="551px"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                    </div>
                                    <div class="auto-style18">
                                        <asp:TextBox ID="txtObservaciones" runat="server" Rows="9" placeholder="Observaciones..." class="form-control" TextMode="MultiLine" Width="553px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="auto-style19">
                                        <label for="selectSm" class="form-control-label">Estado</label>
                                    </div>
                                    <div class="auto-style20">
                                        <asp:DropDownList ID="cmbEstado" runat="server" CssClass="auto-style8">
                                            <asp:ListItem>Por Ejecutar</asp:ListItem>
                                            <asp:ListItem>Ejecutada</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div>
                                </div>

                                <div class="row form-group">
                                    <div>
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
        </div>
    </div>
</asp:Content>

