using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMSAcademy.proekt2
{
    public partial class ManagerView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataView dvSql = (DataView)sqlfarm.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView drvSql in dvSql)
            {
                lblfarm.Text = drvSql["Farm"].ToString();
            }

            DataView dvSql1 = (DataView)sqlDate.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView drvSql in dvSql1)
            {
                lblDate.Text = drvSql["Date"].ToString();
            }
            DataView dvSql2 = (DataView)sqlObserver.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView drvSql in dvSql2)
            {
                lblObserver.Text = drvSql["Observer"].ToString();
            }
            DataView dvSql3 = (DataView)sqlPage.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView drvSql in dvSql3)
            {
                lblPage.Text = drvSql["Page"].ToString();
            }
        }
    }
}