﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class Studentforgotpwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Sendbtn_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=library; Persist Security Info=True; User ID=sa; pwd=123"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT StudentId,ContactNo FROM StdRegistration Where EmailId= '" + txtemailid.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
            }

            if (ds.Tables[0].Rows.Count > 0)
            {
                MailMessage Msg = new MailMessage();
                //Sender e-mail address.
                Msg.From = new MailAddress(txtemailid.Text);
                // Recipient e-mail address.
                Msg.To.Add(txtemailid.Text);
                Msg.Subject = "Your Password Details";
                Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your UserName: " + ds.Tables[0].Rows[0]["StudentId"] + "<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["ContactNo"] + "<br/><br/>";
                Msg.IsBodyHtml = true;
                // your remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("kamal4554@gmail.com", "kamal4554kamal");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                //Msg = null;
                email.Text = "Your Password Details Sent to your mail";
                // Clear the textbox valuess
                txtemailid.Text = "";
            }
            else
            {
                email.Text = "The Email you entered not exists.";
            }
        }
        catch (Exception ex)
        {
            email.Text = ex.Message;
        }
    }
}