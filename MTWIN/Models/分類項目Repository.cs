using System;
using System.Linq;
using System.Collections.Generic;
	
namespace MTWIN.Models
{   
	public  class 分類項目Repository : EFRepository<分類項目>, I分類項目Repository
	{

	}

	public  interface I分類項目Repository : IRepository<分類項目>
	{

	}
}