namespace MTWIN.Models
{
	public static class RepositoryHelper
	{
		public static IUnitOfWork GetUnitOfWork()
		{
			return new EFUnitOfWork();
		}		
		
		public static 分類項目Repository Get分類項目Repository()
		{
			var repository = new 分類項目Repository();
			repository.UnitOfWork = GetUnitOfWork();
			return repository;
		}

		public static 分類項目Repository Get分類項目Repository(IUnitOfWork unitOfWork)
		{
			var repository = new 分類項目Repository();
			repository.UnitOfWork = unitOfWork;
			return repository;
		}		

		public static 店家登錄Repository Get店家登錄Repository()
		{
			var repository = new 店家登錄Repository();
			repository.UnitOfWork = GetUnitOfWork();
			return repository;
		}

		public static 店家登錄Repository Get店家登錄Repository(IUnitOfWork unitOfWork)
		{
			var repository = new 店家登錄Repository();
			repository.UnitOfWork = unitOfWork;
			return repository;
		}		

		public static 首頁項目Repository Get首頁項目Repository()
		{
			var repository = new 首頁項目Repository();
			repository.UnitOfWork = GetUnitOfWork();
			return repository;
		}

		public static 首頁項目Repository Get首頁項目Repository(IUnitOfWork unitOfWork)
		{
			var repository = new 首頁項目Repository();
			repository.UnitOfWork = unitOfWork;
			return repository;
		}		

		public static 推薦店家Repository Get推薦店家Repository()
		{
			var repository = new 推薦店家Repository();
			repository.UnitOfWork = GetUnitOfWork();
			return repository;
		}

		public static 推薦店家Repository Get推薦店家Repository(IUnitOfWork unitOfWork)
		{
			var repository = new 推薦店家Repository();
			repository.UnitOfWork = unitOfWork;
			return repository;
		}		
	}
}