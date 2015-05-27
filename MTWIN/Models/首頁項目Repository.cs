using System;
using System.Linq;
using System.Collections.Generic;
	
namespace MTWIN.Models
{   
	public  class 首頁項目Repository : EFRepository<首頁項目>, I首頁項目Repository
	{

	}

	public  interface I首頁項目Repository : IRepository<首頁項目>
	{

	}
}