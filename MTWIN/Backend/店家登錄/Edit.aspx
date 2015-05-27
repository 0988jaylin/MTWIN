<%@ Page Title="店家登錄Edit" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Edit.aspx.cs" Inherits="MTWIN.Backend.店家登錄.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="MTWIN.Models.店家登錄" DefaultMode="Edit" DataKeyNames="登錄Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the 店家登錄 with 登錄Id <%: Request.QueryString["登錄Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit 店家登錄</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="是登錄店家資料" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="是廣告刊登" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="店家名稱" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="聯絡人" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="刊登電話" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="聯絡電話" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Email" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="已詳閱個資聲明" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="建立時間" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="已刪除" runat="server" />
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

