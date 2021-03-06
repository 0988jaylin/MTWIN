﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using MTWIN.Models;

namespace MTWIN.Backend.推薦店家
{
    public partial class Default : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of 推薦店家 entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<MTWIN.Models.推薦店家> GetData()
        {
            //return _db.推薦店家.Include(m => m.推薦店家分類);
            return _repo推薦店家.All();
        }
    }
}

