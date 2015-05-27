<%@ Page Title="推薦店家Delete" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Delete.aspx.cs" Inherits="MTWIN.Backend.推薦店家.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this 推薦店家?</h3>
        <asp:FormView runat="server"
            ItemType="MTWIN.Models.推薦店家" DataKeyNames="店家Id"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the 推薦店家 with 店家Id <%: Request.QueryString["店家Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete 推薦店家</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>店家Id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="店家Id" ID="店家Id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>分類項Id</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.推薦店家分類 != null ? Item.推薦店家分類.分類名稱 : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>名稱</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="名稱" ID="名稱" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>電話</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="電話" ID="電話" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>郵遞區號</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="郵遞區號" ID="郵遞區號" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>城市</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="城市" ID="城市" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>鄉鎮市區</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="鄉鎮市區" ID="鄉鎮市區" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>街道</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="街道" ID="街道" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>特色介紹</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="特色介紹" ID="特色介紹" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>圖片檔位置</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="圖片檔位置" ID="圖片檔位置" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>連結網址</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="連結網址" ID="連結網址" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>點擊數</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="點擊數" ID="點擊數" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>排序編號</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="排序編號" ID="排序編號" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>是首頁輪播</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="是首頁輪播" ID="是首頁輪播" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>建立者</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="建立者" ID="建立者" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>建立時間</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="建立時間" ID="建立時間" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>修改者</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="修改者" ID="修改者" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>修改時間</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="修改時間" ID="修改時間" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>已刪除</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="已刪除" ID="已刪除" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

