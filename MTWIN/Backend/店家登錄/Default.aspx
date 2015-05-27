<%@ Page Title="店家登錄List" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Default.aspx.cs" Inherits="MTWIN.Backend.店家登錄.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>店家登錄 List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="登錄Id" 
			ItemType="MTWIN.Models.店家登錄"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for 店家登錄
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="登錄Id" CommandName="Sort" CommandArgument="登錄Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="是登錄店家資料" CommandName="Sort" CommandArgument="是登錄店家資料" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="是廣告刊登" CommandName="Sort" CommandArgument="是廣告刊登" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="店家名稱" CommandName="Sort" CommandArgument="店家名稱" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="聯絡人" CommandName="Sort" CommandArgument="聯絡人" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="刊登電話" CommandName="Sort" CommandArgument="刊登電話" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="聯絡電話" CommandName="Sort" CommandArgument="聯絡電話" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Email" CommandName="Sort" CommandArgument="Email" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="已詳閱個資聲明" CommandName="Sort" CommandArgument="已詳閱個資聲明" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="建立時間" CommandName="Sort" CommandArgument="建立時間" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="已刪除" CommandName="Sort" CommandArgument="已刪除" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="登錄Id" ID="登錄Id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="是登錄店家資料" ID="是登錄店家資料" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="是廣告刊登" ID="是廣告刊登" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="店家名稱" ID="店家名稱" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="聯絡人" ID="聯絡人" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="刊登電話" ID="刊登電話" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="聯絡電話" ID="聯絡電話" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="已詳閱個資聲明" ID="已詳閱個資聲明" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="建立時間" ID="建立時間" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="已刪除" ID="已刪除" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Backend/店家登錄/Details", Item.登錄Id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Backend/店家登錄/Edit", Item.登錄Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Backend/店家登錄/Delete", Item.登錄Id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

