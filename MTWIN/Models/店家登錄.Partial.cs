namespace MTWIN.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    
    [MetadataType(typeof(店家登錄MetaData))]
    public partial class 店家登錄
    {
    }
    
    public partial class 店家登錄MetaData
    {
        [Required]
        public int 登錄Id { get; set; }
        [Required]
        public bool 是登錄店家資料 { get; set; }
        [Required]
        public bool 是廣告刊登 { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        [Required]
        public string 店家名稱 { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        [Required]
        public string 聯絡人 { get; set; }
        
        [StringLength(12, ErrorMessage="欄位長度不得大於 12 個字元")]
        [Required]
        public string 刊登電話 { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        [Required]
        public string 聯絡電話 { get; set; }
        
        [StringLength(100, ErrorMessage="欄位長度不得大於 100 個字元")]
        public string Email { get; set; }
        [Required]
        public bool 已詳閱個資聲明 { get; set; }
        public Nullable<System.DateTime> 建立時間 { get; set; }
        [Required]
        public bool 已刪除 { get; set; }
    }
}
