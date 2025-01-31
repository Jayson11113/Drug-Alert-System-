using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace DrugAbuseAlertSystem
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Example for offline loading
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

            // MySQL connection block
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                conn.Open();  // Open the connection inside the using block

                MySqlCommand cmd = new MySqlCommand("SELECT COUNT(*) AS Count, Type FROM Alerts GROUP BY Type", conn);

                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        // This outputs JavaScript to the browser's console.
                        Response.Write($"<script>console.log('Type: {reader["Type"]}, Count: {reader["Count"]}');</script>");
                    }
                }
            }
        }
    }
}