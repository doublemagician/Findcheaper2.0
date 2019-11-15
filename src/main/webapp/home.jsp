<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="com.control.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

	<title>找实惠</title>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="team" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="1css/bootstrap.min.css">
     <link rel="stylesheet" href="1css/owl.carousel.css">
     <link rel="stylesheet" href="1css/owl.theme.default.min.css">
     <link rel="stylesheet" href="1css/font-awesome.min.css">
     <link rel="stylesheet" href="1css/style.css">
     <!-- MAIN CSS -->
     <link rel="stylesheet" href="1css/tooplate-style.css">

</head>
<body>

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">
               <span class="spinner-rotate"></span>
          </div>
     </section>

     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="index.html" class="navbar-brand"><img src="images/logo.png" height=100 width=150 class="img-fluid">&nbsp&nbsp&nbsp商品分类</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                         <li><a href="#search" class="smoothScroll">搜索</a></li>
                         <li><a href="#foods" class="smoothScroll">食品</a></li>
                         <li><a href="#womencloth" class="smoothScroll">女装</a></li>
                         <li><a href="#mencloth" class="smoothScroll">男装</a></li>
                         <li><a href="#washing" class="smoothScroll">洗护</a></li>
                         <li><a href="#baby" class="smoothScroll">母婴</a></li>
                         <li><a href="#mall" class="smoothScroll">百货</a></li>
                         <li><a href="#mobilephone" class="smoothScroll">手机</a></li>
                         <li><a href="#shoes" class="smoothScroll">鞋类</a></li>
                         <li><a href="#bags" class="smoothScroll">箱包</a></li>
                         <li><a href="#sports" class="smoothScroll">运动</a></li>
                         <li><a href="#equipment" class="smoothScroll">电脑外设</a></li>
                         <li><a href="#electric" class="smoothScroll">电子产品</a></li>
                    </ul>
               </div>

          </div>
     </section>


     <!-- search -->
     <section id="search" data-stellar-background-ratio="0.5">
          <div class="overlay" ></div>
          <div class="container">
               <div class="row">

                    <div class="col-md-offset-3 col-md-6 col-sm-12">
                         <div class="home-info">
                              <h2>我们</h2>
                              <h1>致力于找寻真正的物美价廉</h1>
                              <form action="search.jsp" method="get" class="online-form">
                                   <input type="text" name="product" class="form-control" placeholder="输入您想要的商品名" required="">
                                   <button type="submit" class="form-control" >搜索</button>
                              </form>
                         </div>
                    </div>

               </div>
          </div>
     </section>


     <!-- foods -->
     <section id="foods" data-stellar-background-ratio="0.5">        
		 <div class="container pb-lg-3">
            <h3 class="tittle text-center">食品</h3>
            <div class="row">
            <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("食品", 0, 10000);
    if(ss!=null&&ss.size()!=0)
    {
    Product b=ss.get(1);
       int i=1;
       for(;i<7&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }
               }
        %>
             <button type="submit" class="change-button">换一批</button>   
             </div>
			
</div>         
     </section>


     <!-- womencloth -->
     <section id="womencloth" data-stellar-background-ratio="0.5">
           <div class="container pb-lg-3">
            <h3 class="tittle text-center">女装</h3>
            <div class="row">
             <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("女装", 0, 10000);
    if(ss!=null&&ss.size()!=0)
    {
    Product b=ss.get(1);
       int i=1;
       for(;i<7&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }
               }
        %>   

<button type="submit" class="change-button">换一批</button>
</div>
     </section>


     <!-- mencloth -->
     <section id="mencloth" data-stellar-background-ratio="0.5">
         <div class="container pb-lg-3">
            <h3 class="tittle text-center">男装</h3>
            <div class="row">
             <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("男装", 0, 10000);
     if(ss!=null&&ss.size()!=0)
     {
    Product b=ss.get(1);
       int i=1;
       for(;i<=6&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }
      }  %>    
<button type="submit" class="change-button">换一批</button>
</div>
     </section>


     <!-- washing -->
     <section id="washing" data-stellar-background-ratio="0.5">
          <div class="container pb-lg-3">
            <h3 class="tittle text-center">洗护</h3>
            <div class="row">
                 <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("洗护", 0, 10000);
     if(ss!=null&&ss.size()!=0){
    Product b=ss.get(1);
       int i=1;
       for(;i<=6&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }}
        %>
                
<button type="submit" class="change-button">换一批</button>
</div>
     </section>   

   <!-- baby -->
     <section id="baby" data-stellar-background-ratio="0.5">
          <div class="container pb-lg-3">
            <h3 class="tittle text-center">母婴</h3>
            <div class="row">
               <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("母婴", 0, 10000);
     if(ss!=null&&ss.size()!=0){
    Product b=ss.get(1);
       int i=1;
       for(;i<=6&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }}
        %>  
<button type="submit" class="change-button">换一批</button>
</div>
     </section>   
  
   <!-- mall -->
     <section id="mall" data-stellar-background-ratio="0.5">
          <div class="container pb-lg-3">
            <h3 class="tittle text-center">百货</h3>
            <div class="row">
                <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("百货", 0, 10000);
     if(ss!=null&&ss.size()!=0){
    Product b=ss.get(1);
       int i=1;
       for(;i<=6&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }}
        %>
<button type="submit" class="change-button">换一批</button>
</div>
     </section>   

   <!-- mobilephone -->
     <section id="mobilephone" data-stellar-background-ratio="0.5">
          <div class="container pb-lg-3">
            <h3 class="tittle text-center">手机</h3>
            <div class="row">
              <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("手机", 0, 10000);
     if(ss!=null&&ss.size()!=0){
    Product b=ss.get(1);
       int i=1;
       for(;i<=6&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }}
        %>   
<button type="submit" class="change-button">换一批</button>
</div>
     </section>   
     
        <!-- shoes-->
     <section id="shoes" data-stellar-background-ratio="0.5">
          <div class="container pb-lg-3">
            <h3 class="tittle text-center">鞋类</h3>
            <div class="row">
                 <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("鞋类", 0, 10000);
 if(ss!=null&&ss.size()!=0){
    Product b=ss.get(1);
       int i=1;
       for(;i<=6&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }}
        %>
<button type="submit" class="change-button">换一批</button>
</div>
     </section>   
     
        <!-- bags -->
     <section id="bags" data-stellar-background-ratio="0.5">
          <div class="container pb-lg-3">
            <h3 class="tittle text-center">箱包</h3>
            <div class="row">
               <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("箱包", 0, 10000);
     if(ss!=null&&ss.size()!=0){
    Product b=ss.get(1);
       int i=1;
       for(;i<=6&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }
               }
        %>  
<button type="submit" class="change-button">换一批</button>
</div>
     </section>   
     
        <!-- sports -->
     <section id="sports" data-stellar-background-ratio="0.5">
          <div class="container pb-lg-3">
            <h3 class="tittle text-center">运动</h3>
            <div class="row">
             <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("运动", 0, 10000);
     if(ss!=null&&ss.size()!=0&&ss.size()>=6){
    Product b=ss.get(0);
       int i=1;
       for(;i<=6&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }}
        %>    
<button type="submit" class="change-button">换一批</button>
</div>
     </section>   
     
        <!--equipment -->
     <section id="equipment" data-stellar-background-ratio="0.5">
          <div class="container pb-lg-3">
            <h3 class="tittle text-center">电脑外设</h3>
            <div class="row">
                <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("电脑外设", 0, 10000);
     if(ss!=null&&ss.size()!=0){
    Product b=ss.get(1);
       int i=1;
       for(;i<=6&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }}
        %>
<button type="submit" class="change-button">换一批</button>
</div>
     </section>   
     
        <!-- electric -->
     <section id="electric" data-stellar-background-ratio="0.5">
          <div class="container pb-lg-3">
            <h3 class="tittle text-center">电子产品</h3>
            <div class="row">
              <%
             {
    Controler a=new Controler();
    ArrayList<Product> ss=a.SelectProductType("电子产品", 0, 10000);
     if(ss!=null&&ss.size()!=0){
    Product b=ss.get(1);
       int i=1;
       for(;i<=6&&i<ss.size();i++)
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
               b=ss.get(i);} 
               }}
        %>   
<button type="submit" class="change-button">换一批</button>
</div>
     </section>   
     
     <!-- SCRIPTS -->
     <script src="1js/jquery.js"></script>
     <script src="1js/bootstrap.min.js"></script>
     <script src="1js/jquery.stellar.min.js"></script>
     <script src="1js/owl.carousel.min.js"></script>
     <script src="1js/smoothscroll.js"></script>
     <script src="1js/custom.js"></script>

</body> 
</html>
