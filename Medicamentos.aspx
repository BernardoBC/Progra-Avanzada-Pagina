<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Medicamentos.aspx.cs" Inherits="Medicamentos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">


    <form class="form-horizontal" runat="server">

        <div class="containter">
	    <div class="col-lg-6">

          <div class="well bs-component">
  <fieldset>
    
      
    <legend>INGRESO DE MEDICAMENTOS</legend>

    <div class="form-group">
      <label for="Nombre" class="col-lg-2 control-label">Nombre</label>
      <div class="col-lg-5">
        <input type="text" class="form-control" id="entradaNombre" placeholder="Nombre"/>
      </div>
    </div>


    <div class="form-group">
      <label for="Cantidad" class="col-lg-2 control-label">Cantidad</label>
      <div class="col-lg-5">
        <input type="text" class="form-control" id="entraCantidad" placeholder="Cantidad"/>
        </div>
    </div>
      
    <div class="form-group">
      <label for="Precio" class="col-lg-2 control-label">Precio</label>
      <div class="col-lg-3">
        <input type="text" class="form-control" id="Precio" placeholder="Precio"/>
        </div>
    </div>


    <div class="form-group">
      <label for="Descripcion" class="col-lg-2 control-label">Descripción</label>
      <div class="col-lg-5">
        <input type="text" class="form-control" id="entradaDescripcion" placeholder="Descripción"/>
      </div>
    </div>



    <%--<div class="form-group">
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
    </div>--%>



    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>


  </fieldset>
              <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div></div>

       

        </div>
    </div>

        <div class="container">
            <div class="col-lg-6">
                <asp:GridView ID="GridView1" class="table table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="idProducto" HeaderText="idProducto" ReadOnly="True" SortExpression="idProducto" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                    </Columns>
                </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Producto]"></asp:SqlDataSource>

            </div>

        </div>

    </form>



</asp:Content>

