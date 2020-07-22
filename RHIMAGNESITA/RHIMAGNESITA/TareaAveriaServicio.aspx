<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TareaAveriaServicio.aspx.cs" Inherits="TareaAveriaServicio" %>

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
                        <div class="card-header"><strong>REGISTRAR TAREA AVERIA SERVICIO</strong></div>
                        <br />
                        <br />
                        <div class="card-body card-block">
                            <div class="form-group">
                                <label for="NumeroR" class=" form-control-label">Nombre Averia Servicio</label><input type="text" id="NumeroR" placeholder="Ingrese un nombre de la averia o el servicio" class="form-control"></div>
                             <div class="form-group">
                                <label for="Duracion" class=" form-control-label">Duracion</label><input type="time" id="Duracion" placeholder="Duracion" class="form-control">
                            </div>
                             <div class="auto-style8">
                                <label for="FechaP" class=" form-control-label">Fecha de Ejecucion</label><input type="date" id="FechaP" placeholder="" class="form-control">
                            </div>
                            <!-- Campo para el combo box-->
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

