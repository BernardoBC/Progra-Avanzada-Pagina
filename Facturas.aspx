﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Facturas.aspx.cs" Inherits="Facturas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">

    <form id="form1" runat="server">

    <div class="containter">
	<div class="col-lg-6">
            <div class="well bs-component">
                <fieldset>
                  <legend>Crear Factura</legend>

                    
                    <div class="form-group">
                        <label for="inputAnimalID" class="col-lg-2 control-label">Nombre Dueño</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" id="nombreDueño" placeholder="Nombre Dueño" />
                    </div>
                   </div>

                  <div class="form-group">
                    <label for="inputAnimalID" class="col-lg-2 control-label">Animal ID</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputAnimalID" placeholder="Animal ID" />
                    </div>
                  </div>
                    
                  <div class="form-group">
                    <label for="select" class="col-lg-2 control-label">Fecha dd/mm/aaaa</label>                    
                    <div class="col-md-3">
                        <select class="form-control" id="selectDia">
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
                        <select class="form-control" id="selectMes">
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
                        <select class="form-control" id="selectAño">
                            <option>2010</option>
                            <option>2011</option>
                            <option>2012</option>
                            <option>2013</option>
                            <option>2014</option>
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
              <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div>
                
            </div>
          </div>
    </div>
    <div class="container">
        <div class="col-lg-6">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idFacturas" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="idFacturas" HeaderText="idFacturas" ReadOnly="True" SortExpression="idFacturas" />
                    <asp:BoundField DataField="NombreCliente" HeaderText="NombreCliente" SortExpression="NombreCliente" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Facturas]"></asp:SqlDataSource>

        </div><!--col-lg-6-->
    </div><!--container-->
    </form>




</asp:Content>

