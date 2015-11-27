using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMSAcademy.proekt5
{
    public partial class strana5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void zacuvaj_Click(object sender, EventArgs e)
        {


            if (rb.SelectedItem != null)
            {
                string zapisi = rb.SelectedItem.Text;
            }
            sqladd.Insert();
            Response.Redirect("strana5.aspx");
        }

        
   
    }
}