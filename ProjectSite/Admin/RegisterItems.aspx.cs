using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_RegisterItems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateButton_Click1(object sender, EventArgs e)
    {
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(dbstring);

        string sqlStr = "SELECT itemId FROM Item WHERE itemId = @theItemID";

        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.AddWithValue("@theItemID", itemIdTextBox.Text);

        con.Open();

        object result = sqlCmd.ExecuteScalar();
        if (result == null)
        {
            itemNameTextBox.Visible = true;
            itemNameLabel.Visible = true;
            itemTypeLabel.Visible = true;
            itemTypeTextBox.Visible = true;
            descriptionLabel.Visible = true;
            descriptionTextBox.Visible = true;
            AuthorLabel.Visible = true;
            AuthorTextBox.Visible = true;
            StockLabel.Visible = true;
            StockTextBox.Visible = true;
            ImageLabel.Visible = true;
            ImageFileUpload.Visible = true;
            CreateButton.Visible = true;
            con.Close();

        }
        else {
            resultLabel.ForeColor = System.Drawing.Color.Red;
            resultLabel.Text = "Item already exists!";
        }
       


    }
    protected void CreateButton_Click(object sender, EventArgs e)
    {
        string dbstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(dbstring);

        string sqlStr = "SELECT itemId FROM Item WHERE itemId = @theItemID";

        SqlCommand sqlCmd = new SqlCommand(sqlStr, con);
        sqlCmd.Parameters.AddWithValue("@theItemID", itemIdTextBox.Text);

        con.Open();

        object result = sqlCmd.ExecuteScalar();
        if (result == null)
        {
            string sqlStr2 = "INSERT INTO Item (ItemId,Name,Type,Description,Author,Stock,image) VALUES (@theItemId, @theName, @theType, @theDescription ,@theAuthor, @theStock, @theImage)";
            SqlCommand sqlCmd2 = new SqlCommand(sqlStr2, con);

            int itemId = Convert.ToInt32(itemIdTextBox.Text);
            

            int stock;
            string stockStr = StockTextBox.Text;
            try
            {
                stock = Convert.ToInt32(stockStr);
            }
            catch (FormatException ex)
            {
                stock = 0;
            }
            string imagePath = "~/Images/brands/NoImage.gif";

            if (ImageFileUpload.HasFile)
            {
                //Check if the file has a valid extension
                string extension = System.IO.Path.GetExtension(ImageFileUpload.PostedFile.FileName);

                if (extension == ".png" || extension == ".gif" || extension == ".jpg" || extension == ".bmp")
                {
                    //Save the file in the crooms folder on the server. I want the filename to be the name of the room,
                    //but without any dots and dashes. E.g. an image for a room VBI-6.01, should be saved as VBI601.extension.

                    //Remove any . and - from the room name
                    string itemName = itemNameTextBox.Text.Replace(".", "");
                    itemName = itemName.Replace("-", "");
                    itemName = itemName.Replace(" ", "");
                    //Now save the file
                    ImageFileUpload.SaveAs(Server.MapPath("~/images/brands/" + itemName + extension));

                    //Now set the imagePath that we will store in the DB to the path of the newly saved file
                    imagePath = "~/images/brands/" + itemName + extension;
                }
            }

            sqlCmd2.Parameters.AddWithValue("@theItemId", itemIdTextBox.Text);
            sqlCmd2.Parameters.AddWithValue("@theName", itemNameTextBox.Text);
            sqlCmd2.Parameters.AddWithValue("@theType", itemTypeTextBox.Text);
            sqlCmd2.Parameters.AddWithValue("@theDescription", descriptionTextBox.Text);
            sqlCmd2.Parameters.AddWithValue("@theAuthor", AuthorTextBox.Text);
            sqlCmd2.Parameters.AddWithValue("@theStock", StockTextBox.Text);
            sqlCmd2.Parameters.AddWithValue("@theImage", imagePath);

            sqlCmd2.ExecuteNonQuery();

            con.Close();

            resultLabel.ForeColor = System.Drawing.Color.Black;
            resultLabel.Text = "Item was created";
        }
        else
        {
            resultLabel.ForeColor = System.Drawing.Color.Red;
            resultLabel.Text = "Item already exists!";


        }



 }

}