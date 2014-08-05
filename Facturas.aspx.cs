using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class Facturas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            
            string ConnectString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string QueryString = "select * from Producto";

            SqlConnection myConnection = new SqlConnection(ConnectString);
            SqlDataAdapter myCommand = new SqlDataAdapter(QueryString, myConnection);
            DataSet ds = new DataSet();           
            myCommand.Fill(ds, "Producto");

            selectMed.DataSource = ds;
            selectMed.DataTextField = "Nombre";
            selectMed.DataValueField = "Nombre";
            selectMed.DataBind();
        }
    }
    protected void Btn_Submit_facturas(object sender, EventArgs e)
    {
        String idCliente = inputIdCliente.Value;        
        String descrip = inputDescripcion.Value;
        descrip += ":: Medicamento recetado: "+ selectMed.Value;
        String dia = selectDia.Value;
        String mes = selectMes.Value;
        String año = selectAño.Value;

        String fecha = dia + "/" + mes + "/" + año;
        String conString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconnect = new SqlConnection(conString);
        sqlconnect.Open();

        //Consigue el ID mas grande y lo incrementa para el IDfactura
        SqlCommand myCommand = new SqlCommand("SELECT MAX(idFacturas) FROM Facturas", sqlconnect);       
        int maxId = Convert.ToInt32(myCommand.ExecuteScalar());
        maxId++;

        //Insert
        string stmt = "INSERT INTO Facturas(idFacturas, IdCliente, Fecha, Descripcion) VALUES("+ maxId +","+ idCliente + ",'" + fecha + "','" + descrip + "')";
        SqlCommand insert = new SqlCommand(stmt, sqlconnect);
        insert.ExecuteNonQuery();

        sqlconnect.Close();

        //refresh
        Response.Redirect(Request.RawUrl);

    }
}