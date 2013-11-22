using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SPRTGS.UserControls
{
    public partial class VendorOffers : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String searchFolder = Server.MapPath("/") + "Images\\Offers";
            var filters = new String[] { "jpg", "jpeg", "png", "gif", "tiff", "bmp" };
            var files = GetFilesFrom(searchFolder, filters, false);
            int count = 3;
            foreach(string str in files)
            {
                if (count > 0)
                {
                    ImageButton ib = new ImageButton();
                    ib.Width = Unit.Percentage(78);
                    ib.Height = Unit.Percentage(9);
                    ib.ImageUrl = str.Replace(searchFolder+"\\", "~/Images/Offers/");
                    upVendorOffers.ContentTemplateContainer.Controls.Add(ib);
                    count--;
                }
            }
        }
        public static String[] GetFilesFrom(String searchFolder, String[] filters, bool isRecursive)
         {
            List<String> filesFound = new List<String>();
            var searchOption = isRecursive ? SearchOption.AllDirectories : SearchOption.TopDirectoryOnly;
            foreach (var filter in filters)
            {
                filesFound.AddRange(Directory.GetFiles(searchFolder, String.Format("*.{0}", filter), searchOption));
            }
            return filesFound.ToArray();
         }
    }
}