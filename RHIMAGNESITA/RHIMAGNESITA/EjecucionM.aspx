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
    <br />
    <br />
    <br />
    <!--No mover estos espacios-->
    <!--Resto del codigo-->
    <div class="animated fadeIn">
        <div class="row">
            <div class="auto-style7">
                <div class="card">
                    <div class="card-header"><strong>Ejecucion de Mantenimiento</strong></div>
                    <br />
                    <br />
                    <div class="row form-group">
                        <div class="auto-style3">
                            <label for="Revisado" class=" form-control-label">Estado</label>
                        </div>
                        <div class="text-center">
                            <select name="Revisado" id="Estado" class="form-control-sm form-control" style="width: 97%; position: relative; left: 9px; top: 0px">
                                <option value="0">Elija una opcion</option>
                                <option value="1">Ejecutada</option>
                                <option value="1">No Ejecutada</option>
                                <option value="1">En Ejecucion</option>
                                <option value="2">Cancelada</option>
                            </select>
                        </div>
                    </div>
                    <div class="card-body card-block">
                        <div class="auto-style3">
                            <label for="FechaOF" class=" form-control-label">Fecha Ejecucion</label><input type="date" id="FechaEj" placeholder="Fecha de Ejecucion" class="form-control">
                        </div>
                          <div class="auto-style3">
                                <label for="Horas" class=" form-control-label">Duracion</label><input type="number" id="Duracion" placeholder="Horas" class="form-control">
                            </div>
                        <div class="form-group">
                            <div class="text-center">
                                <label for="textarea-input" class=" form-control-label">Observaciones</label>
                            </div>
                            <div class="text-center">
                                <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Observaciones..." class="form-control"></textarea>
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
                                <label for="selectSm" class="form-control-label">Orden de Mantenimiento</label>
                            </div>
                            <div class="text-center">
                                <asp:DropDownList ID="cmbOdenMtto" runat="server" CssClass="auto-style8" Height="33px" Width="655px">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <button type="button" class="btn btn-success btn-sm">Guardar</button>
                        <button type="button" class="btn btn-danger btn-sm">Limpiar Todo</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

