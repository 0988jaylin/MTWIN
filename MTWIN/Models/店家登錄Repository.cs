using System;
using System.Linq;
using System.Collections.Generic;
	
namespace MTWIN.Models
{   
	public  class 店家登錄Repository : EFRepository<店家登錄>, I店家登錄Repository
	{

	}

	public  interface I店家登錄Repository : IRepository<店家登錄>
	{

	}
}