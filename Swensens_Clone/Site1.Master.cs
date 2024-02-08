using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Swensens_Clone
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty((string)Session["role"]))
                {
                LinkButton1.Visible = true; // sign up link button
                LinkButton2.Visible = true; // login link button

                LinkButton13.Visible = false; // hello user link button
                LinkButton14.Visible = false; // logout link button
                }

                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // sign up link button
                    LinkButton2.Visible = false; // login link button

                    LinkButton13.Visible = true; // hello user link button
                    LinkButton13.Text = "ยินดีต้อนรับ" + Session["name"].ToString();
                    LinkButton14.Visible = true; // logout link button
                }
            }
            catch (Exception ex)
            {
            
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignUp.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        //logout button
        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Session["email"] = "";
            Session["name"] = "";
            Session["surname"] = "";
            Session["role"] = "";

            LinkButton1.Visible = true; // sign up link button
            LinkButton2.Visible = true; // login link button

            LinkButton13.Visible = false; // hello user link button
            LinkButton14.Visible = false; // logout link button
        }
    }
}