using System;
using System.Linq;
using System.Collections.Generic;

namespace MTWIN.Models
{
    public class 店家登錄Repository : EFRepository<店家登錄>, I店家登錄Repository
    {
        public override IQueryable<店家登錄> All()
        {
            return base.All().Where(x => x.已刪除 == false);
        }

        public 店家登錄 Find(int id)
        {
            return this.All().Where(x => x.登錄Id == id).FirstOrDefault();
        }

        public void Delete(店家登錄 item)
        {
            item.已刪除 = true;
        }
    }

    public interface I店家登錄Repository : IRepository<店家登錄>
    {

    }
}