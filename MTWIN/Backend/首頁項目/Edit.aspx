<%@ Page Title="首頁項目Edit" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Edit.aspx.cs" Inherits="MTWIN.Backend.首頁項目.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="MTWIN.Models.首頁項目" DefaultMode="Edit" DataKeyNames="首頁項目Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the 首頁項目 with 首頁項目Id <%: Request.QueryString["首頁項目Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit 首頁項目</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="圖檔替代名稱" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="圖檔提示文字" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="圖片檔位置" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="連結網址" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="總曝光數" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="總點擊次數" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="建立者" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="建立時間" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="修改者" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="修改時間" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="已刪除" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="項目類型Id" 
								DataTypeName="MTWIN.Models.首頁項目分類" 
								DataTextField="分類名稱" 
								DataValueField="分類Id" 
								UIHint="ForeignKey" runat="server" />
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

