namespace MTWIN.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    
    [MetadataType(typeof(首頁項目MetaData))]
    public partial class 首頁項目
    {
    }
    
    public partial class 首頁項目MetaData
    {
        [Required]
        public int 首頁項目Id { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        [Required]
        public string 項目類型 { get; set; }
        
        [StringLength(500, ErrorMessage="欄位長度不得大於 500 個字元")]
        public string 圖檔替代名稱 { get; set; }
        
        [StringLength(500, ErrorMessage="欄位長度不得大於 500 個字元")]
        public string 圖檔提示文字 { get; set; }
        
        [StringLength(1000, ErrorMessage="欄位長度不得大於 1000 個字元")]
        public string 圖片檔位置 { get; set; }
        
        [StringLength(1000, ErrorMessage="欄位長度不得大於 1000 個字元")]
        public string 連結網址 { get; set; }
        [Required]
        public int 總曝光數 { get; set; }
        [Required]
        public int 總點擊次數 { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        public string 建立者 { get; set; }
        [Required]
        public System.DateTime 建立時間 { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        public string 修改者 { get; set; }
        [Required]
        public System.DateTime 修改時間 { get; set; }
    }
}
