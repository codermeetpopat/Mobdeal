<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Frame_Client.master" AutoEventWireup="true" CodeFile="product_details.aspx.cs" Inherits="product_details"  EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   <div class="single">
         <div class="wrap">
     	    <div class="rsidebar span_1_of_left">
				   <section  class="sky-form">
                   	  
                   	  <h4>Popular Brands</h4>
						<%--<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Flats (70)</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Athletic Shoes (48)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Athletic Shoes (48)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Heels (38)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other (1)</label>
						    </div>
						</div>--%>
                        <div class="row row1 scroll-pane">
                            <asp:Repeater ID="rptcategory" runat="server">
                                <ItemTemplate>
                                        <a href="filter_product.aspx?cat_id=<%#Eval("cat_id") %>">
                                             <label class="checkbox"><%#Eval("cat_name") %></label>
                                        </a>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
				  </section>
		</div>
       
           

		<div class="cont span_2_of_3">
			  <div class="labout span_1_of_a1">
				<!-- start product_slider -->

                  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                      <ol class="carousel-indicators">
                          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                      </ol>
                      <div class="carousel-inner">

                          <div class="carousel-item">

                              <ul id="etalage">
                                  <asp:Repeater ID="rptpro" runat="server">
                                      <ItemTemplate>

                                          <li>

                                              <img class="etalage_thumb_image" src="Images/<%#Eval("product_id")%>/<%#Eval("Name")%>" />
                                              <img class="etalage_source_image" src="Images/<%#Eval("product_id")%>/<%#Eval("Name")%>" />
                                              <%--  </a> <a href="optionallink.html">   <%# getActiveClass(Container.ItemIndex) %>--%>
                                          </li>


                                      </ItemTemplate>
                                  </asp:Repeater>
                              </ul>
                          </div>
                          </div>
                  </div>
				     
			<!-- end product_slider -->
			</div>


			<div class="cont1 span_2_of_a1">
                <asp:Repeater ID="rptprodata" runat="server" OnItemDataBound="rptprodata_ItemDataBound" OnDataBinding="rptprodata_DataBinding" OnItemCommand="rptprodata_ItemCommand">
                      <ItemTemplate>


                          <h1 style="font-size: 30px; color: #555;" class="m_3"><%#Eval("product_name") %></h1>


                          <div class="price_single">
                              <span class="actual">₹. <%#Eval("product_price") %></span>
                          </div>
                          <ul class="options">
                              <h3> Available Size </h3>
                              <asp:RadioButtonList ID="radiosize" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" />

                          </ul>
                          <div class="btn_form">
                              <form>
                                  <asp:Button ID="btnaddcart" runat="server" OnClick="btnaddcart_Click" Text="Add To Cart" /> 
                                  <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                              </form>
                          </div>
                          <ul class="add-to-links">
                              <li>
                                  <img src="images/wish.png" alt="" /><asp:LinkButton ID="lbwishlist" runat="server" OnClick="lbwishlist_Click" Text="Add to Wishlist"></asp:LinkButton>
                                  <%--<img src="images/wish.png" alt="" /><a href="#">Add to wishlist</a></li>--%>
                          </ul>
                          <p class="m_desc"><%#Eval("product_description") %> </p>

                          <div class="social_single">
                              <ul>
                                  <li class="fb"><a href="#"><span></span></a></li>
                                  <li class="tw"><a href="#"><span></span></a></li>
                                  <li class="g_plus"><a href="#"><span></span></a></li>
                                  <li class="rss"><a href="#"><span></span></a></li>
                              </ul>
                          </div>

                      </ItemTemplate>
                                  </asp:Repeater>
			</div>
             
			<div class="clear"></div>
     
     
         <ul id="flexiselDemo3">
                <asp:Repeater ID="rptreleatedproduct" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href="product_details.aspx?product_id=<%#Eval("product_id") %>">
                                <img src="Images/<%#Eval("product_id")%>/<%#Eval("Name")%>" />
                                <div class="grid-flex">
                                    <%#Eval("product_name") %>
                                    <p><%#Eval("product_price") %></p>
                                </div>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
	    <script type="text/javascript">
	        $(window).load(function () {
	            $("#flexiselDemo1").flexisel();
	            $("#flexiselDemo2").flexisel({
	                enableResponsiveBreakpoints: true,
	                responsiveBreakpoints: {
	                    portrait: {
	                        changePoint: 480,
	                        visibleItems: 1
	                    },
	                    landscape: {
	                        changePoint: 640,
	                        visibleItems: 2
	                    },
	                    tablet: {
	                        changePoint: 768,
	                        visibleItems: 3
	                    }
	                }
	            });

	            $("#flexiselDemo3").flexisel({
	                visibleItems: 5,
	                animationSpeed: 1000,
	                autoPlay: true,
	                autoPlaySpeed: 3000,
	                pauseOnHover: true,
	                enableResponsiveBreakpoints: true,
	                responsiveBreakpoints: {
	                    portrait: {
	                        changePoint: 480,
	                        visibleItems: 1
	                    },
	                    landscape: {
	                        changePoint: 640,
	                        visibleItems: 2
	                    },
	                    tablet: {
	                        changePoint: 768,
	                        visibleItems: 3
	                    }
	                }
	            });

	        });
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	 					
	 
     </div>
     <div class="clear"></div>
	 </div>
     </div>
</asp:Content>

