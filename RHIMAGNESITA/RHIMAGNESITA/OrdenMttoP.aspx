﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrdenMttoP.aspx.cs" Inherits="OrdenMttoP" %>

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
            width: 97%;
            position: relative;
            left: 0px;
            top: 1px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--No mover estos espacios-->
    <br />
    <br />
    <br />
    <br />
    <!--No mover estos espacios-->
    <!--Resto del codigo-->
    <div class="content">
        <div class="animated fadeIn">
            <div class="row">
                <div class="auto-style7">
                    <div class="card">
                        <div class="card-header"><strong>REGISTRO DE ORDEN DE MTTO PREVENTIVO</strong></div>
                        <br />
                        <br />
                        <div class="card-body card-block">
                            <div class="auto-style3">
                                <label for="NumOrdenP" class=" form-control-label">Numero de la orden</label><input type="text" id="NumOrdenP" placeholder="Numero de la Orden del Mtto Preventivo" class="form-control">
                            </div>
                            <div class="auto-style3">
                                <label for="Disciplina" class=" form-control-label">Disciplina</label><input type="text" id="Disciplina" placeholder="Diciplina" class="form-control">
                            </div>
                            <div class="auto-style3">
                                <label for="FechaOI" class=" form-control-label">Fecha Inicial</label><input type="date" id="FechaOI" placeholder="Fecha inicial del reporte" class="form-control">
                            </div>
                            <div class="auto-style3">
                                <label for="HoraI" class=" form-control-label">Hora Inicial</label><input type="time" id="HoraI" placeholder="Duracion" class="form-control">
                            </div>
                            <div class="auto-style3">
                                <label for="FechaOF" class=" form-control-label">Fecha Final</label><input type="date" id="FechaOF" placeholder="Fecha Final del reporte" class="form-control">
                            </div>
                            <div class="auto-style3">
                                <label for="HoraF" class=" form-control-label">Hora Final</label><input type="time" id="HoraF" placeholder="Duracion" class="form-control">
                            </div>
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="selectSm" class=" form-control-label">Ejecucion de la Orden</label>
                                </div>
                                <div class="text-center">
                                    <select name="SeleccionEjecucion" id="SeleccionEjecucion" class="form-control-sm form-control" style="width: 97%; position: relative; left: 9px; top: 0px">
                                        <option value="0">Elija una opcion</option>
                                        <option value="1">Sin ejecutar</option>
                                        <option value="2">En Ejecucion</option>
                                        <option value="3">Finalizada</option>
                                        <option value="4">Cancelada</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="TrabajoIE" class=" form-control-label">Trabajo IE</label>
                                </div>
                                <div class="text-center">
                                    <select name="TrabajoIE" id="TrabajoIE" class="form-control-sm form-control" style="width: 97%; position: relative; left: 9px; top: 0px">
                                        <option value="0">Elija una opcion</option>
                                        <option value="1">Interno</option>
                                        <option value="2">Externo</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="textarea-input" class=" form-control-label">Observaciones</label>
                                </div>
                                <div class="text-center" style="width: 97%; position: relative; left: 9px; top: 0px">
                                    <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Observaciones..." class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="Revisado" class=" form-control-label">Revisado</label>
                                </div>
                                <div class="text-center">
                                    <select name="Revisado" id="Revisado" class="form-control-sm form-control" style="width: 97%; position: relative; left: 9px; top: 0px">
                                        <option value="0">Elegir opcion</option>
                                        <option value="1">Revisado</option>
                                        <option value="2">No Revisado</option>
                                    </select>
                                </div>
                            </div>
                            <!-- Campo para el combo box-->
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="selectSm" class="form-control-label">Planificacion</label>
                                </div>
                                <div class="text-center">
                                    <asp:DropDownList ID="cmbPlanificacion" runat="server" CssClass="auto-style8">
                                    </asp:DropDownList>
                                </div>
                            </div>                           
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="selectSm" class="form-control-label">Reporte Averia Servicio</label>
                                </div>
                                <div class="text-center">
                                    <asp:DropDownList ID="cmbAveriaServicio" runat="server" CssClass="auto-style8">
                                    </asp:DropDownList>
                                </div>
                            </div>                            
                            <div class="row form-group">
                                <div class="text-center">
                                    <label for="selectSm" class="form-control-label">Usuario</label>
                                </div>
                                <div class="text-center">
                                    <asp:DropDownList ID="cmbUsuario" runat="server" CssClass="auto-style8">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <!-- Campo para el combo box-->
                            <button type="button" class="btn btn-success btn-sm">Guardar</button>
                            <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

