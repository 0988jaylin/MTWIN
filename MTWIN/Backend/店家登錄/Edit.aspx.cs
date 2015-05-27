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
    public partial class Edit : BasePage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected 店家登錄 item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  登錄Id)
        {
            using (_db)
            {
                var item = _db.店家登錄.Find(登錄Id);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", 登錄Id));
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

        // This is the Select method to selects a single 店家登錄 item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public MTWIN.Models.店家登錄 GetItem([FriendlyUrlSegmentsAttribute(0)]int? 登錄Id)
        {
            if (登錄Id == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.店家登錄.Find(登錄Id);
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
