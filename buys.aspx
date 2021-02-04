<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="buys.aspx.cs" Inherits="irMarket.buys" %>
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
				<h2>آخرین سفارشات</h2>
				<div class="box1_bot">
					<div class="box1_left">
						<div class="box1_right">
							<div class="box1">
								<div class="pad">
									
                                    <asp:ListView ID="ListView1" runat="server">
                                        <ItemTemplate>
                                             نام و نام خانوادگی:
                                            <%# Eval("name") %>
                                            <br /><br />

                                    ایمیل:
                                            <%# Eval("email") %>

                                            <br /><br />
                                    تلفن تماس:
                                    <%# Eval("tell") %>

                                            <br /><br />
                                    کد پستی:
                                    <%# Eval("codepost") %>
                                            <br /><br />
                                    آدرس:
                                    <%# Eval("address") %>

                                            <br /><br />
                                    تاریخ:
                                    <%# Eval("date") %>


                                            <br /><br />
                                    شماره تراکنش:
                                    <%# Eval("transactionid") %>

                                            <br /><br />
                                    آیپی:
                                    <%# Eval("ip") %>

                                            <br /><br />
                                            <a href='<%# "ShowProduct.aspx?id=" + Eval("id") %>' onclick="window.open(this.href, 'mywin',
'left=20,top=20,width=500,height=500,toolbar=1,resizable=0'); return false;" >خرید ها</a>

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
