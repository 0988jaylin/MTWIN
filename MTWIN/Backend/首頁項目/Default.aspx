<%@ Page Title="首頁項目List" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Default.aspx.cs" Inherits="MTWIN.Backend.首頁項目.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>首頁項目 List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="首頁項目Id" 
			ItemType="MTWIN.Models.首頁項目"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for 首頁項目
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="首頁項目Id" CommandName="Sort" CommandArgument="首頁項目Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="圖檔替代名稱" CommandName="Sort" CommandArgument="圖檔替代名稱" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="圖檔提示文字" CommandName="Sort" CommandArgument="圖檔提示文字" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="圖片檔位置" CommandName="Sort" CommandArgument="圖片檔位置" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="連結網址" CommandName="Sort" CommandArgument="連結網址" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="總曝光數" CommandName="Sort" CommandArgument="總曝光數" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="總點擊次數" CommandName="Sort" CommandArgument="總點擊次數" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="建立者" CommandName="Sort" CommandArgument="建立者" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="建立時間" CommandName="Sort" CommandArgument="建立時間" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="修改者" CommandName="Sort" CommandArgument="修改者" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="修改時間" CommandName="Sort" CommandArgument="修改時間" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="已刪除" CommandName="Sort" CommandArgument="已刪除" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="項目類型Id" CommandName="Sort" CommandArgument="項目類型Id" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="首頁項目Id" ID="首頁項目Id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="圖檔替代名稱" ID="圖檔替代名稱" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="圖檔提示文字" ID="圖檔提示文字" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="圖片檔位置" ID="圖片檔位置" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="連結網址" ID="連結網址" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="總曝光數" ID="總曝光數" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="總點擊次數" ID="總點擊次數" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="建立者" ID="建立者" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="建立時間" ID="建立時間" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="修改者" ID="修改者" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="修改時間" ID="修改時間" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="已刪除" ID="已刪除" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.首頁項目分類 != null ? Item.首頁項目分類.分類名稱 : "" %>
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Backend/首頁項目/Details", Item.首頁項目Id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Backend/首頁項目/Edit", Item.首頁項目Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Backend/首頁項目/Delete", Item.首頁項目Id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

