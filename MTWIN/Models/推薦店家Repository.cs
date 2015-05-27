using System;
using System.Linq;
using System.Collections.Generic;
	
namespace MTWIN.Models
{   
	public  class 推薦店家Repository : EFRepository<推薦店家>, I推薦店家Repository
	{

	}

	public  interface I推薦店家Repository : IRepository<推薦店家>
	{

	}
}