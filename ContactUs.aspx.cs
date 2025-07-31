using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Authentication
{
	public partial class ContactUs : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

			UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
		}
		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			string name = txtName.Text.Trim();
			string email = txtEmail.Text.Trim();
			string phone = txtPhone.Text.Trim();
			string message = txtMessage.Text.Trim();

			string connStr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

			using (SqlConnection conn = new SqlConnection(connStr))
			{
				string query = @"INSERT INTO ContactQueries (Name, Email, Phone, Message, IsSubscription)
                                 VALUES (@Name, @Email, @Phone, @Message, 0)";
				SqlCommand cmd = new SqlCommand(query, conn);
				cmd.Parameters.AddWithValue("@Name", name);
				cmd.Parameters.AddWithValue("@Email", email);
				cmd.Parameters.AddWithValue("@Phone", phone);
				cmd.Parameters.AddWithValue("@Message", message);

				try
				{
					conn.Open();
					cmd.ExecuteNonQuery();
					lblMessage.Text = "Thank you for contacting us!";
					lblMessage.CssClass = "text-success fw-bold";
					lblMessage.Visible = true;

					// Clear fields
					txtName.Text = txtEmail.Text = txtPhone.Text = txtMessage.Text = "";
				}
				catch (Exception ex)
				{
					lblMessage.Text = "Error: " + ex.Message;
					lblMessage.CssClass = "text-danger fw-bold";
					lblMessage.Visible = true;
				}
			}
		}

		// Newsletter Subscribe
		protected void btnSubscribe_Click(object sender, EventArgs e)
		{
			string email = txtSubscribeEmail.Text.Trim();

			if (!string.IsNullOrEmpty(email))
			{
				string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

				using (SqlConnection conn = new SqlConnection(constr))
				{
					string checkQuery = "SELECT COUNT(*) FROM ContactQueries WHERE Email = @Email AND IsSubscription = 1";
					SqlCommand checkCmd = new SqlCommand(checkQuery, conn);
					checkCmd.Parameters.AddWithValue("@Email", email);

					conn.Open();
					int exists = (int)checkCmd.ExecuteScalar();

					if (exists == 0)
					{
						string insertQuery = "INSERT INTO ContactQueries (Email, IsSubscription) VALUES (@Email, 1)";
						SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
						insertCmd.Parameters.AddWithValue("@Email", email);
						insertCmd.ExecuteNonQuery();

						lblSubscribeMessage.Text = "Thank you for subscribing!";
						lblSubscribeMessage.CssClass = "text-success fw-bold mt-2";
					}
					else
					{
						lblSubscribeMessage.Text = "You're already subscribed!";
						lblSubscribeMessage.CssClass = "text-warning fw-bold mt-2";
					}

					lblSubscribeMessage.Visible = true;
					txtSubscribeEmail.Text = "";
					conn.Close();
				}
			}
		}
	}
}