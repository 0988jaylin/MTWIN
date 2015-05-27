using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using MTWIN.Models;

namespace MTWIN.Backend.店家登錄
{
    public partial class Default : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of 店家登錄 entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<MTWIN.Models.店家登錄> GetData()
        {
            return _repo店家登錄;
        }
    }
}

