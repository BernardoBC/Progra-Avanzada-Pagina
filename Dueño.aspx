<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dueño.aspx.cs" Inherits="Dueño" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <form id="form1" runat="server">
    <div class="containter">
        <h1 id="nombre" runat="server"></h1>
        <p id="telefono" runat="server">
        </p>
        <p id="direccion" runat="server">
        </p>
        <div class="containter">  
            <legend>Animales</legend>      
            <asp:GridView ID="GridView1" class="table table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idAnimal" DataSourceID="SqlDataSource1">
                <Columns>---sdfksadf
                    <asp:BoundField DataField="idAnimal" HeaderText="idAnimal" ReadOnly="True" SortExpression="idAnimal" />
                    <asp:BoundField DataField="Dueño" HeaderText="Dueño" SortExpression="Dueño" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Especie" HeaderText="Especie" SortExpression="Especie" />
                    <asp:BoundField DataField="Raza" HeaderText="Raza" SortExpression="Raza" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Animales] WHERE ([Dueño] = @Dueño)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Dueño" QueryStringField="dueñoId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>                  
        </div> 
        <div class="containter">  
            <legend>Historial Facturas</legend>                         
            <asp:GridView ID="GridView2" class="table table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idFacturas" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="idFacturas" HeaderText="idFacturas" ReadOnly="True" SortExpression="idFacturas" />
                    <asp:BoundField DataField="IdCliente" HeaderText="IdCliente" SortExpression="IdCliente" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Facturas] WHERE ([IdCliente] = @IdCliente)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="IdCliente" QueryStringField="dueñoId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>        
    </div>
    </form>
</asp:Content>

