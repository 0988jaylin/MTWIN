<%@ Page Title="推薦店家List" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Default.aspx.cs" Inherits="MTWIN.Backend.推薦店家.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>推薦店家 List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="店家Id" 
			ItemType="MTWIN.Models.推薦店家"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for 推薦店家
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="店家Id" CommandName="Sort" CommandArgument="店家Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="分類項Id" CommandName="Sort" CommandArgument="分類項Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="名稱" CommandName="Sort" CommandArgument="名稱" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="電話" CommandName="Sort" CommandArgument="電話" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="城市" CommandName="Sort" CommandArgument="城市" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="鄉鎮市區" CommandName="Sort" CommandArgument="鄉鎮市區" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="街道" CommandName="Sort" CommandArgument="街道" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="特色介紹" CommandName="Sort" CommandArgument="特色介紹" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="圖片檔位置" CommandName="Sort" CommandArgument="圖片檔位置" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="郵遞區號" CommandName="Sort" CommandArgument="郵遞區號" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="連結網址" CommandName="Sort" CommandArgument="連結網址" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="點擊數" CommandName="Sort" CommandArgument="點擊數" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="排序編號" CommandName="Sort" CommandArgument="排序編號" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="是首頁輪播" CommandName="Sort" CommandArgument="是首頁輪播" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="店家Id" ID="店家Id" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.分類項目 != null ? Item.分類項目.分類名稱 : "" %>
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="名稱" ID="名稱" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="電話" ID="電話" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="城市" ID="城市" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="鄉鎮市區" ID="鄉鎮市區" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="街道" ID="街道" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="特色介紹" ID="特色介紹" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="圖片檔位置" ID="圖片檔位置" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="郵遞區號" ID="郵遞區號" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="連結網址" ID="連結網址" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="點擊數" ID="點擊數" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="排序編號" ID="排序編號" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="是首頁輪播" ID="是首頁輪播" Mode="ReadOnly" />
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
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Backend/推薦店家/Details", Item.店家Id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Backend/推薦店家/Edit", Item.店家Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Backend/推薦店家/Delete", Item.店家Id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

