namespace MTWIN.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    
    [MetadataType(typeof(推薦店家MetaData))]
    public partial class 推薦店家
    {
    }
    
    public partial class 推薦店家MetaData
    {
        [Required]
        public int 店家Id { get; set; }
        [Required]
        public int 分類項Id { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        [Required]
        public string 名稱 { get; set; }
        
        [StringLength(12, ErrorMessage="欄位長度不得大於 12 個字元")]
        [Required]
        public string 電話 { get; set; }
        
        [StringLength(10, ErrorMessage="欄位長度不得大於 10 個字元")]
        [Required]
        public string 城市 { get; set; }
        
        [StringLength(10, ErrorMessage="欄位長度不得大於 10 個字元")]
        [Required]
        public string 鄉鎮市區 { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        [Required]
        public string 街道 { get; set; }
        
        [StringLength(4000, ErrorMessage="欄位長度不得大於 4000 個字元")]
        [Required]
        public string 特色介紹 { get; set; }
        
        [StringLength(1000, ErrorMessage="欄位長度不得大於 1000 個字元")]
        public string 圖片檔位置 { get; set; }
        
        [StringLength(3, ErrorMessage="欄位長度不得大於 3 個字元")]
        public string 郵遞區號 { get; set; }
        
        [StringLength(500, ErrorMessage="欄位長度不得大於 500 個字元")]
        public string 連結網址 { get; set; }
        [Required]
        public int 點擊數 { get; set; }
        [Required]
        public int 排序編號 { get; set; }
        [Required]
        public bool 是首頁輪播 { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        public string 建立者 { get; set; }
        [Required]
        public System.DateTime 建立時間 { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        public string 修改者 { get; set; }
        [Required]
        public System.DateTime 修改時間 { get; set; }
    
        public virtual 分類項目 分類項目 { get; set; }
    }
}
