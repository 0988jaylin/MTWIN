using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using MTWIN.Models;

namespace MTWIN.Backend.首頁項目
{
    public partial class Default : BasePage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of 首頁項目 entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<MTWIN.Models.首頁項目> GetData()
        {
            return _db.首頁項目.Include(m => m.首頁項目分類);
        }
    }
}

