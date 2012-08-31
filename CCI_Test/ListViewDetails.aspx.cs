using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace CCI_Test
{
    public partial class ListViewDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string CreditorId;
                if (Request.QueryString["Id"] == null)
                {
                    CreditorId = "1";
                }
                else
                {
                    CreditorId = Request.QueryString[0];
                }
                string sql = "EXEC CRD_GetCreditorById " + CreditorId;

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["CCIConnectionString"].ConnectionString;

                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(sql, con);

                con.Open();
                sda.Fill(dt);
                lvCreditorDetails.DataSource = dt;
                lvCreditorDetails.DataBind();
                con.Close();
            }
        }

        protected void lvCreditorDetails_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            lvCreditorDetails.EditIndex = e.NewEditIndex;
            //lvCreditorDetails.DataSource = SomeData;
            lvCreditorDetails.DataBind();
        }
    }
}