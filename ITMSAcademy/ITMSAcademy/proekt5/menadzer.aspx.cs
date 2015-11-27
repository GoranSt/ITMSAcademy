using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMSAcademy.proekt5
{
    public partial class menadzer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataView dvSql = (DataView)sqlmenadzer.Select(DataSourceSelectArguments.Empty);
            //foreach (DataRowView drvSql in dvSql)
            //{
            //    lblfarm.Text = drvSql["Farmer"].ToString();
            //}
            //DataView dvSql1 = (DataView)sqlmenadzer.Select(DataSourceSelectArguments.Empty);
            //foreach (DataRowView drvSql in dvSql1)
            //{
            //    lbldate.Text = drvSql["Date"].ToString();
            //}
            //DataView dvSql2 = (DataView)sqlmenadzer.Select(DataSourceSelectArguments.Empty);
            //foreach (DataRowView drvSql in dvSql2)
            //{
            //    lblobs.Text = drvSql["Observer"].ToString();
            //}

        }

        protected void sqlfarm_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}