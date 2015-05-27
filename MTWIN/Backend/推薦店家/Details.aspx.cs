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

namespace MTWIN.Backend.推薦店家
{
    public partial class Details : System.Web.UI.Page
    {
		protected MTWIN.Models.MTWINEntities _db = new MTWIN.Models.MTWINEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single 推薦店家 item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public MTWIN.Models.推薦店家 GetItem([FriendlyUrlSegmentsAttribute(0)]int? 店家Id)
        {
            if (店家Id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.推薦店家.Where(m => m.店家Id == 店家Id).Include(m => m.推薦店家分類).FirstOrDefault();
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

