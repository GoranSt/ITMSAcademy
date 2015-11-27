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
    public class WaterPoint
    {
        public int ItemNumber { get; set; }
        public int Type { get; set; }
        public int TypeLength { get; set; }
        public int Cleanliness { get; set; }
        public bool AreWaterPointsFunctioning { get; set; }
        public int WaterFlow { get; set; }
    }

    public partial class Agent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cldDate.SelectedDate = DateTime.UtcNow;
                cldDate2.SelectedDate = DateTime.UtcNow;

                List<WaterPoint> waterPoints = new List<WaterPoint>();

                for (int i = 1; i <= 5; i++)
                {
                    waterPoints.Add(new WaterPoint()
                    {
                        ItemNumber = i,
                        Type = 1,
                        TypeLength = 0,
                        Cleanliness = 1,
                        AreWaterPointsFunctioning = false,
                        WaterFlow = 1
                    });
                }

                Repeater1.DataSource = waterPoints;
                Repeater1.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int finalResult = -1;

            String strConnString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "AddResourceCheckList";
            cmd.Parameters.Add("@LooseHousedFarmID", SqlDbType.VarChar).Value = txtFarmdID.Text;
            cmd.Parameters.Add("@LooseHousedDate", SqlDbType.DateTime).Value = cldDate.SelectedDate;
            cmd.Parameters.Add("@LooseHousedAssessor", SqlDbType.VarChar).Value = txtAssessor.Text;
            cmd.Parameters.Add("@LooseHousedPenNo", SqlDbType.Int).Value = Convert.ToInt32(txtPenNo.Text);
            cmd.Parameters.Add("@LooseHousedNrOfAnimals", SqlDbType.Int).Value = Convert.ToInt32(txtNrOfAnimals.Text);
            cmd.Parameters.Add("@LooseHousedNrOfWaterPointsPerPen", SqlDbType.Int).Value 
                = Convert.ToInt32(txtNrOfWaterPointsPerPen.Text);
            cmd.Parameters.Add("@LooseHousedNrOfAnimalsWaterPoints", SqlDbType.Int).Value 
                = Convert.ToInt32(txtNrOfAnimalsWaterPoints.Text);
            cmd.Parameters.Add("@DairyCattleFarmID", SqlDbType.VarChar).Value = txtFarmID2.Text;
            cmd.Parameters.Add("@DairyCattleDate", SqlDbType.DateTime).Value = cldDate2.SelectedDate;
            cmd.Parameters.Add("@DairyCattleAssessor", SqlDbType.VarChar).Value = txtAssessor2.Text;
            cmd.Parameters.Add("@DairyCattleNrOfAnimals", SqlDbType.Int).Value = Convert.ToInt32(txtNrOfAnimals2.Text);
            cmd.Parameters.Add("@DairyCattleAvgNrOfAnimals", SqlDbType.Int).Value = Convert.ToInt32(txtAvgNrOfAnimals2.Text);
            cmd.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;

            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                string looseHousedId = cmd.Parameters["@Id"].Value.ToString();

                if (!string.IsNullOrEmpty(looseHousedId))
                {
                    int id = Convert.ToInt32(looseHousedId);

                    string waterPointCmdString = string.Empty;

                    foreach (RepeaterItem item in Repeater1.Items)
                    {
                        int type = Convert.ToInt32(((RadioButtonList)item.FindControl("Type")).SelectedValue);

                        int? typeLength = null;
                        if(type == 1 || type == 2)
                        {
                            string typeLengthText = ((TextBox)item.FindControl("TypeLength")).Text;

                            if(!string.IsNullOrEmpty(typeLengthText))
                                typeLength = Convert.ToInt32(typeLengthText);
                        }

                        int cleanliness = Convert.ToInt32(((RadioButtonList)item.FindControl("Cleanliness")).SelectedValue);

                        bool areWaterPointsFunctioning = Convert.ToBoolean(((RadioButtonList)item.FindControl("AreWaterPointsFunctioning")).SelectedValue);

                        int waterFlow = Convert.ToInt32(((RadioButtonList)item.FindControl("WaterFlow")).SelectedValue);

                        waterPointCmdString += @"INSERT INTO WaterPoints(ResourceCheckListId, Dedication, Type, TypeLength, Cleanliness, AreWaterPointsFunctioning, WaterFlow) VALUES ('"
                            + @id + "','0','" + @type + "','" + @typeLength
                            + "','" + @cleanliness + "','" + @areWaterPointsFunctioning
                            + "','" + @waterFlow + "') ";
                    }

                    int? typeLength2 = null;
                    string typeLengthText2 = txtDiameter.Text;

                    if (!string.IsNullOrEmpty(typeLengthText2))
                        typeLength2 = Convert.ToInt32(typeLengthText2);

                    waterPointCmdString += @"INSERT INTO WaterPoints(ResourceCheckListId, Dedication, Type, TypeLength, Cleanliness, AreWaterPointsFunctioning, WaterFlow) VALUES ('"
                            + @id + "','1','" + Convert.ToInt32(rdlTypeOfWaterPoints.SelectedValue)
                            + "','" + typeLength2
                            + "','" + Convert.ToInt32(Cleanliness2.SelectedValue)
                            + "','" + Convert.ToBoolean(AreWaterPointsFunctioning2.SelectedValue)
                            + "','" + Convert.ToInt32(WaterFlow2.SelectedValue) + "') ";

                    SqlCommand cmdWaterPoint = new SqlCommand(waterPointCmdString, con);

                    finalResult = cmdWaterPoint.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();

                if (finalResult != -1)
                {
                    Response.Redirect("/Proekt7/SuccessCreatingResource.aspx");
                }
                else
                {
                    Response.Redirect("/Proekt7/ErrorCreatingResource.aspx");
                }
            }
        }
    }
}