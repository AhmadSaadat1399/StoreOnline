<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" ValidateRequest="false" AutoEventWireup="true" CodeBehind="Posts.aspx.cs" Inherits="irMarket.Posts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="content">


        <div id="Div1">
				<h2>مطلب جدید</h2>
				<div class="box1_bot">
					<div class="box1_left">
						<div class="box1_right">
							<div class="box1">
								<div class="pad">
									<div class="wrapper pad_bot2">
										<figure class="right marg_right1 costum-margin"></figure>
										<p class="pad_bot1 pad_top1"><strong>عنوان </strong></p>
                                        <asp:TextBox ID="txtTitle" runat="server" Height="25" Width="580"></asp:TextBox>
                                        
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtTitle" runat="server" ErrorMessage="عنوان را وارد کنید"></asp:RequiredFieldValidator>
										
									</div>
									<div class="wrapper">
										<figure class="right marg_right1 costum-margin"></figure>
										<p class="pad_bot1 pad_top1"><strong>متن</strong></p>
                                        <asp:TextBox ID="txtMatn" runat="server" Height="300" Width="580" TextMode="MultiLine"></asp:TextBox>
                                        
                                        <script>

                                            CKEDITOR.replace("ContentPlaceHolder1_txtMatn");


                                        </script>

                                        <asp:FileUpload ID="FileUpload1" runat="server" />

                                        <span>قیمت:</span>
                                        <asp:TextBox ID="txtprice" runat="server" Height="25" Width="100"></asp:TextBox>
                                        ریال
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtprice" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtprice" runat="server" ErrorMessage="مقدار صحیح را وارد کنید" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                        <br />
                                        <asp:Button ID="btnEnteshar" runat="server" Text="انتشار" Height="30px" Width="90px" BackColor="#CC3300" Font-Size="Larger" ForeColor="White" OnClick="btnEnteshar_Click" />
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div id="page_News">
				<h2>مطالب منتشر شده</h2>
				<div class="box1_bot">
					<div class="box1_left">
						<div class="box1_right">
							<div class="box1">
								<div class="pad">
									
                                    <asp:GridView ID="GridView1" Width="600" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="LinqDataSource1" OnRowCommand="GridView1_RowCommand">
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="شماره" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="title" HeaderText="عنوان" SortExpression="title" />
                                            
                                            <asp:BoundField DataField="Date" HeaderText="تاریخ انشار" SortExpression="Date" />
                                            <asp:BoundField DataField="Price" HeaderText="قیمت" SortExpression="Price" />


                                            <asp:ButtonField CommandName="cmd_del" HeaderText="حذف" Text="حذف" />
                                            <asp:ButtonField CommandName="cmd_edit" HeaderText="ویرایش" Text="ویرایش" />
                                        </Columns>
                                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                        <RowStyle BackColor="White" ForeColor="#003399" />
                                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                        <SortedDescendingHeaderStyle BackColor="#002876" />
                                    </asp:GridView>

                                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="irMarket.DataClasses1DataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="tbl_Posts"></asp:LinqDataSource>


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			
		</section>


</asp:Content>
