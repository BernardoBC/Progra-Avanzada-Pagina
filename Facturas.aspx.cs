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
}