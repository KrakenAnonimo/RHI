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

        .auto-style8 {
            position: relative;
            left: 199px;
            top: -26px;
        }
        .auto-style9 {
            margin-bottom: 15px;
            width: 262px;
            height: 54px;
        }
        .auto-style10 {
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
                                    <label for="NombreTM" class=" form-control-label">Nombre</label><input type="text" id="NombreTM" placeholder="Nombre de la TareaMtto" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="Duracion" class=" form-control-label">Duracion</label><input type="number" id="Duracion" placeholder="Duracion" class="form-control">
                                </div>
                                <div class="form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Descripcion</label>
                                    </div>
                                    <div class="text-center">
                                        <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Descripcion..." class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Elemento</label>
                                    </div>
                                    <div class="auto-style9">
                                        <input type="text" id="lblBuscarE" placeholder="Buscar..." class="auto-style10">
                                    </div>
                                    <div>
                                        <button type="button" class="btn btn-primary btn-sm" id="btnBuscarE" style="position: relative; left: 111px; top: -58px">Buscar</button>
                                    </div>
                                    <div class="text-center">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdElemento" DataSourceID="SqldsElementos" EmptyDataText="No hay registros de datos para mostrar." AllowPaging="True" AllowSorting="True" CssClass="auto-style8" PageSize="5">
                                            <Columns>
                                                <asp:BoundField DataField="IdElemento" HeaderText="IdElemento" ReadOnly="True" SortExpression="IdElemento" InsertVisible="False" Visible="False" />
                                                <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" Visible="False" />
                                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                                                <asp:BoundField DataField="IdArea" HeaderText="IdArea" SortExpression="IdArea" Visible="False" />
                                                <asp:CommandField ShowSelectButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqldsElementos" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafayConnectionString1 %>" DeleteCommand="DELETE FROM [Elemento] WHERE [IdElemento] = @IdElemento" InsertCommand="INSERT INTO [Elemento] ([Codigo], [Nombre], [Descripcion], [Estado], [IdArea]) VALUES (@Codigo, @Nombre, @Descripcion, @Estado, @IdArea)" ProviderName="<%$ ConnectionStrings:dbSwafayConnectionString1.ProviderName %>" SelectCommand="SELECT IdElemento, Codigo, Nombre, Estado, IdArea FROM Elemento" UpdateCommand="UPDATE [Elemento] SET [Codigo] = @Codigo, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Estado] = @Estado, [IdArea] = @IdArea WHERE [IdElemento] = @IdElemento">
                                            <DeleteParameters>
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Codigo" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="Estado" Type="String" />
                                                <asp:Parameter Name="IdArea" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="Codigo" Type="String" />
                                                <asp:Parameter Name="Nombre" Type="String" />
                                                <asp:Parameter Name="Descripcion" Type="String" />
                                                <asp:Parameter Name="Estado" Type="String" />
                                                <asp:Parameter Name="IdArea" Type="Int32" />
                                                <asp:Parameter Name="IdElemento" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>

                                    </div>
                                </div>
                                <button type="button" class="btn btn-success btn-sm">Guardar</button>
                                <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

