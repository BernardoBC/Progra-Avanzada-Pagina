<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Animales.aspx.cs" Inherits="Animales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <form class="form-horizontal" runat="server">
    <div class="containter">
	    <div class="col-lg-6">
            <div class="well bs-component">
                <fieldset>
                    <legend>Agregar Dueño</legend>
      
                    <!--Input id-->
                    <div class="form-group">
                        <label for="inputId" class="col-lg-2 control-label">Id</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="inputDueñoId" placeholder="Id">
                        </div>
                    </div>

                    <!--Input nombre-->
                    <div class="form-group">
                        <label for="inputNombre" class="col-lg-2 control-label">Nombre</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="inputDueñoNombre" placeholder="Nombre" runat="server" />
                        </div>
                    </div>
                           <!--Input apellido-->
                    <div class="form-group">
                        <label for="inputApellido" class="col-lg-2 control-label">Apellido</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="inputDueñoApellido" placeholder=" Apellido" runat="server" />
                        </div>
                    </div>

                    <!--Input num telefono-->
                    <div class="form-group">
                        <label for="inputTelefono" class="col-lg-2 control-label">Numero de teléfono</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="inputDueñoTelefono" placeholder=" Telefono" runat="server" />
                        </div>
                    </div>

                         <!--Input Direccion-->
                    <div class="form-group">
                        <label for="inputDireccion" class="col-lg-2 control-label">Direccion</label>
                        <div class="col-lg-10">
                            <textarea class="form-control textarea" rows="3" id="inputDueñoDireccion" runat="server"></textarea>
                        </div>
                    </div>                    

                    <!--Botones Cancel y Submit-->
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button class="btn btn-default">Cancel</button>
                            <asp:Button ID="btn_AgregarDueño"  class="btn btn-primary" runat="server" Text="Submit" OnClick="AgregarDueño" />                    
                        </div>
                    </div>  
                </fieldset>
                
            <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div></div>
            
        </div>
    </div>
     
    <div class="container">
        <div class="col-lg-6">
            <!--GridView-->
        </div>
    </div>
    </form>  

</asp:Content>

