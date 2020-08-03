<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EjecucionM.aspx.cs" Inherits="EjecucionM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-bottom: 15px;
            text-align: center;
        }

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
            margin-bottom: 15px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--No mover estos espacios-->
    <br />
    <!--No mover estos espacios-->
    <!--Resto del codigo-->
    <div class="jumbotron">
        <div class="animated fadeIn">
            <div class="row">
                <div class="auto-style7">
                    <div class="card">
                        <div class="card-header"><strong>REGISTRAR EJECUCION DE MANTENIMIENTO</strong></div>
                        <br />
                        <br />
                        <div class="row form-group">
                            <div class="auto-style3">
                                <label for="Revisado" class=" form-control-label">Estado</label>
                            </div>
                            <div class="text-center">
                                <asp:DropDownList runat="server" id="cmbEstado" class="form-control-sm form-control" style="width: 97%; position: relative; left: 9px; top: 0px">
                                    <asp:ListItem>Ejecutada</asp:ListItem>
                                    <asp:ListItem>No Ejecutada</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="card-body card-block">
                            <div class="auto-style3">
                                <label for="FechaOF" class=" form-control-label">Fecha Ejecucion</label>
                                <asp:TextBox runat="server" placeholder="Fecha de Ejecucion" class="form-control" id="txtFechaEj" TextMode="Date" ></asp:TextBox>
                            </div>
                            <div class="auto-style3">
                                <label for="Horas" class=" form-control-label">Duracion</label>
                                <asp:TextBox runat="server" id="txtDuracion" placeholder="Horas" class="form-control" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <div class="text-center">
                                    <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                </div>
                                <div class="text-center">
                                    <asp:TextBox runat="server" rows="9" placeholder="Observaciones..." class="form-control" id="txtObservaciones" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="text-center">
                                    <label for="selectSm" class="form-control-label">Tarea de Mantenimiento</label>
                                </div>
                                <div class="text-center">
                                    <asp:DropDownList ID="cmbTareaMantenimiento" runat="server" CssClass="auto-style8" Height="33px" Width="659px">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="text-center">
                                    <label for="selectSm" class="form-control-label">Orden de Mantenimiento Preventiva</label>
                                </div>
                                <div class="text-center">
                                    <asp:DropDownList ID="cmbOrdenMttoP" runat="server" CssClass="auto-style8" Height="33px" Width="655px">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <asp:Button runat="server" Text="Guardar" class="btn btn-success btn-sm" id="btnGuardar" OnClick="btnGuardar_Click"/>
                            <asp:Button runat="server" Text="Limpiar Todo" class="btn btn-danger btn-sm" id="btnLimpiar"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

