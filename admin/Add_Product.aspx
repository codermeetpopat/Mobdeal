<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Main_Frame.master" AutoEventWireup="true" CodeFile="Add_Product.aspx.cs" Inherits="admin_Add_Product" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content-wrapper pb-0">
	<div class="row">
            <div class="col-xl-12 stretch-card grid-margin">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Add Product Form</h4>
                        <br />
                        <form class="forms-sample">
                            <div class="form-group">
                                <asp:Label runat="server" for="productName">Product Name </asp:Label>
                                <br />
                                <br />
                                <asp:TextBox runat="server" ID="txtproductnm" type="text" class="form-control" placeholder="Category Name" />
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" for="categoryName"> Select Category </asp:Label>
                                <br />
                                <br />
                                <asp:DropDownList ID="ddlcat" runat="server" CssClass="selectpicker"></asp:DropDownList>

                            </div>


                            <div class="form-group">
                                <asp:Label runat="server" for="price"> Product Price </asp:Label>
                                <br />
                                <br />
                                <asp:TextBox runat="server" ID="txtproductprice" type="text" class="form-control" placeholder="Product Price" />
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" for="size">Product Size </asp:Label>
                                <br />
                                <br />
                                <asp:CheckBoxList ID="productsize" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>06</asp:ListItem>
                                    <asp:ListItem>07</asp:ListItem>
                                    <asp:ListItem>08</asp:ListItem>
                                    <asp:ListItem>09</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                </asp:CheckBoxList>
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" for="img1">Product image 1 </asp:Label>
                                <br />
                                <br />
                                <asp:FileUpload ID="image1" runat="server" />
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" for="img2">Product image 2 </asp:Label>
                                <br />
                                <br />
                                <asp:FileUpload ID="image2" runat="server" />
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" for="img3">Product image 3 </asp:Label>
                                <br />
                                <br />
                                <asp:FileUpload ID="image3" runat="server" />
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" for="img4">Product image 4 </asp:Label>
                                <br />
                                <br />
                                <asp:FileUpload ID="image4" runat="server" />
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" for="decription">Product Description </asp:Label>
                                <br />
                                <br />
                                <asp:TextBox runat="server" ID="txtproductdescri" type="text" TextMode="MultiLine"  Rows="6" class="form-control" placeholder="Product Description" />
                            </div>
                            <div class="form-group text-center">
                                <asp:Button ID="btnaddproduct" runat="server" Text="Submit" class="btn btn-primary mr-2" OnClick="btnaddproduct_Click"></asp:Button>
                            </div>
                        </form>
                      <br />

                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="content-wrapper pb-0">
	<div class="row">
            <div class="col-xl-12 stretch-card grid-margin">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Manage Product</h4>
                        <br />
                        <div class="table-responsive">
                            <asp:GridView ID="productlist" runat="server" AutoGenerateColumns="false" Width="500"
                                OnRowDeleting="productlist_RowDeleting" DataKeyNames="product_id"
                                OnRowEditing="productlist_RowEditing"
                                OnRowCancelingEdit="productlist_RowCancelingEdit"
                                OnRowUpdating="productlist_RowUpdating"
                                OnPageIndexChanging="productlist_PageIndexChanging"
                                AllowPaging="true" PageSize="100"
                                OnPreRender="productlist_PreRender" OnRowDataBound="productlist_RowDataBound" 
                                class="table table-striped table-bordered dt-responsive nowrap text-center">

                                <Columns>
                                    <asp:TemplateField HeaderText="id">
                                        <EditItemTemplate>
                                            <asp:TextBox runat="server" ID="TextBox1" Text='<%# Bind("product_id") %>' Enabled="false"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Label1" Text='<%# Bind("product_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Product Name">       
                                        <EditItemTemplate>
                                            <asp:TextBox runat="server" ID="TextBox2" Text='<%# Bind("product_name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Label2" Text='<%# Bind("product_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Category Name">
                                        <EditItemTemplate>
                                            <%--<asp:TextBox runat="server" ID="TextBox3" Text='<%# Bind("cat_name") %>'></asp:TextBox>--%>
                                            <asp:DropDownList runat="server" ID="ddlgrd" CssClass="selectpicker"></asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                             <asp:Label runat="server" ID="Label3" Text='<%# Bind("cat_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Price">
                                        <EditItemTemplate>
                                            <asp:TextBox runat="server" ID="TextBox4" Text='<%# Bind("product_price") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Label4" Text='<%# Bind("product_price") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Size">
                                        <EditItemTemplate>
                                            <%--<asp:CheckBoxList runat="server" ID="TextBox5"></asp:CheckBoxList>--%>
                                            <asp:TextBox runat="server" ID="TextBox5" Text='<%# Bind("product_size") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Label5" Text='<%# Bind("product_size") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <%--<asp:TemplateField HeaderText="Image">
                                        <EditItemTemplate>
                                            <asp:TextBox runat="server" ID="TextBox7" Enabled="false"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate> 
                                            <asp:Image runat="server" ID="Image1" ImageUrl='~/Images/<%#Eval("product_id")%>/<%#Eval("Name")%>' Height="100px" Width="100px"></asp:Image>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>
                                    <%--<asp:TemplateField HeaderText="Description">
                                        <EditItemTemplate>
                                            <asp:TextBox runat="server" ID="TextBox6" Text='<%# Bind("product_description") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Label6" Text='<%# Bind("product_description") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>

                                    <asp:CommandField ButtonType="Button" ShowDeleteButton="true" ShowEditButton="true" HeaderText="Operation" /> 

                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>

