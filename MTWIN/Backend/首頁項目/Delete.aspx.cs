using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using MTWIN.Models;

namespace MTWIN.Backend.首頁項目
{
    public partial class Delete : System.Web.UI.Page
    {
		protected MTWIN.Models.MTWINEntities _db = new MTWIN.Models.MTWINEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected 首頁項目 item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int 首頁項目Id)
        {
            using (_db)
            {
                var item = _db.首頁項目.Find(首頁項目Id);

                if (item != null)
                {
                    _db.首頁項目.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single 首頁項目 item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public MTWIN.Models.首頁項目 GetItem([FriendlyUrlSegmentsAttribute(0)]int? 首頁項目Id)
        {
            if (首頁項目Id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.首頁項目.Where(m => m.首頁項目Id == 首頁項目Id).Include(m => m.首頁項目分類).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

