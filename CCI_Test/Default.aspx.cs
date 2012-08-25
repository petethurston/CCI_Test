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
    public partial class Default : System.Web.UI.Page
    {
        #region SeedHomePage
        protected void Page_Load(object sender, EventArgs e)
        {
            //display all creditor contacts from the db for the results section
            string sql = "EXEC CCI.dbo.CRD_SearchCreditors 0, '', ''";

            //TODO: move data access into class
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["CCIConnectionString"].ConnectionString;
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            con.Open();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
        #endregion

        #region SelectFromGrid
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string url = "CreditorDetails.aspx?Id=" + GridView1.SelectedValue.ToString();
            Response.Redirect(url);
        }
        #endregion

        #region Searching
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //receive inputs and set up sql command to perform search
            string SubCodeEntry = txtSearchItem1.Text;
            string CreditorNameEntry = txtSearchItem2.Text;
            string CreditorTypeEntry = ddlType.SelectedValue;
            string sql = "EXEC CCI.dbo.CRD_SearchCreditors " + CreditorTypeEntry + ", '" + SubCodeEntry + "', '" + CreditorNameEntry + "'";
            //make connection and then bind results back to the grid
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["CCIConnectionString"].ConnectionString;
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            con.Open();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
        #endregion

        #region GridViewSortingAndPaging
        private string GridViewSortDirection
        {
            get { return ViewState["SortDirection"] as string ?? "DESC"; }
            set { ViewState["SortDirection"] = value; }
        }

        private string GetSortDirection()
        {
            switch (GridViewSortDirection)
            {
                case "ASC":
                    GridViewSortDirection = "DESC";
                    break;

                case "DESC":
                    GridViewSortDirection = "ASC";
                    break;
            }

            return GridViewSortDirection;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            DataTable dataTable = GridView1.DataSource as DataTable;

            if (dataTable != null)
            {
                int pageIndex = GridView1.PageIndex;

                string sortDirection = GetSortDirection();

                DataView dataView = new DataView(dataTable);
                dataView.Sort = e.SortExpression + " " + sortDirection;

                GridView1.DataSource = dataView;
                GridView1.DataBind();
                GridView1.PageIndex = pageIndex;
            }
        }
        #endregion
    }
}
