<%@ Page Title="推薦店家Edit" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Edit.aspx.cs" Inherits="MTWIN.Backend.推薦店家.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="MTWIN.Models.推薦店家" DefaultMode="Edit" DataKeyNames="店家Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the 推薦店家 with 店家Id <%: Request.QueryString["店家Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit 推薦店家</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
							<asp:DynamicControl Mode="Edit" 
								DataField="分類項Id" 
								DataTypeName="MTWIN.Models.分類項目" 
								DataTextField="分類名稱" 
								DataValueField="分類Id" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="名稱" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="電話" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="城市" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="鄉鎮市區" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="街道" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="特色介紹" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="圖片檔位置" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="郵遞區號" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="連結網址" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="點擊數" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="排序編號" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="是首頁輪播" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="建立者" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="建立時間" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="修改者" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="修改時間" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

