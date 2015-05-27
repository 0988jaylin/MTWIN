<%@ Page Title="店家登錄Insert" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Insert.aspx.cs" Inherits="MTWIN.Backend.店家登錄.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="MTWIN.Models.店家登錄" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert 店家登錄</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="是登錄店家資料" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="是廣告刊登" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="店家名稱" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="聯絡人" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="刊登電話" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="聯絡電話" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Email" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="已詳閱個資聲明" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="建立時間" runat="server" />
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
