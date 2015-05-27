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
    public partial class Edit : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected 推薦店家 item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  店家Id)
        {
            using (_db)
            {
                var item = _db.推薦店家.Find(店家Id);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", 店家Id));
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

        // This is the Select method to selects a single 推薦店家 item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public MTWIN.Models.推薦店家 GetItem([FriendlyUrlSegmentsAttribute(0)]int? 店家Id)
        {
            if (店家Id == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.推薦店家.Find(店家Id);
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
