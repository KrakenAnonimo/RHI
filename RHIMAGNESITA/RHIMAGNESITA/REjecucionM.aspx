<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="REjecucionM.aspx.cs" Inherits="REjecucionM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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

        .auto-style9 {
            text-align: center;
            width: 370px;
            position: relative;
            left: -86px;
            top: 17px;
            height: 25px;
        }

        .auto-style10 {
            width: 407px;
            height: 173px;
            position: relative;
            left: -58px;
            top: 33px;
        }
        .auto-style11 {
            text-align: center;
            width: 270px;
            position: relative;
            left: 432px;
            top: -194px;
            height: 27px;
        }
        .auto-style12 {
            width: 651px;
            position: relative;
            left: -12px;
            top: -8px;
        }
        .auto-style13 {
            margin-bottom: 15px;
            height: 64px;
            width: 658px;
        }
        .auto-style14 {
            text-align: center;
            width: 686px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--No mover estos espacios-->
    <br />
    <!--No mover estos espacios-->
    <!--Resto del codigo-->
    <div class="jumbotron">
        <div class="animated fadeIn">
            <div class="row">
                <div class="auto-style7">
                    <div class="card">
                        <div class="card-header"><strong>EJECUCION DE MANTENIMIENTO</strong></div>
                        <br />
                        <br />
                        <div class="form-group">
                            <div class="text-center">
                                <label for="selectSm" class="form-control-label"> Orden de Mantenimiento Preventiva</label>
                            </div>
                            <div class="text-center">
                                <asp:Label ID="lblOrdenMttoP" runat="server" Text="" class="form-control"></asp:Label>
                            </div>
                        </div>
                        <div class="text-center">
                            <div class="text-center">
                                <label for="selectSm" class="form-control-label">Tarea de Mtto</label>
                            </div>
                            <div class="text-center">
                                <asp:Label ID="lblTareaMtto" runat="server" Text="" class="form-control"></asp:Label>
                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="text-center">
                                <label for="Revisado" class=" form-control-label">Estado</label>
                            </div>
                            <div class="text-center">
                                <asp:DropDownList runat="server" ID="cmbEstado" class="form-control-sm form-control" Style="width: 97%; position: relative; left: 9px; top: 0px">
                                    <asp:ListItem>En Ejecucion</asp:ListItem>
                                    <asp:ListItem>Ejecutada</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="card-body card-block">
                            <div class="text-center">
                                <label for="FechaOF" class=" form-control-label">Fecha Ejecucion</label>
                                <asp:Label ID="lblFechaEjecucion" runat="server" Text=""  class="form-control"></asp:Label>
                            </div>
                            <div class="text-center">
                                <label for="Horas" class=" form-control-label">Duracion</label>
                                <asp:Label ID="lblDuracion" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                            <div class="form-group">
                                <div class="text-center">
                                    <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                </div>
                                <div class="text-center">
                                    <asp:TextBox runat="server" Rows="9" placeholder="Observaciones..." class="form-control" ID="txtObservaciones" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Button runat="server" Text="Guardar" class="btn btn-success btn-sm" ID="btnGuardar" />
                            <asp:Button runat="server" Text="Descargar" class="btn btn-danger btn-sm" ID="btnDescargar" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

