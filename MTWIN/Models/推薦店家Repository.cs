using System;
using System.Linq;
using System.Collections.Generic;

namespace MTWIN.Models
{
    public class 推薦店家Repository : EFRepository<推薦店家>, I推薦店家Repository
    {
        public override IQueryable<推薦店家> All()
        {
            return base.All().Where(x => x.已刪除 == false);
        }

        public 推薦店家 Find(int id)
        {
            return this.All().FirstOrDefault(x => x.店家Id == id);
        }

        public void Delete(推薦店家 item)
        {
            item.已刪除 = true;
        }
    }

    public interface I推薦店家Repository : IRepository<推薦店家>
    {

    }
}