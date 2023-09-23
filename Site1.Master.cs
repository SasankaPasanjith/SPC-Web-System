using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPC_webSystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    LinkButton1.Visible = true; 
                    LinkButton4.Visible = true; 
                    LinkButton6.Visible = true;

                    LinkButton2.Visible = false;
                    LinkButton3.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton11.Visible = false;
                    LinkButton12.Visible = false;

                }
                else if (Session["role"].Equals("supplier"))
                {
                    LinkButton1.Visible = false; 
                    LinkButton4.Visible = false; 
                    LinkButton6.Visible = true;

                    LinkButton2.Visible = true;
                    LinkButton3.Visible = true;
                    LinkButton3.Text = "Hello " +Session["username"].ToString();
                    LinkButton5.Visible = true;
                    LinkButton7.Visible = true;
                    LinkButton11.Visible = false;
                    LinkButton12.Visible = false;

                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;
                    LinkButton4.Visible = false;
                    LinkButton6.Visible = false;

                    LinkButton2.Visible = false;
                    LinkButton3.Visible = true;
                    LinkButton3.Text = "Hello Admin";
                    LinkButton5.Visible = false;
                    LinkButton7.Visible = true;
                    LinkButton11.Visible = true;
                    LinkButton12.Visible = true;

                }

            }
            catch (Exception ex)
            {
             
            }
            
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockDetailsAdmin.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminTender.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("signupSupplier.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userlogin.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("TenderSubmission.aspx");
        }

        //Logout button
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["name"] = "";
            Session["role"] = "";
            Session["account_status"] = "";

            LinkButton1.Visible = true;
            LinkButton4.Visible = true;
            LinkButton6.Visible = true;

            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton5.Visible = false;
            LinkButton7.Visible = false;
            LinkButton11.Visible = false;
            LinkButton12.Visible = false;

            Response.Redirect("Home.aspx");
        }
    }
}