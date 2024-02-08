using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Swensens_Clone
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        private object btnradio1;
        private object btnradio2;
        private object btnradio3;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists()) 
            {
                Response.Write("<script>alert('Member Already Exist, Try other Email');</script>");
            }
            else
            {
                signNewMember();
            }
            

        }

        // user defined method

        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE email='"+TextBox4.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable(); 
                da.Fill(dt);

                if (dt.Rows.Count >= 1) 
                { 
                    return true;
                }
                else 
                {
                    return false;
                }


                con.Close();
                Response.Write("<script>alert('Sign up successful');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

            
        }


        // user defined method

        void signNewMember()
        {
            //Response.Write("<script>alert('Testing');<script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl" +
                    "(name,surname,contact_no,email,password,dob,gender) values" +

                    "(@name,@surname,@contact_no,@email,@password,@dob,@gender)", con);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@surname", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox6.Text.Trim());

                string gender = string.Empty;

                if (btnradio1 != null && ((RadioButton)btnradio1).Checked)
                {
                    gender = "Male";
                }
                else if (btnradio2 != null && ((RadioButton)btnradio2).Checked)
                {
                    gender = "Female";
                }
                else if (btnradio3 != null && ((RadioButton)btnradio3).Checked)
                {
                    gender = "Not specified";
                }

                cmd.Parameters.AddWithValue("@gender", gender);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign up successful');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        
    }
}