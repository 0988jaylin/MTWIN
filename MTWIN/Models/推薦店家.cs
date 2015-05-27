//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MTWIN.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class 推薦店家
    {
        public int 店家Id { get; set; }
        public int 分類項Id { get; set; }
        public string 名稱 { get; set; }
        public string 電話 { get; set; }
        public string 郵遞區號 { get; set; }
        public string 城市 { get; set; }
        public string 鄉鎮市區 { get; set; }
        public string 街道 { get; set; }
        public string 特色介紹 { get; set; }
        public string 圖片檔位置 { get; set; }
        public string 連結網址 { get; set; }
        public int 點擊數 { get; set; }
        public int 排序編號 { get; set; }
        public bool 是首頁輪播 { get; set; }
        public string 建立者 { get; set; }
        public Nullable<System.DateTime> 建立時間 { get; set; }
        public string 修改者 { get; set; }
        public Nullable<System.DateTime> 修改時間 { get; set; }
        public bool 已刪除 { get; set; }
    
        public virtual 推薦店家分類 推薦店家分類 { get; set; }
    }
}
