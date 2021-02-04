<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Options.aspx.cs" Inherits="irMarket.Options" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="content">
			
			<div id="page_News">
				<h2>تنظیمات</h2>
				<div class="box1_bot">
					<div class="box1_left">
						<div class="box1_right">
							<div class="box1">
								<div class="pad">
									
                                    عنوان سایت:
                                    <asp:TextBox ID="txttitle" runat="server" Height="25" Width="300"></asp:TextBox>
                                    <br /><br />
                                    پانویس:
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtfooter" runat="server" Height="25" Width="300"></asp:TextBox>
                                    <br /><br />
                                    درباره ما:
                                    <br />
                                    <asp:TextBox ID="txtabout" runat="server" TextMode="MultiLine" Height="150" Width="400"></asp:TextBox>
                                    <br /><br />
                                    تماس با ما:
                                    <br />
                                    <asp:TextBox ID="txtcontact" runat="server" TextMode="MultiLine" Height="150" Width="400"></asp:TextBox>
                                    <br />

                                    <asp:Button ID="btnSave" runat="server" Text="ثبت" Height="30px" Width="90px" BackColor="#CC3300" Font-Size="Larger" ForeColor="White" OnClick="btnSave_Click" />

								</div>


                                


							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			
		</section>



</asp:Content>
