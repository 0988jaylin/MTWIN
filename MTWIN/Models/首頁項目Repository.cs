using System;
using System.Linq;
using System.Collections.Generic;

namespace MTWIN.Models
{
    public class 首頁項目Repository : EFRepository<首頁項目>, I首頁項目Repository
    {
        public override IQueryable<首頁項目> All()
        {
            return base.All().Where(x => x.已刪除 == false);
        }

        public 首頁項目 Find(int id)
        {
            return this.All().Where(x => x.首頁項目Id == id).FirstOrDefault();
        }

        public void Delete(首頁項目 item)
        {
            item.已刪除 = true;
        }
    }

    public interface I首頁項目Repository : IRepository<首頁項目>
    {

    }
}