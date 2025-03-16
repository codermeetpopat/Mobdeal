<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Frame_Client.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="index-banner">
        <div class="wmuSlider example1" style="height: 560px;">
            <div class="wmuSliderWrapper">
                <article style="position: relative; width: 100%; opacity: 1;">
                    <div class="banner-wrap">
                        <div class="slider-left">
                            <img src="images/book1.jpg" alt="" />
                        </div>
                        <div class="slider-right">
                           <%-- <a href="admin/Dashboard.aspx">admin/Dashboard.aspx</a>-- %>
                            <%--<p>Lorem ipsum dolor sit amet</p>--%>
                        </div>
                        <div class="clear"></div>
                    </div>
                </article>
                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="slider-left">
                            <img src="images/book2.jpg" alt="" />
                        </div>
                        <div class="slider-right">
                           
                            <%--<p>Lorem ipsum dolor sit amet</p>--%>
                            <%--<div class="btn"><a href="shop.html">Shop Now</a></div>--%>
                        </div>
                        <div class="clear"></div>
                    </div>
                </article>
                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="slider-left">
                            <img src="images/book3.jpg" alt="" />
                        </div>
                        <div class="slider-right">
                          
                            <%--<p>Lorem ipsum dolor sit amet</p>--%>
                            <%--<div class="btn"><a href="shop.html">Shop Now</a></div>--%>
                        </div>
                        <div class="clear"></div>
                    </div>
                </article>
                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="slider-left">
                            <img src="images/book4.jpg" alt="" />
                        </div>
                        <div class="slider-right">
                            
                            <%--<p>Lorem ipsum dolor sit amet</p>--%>
                            <%--<div class="btn"><a href="shop.html">Shop Now</a></div>--%>
                        </div>
                        <div class="clear"></div>
                    </div>
                </article>
            </div>
            <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
            <ul class="wmuSliderPagination">
                <li><a href="#" class="">0</a></li>
                <li><a href="#" class="">1</a></li>
                <li><a href="#" class="wmuActive">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
            </ul>
            <a class="wmuSliderPrev">Previous</a>
            <a class="wmuSliderNext">Next</a>
            <ul class="wmuSliderPagination">
                <li><a href="#" class="wmuActive">0</a></li>
                <li><a href="#" class="">1</a></li>
                <li><a href="#" class="">2</a></li>
                <li><a href="#" class="">3</a></li>
                <li><a href="#" class="">4</a></li>
            </ul>
        </div>
        <script src="js/jquery.wmuSlider.js"></script>
        <script type="text/javascript" src="js/modernizr.custom.min.js"></script>
        <script>
            $('.example1').wmuSlider();
   						</script>
    </div>
    <div class="main">
        <div class="wrap">
            <div class="content-bottom">
                <div class="box1">
                    <asp:Repeater ID="rptpro" runat="server">
                        <ItemTemplate>
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="product_details.aspx?product_id=<%#Eval("product_id") %>">
                                    <div class="view view-fifth">
                                        <div class="top_box">
                                            <h3 class="m_1"><%#Eval("product_name") %></h3>
                                            <%--<p class="m_2"> <%#Eval("cat_name") %> </p>--%>
                                            <div class="grid_img">
                                                <div class="css3">
                                                    <img src="Images/<%#Eval("product_id")%>/<%#Eval("Name")%>" height="250rem" width="350rem" alt="Not Work" />
                                                </div>
                                                <div class="mask">
                                                    <div class="info">Quick View</div>
                                                </div>
                                            </div>
                                            <div class="price">₹. <%#Eval("product_price") %></div>
                                        </div>
                                        <%--<ul class="list">
                                            <li>
                                                <img src="images/plus.png" alt="" />
                                                <ul class="icon1 sub-icon1 profile_img">
                                                    <li><a class="active-icon c1" href="#">Add To Bag </a>
                                                        <ul class="sub-icon1 list">
                                                            <li>
                                                                <h3>sed diam nonummy</h3>
                                                                <a href=""></a></li>
                                                            <li>
                                                                <p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>--%>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="clear"></div>
                </div>
                <div class="box1">
                    <asp:Repeater ID="rptpro2" runat="server">
                        <ItemTemplate>
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="product_details.aspx?product_id=<%#Eval("product_id") %>">
                                    <div class="view view-fifth">
                                        <div class="top_box">
                                            <h3 class="m_1"><%#Eval("product_name") %></h3>
                                            <%--<p class="m_2"> <%#Eval("cat_name") %> </p>--%>
                                            <div class="grid_img">
                                                <div class="css3">
                                                    <img src="Images/<%#Eval("product_id")%>/<%#Eval("Name")%>" alt="Not Work" />
                                                </div>
                                                <div class="mask">
                                                    <div class="info">Quick View</div>
                                                </div>
                                            </div>
                                            <div class="price">₹. <%#Eval("product_price") %></div>
                                        </div>
                                        <%--<ul class="list">
                                            <li>
                                                <img src="images/plus.png" alt="" />
                                                <ul class="icon1 sub-icon1 profile_img">
                                                    <li><a class="active-icon c1" href="#">Add To Bag </a>
                                                        <ul class="sub-icon1 list">
                                                            <li>
                                                                <h3>sed diam nonummy</h3>
                                                                <a href=""></a></li>
                                                            <li>
                                                                <p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>--%>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

