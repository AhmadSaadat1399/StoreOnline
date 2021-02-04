<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="irMarket.Users" %>
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
				<h2>کاربران</h2>
				<div class="box1_bot">
					<div class="box1_left">
						<div class="box1_right">
							<div class="box1">
								<div class="pad">
									
                                    نام کاربری:
                                    <asp:TextBox ID="txtusername" runat="server" Height="25" Width="180"></asp:TextBox>

                                  <span style="padding-right:80px">  رمز عبور: </span>
                                    <asp:TextBox ID="txtpassword" runat="server" Height="25" Width="180"></asp:TextBox>

                                    <br /><br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    ایمیل:
                                    <asp:TextBox ID="txtemail" runat="server" Height="25" Width="180"></asp:TextBox>

                                    
                                    <span style="padding-right:80px">
                                    نوع کاربر:
                                        </span>
                                    <asp:DropDownList ID="txtrole" runat="server" Height="25" Width="180">
                                        <asp:ListItem Value="1">مدیر</asp:ListItem>
                                        <asp:ListItem Value="2">نویسنده</asp:ListItem>
                                        <asp:ListItem Value="3">کاربر</asp:ListItem>
                                    </asp:DropDownList>


                                    <br /><br />
                                    <asp:Button ID="btnSave" runat="server" Text="ثبت" Height="30px" Width="90px" BackColor="#CC3300" Font-Size="Larger" ForeColor="White" OnClick="btnSave_Click" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="ایمیل را صحیح وارد کنید" ControlToValidate="txtemail" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
								</div>


                                <div class="pad">
									
                                    <asp:GridView ID="GridView1" runat="server" Width="600" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="شماره" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="UserName" HeaderText="نام کاربری" SortExpression="UserName" />
                                           
                                            <asp:BoundField DataField="Email" HeaderText="ایمیل" SortExpression="Email" />
                                           
                                            <asp:BoundField DataField="Role" HeaderText="نقش" SortExpression="Role" />

                                            <asp:ButtonField CommandName="cmd_del" HeaderText="حذف" Text="حذف" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>

                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:irmarketdbConnectionString %>" SelectCommand="SELECT * FROM [tbl_Users]"></asp:SqlDataSource>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			
		</section>
</asp:Content>
