<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ROrdenMttoC.aspx.cs" Inherits="ROrdenMttoC" %>

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
                            <div class="card-header"><strong>VISUALIZACION DE ORDEN DE MTTO CORRECITVO</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="NumOrdenP" class="form-control-label">Numero de la orden</label>
                                        <asp:Label runat="server" Text="" ID="lblNumerodeOrden" class="form-control"></asp:Label>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Orden de Mtto Preventivo</label>
                                    </div>
                                    <div>
                                        <asp:Label runat="server" Text="" ID="lblOrdenMttoPR" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class="form-control-label">Usuario Asigado:</label>
                                        &nbsp;
                                    </div>
                                    <div>
                                        <asp:Label runat="server" Text="" ID="lblUsuarioAsignado" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <label for="Disciplina" class=" form-control-label">Disciplina</label>
                                    <div class="text-center">
                                        <asp:Label runat="server" Text="" ID="lblDisciplinaR" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <label for="FechaOI" class=" form-control-label">Fecha Inicial</label>
                                    <div class="text-center">
                                        <asp:Label runat="server" Text="" ID="lblFechaIn" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <label for="HoraI" class=" form-control-label">Hora Inicial</label>
                                    <div class="text-center">
                                        <asp:Label runat="server" Text="" ID="lblHoraIn" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <label for="FechaOF" class=" form-control-label">Fecha Final</label>
                                    <div class="text-center">
                                        <asp:Label runat="server" Text="" ID="lblFechaFn" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <label for="HoraF" class=" form-control-label">Hora Final</label>
                                    <div class="text-center">
                                        <asp:Label runat="server" Text="" ID="lblHoraFn" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class=" form-control-label">Ejecucion de la Orden</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbEjecucionOr" runat="server" class="form-control-sm form-control" Style="width: 97%; position: relative; left: 9px; top: 0px">
                                            <asp:ListItem>En Ejecucion</asp:ListItem>
                                            <asp:ListItem>Ejecutada</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="TrabajoIE" class=" form-control-label">Trabajo IE</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:Label runat="server" Text="" ID="lblTrabajoIER" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                    </div>
                                    <div class="text-center" style="width: 97%; position: relative; left: 9px; top: 0px">
                                        <asp:TextBox ID="txtObservaciones" runat="server" Rows="9" placeholder="Observaciones..." class="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <div class="text-center">
                                        <label for="Revisado" class=" form-control-label">Revisado por:</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:Label runat="server" Text="" ID="lblRevision" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div>
                                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
                                    <asp:Button ID="btnDescargar" runat="server" Text="Descargar" class="btn btn-danger btn-sm" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

