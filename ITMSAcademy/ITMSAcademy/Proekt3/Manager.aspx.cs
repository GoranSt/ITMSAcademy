using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMSAcademy.Proekt3
{
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataView DataFarm = (DataView)SQLName.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView DataFarmSQL in DataFarm)
            {
                lblfarm.Text = DataFarmSQL["Farm"].ToString();
            }
            DataView DataDate = (DataView)SQLDate.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView DataFarmSQL in DataDate)
            {
                lblDate.Text = DataFarmSQL["Date"].ToString();
            }
            DataView DataAssessor = (DataView)SQLAssessor.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView DataFarmSQL in DataAssessor)
            {
                lblAssessor.Text = DataFarmSQL["Assessor"].ToString();
            }

            DataView DataPage = (DataView)SQLPage.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView DataFarmSQL in DataPage)
            {
                lblPage.Text = DataFarmSQL["Page"].ToString();
            }
          

            

        }
    }
}