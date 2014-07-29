<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Medicamentos.aspx.cs" Inherits="Medicamentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">


<form class="form-horizontal">
  <fieldset>
      
    <legend>INGRESO DE MEDICAMENTOS</legend>
    <div class="form-group">
      <label for="Nombre" class="col-lg-1 control-label">Nombre del medicamento</label>
      <div class="col-lg-5">
        <input type="text" class="form-control" id="entradaNombre" placeholder="Nombre"/>
      </div>
    </div>
    <div class="form-group">
      <label for="Cantidad" class="col-lg-1 control-label">Cantidad</label>
      <div class="col-lg-5">
        <input type="text" class="form-control" id="entraCantidad" placeholder="Cantidad"/>

        </div>
      
    </div>
    <div class="form-group">
      <label for="Descripcion" class="col-lg-1 control-label">Descripción</label>
      <div class="col-lg-5">
        <input type="text" class="form-control" id="entradaDescripcion" placeholder="Descripción"/>
      </div>
    </div>

    <div class="form-group">
      <label class="col-lg-2 control-label">Radios</label>
      <div class="col-lg-10">
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
            Option one is this
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
            Option two can be something else
          </label>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Selects</label>
      <div class="col-lg-10">
        <select class="form-control" id="select">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
        <br>
        <select multiple="" class="form-control">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </fieldset>
</form>



</asp:Content>

