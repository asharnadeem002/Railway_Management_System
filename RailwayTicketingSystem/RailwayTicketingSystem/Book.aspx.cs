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
    public partial class Book : System.Web.UI.Page
    {
        private object selectdate;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Button_Click_Book(object sender, EventArgs e)
        {
            String a = bUsername.Text;
            String b = Age.Text;
            String c = TrainName.Text;
            String d = sel.Text;
            String g = classoftrain.Text;
            String h = count.Text;
            String f = fromSelect.Text;
            String w = whereSelect.Text;
            int email_exists = 0;
            int userName_exists = 0;
            DataTable DT = new DataTable();

            myDAL objMyDal = new myDAL();

            int found;

            found = objMyDal.book(a,b,c,d,g,h,f, w, ref DT, ref email_exists, ref userName_exists);

           

        }
    }
}


