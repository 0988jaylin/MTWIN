<%@ Page Title="首頁項目Insert" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Insert.aspx.cs" Inherits="MTWIN.Backend.首頁項目.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="MTWIN.Models.首頁項目" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert 首頁項目</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="項目類型" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="圖檔替代名稱" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="圖檔提示文字" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="圖片檔位置" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="連結網址" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="總曝光數" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="總點擊次數" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="建立者" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="建立時間" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="修改者" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="修改時間" runat="server" />
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
