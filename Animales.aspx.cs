using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
using System.Configuration;
using System.Data;

public partial class Animales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            string ConnectString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string QueryString = "select * from Dueños";

            SqlConnection myConnection = new SqlConnection(ConnectString);
            SqlDataAdapter myCommand = new SqlDataAdapter(QueryString, myConnection);
            DataSet ds = new DataSet();
            myCommand.Fill(ds, "Dueños");

            inputAnimalDueñoID.DataSource = ds;
            inputAnimalDueñoID.DataTextField = "idDueño";
            inputAnimalDueñoID.DataValueField = "idDueño";
            inputAnimalDueñoID.DataBind();
        }

    }
    protected void AgregarDueño(object sender, EventArgs e)
    {
        String dId = inputDueñoId.Value;
        String dNombre = inputDueñoNombre.Value;
        String dApellido = inputDueñoApellido.Value;
        String dTelefono = inputDueñoTelefono.Value;
        String dDireccion = inputDueñoDireccion.Value;
        
        String conString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconnect = new SqlConnection(conString);
        sqlconnect.Open();

        string stmt = "INSERT INTO Dueños(idDueño, Nombre, Direccion, Telefono, Apellido) VALUES(" + dId + ",'" + dNombre + "','" + dDireccion + "','" + dTelefono + "','" + dApellido + "')";
        SqlCommand insert = new SqlCommand(stmt, sqlconnect);
        insert.ExecuteNonQuery();

        sqlconnect.Close();
        Response.Redirect(Request.RawUrl);
    }

    protected void AgregarAnimal(object sender, EventArgs e)
    {
        String aDueñoId = inputAnimalDueñoID.Value;
        String aNombre = inputAnimalNombre.Value;
        String aEspecia = inputAnimalEspecie.Value;
        String aRaza = inputAnimalRaza.Value;
        String aSexo = inputAnimalSexo.Value;

        int dia = Convert.ToInt32(inputDia.Value);
        int mes = Convert.ToInt32(inputMes.Value);
        int año = Convert.ToInt32(inputAño.Value);

        //Calcula Edad
        DateTime cumple = new DateTime(año,mes,dia);
        DateTime today = DateTime.Today;
        int age = today.Year - cumple.Year;
        if (cumple > today.AddYears(-age)) age--;
        
        //Connection
        String conString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconnect = new SqlConnection(conString);
        sqlconnect.Open();

        //Consigue el ID mas grande y lo incrementa para el IDfactura
        SqlCommand myCommand = new SqlCommand("SELECT MAX(idAnimal) FROM Animales", sqlconnect);
        int maxId = Convert.ToInt32(myCommand.ExecuteScalar());
        maxId++;

        string stmt = "INSERT INTO Animales(idAnimal, Dueño, Nombre, Especie, Raza, Sexo, Edad) VALUES("
            + maxId + "," + aDueñoId + ",'" + aNombre + "','" + aEspecia + "','" + aRaza + "','"
            + aSexo + "'," + age + ")";
        SqlCommand insert = new SqlCommand(stmt, sqlconnect);
        insert.ExecuteNonQuery();

        sqlconnect.Close();
        Response.Redirect(Request.RawUrl);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        String id = row.Cells[1].Text;
        String redirect = "Dueño.aspx?dueñoId=" + id;
        Response.Redirect(redirect, false);
    }
}