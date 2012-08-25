using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CCI_Test
{
    public partial class CCI : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strName = HttpContext.Current.User.Identity.Name.ToString();
            username.Text = strName;
        }
    }
}
