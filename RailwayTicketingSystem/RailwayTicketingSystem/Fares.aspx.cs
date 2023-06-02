using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RailwayTicketingSystem.DAL;

namespace RailwayTicketingSystem
{
    public partial class Fares : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Button_Click(object sender, EventArgs e)
        {

            String f = fromSelect.Text;
            String w = whereSelect.Text;
            DataTable DT = new DataTable();

            myDAL objMyDal = new myDAL();

            int found;

            found = objMyDal.SearchItem(f,w, ref DT);

            if (found > 0)
            {
                ItemGrid.DataSource = DT;
                ItemGrid.DataBind();
                message.InnerHtml = Convert.ToString("Found");
            }
            else
            {
                message.InnerHtml = Convert.ToString("Not Found");
                ItemGrid.DataSource = null;
                ItemGrid.DataBind();
            }

        }
    }
}