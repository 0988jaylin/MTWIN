namespace MTWIN.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    
    [MetadataType(typeof(推薦店家分類MetaData))]
    public partial class 推薦店家分類
    {
    }
    
    public partial class 推薦店家分類MetaData
    {
        [Required]
        public int 分類Id { get; set; }
        
        [StringLength(50, ErrorMessage="欄位長度不得大於 50 個字元")]
        [Required]
        public string 分類名稱 { get; set; }
    
        public virtual ICollection<推薦店家> 推薦店家 { get; set; }
    }
}
