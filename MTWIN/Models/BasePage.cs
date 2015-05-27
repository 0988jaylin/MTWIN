using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MTWIN.Models
{
    public class BasePage : System.Web.UI.Page
    {
        protected MTWIN.Models.MTWINEntities _db = new MTWIN.Models.MTWINEntities();
        protected MTWIN.Models.店家登錄Repository _repo店家登錄 = RepositoryHelper.Get店家登錄Repository();
        protected MTWIN.Models.首頁項目Repository _repo首頁項目 = RepositoryHelper.Get首頁項目Repository();
        protected MTWIN.Models.推薦店家Repository _repo推薦店家 = RepositoryHelper.Get推薦店家Repository();
    }
}