using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;

namespace ITMSAcademy.Roles.Agent
{
    public partial class AgentRegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            newAgent.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

      

        protected void newAgent_CreatedUser(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(newAgent.UserName, createPersistentCookie: false);

            string continueUrl = newAgent.ContinueDestinationPageUrl;
            if (!OpenAuth.IsLocalUrl(continueUrl))
            {
                continueUrl = "~/";
            }
            //Roles.AddUserToRole(newAgent.UserName, "Agent");

            System.Web.Security.Roles.AddUserToRole(newAgent.UserName, "Agent");

            //Response.Redirect(continueUrl);
        }

        protected void ContinueButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }
    }
}