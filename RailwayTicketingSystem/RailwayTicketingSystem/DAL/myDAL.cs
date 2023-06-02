using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace RailwayTicketingSystem.DAL
{
    public class myDAL
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["SQLDbConnection"].ConnectionString;


        public DataSet SelectItem() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Select * from Train", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }


        public int SearchItem(String f,String w,  ref DataTable DT)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("checkfare", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@FromStationName", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@ToStationName", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@FromStationName"].Value = f;
                cmd.Parameters["@ToStationName"].Value = w;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))

                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }

        //public int bookticket(String a, String b, String c, String d, String g, String h, String f, String w, ref DataTable DT)
        //{

        //    int Found = 0;
        //    DataSet ds = new DataSet();
        //    SqlConnection con = new SqlConnection(connString);
        //    con.Open();
        //    SqlCommand cmd;
        //    try
        //    {
        //        cmd = new SqlCommand("TickectBook", con); //name of your procedure
        //        cmd.CommandType = CommandType.StoredProcedure;

        //        cmd.Parameters.Add("@username", SqlDbType.VarChar, 50);
        //        cmd.Parameters.Add("@age", SqlDbType.Int);
        //        cmd.Parameters.Add("@tranname", SqlDbType.VarChar, 20);
        //        cmd.Parameters.Add("@fromstation", SqlDbType.VarChar, 50);
        //        cmd.Parameters.Add("@tostation", SqlDbType.VarChar, 50);
         
        //        cmd.Parameters.Add("@date", SqlDbType.VarChar, 20);
        //        cmd.Parameters.Add("@class", SqlDbType.VarChar, 20);
        //        cmd.Parameters.Add("@totaltickets", SqlDbType.VarChar, 20);

        //        cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

        //        // set parameter values
        //        cmd.Parameters["@username"].Value = a;
        //        cmd.Parameters["@age"].Value = b;
        //        cmd.Parameters["@tranname"].Value = c;
        //        cmd.Parameters["@date"].Value = d;
        //        cmd.Parameters["@class"].Value = g;
        //        cmd.Parameters["@totaltickets"].Value = h;
        //        cmd.Parameters["@fromstation"].Value = f;
        //        cmd.Parameters["@tostation"].Value = w;


        //        cmd.ExecuteNonQuery();

        //        // read output value 
        //        Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

        //        if (Found == 1)
        //        {
        //            //using (SqlDataAdapter da = new SqlDataAdapter(cmd))

        //            //{
        //            //    da.Fill(ds);

        //            //}

        //            //DT = ds.Tables[0];

        //        }


        //        con.Close();


        //    }
        //    catch (SqlException ex)
        //    {
        //        Console.WriteLine("SQL Error" + ex.Message.ToString());

        //    }
        //    finally
        //    {
        //        con.Close();
        //    }

        //    return Found;

        //}


        public int book(String a, String b, String c, String d, String g, String h, String f, String w, ref DataTable DT, ref int email_exits, ref int userName_exits)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("TickectBook", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@username", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@age", SqlDbType.Int);
                cmd.Parameters.Add("@tranname", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@fromstation", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@tostation", SqlDbType.VarChar, 50);

                cmd.Parameters.Add("@date", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@class", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@totaltickets", SqlDbType.VarChar, 20);

                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@username"].Value = a;
                cmd.Parameters["@age"].Value = b;
                cmd.Parameters["@tranname"].Value = c;
                cmd.Parameters["@date"].Value = d;
                cmd.Parameters["@class"].Value = g;
                cmd.Parameters["@totaltickets"].Value = h;
                cmd.Parameters["@fromstation"].Value = f;
                cmd.Parameters["@tostation"].Value = w;



                cmd.Parameters.Add("@found", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@email_Exists", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@userName_Exists", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
            



                cmd.ExecuteNonQuery();

                // read output value 
                email_exits = Convert.ToInt32(cmd.Parameters["@email_Exists"].Value); //convert to output parameter to interger format
                userName_exits = Convert.ToInt32(cmd.Parameters["@userName_Exists"].Value); //convert to output parameter to interger format

                Found = Convert.ToInt32(cmd.Parameters["@found"].Value); //convert to output parameter to interger format



                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))

                    {
                        // da.Fill(ds);

                    }

                    //  DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }
    }
}