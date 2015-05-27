<%@ Page Title="店家登錄 Details" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Details.aspx.cs" Inherits="MTWIN.Backend.店家登錄.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="MTWIN.Models.店家登錄" DataKeyNames="登錄Id"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the 店家登錄 with 登錄Id <%: Request.QueryString["登錄Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>店家登錄 Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>登錄Id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="登錄Id" ID="登錄Id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>是登錄店家資料</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="是登錄店家資料" ID="是登錄店家資料" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>是廣告刊登</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="是廣告刊登" ID="是廣告刊登" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>店家名稱</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="店家名稱" ID="店家名稱" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>聯絡人</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="聯絡人" ID="聯絡人" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>刊登電話</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="刊登電話" ID="刊登電話" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>聯絡電話</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="聯絡電話" ID="聯絡電話" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Email</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>已詳閱個資聲明</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="已詳閱個資聲明" ID="已詳閱個資聲明" Mode="ReadOnly" />
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
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

