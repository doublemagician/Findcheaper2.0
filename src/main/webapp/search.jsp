<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="com.control.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%  
            String  shuruKey= request.getParameter("product");
            System.out.println(shuruKey);  
         %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>找实惠FC</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <meta name="keywords" content="" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap1.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome1.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
    <!-- //Fonts -->

</head>

<body>

    <!-- mian-content -->
    <div class="main-banner" id="home">
        <!-- header -->
        <header class="header">
            <div class="container-fluid px-lg-5">
                <!-- nav -->
                <nav class="py-4">
                    <div id="logo">
                        <h1> <a href="index.jsp"><img src="images/logo.png" height=200 width=200 class="img-fluid"></a></h1>
                    </div>
                    <label for="drop" class="toggle">Menu</label>
                    <ul class="menu mt-2">
                        <li><a href="home.jsp">搜索</a></li>
                        <li><a href="index.jsp#section-reviews">关于</a></li>
                    </ul>
                </nav>
                <!-- //nav -->
            </div>
        </header>
        <!-- //header -->
        <!--/banner-->
        <div class="banner-info">         <!-- 商品搜索结果大图 -->
            <p>实惠</p>
            <h3 class="mb-4">不止一个</h3>
        </div>
        <!--// banner-inner -->

    </div>
    <%
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProduct(shuruKey, 0, 5000);
    if(ss!=null&&ss.size()>0)
    {
    Product b=ss.get(1);
     %>
    <!--//main-content-->
    <!--/ab -->
    
    <!-- //ab -->
    <!--/ab -->
    <section class="brands py-5">                     <!-- 商品搜索结果展示 -->
        <div class="container pb-lg-0">
            <h3 class="tittle text-center">还有更多</h3>
            <div class="row">
            <%
       int i=1;
       for(;i<ss.size()&&i<20;i++)
       {
       out.println("<div class=\"col-md-4 product-men my-lg-4\">"); 
                   out.println ( "<div class=\"product-shoe-info shoe text-center\">");
                    out.println("<div class=\"men-thumb-item\">" );    
                    out.println("<img src=\""+b.img+"\" class=\"img-fluid\" alt=\"\">");       
                    out.println("<span class=\"product-new-top\">New</span>");        
                    out.println("</div>");    
                        out.println("<div class=\"item-info-product\">");
                       out.println("<h4>");     
                           out.println("<a href=\""+b.url+"\">"+b.title+"</a>");     
                           out.println("</h4>");

                          out.println("<div class=\"product_price\">");
                           out.println("<div class=\"grid-price\">");
                              out.println("<span class=\"money\">￥"+b.price+"</span>");
                             out.println   ("</div>");
                           out.println   ("</div>");
                        out.println("</div>");
                      out.println("</div>");
               out.println("</div>");
               b=ss.get(i);} }
               else{
               out.println("<h1>很抱歉!</h1><br><h2>我们没有找到您需要的商品，你可以通过页面下方的联系方式向我们反馈您遇到的问题，我们会在5个工作日内给您答复！<h2>");
               }
        %>    
                
                
		</div>
        </div>
        
    </section>
    <!-- //ab -->
    <!--/ab -->
    
    <section class="brands py-5" id="brands">
        <div class="container py-lg-0">
            <div class="row text-center brand-items">
                <div class="col-sm-2 col-3">
                    <a href="#"><span class="fa fa-connectdevelop" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3">
                    <a href="#"><span class="fa fa-empire" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3">
                    <a href="#"><span class="fa fa-ioxhost" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3">
                    <a href="#"><span class="fa fa-first-order" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3 mt-sm-0 mt-4">
                    <a href="#"><span class="fa fa-joomla" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3 mt-sm-0 mt-4">
                    <a href="#"><span class="fa fa-dropbox" aria-hidden="true"></span></a>
                </div>
                <div class="col-sm-2 col-3 mt-sm-0 mt-4">
                    <a href="#">返回顶部</a>
                </div>
            </div>
        </div>
    </section>
    <!-- brands -->
     <!-- footer -->
    <footer>
        <div class="container">
            <div class="row footer-top">
                <div class="col-lg-4 footer-grid_section_w3layouts">
                    <h2 class="logo-2 mb-lg-4 mb-3">
                        <a href="index.html"><img src="images/logo.png" height=200 width=200 class="img-fluid"></a>
                    </h2>
                    <p>你想不到的精彩，都在找实惠</p>   
                </div>
                    <div class="row mt-lg-4 bottom-w3layouts-sec-nav mx-0">
                        <div class="col-md-4 footer-grid_section_w3layouts">
                            <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">信息</h3>
                            <ul class="list-unstyled w3layouts-icons">
                                <li>
                                    <a href="index.html">搜索</a>
                                </li>
                                <li class="mt-3">
                                    <a href="about.html">关于我们</a>
                                <li class="mt-3">
                                    <a href="contact.html">联系我们</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 footer-grid_section_w3layouts my-md-0 my-5">
                            <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">联系方式</h3>
                            <div class="contact-info">
                                <div class="footer-address-inf">
                                    <h4 class="ad-info mb-4">电话</h4>
                                    <p>+121 098 8907 9987</p>
                                </div>
                                <div class="footer-address-inf my-4">
                                    <h4 class="ad-info mb-2">邮箱</h4>
                                    <p>info@example.com</p>
                                </div>
                                <div class="footer-address-inf">
                                    <h4 class="ad-info mb-4">地址</h4>
                                    <p>北京市中关村南大街27号</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           </div>
    </footer> 
    <!-- //footer -->
</body>
</html>
