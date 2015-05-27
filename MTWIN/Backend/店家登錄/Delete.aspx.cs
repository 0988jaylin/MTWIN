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

namespace MTWIN.Backend.店家登錄
{
    public partial class Delete : System.Web.UI.Page
    {
		protected MTWIN.Models.MTWINEntities _db = new MTWIN.Models.MTWINEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected 店家登錄 item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int 登錄Id)
        {
            using (_db)
            {
                var item = _db.店家登錄.Find(登錄Id);

                if (item != null)
                {
                    _db.店家登錄.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single 店家登錄 item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public MTWIN.Models.店家登錄 GetItem([FriendlyUrlSegmentsAttribute(0)]int? 登錄Id)
        {
            if (登錄Id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.店家登錄.Where(m => m.登錄Id == 登錄Id).FirstOrDefault();
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

