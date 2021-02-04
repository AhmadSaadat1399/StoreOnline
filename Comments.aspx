<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="irMarket.Comments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="content">
			<div id="page_Home">
				<div id="slider">
					<img src="img/img1.jpg" alt=""/>
					<img src="img/img2.jpg" alt=""/>
					<img src="img/img3.jpg" alt=""/>
				</div>
				<div id="slider_shadow"></div>
				
			</div>
			<div id="page_News">
				<h2>آخرین دیدگاه ها</h2>
				<div class="box1_bot">
					<div class="box1_left">
						<div class="box1_right">
							<div class="box1">
								<div class="pad">
									
                                    <asp:ListView ID="ListView1" runat="server">
                                        <ItemTemplate>
                                             تاریخ:
                                            <%# Eval("Date") %>
                                            <br /><br />

                                    نام:
                                            <%# Eval("Name") %>

                                            <br /><br />
                                    ایمیل:
                                    <%# Eval("Email") %>

                                            <br /><br />
                                    موضوع پیام:
                                    <%# Eval("Title") %>
                                            <br /><br />
                                    پیام:
                                    <%# Eval("Message") %>


                                            <br /><br /><br /><br /><br />
                                        </ItemTemplate>
                                    </asp:ListView>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			
		</section>
</asp:Content>
