<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/Citas.aspx.cs" Inherits="Citas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <form id="Form1" class="form-horizontal" runat="server">
    <div class="containter">
	    <div class="col-lg-6">
            <div class="well bs-component">
                <fieldset>
                    <legend>Incluir Animales</legend>
                      
                    <!--Input Animal ID-->
                    <div class="form-group">
                        <label for="inputAnimalID" class="col-lg-2 control-label">Animal ID</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="inputAnimalID" placeholder="Animal ID" runat="server" />
                        </div>
                    </div>

                   <!--Input Dueño ID-->
                    <div class="form-group">
                        <label for="inputDeuñoID" class="col-lg-2 control-label">Id dueño</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="Text1" placeholder="Dueño" runat="server" />
                        </div>
                    </div>

                    <!--Input nombre-->
                    <div class="form-group">
                        <label for="inputNombre" class="col-lg-2 control-label">Nombre</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="Text2" placeholder="Nombre" runat="server" />
                        </div>
                    </div>

                     <!--Input especie-->
                    <div class="form-group">
                        <label for="inputEspecie" class="col-lg-2 control-label">Especie</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="Text3" placeholder=" Especie" runat="server" />
                        </div>
                    </div>


                     <!--Input Raza-->
                    <div class="form-group">
                        <label for="inputRaza" class="col-lg-2 control-label">Raza</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="Text4" placeholder=" Raza" runat="server" />
                        </div>
                    </div>


                     <!--Input Edad-->
                    <div class="form-group">
                        <label for="inputEdad" class="col-lg-2 control-label">Edad</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="Text5" placeholder=" Edad" runat="server" />
                        </div>
                    </div>



                    <!--Input Descripcion-->
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Descripción</label>
                        <div class="col-lg-10">
                            <textarea class="form-control textarea" rows="3" id="inputDescripcion" runat="server"></textarea>
                        </div>
                    </div>

   



                    <!--Input Fecha-->
                    <div class="form-group">
                        <label for="select" class="col-lg-2 control-label" >Fecha dd/mm/aaaa</label>                    
                        <div class="col-md-3">
                            <select class="form-control" id="inputDia" runat="server">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                                <option>13</option>
                                <option>14</option>
                                <option>15</option>
                                <option>16</option>
                                <option>17</option>
                                <option>18</option>
                                <option>19</option>
                                <option>20</option>
                                <option>21</option>
                                <option>22</option>
                                <option>23</option>
                                <option>24</option>
                                <option>25</option>
                                <option>26</option>
                                <option>27</option>
                                <option>28</option>
                                <option>29</option>
                                <option>30</option>
                                <option>31</option>
                            </select> 
                        </div>
                        <div class="col-md-3">
                            <select class="form-control" id="inputMes" runat="server">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                            </select> 
                        </div>
                        <div class="col-md-3">
                            <select class="form-control" id="inputAño" runat="server">
                                <option>2010</option>
                                <option>2011</option>
                                <option>2012</option>
                                <option>2013</option>
                                <option>2014</option>
                            </select> 
                        </div>
                    </div>

                    <!--Botones Cancel y Submit-->
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button class="btn btn-default">Cancelar</button>
                            <asp:Button ID="Button1"  class="btn btn-primary" runat="server" Text="Agregar" OnClick="Button1_Click" />                    
                        </div>
                    </div>  
                </fieldset>
                
            <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div></div>
            
        </div>
    </div>
     
    <div class="container">
        <div class="col-lg-6">
             <asp:GridView runat="server" class="table table-striped table-hover" ID="GridView1"  AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Animal,Fecha" DataSourceID="SqlDataSource1" AllowPaging="True">
                      <Columns>
                          <asp:BoundField DataField="Animal" HeaderText="Animal" ReadOnly="True" SortExpression="Animal" />
                          <asp:BoundField DataField="Fecha" HeaderText="Fecha" ReadOnly="True" SortExpression="Fecha" />
                          <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                      </Columns>
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Citas]"></asp:SqlDataSource>
                               

    </div>
    </div>
    </form>  


    <form class="form-horizontal">
  <fieldset>
    <legend>Incluir Dueño</legend>
  


      
                    <!--Input id-->
        <div class="form-group">
      <label for="inputId" class="col-lg-1 control-label">Id</label>
      <div class="col-lg-5">
        <input type="text" class="form-control" id="inputId" placeholder="Id">
      </div>
    </div>



                    <!--Input nombre-->
                    <div class="form-group">
                        <label for="inputNombre" class="col-lg-1 control-label">Nombre</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" id="Text8" placeholder="Nombre" runat="server" />
                        </div>
                    </div>
                           <!--Input apellido-->
                    <div class="form-group">
                        <label for="inputApellido" class="col-lg-1 control-label">Apellido</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" id="Text10" placeholder=" Apellido" runat="server" />
                        </div>
                    </div>



                     <!--Input num telefono-->
                    <div class="form-group">
                        <label for="inputTelefono" class="col-lg-1 control-label">Numero de teléfono</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" id="Text9" placeholder=" Telefono" runat="server" />
                        </div>
                    </div>




                         <!--Input Direccion-->
                    <div class="form-group">
                        <label for="inputDireccion" class="col-lg-1 control-label">Direccion</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" id="Text7" placeholder="Direccion" runat="server" />
                        </div>
                    </div>





    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button class="btn btn-default">Cancelar</button>
        <button type="submit" class="btn btn-primary">Agregar</button>
      </div>
    </div>
  </fieldset>
</form>





</asp:Content>