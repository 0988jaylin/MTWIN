<%@ Page Title="推薦店家Insert" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Insert.aspx.cs" Inherits="MTWIN.Backend.推薦店家.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="MTWIN.Models.推薦店家" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert 推薦店家</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
							<asp:DynamicControl Mode="Insert" 
								DataField="分類項Id" 
								DataTypeName="MTWIN.Models.推薦店家分類" 
								DataTextField="分類名稱" 
								DataValueField="分類Id" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="名稱" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="電話" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="郵遞區號" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="城市" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="鄉鎮市區" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="街道" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="特色介紹" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="圖片檔位置" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="連結網址" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="點擊數" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="排序編號" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="是首頁輪播" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="建立者" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="建立時間" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="修改者" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="修改時間" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="已刪除" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
