<%@ Page Title="首頁項目Delete" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Delete.aspx.cs" Inherits="MTWIN.Backend.首頁項目.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this 首頁項目?</h3>
        <asp:FormView runat="server"
            ItemType="MTWIN.Models.首頁項目" DataKeyNames="首頁項目Id"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the 首頁項目 with 首頁項目Id <%: Request.QueryString["首頁項目Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete 首頁項目</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>首頁項目Id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="首頁項目Id" ID="首頁項目Id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>圖檔替代名稱</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="圖檔替代名稱" ID="圖檔替代名稱" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>圖檔提示文字</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="圖檔提示文字" ID="圖檔提示文字" Mode="ReadOnly" />
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
									<strong>總曝光數</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="總曝光數" ID="總曝光數" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>總點擊次數</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="總點擊次數" ID="總點擊次數" Mode="ReadOnly" />
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
								<div class="col-sm-2 text-right">
									<strong>項目類型Id</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.首頁項目分類 != null ? Item.首頁項目分類.分類名稱 : "" %>
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

