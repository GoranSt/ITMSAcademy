using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMSAcademy.proekt8
{
    public partial class strana8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

   
 
        protected void zacuvaj_Click1(object sender, EventArgs e)
        {

            if (rb.SelectedItem != null)
            {
                string zapisi = rb.SelectedItem.Text;
            }
            if (rb1.SelectedItem != null)
            {
                string zapisi = rb1.SelectedItem.Text;
            }
            if (rb2.SelectedItem != null)

            {
                string zapisi = rb2.SelectedItem.Text;
            } 
            
            if (rb3.SelectedItem != null)
            {
                string zapisi = rb3.SelectedItem.Text;
            } 
            
            if (rb4.SelectedItem != null)
            {
                string zapisi = rb4.SelectedItem.Text;
            }

            if (rb5.SelectedItem != null)
            {
                string zapisi = rb5.SelectedItem.Text;
            }

            if (rb6.SelectedItem != null)
            {
                string zapisi = rb6.SelectedItem.Text;
            }

            if (rb7.SelectedItem != null)
            {
                string zapisi = rb7.SelectedItem.Text;
            }
            if (rb8.SelectedItem != null)
            {
                string zapisi = rb8.SelectedItem.Text;
            }
            
            if (rb9.SelectedItem != null)
            {
                string zapisi = rb9.SelectedItem.Text;
            }
            
            if (rb10.SelectedItem != null)
            {
                string zapisi = rb10.SelectedItem.Text;
            } 
            
            if (rb11.SelectedItem != null)
            {
                string zapisi = rb11.SelectedItem.Text;
            }


            if (rb12.SelectedItem != null)
            {
                string zapisi = rb12.SelectedItem.Text;
            } 
            
            if (rb13.SelectedItem != null)
            {
                string zapisi = rb13.SelectedItem.Text;
            }
            
            if (rb14.SelectedItem != null)
            {
                string zapisi = rb14.SelectedItem.Text;
            }
            if (rb15.SelectedItem != null)
            {
                string zapisi = rb15.SelectedItem.Text;
            }

            sqladd.Insert();
            Response.Redirect("strana8.aspx");
        }

      

     
    }
}