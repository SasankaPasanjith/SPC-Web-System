using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPC_webSystem
{
    public partial class StockDetailsAdmin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        static int global_stock, global_current_stock, global_issued_stock;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //add button
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (checkMedicineExist())
            {
                Response.Write("<script>alert('This Medicine is already exist in database');</script>");
            }
            else
            {
                addNewMedicine();
            }
        }

        //update button
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            updateMedicineByID();
        }

        //delete button
        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            deleteMedByID();
        }

        //go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getMedById();
        }
        
        //user defined functions

        void deleteMedByID()
        {
            if (checkMedicineExist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from stock_tbl WHERE medicine_id='" + TextBox1.Text.Trim() + "';", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Medicine successfully deleted ');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Medicine ID');</script>");
            }
        }

        void updateMedicineByID()
        {
            if (checkMedicineExist())
            try
            {
                    int stock = Convert.ToInt32(TextBox5.Text.Trim());
                    int current_stock = Convert.ToInt32(TextBox6.Text.Trim());

                    if (global_stock == stock)
                    {

                    }
                    else
                    {
                        if (stock < global_issued_stock)
                        {
                            Response.Write("<script>alert( Stock can't be less than the Issued stocks');</script>");
                            return;
                        }
                        else
                        {
                            current_stock = stock - global_issued_stock;
                            TextBox6.Text = "" + current_stock;
                        }
                    }


                    string filepath = "~/MedicineInventory/medicineLogo.png";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("MedicineInventory/" + filename));
                        filepath = "~/MedicineInventory/" + filename;
                    }

                    SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE stock_tbl SET name=@name, expiry_date=@expiry_date," +
                    " details=@details, stock=@stock, current_stock=@current_stock, medicine_img=@medicine_img  WHERE medicine_id='" + TextBox1.Text.Trim() + "'  ", con);

                cmd.Parameters.AddWithValue("@name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@expiry_date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@details", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@stock", stock.ToString());
                cmd.Parameters.AddWithValue("@current_stock", current_stock.ToString());
                cmd.Parameters.AddWithValue("@medicine_img",filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Medicine updated successfully');</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            else
            {
                Response.Write("<script>alert('Invalid Medicine ID');</script>");
            }
        }

        void getMedById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM stock_tbl WHERE medicine_id='"+TextBox1.Text.Trim()+ "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                   TextBox2.Text = dt.Rows[0]["name"].ToString();
                   TextBox3.Text = dt.Rows[0]["expiry_date"].ToString();
                   TextBox4.Text = dt.Rows[0]["details"].ToString(); 
                   TextBox5.Text = dt.Rows[0]["stock"].ToString();
                   TextBox6.Text = dt.Rows[0]["current_stock"].ToString();
                   TextBox7.Text = "" + (Convert.ToInt32(dt.Rows[0]["stock"].ToString()) - Convert.ToInt32(dt.Rows[0]["current_stock"].ToString()));

                global_stock = Convert.ToInt32(dt.Rows[0]["stock"].ToString().Trim());
                global_current_stock = Convert.ToInt32(dt.Rows[0]["current_stock"].ToString().Trim());
                global_issued_stock = global_stock - global_current_stock;
                global_filepath = dt.Rows[0]["medicine_img"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid medicine ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkMedicineExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM stock_tbl where medicine_id='" + TextBox1.Text.Trim() + "' ;", con);
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

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


            return false;
        }
        void addNewMedicine()
        {
            try
            {
                string filepath = "~/MedicineInventory/medicineLogo.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("MedicineInventory/" + filename));
                filepath = "~/MedicineInventory/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO stock_tbl (medicine_id,name,expiry_date,details,stock,current_stock,medicine_img) values(@medicine_id,@name,@expiry_date,@details,@stock,@current_stock,@medicine_img)", con);

                cmd.Parameters.AddWithValue("@medicine_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@expiry_date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@details", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@stock", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@current_stock", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@medicine_img", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Medicine added successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}