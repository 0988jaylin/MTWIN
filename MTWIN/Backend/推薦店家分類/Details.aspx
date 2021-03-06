﻿<%@ Page Title="推薦店家分類 Details" Language="C#" MasterPageFile="~/Site.Backend.Master" CodeBehind="Details.aspx.cs" Inherits="MTWIN.Backend.推薦店家分類.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="MTWIN.Models.推薦店家分類" DataKeyNames="分類Id"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the 推薦店家分類 with 分類Id <%: Request.QueryString["分類Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>推薦店家分類 Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>分類Id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="分類Id" ID="分類Id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>分類名稱</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="分類名稱" ID="分類名稱" Mode="ReadOnly" />
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

