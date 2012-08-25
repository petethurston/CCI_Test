using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CCI_Test
{
    public partial class CreditorDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CreditorId;
            if (Request.QueryString["Id"] == null) {
                CreditorId = "1";
            } else {
                CreditorId = Request.QueryString["Id"];
            };

            //receive inputs and set up sql command to perform search
            string sql = "EXEC CCI.dbo.CRD_GetCreditorById " + CreditorId;
            //make connection and then bind results back to the grid
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["CCIConnectionString"].ConnectionString;
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            con.Open();
            sda.Fill(dt);
            FormView1.DataSource = dt;
            FormView1.DataBind();
            con.Close();
        }
        protected void EditButton_Click(object sender, EventArgs e)
        {
            FormView1.ChangeMode(FormViewMode.Edit);
            FormView1.DataBind();
        }
        protected void UpdateCancelButton_Click(object sender, EventArgs e)
        {
            FormView1.ChangeMode(FormViewMode.ReadOnly);
            FormView1.DataBind();
        }
    }
}