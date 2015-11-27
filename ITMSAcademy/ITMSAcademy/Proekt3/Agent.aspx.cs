using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMSAcademy.Proekt3
{
    public partial class Agent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNext2_Click(object sender, EventArgs e)
        {

            SQLAdd.Insert();
            Response.Redirect("Agent.aspx");
        }

        protected void ddlBored_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}