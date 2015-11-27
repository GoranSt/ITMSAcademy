using Microsoft.AspNet.Membership.OpenAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMSAcademy.Roles.Manager
{
    public partial class ManagerRegForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            newManager.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void newManager_CreatedUser(object sender, EventArgs e)
        {
            

            FormsAuthentication.SetAuthCookie(newManager.UserName, createPersistentCookie: false);

            string continueUrl = newManager.ContinueDestinationPageUrl;
            if (!OpenAuth.IsLocalUrl(continueUrl))
            {
                continueUrl = "~/";
            }

            //Roles.AddUserToRole(newManager.UserName, "Manager");

            System.Web.Security.Roles.AddUserToRole(newManager.UserName, "Manager");
           
      

        }

        protected void ContinueButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }

     
    }
}