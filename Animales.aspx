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
                            <input type="text" class="form-control" id="inputDueñoId" placeholder="Id" runat="server" />
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
            <asp:GridView ID="GridView1" class="table table-striped table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idDueño" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="idDueño" HeaderText="idDueño" ReadOnly="True" SortExpression="idDueño" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Dueños]"></asp:SqlDataSource>
        </div>
    </div>
    
    <!--Animales-->
    <div class="containter">
	    <div class="col-lg-6">
            <div class="well bs-component">
                <fieldset>
                    <legend>Agregar Animal</legend>

                   <!--Input Dueño ID-->
                    <div class="form-group">
                        <label for="inputDeuñoID" class="col-lg-2 control-label">Id dueño</label>
                        <div class="col-lg-10">
                            <select class="form-control" id="inputAnimalDueñoID" runat="server" name="selectMed">
                                
                            </select>
                        </div>
                    </div>

                    <!--Input nombre-->
                    <div class="form-group">
                        <label for="inputNombre" class="col-lg-2 control-label">Nombre</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="inputAnimalNombre" placeholder="Nombre" runat="server" />
                        </div>
                    </div>

                     <!--Input Especie-->
                    <div class="form-group">
                        <label for="inputEspecie" class="col-lg-2 control-label">Especie</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="inputAnimalEspecie" placeholder=" Especie" runat="server" />
                        </div>
                    </div>


                     <!--Input Raza-->
                    <div class="form-group">
                        <label for="inputRaza" class="col-lg-2 control-label">Raza</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" id="inputAnimalRaza" placeholder=" Raza" runat="server" />
                        </div>
                    </div>

                    <!--Input Descripcion-->
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Sexo</label>
                        <div class="col-lg-10">                            
                            <select class="form-control" id="inputAnimalSexo" runat="server">
                                <option>M</option>
                                <option>F</option>                                
                            </select> 
                        </div>
                    </div>

                    <!--Input Fecha-->
                    <div class="form-group">
                        <label for="select" class="col-lg-2 control-label" >Fecha Nacimiento dd/mm/aaaa</label>                    
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
                            <input type="text" class="form-control" id="inputAño" placeholder=" Año" runat="server" />
                        </div>
                    </div>                    

                    <!--Botones Cancel y Submit-->
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button class="btn btn-default">Cancel</button>
                            <asp:Button ID="btn_AgregarAnimal"  class="btn btn-primary" runat="server" Text="Submit" OnClick="AgregarAnimal" />                    
                        </div>
                    </div>  
                </fieldset>
                
            <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div></div>
            
        </div>
    </div>
     
    <div class="container">
        <div class="col-lg-6">
            <!--GridView-->
            <asp:GridView ID="GridView2" class="table table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idAnimal" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="idAnimal" HeaderText="idAnimal" ReadOnly="True" SortExpression="idAnimal" />
                    <asp:BoundField DataField="Dueño" HeaderText="Dueño" SortExpression="Dueño" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Especie" HeaderText="Especie" SortExpression="Especie" />
                    <asp:BoundField DataField="Raza" HeaderText="Raza" SortExpression="Raza" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Animales]"></asp:SqlDataSource>
        </div>
    </div>

    </form>  

</asp:Content>

