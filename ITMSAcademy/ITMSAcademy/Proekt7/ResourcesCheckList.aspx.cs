using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMSAcademy.Proekt7
{
    public partial class ResourcesCheckList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvResourceCheckList_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlResourceCheckListDetails.Visible = false;
            DataSet ds = new DataSet();
            String strConnString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                SqlDataAdapter da = new SqlDataAdapter();

                con.Open();
                SqlCommand cmd = new SqlCommand("ResourceCheckListDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Id", SqlDbType.Int).Value = Convert.ToInt32(gvResourceCheckList.SelectedValue);

                da.SelectCommand = cmd;
                da.Fill(ds);

                if(ds.Tables.Count > 0)
                {
                    pnlResourceCheckListDetails.Visible = true;
                    pnlResourceCheckListDetails.Focus();

                    DataTable table1 = ds.Tables[0];
                    if(table1 != null)
                    {
                        DataRow row1 = table1.Rows[0];

                        if(row1 != null && table1.Rows.Count > 0)
                        {
                            lblLooseHousedFarmID.Text = row1["LooseHousedFarmID"].ToString();
                            lblLooseHousedDate.Text = Convert.ToDateTime(row1["LooseHousedDate"].ToString()).ToLongDateString();
                            lblLooseHousedAssessor.Text = row1["LooseHousedAssessor"].ToString();
                            lblLooseHousedPenNo.Text = row1["LooseHousedPenNo"].ToString();
                            lblLooseHousedNrOfAnimals.Text = row1["LooseHousedNrOfAnimals"].ToString();
                            lblLooseHousedNrOfWaterPointsPerPen.Text = row1["LooseHousedNrOfWaterPointsPerPen"].ToString();
                            lblLooseHousedNrOfAnimalsWaterPoints.Text = row1["LooseHousedNrOfAnimalsWaterPoints"].ToString();

                            lblDairyCattleFarmID.Text = row1["DairyCattleFarmID"].ToString();
                            lblDairyCattleDate.Text = Convert.ToDateTime(row1["DairyCattleDate"].ToString()).ToLongDateString();
                            lblDairyCattleAssessor.Text = row1["DairyCattleAssessor"].ToString();
                            lblDairyCattleNrOfAnimals.Text = row1["DairyCattleNrOfAnimals"].ToString();
                            lblDairyCattleAvgNrOfAnimals.Text = row1["DairyCattleAvgNrOfAnimals"].ToString();
                        }
                    }

                    DataTable table2 = ds.Tables[1];
                    if (table2 != null && table2.Rows.Count > 0)
                    {
                        List<WaterPoint> waterPoints = new List<WaterPoint>();

                        foreach(DataRow rows2 in table2.Rows)
                        if (rows2 != null)
                        {
                            waterPoints.Add(new WaterPoint()
                            {
                                ItemNumber = Convert.ToInt32(rows2["ItemNumber"].ToString()),
                                Type = Convert.ToInt32(rows2["Type"].ToString()),
                                TypeLength = Convert.ToInt32(rows2["TypeLength"].ToString()),
                                Cleanliness = Convert.ToInt32(rows2["Cleanliness"].ToString()),
                                AreWaterPointsFunctioning = Convert.ToBoolean(rows2["AreWaterPointsFunctioning"].ToString()),
                                WaterFlow = Convert.ToInt32(rows2["WaterFlow"].ToString()),
                            });
                        }

                        Repeater1.DataSource = waterPoints;
                        Repeater1.DataBind();

                        int counter = 0;
                        foreach (RepeaterItem item in Repeater1.Items)
                        {
                            int type = waterPoints[counter].Type;

                            ((RadioButtonList)item.FindControl("Type")).SelectedValue 
                                = type.ToString();

                            if (type == 1 || type == 2)
                            {
                                ((Label)item.FindControl("TypeLength")).Text
                                    = "length " + waterPoints[counter].TypeLength.ToString() + " cm";
                            }

                            ((RadioButtonList)item.FindControl("Cleanliness")).SelectedValue 
                                = waterPoints[counter].Cleanliness.ToString();

                            ((RadioButtonList)item.FindControl("AreWaterPointsFunctioning")).SelectedValue 
                                = waterPoints[counter].AreWaterPointsFunctioning.ToString().ToLower();

                            ((RadioButtonList)item.FindControl("WaterFlow")).SelectedValue 
                                = waterPoints[counter].WaterFlow.ToString();
                            
                            counter++;
                        }
                    }

                    DataTable table3 = ds.Tables[2];
                    if (table3 != null)
                    {
                        DataRow row3 = table3.Rows[0];

                        if (row3 != null)
                        {
                            rdlDairyCattleTypeOfWaterPoints.SelectedValue = row3["Type"].ToString();
                            lblDairyCattleDiameter.Text = row3["TypeLength"].ToString();
                            rdlDairyCattleWaterPointsClean.SelectedValue = row3["Cleanliness"].ToString();
                            rdlDairyCattleAreWaterPointsFunctioning.SelectedValue = row3["AreWaterPointsFunctioning"].ToString().ToLower();
                            rdlDairyCattleWaterFlow.SelectedValue = row3["WaterFlow"].ToString();
                        }
                    }
                }

                con.Close();
                con.Dispose();
            }
        }
    }
}