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
                                    <div class="text-center">
                                        <asp:DropDownList ID="cmbElemento" runat="server" CssClass="auto-style8">
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
        </div>
    </div>
</asp:Content>

