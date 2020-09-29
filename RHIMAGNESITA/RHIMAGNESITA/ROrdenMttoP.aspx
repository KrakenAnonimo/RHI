<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ROrdenMttoP.aspx.cs" Inherits="ROrdenMttoP" %>

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
                            <div class="card-header"><strong>VISUALIZACION DE ORDEN DE MTTO PREVENTIVO</strong></div>
                            <br />
                            <br />
                            <div class="card-body card-block">
                                <div class="row form-group">
                                    <div class="text-center">
                                        <asp:Label runat="server" ID="lblIdOp" class="form-control" Visible="False"></asp:Label>
                                        <label for="selectSm" class="form-control-label">Reporte Averia Servicio</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:Label runat="server" Text="" ID="lblReporteAVS" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <label for="selectSm" class="form-control-label">Planificacion</label>
                                </div>
                                <div class="row form-group">
                                    <div>
                                        <asp:Label runat="server" Text="" ID="lblRPlanificicacion" class="form-control"></asp:Label>

                                    </div>
                                </div>
                                <div class="text-center">
                                    <label for="NumOrdenP" class=" form-control-label">Numero de la orden</label>
                                    <asp:Label runat="server" Text="" ID="lblNumerodeOrden" class="form-control"></asp:Label>
                                </div>
                                <div class="text-center">
                                    <label for="Disciplina" class=" form-control-label">Disciplina</label>
                                    <asp:Label runat="server" Text="" ID="lblDisciplinaR" class="form-control"></asp:Label>
                                </div>
                                <div class="text-center">
                                    <label for="FechaOI" class=" form-control-label">Fecha Inicial</label>
                                    <asp:Label runat="server" Text="" ID="lblFechaIn" class="form-control"></asp:Label>
                                </div>
                                <div class="text-center">
                                    <label for="HoraI" class=" form-control-label">Hora Inicial</label>
                                    <asp:Label runat="server" Text="" ID="lblHoraIn" class="form-control"></asp:Label>
                                </div>
                                <div class="text-center">
                                    <label for="FechaOF" class=" form-control-label">Fecha Final</label>
                                    <asp:Label runat="server" Text="" ID="lblFechaFn" class="form-control"></asp:Label>
                                </div>
                                <div class="text-center">
                                    <label for="HoraF" class=" form-control-label">Hora Final</label>
                                    <asp:Label runat="server" Text="" ID="lblHoraFn" class="form-control"></asp:Label>
                                </div>
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="selectSm" class=" form-control-label">Ejecucion de la Orden</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbEjecucionOr" runat="server" class="form-control-sm form-control" Style="width: 97%; position: relative; left: 9px; top: 0px">
                                            <asp:ListItem>Sin Ejecutar</asp:ListItem>
                                            <asp:ListItem>En Ejecucion</asp:ListItem>
                                            <asp:ListItem>Ejecutado</asp:ListItem>
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
                                <div class="row form-group">
                                    <div class="text-center">
                                        <label for="Revisado" class=" form-control-label">Revisado por:</label>
                                    </div>
                                    <div class="text-center">
                                        <asp:Label runat="server" Text="" ID="lblRevision" class="form-control"></asp:Label>
                                    </div>
                                </div>
                                <div>
                                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="btnGuardar_Click" />
                                    <asp:Button ID="btnDescargarExcel" runat="server" Text="Descargar Excel" class="btn btn-warning btn-sm" OnClick="btnDescargarExcel_Click" />
                                    <asp:Button ID="btnDescargarPdf" runat="server" Text="Descargar PDF" class="btn btn-warning btn-sm" OnClick="btnDescargarPdf_Click" />
                                    <asp:SqlDataSource ID="sqlOP" runat="server" ConnectionString="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbSwafay-RIHConnectionString1.ProviderName %>" SelectCommand="SELECT OrdenMttoPreventivo.IdOrdenMttoP, OrdenMttoPreventivo.NumOrden, OrdenMttoPreventivo.Disciplina, OrdenMttoPreventivo.FechaInicio, OrdenMttoPreventivo.HoraInicio, OrdenMttoPreventivo.FechaFinal, OrdenMttoPreventivo.HoraFinal, OrdenMttoPreventivo.Ejecutado, OrdenMttoPreventivo.TrabajoIE, OrdenMttoPreventivo.Observaciones, OrdenMttoPreventivo.Revisado, OrdenMttoPreventivo.IdPlanificacion, OrdenMttoPreventivo.IdReporteAS, OrdenMttoPreventivo.IdUsuario, ReporteAveriaServicio.NumReporte, Planificacion.FechaPlanificacion FROM OrdenMttoPreventivo INNER JOIN Planificacion ON OrdenMttoPreventivo.IdPlanificacion = Planificacion.IdPlanificacion INNER JOIN ReporteAveriaServicio ON OrdenMttoPreventivo.IdReporteAS = ReporteAveriaServicio.IdReporteAS WHERE (OrdenMttoPreventivo.IdOrdenMttoP = @orden)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="orden" SessionField="idOrdenMttoP" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

