using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace ang_db_con
{
    /// <CREATED BY : SANTANU DATE: 20200429>
    /// THIS WEB SERVICE IS FOR CREATING DATABASE CONNECTION USING ANGULAR JS
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    [System.Web.Script.Services.ScriptService]
    public class DbConnection : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }


        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]

        public string InsertEmployee(string empID, string firstName,
            string lastName, string address, string city,
            string pincode, string state, string country)
        {
            SqlConnection con = new SqlConnection("Data Source=10.183.9.212;Initial Catalog=test;User ID=sa; Password =sapass");
            SqlCommand cmd;
            try
            {
                con.Open();
                cmd = con.CreateCommand();
                cmd.CommandText = "INSERT INTO EmployeeDetails(ID,FirstName,LastName,Address,City,Pincode,State,Country) VALUES(@ID,@FirstName,@LastName,@Address,@City,@Pincode,@State,@COuntry)";
                cmd.Parameters.AddWithValue("@ID", empID);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@City", city);
                cmd.Parameters.AddWithValue("@Pincode", Convert.ToInt32(pincode));
                cmd.Parameters.AddWithValue("@State", state);
                cmd.Parameters.AddWithValue("@Country", country);
                cmd.ExecuteNonQuery();

                return "Record Inserted Successfully";
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }

            }
        }
    }
}
