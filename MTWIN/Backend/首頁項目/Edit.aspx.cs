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
    public partial class Edit : System.Web.UI.Page
    {
		protected MTWIN.Models.MTWINEntities _db = new MTWIN.Models.MTWINEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected 首頁項目 item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  首頁項目Id)
        {
            using (_db)
            {
                var item = _db.首頁項目.Find(首頁項目Id);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", 首頁項目Id));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single 首頁項目 item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public MTWIN.Models.首頁項目 GetItem([FriendlyUrlSegmentsAttribute(0)]int? 首頁項目Id)
        {
            if (首頁項目Id == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.首頁項目.Find(首頁項目Id);
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
