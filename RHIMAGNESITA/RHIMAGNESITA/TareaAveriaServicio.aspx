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
<<<<<<< HEAD
                                <label for="NumeroR" class=" form-control-label">Nombre Averia Servicio</label><input type="text" id="NumeroR" placeholder="Ingrese un nombre de la averia o el servicio" class="form-control">
=======
                                <label for="NumeroR" class=" form-control-label">Nombre Averia Servicio</label><input type="text" id="NumeroR" placeholder="Ingrese un nombre de la averia o el servicio" class="form-control"></div>
                             <div class="form-group">
                                <label for="Duracion" class=" form-control-label">Duracion</label><input type="number" id="Duracion" placeholder="Duracion" class="form-control">
>>>>>>> 18b26d70169a83e861e08bffa3f84a8ad9af1c97
                            </div>
                            <div class="form-group">
                                <label for="Horas" class=" form-control-label">Duracion</label><input type="number" id="Duracion" placeholder="Duracion" class="form-control">
                            </div>
                            <div class="auto-style8">
                                <label for="FechaP" class=" form-control-label">Fecha de Ejecucion</label><input type="date" id="FechaP" placeholder="" class="form-control">
                            </div>
                            <!-- Campo para el combo box-->
                             <div class="row form-group">
                                <div class="text-center">
                                    <label for="selectSm" class="form-control-label">Orden de Mtto Preventivo</label>
                                </div>
                                <div class="text-center">
                                    <asp:DropDownList ID="CombOrdenMttoP" runat="server" CssClass="auto-style8" Height="33px" Width="655px">
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

