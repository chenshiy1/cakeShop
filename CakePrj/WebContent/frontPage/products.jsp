<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Products</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="../static/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="../static/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="../static/css/form.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="../static/js/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="../static/js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- the jScrollPane script -->
<script type="text/javascript" src="../static/js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
	
</script>
<script type="text/javascript">
	function addShopcart(id,name,i,p){
		var n = document.getElementById("number").value;
		$.ajax({
			type:'post',
			url:'/CakePrj/shopcart/addShopcart',
			data:{cakeId:id,cakeName:name,img:i,price:p,number:n},
		});
	}

	function addCookie(){
		$.ajax({
			type:'post',
			url:'/CakePrj/user/addCookie',
		});
	}
</script>

<!-- //the jScrollPane script -->
<script type="text/javascript" src="../static/js/jquery.mousewheel.js"></script>

<!-- the mousewheel plugin -->		
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="index.html">Yummy</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.html" class="active">Home</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Birthday<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Friend</a></li>
											<li><a class="list" href="products.html">Lover</a></li>
											<li><a class="list" href="products.html">Sister</a></li>
											<li><a class="list" href="products.html">Brother</a></li>
											<li><a class="list" href="products.html">Kids</a></li>
											<li><a class="list" href="products.html">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Chocolate</a></li>
											<li><a class="list" href="products.html">Mixed Fruit</a></li>
											<li><a class="list" href="products.html">Butterscotch</a></li>
											<li><a class="list" href="products.html">Strawberry</a></li>
											<li><a class="list" href="products.html">Vanilla</a></li>
											<li><a class="list" href="products.html">Eggless Cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Heart shaped</a></li>
											<li><a class="list" href="products.html">Cartoon Cakes</a></li>
											<li><a class="list" href="products.html">2-3 Tier Cakes</a></li>
											<li><a class="list" href="products.html">Square shape</a></li>
											<li><a class="list" href="products.html">Round shape</a></li>
											<li><a class="list" href="products.html">Photo cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">1 kG</a></li>
											<li><a class="list" href="products.html">1.5 kG</a></li>
											<li><a class="list" href="products.html">2 kG</a></li>
											<li><a class="list" href="products.html">3 kG</a></li>
											<li><a class="list" href="products.html">4 kG</a></li>
											<li><a class="list" href="products.html">Large</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Wedding<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Friend</a></li>
											<li><a class="list" href="products.html">Lover</a></li>
											<li><a class="list" href="products.html">Sister</a></li>
											<li><a class="list" href="products.html">Brother</a></li>
											<li><a class="list" href="products.html">Kids</a></li>
											<li><a class="list" href="products.html">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Chocolate</a></li>
											<li><a class="list" href="products.html">Mixed Fruit</a></li>
											<li><a class="list" href="products.html">Butterscotch</a></li>
											<li><a class="list" href="products.html">Strawberry</a></li>
											<li><a class="list" href="products.html">Vanilla</a></li>
											<li><a class="list" href="products.html">Eggless Cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Heart shaped</a></li>
											<li><a class="list" href="products.html">Cartoon Cakes</a></li>
											<li><a class="list" href="products.html">2-3 Tier Cakes</a></li>
											<li><a class="list" href="products.html">Square shape</a></li>
											<li><a class="list" href="products.html">Round shape</a></li>
											<li><a class="list" href="products.html">Photo cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">1 kG</a></li>
											<li><a class="list" href="products.html">1.5 kG</a></li>
											<li><a class="list" href="products.html">2 kG</a></li>
											<li><a class="list" href="products.html">3 kG</a></li>
											<li><a class="list" href="products.html">4 kG</a></li>
											<li><a class="list" href="products.html">Large</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>				
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Special Offers <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Friend</a></li>
											<li><a class="list" href="products.html">Lover</a></li>
											<li><a class="list" href="products.html">Sister</a></li>
											<li><a class="list" href="products.html">Brother</a></li>
											<li><a class="list" href="products.html">Kids</a></li>
											<li><a class="list" href="products.html">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Chocolate</a></li>
											<li><a class="list" href="products.html">Mixed Fruit</a></li>
											<li><a class="list" href="products.html">Butterscotch</a></li>
											<li><a class="list" href="products.html">Strawberry</a></li>
											<li><a class="list" href="products.html">Vanilla</a></li>
											<li><a class="list" href="products.html">Eggless Cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Heart shaped</a></li>
											<li><a class="list" href="products.html">Cartoon Cakes</a></li>
											<li><a class="list" href="products.html">2-3 Tier Cakes</a></li>
											<li><a class="list" href="products.html">Square shape</a></li>
											<li><a class="list" href="products.html">Round shape</a></li>
											<li><a class="list" href="products.html">Photo cakes</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">1 kG</a></li>
											<li><a class="list" href="products.html">1.5 kG</a></li>
											<li><a class="list" href="products.html">2 kG</a></li>
											<li><a class="list" href="products.html">3 kG</a></li>
											<li><a class="list" href="products.html">4 kG</a></li>
											<li><a class="list" href="products.html">Large</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Store<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-4">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Friend</a></li>
											<li><a class="list" href="products.html">Lover</a></li>
											<li><a class="list" href="products.html">Sister</a></li>
											<li><a class="list" href="products.html">Brother</a></li>
											<li><a class="list" href="products.html">Kids</a></li>
											<li><a class="list" href="products.html">Parents</a></li>
										</ul>
									</div>																		
									<div class="col-sm-4">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Chocolate</a></li>
											<li><a class="list" href="products.html">Mixed Fruit</a></li>
											<li><a class="list" href="products.html">Butterscotch</a></li>
											<li><a class="list" href="products.html">Strawberry</a></li>
											<li><a class="list" href="products.html">Vanilla</a></li>
											<li><a class="list" href="products.html">Eggless Cakes</a></li>
										</ul>
									</div>								
									<div class="col-sm-4">
										<h4>Specials</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Ice cream cake</a></li>
											<li><a class="list" href="products.html">Swiss roll</a></li>
											<li><a class="list" href="products.html">Ruske kape</a></li>
											<li><a class="list" href="products.html">Cupcakes</a></li>
											<li><a class="list" href="products.html">Muffin</a></li>
											<li><a class="list" href="products.html">Merveilleux</a></li>										
										</ul>
									</div>
								</div>
							</ul>
						</li>								
					</ul> 
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>				
					<div class="search">
						<form class="navbar-form" action="/CakePrj/cake/searchCake">
							<input type="text" class="form-control" name="str">
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								Search
							</button>
						</form>
					</div>	
				</div>
				<div class="header-right login" onmouseover="addCookie()">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">                
						<form id="loginForm" action="/CakePrj/user/signin">
							<fieldset id="body">
								<fieldset>
									<label for="email">Email Address</label>
									<input type="text" name="email" id="email">
								</fieldset>
								<fieldset>
									<label for="password">Password</label>
									<input type="password" name="password" id="password">
								</fieldset>
								<input type="submit" id="login" value="Sign in">
								<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
							</fieldset>
							<p>New User ? <a class="sign" href="/CakePrj/frontPage/regist.jsp">Sign Up</a> <span><a href="#">Forgot your password?</a></span></p>
						</form>
					</div>
				</div>
				<div class="header-right cart">
					<a href="/CakePrj/shopcart/checkShopcart"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.html">
							<span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>) 
						</a></h4>
						<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--products-->
	<div class="products">	 
		<div class="container">
			<h2>Our Products</h2>			
			<div class="col-md-9 product-model-sec">
				

				
				<c:forEach var="cake" items="${partCakeList }" begin="${(pageIndex-1)*perPageCount}" end="${pageIndex*perPageCount-1 }">
					<div class="product-grid">
						<a href="/CakePrj/cake/single?cakeId=${cake.cakeId }">
							<div class="more-product"><span> </span></div>						
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="../static/images/${cake.img}" class="img-responsive" alt=""/>
								<div class="b-wrapper">
								<h4 class="b-animate b-from-left  b-delay03">							
								<button> View </button>
								</h4>
								</div>
							</div>
						</a>				
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${cake.cakeName }</h4>								
								<span class="item_price">${cake.price }</span>
								<div class="ofr">
								
								
								
								
								
									<p class="pric1"><del>
										<fmt:formatNumber type="number" value="${cake.price/cake.discount } " maxFractionDigits="2"/>
									</del></p>
									<p class="disc">[ ${cake.discount*100 } % Off]</p>
								</div>
								
								<form action="" method="post">
									<input type="text" class="item_quantity" id="number" value="1" name="number"/>
									
									<input type="hidden" value="${cake.cakeId }" name="cakeId">
									<input type="hidden" value="${cake.cakeName }" name="cakeName">
									<input type="hidden" value="${cake.img }" name="img">
									<input type="hidden" value="${cake.price }" name="price">
									
									<div class="btn_form">
										<input type="submit" value="ADD" class="add-cart item_add items" onclick="addShopcart('${cake.cakeId}','${cake.cakeName}','${cake.img}','${cake.price}')"/> 
									</div>
								</form>
								
								<div class="clearfix"> </div>
							</div>						
						</div>
					</div>
				</c:forEach>
				
				<center>
				<form action="/CakePrj/cake/changePageIndex">
					<c:forEach var="i" begin="0" end="${partCount/perPageCount }">
							<input type = "submit" value="${i+1 }" name="pageIndex">
					</c:forEach>
				</form>
				</center>
				

				
			</div>	
			<div class="col-md-3 rsidebar span_1_of_left">
				<section  class="sky-form">
					<div class="product_right">
						<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
						<div class="tab1">
							<ul class="place">								
								<li class="sort">Regular Cakes</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>								
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="/CakePrj/cake/findCake?str1=type&str2=Cassata"><p>Cassata</p></a>
								<a href="/CakePrj/cake/findCake?str1=type&str2=乳酪蛋糕"><p>乳酪蛋糕</p></a>
								<a href="/CakePrj/cake/findCake?str1=type&str2=椰子蛋糕"><p>椰子蛋糕</p></a>
								<a href="/CakePrj/cake/findCake?str1=type&str2=杯形饼"><p>杯形饼</p></a>
						    </div>
					    </div>						  
						<div class="tab2">
							<ul class="place">								
								<li class="sort">Special Cakes</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="/CakePrj/cake/findCake?str1=type&str2=美味的蛋糕"><p>美味的蛋糕</p></a>
								<a href="/CakePrj/cake/findCake?str1=type&str2=姜饼"><p>姜饼</p></a>									
						    </div>
					    </div>
						<div class="tab3">
							<ul class="place">								
								<li class="sort">Eggless Cake</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="/CakePrj/cake/findCake?str1=type&str2=牛奶蛋糕"><p>牛奶蛋糕</p></a>
								<a href="/CakePrj/cake/findCake?str1=type&str2=水果蛋糕"><p>水果蛋糕</p></a>
						    </div>
					    </div>
						<div class="tab4">
							<ul class="place">								
								<li class="sort">2-3 Tier Cakes</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="/CakePrj/cake/findCake?str1=type&str2=扭曲四形"><p>扭曲四形</p></a>
								<a href="/CakePrj/cake/findCake?str1=type&str2=花卉形"><p>花卉形</p></a>
								<a href="/CakePrj/cake/findCake?str1=type&str2=双心形"><p>双心形</p></a>
						    </div>
					    </div>
						<!--script-->
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								
								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
								$(".tab5 ul").click(function(){
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
							});
						</script>
						<!--//script -->	
					</div>
				</section>
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>DISCOUNTS</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>70% - 60% (5)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40% (7)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
						</div>
					</div>
				</section>  				 
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Price</h4>
					<ul class="dropdown-menu1">
						<li><a href="">								               
							<div id="slider-range"></div>							
							<input type="text" id="amount" style="border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';" />
							</a></li>			
					</ul>
				</section>
				<!---->
				<script type="text/javascript" src="../static/js/jquery-ui.min.js"></script>
				<link rel="stylesheet" type="text/css" href="../static/css/jquery-ui.css">
					<script type='text/javascript'>//<![CDATA[ 
						$(window).load(function(){
						 $( "#slider-range" ).slider({
									range: true,
									min: 0,
									max: 100000,
									values: [ 500, 100000 ],
									slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
									}
						 });
						$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

						});//]]> 
					</script>
				<!---->
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>By Flavour</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<a href="/CakePrj/cake/findCake?str1=taste&str2=香草">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>香草</label>
							
							</a> 			
						</div>
						<div class="col col-4">
							<a href="/CakePrj/cake/findCake?str1=taste&str2=巧克力">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>巧克力</label>
							</a> 
							<a href="/CakePrj/cake/findCake?str1=taste&str2=奶油">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>奶油</label>
							</a> 
							<a href="/CakePrj/cake/findCake?str1=taste&str2=草莓">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>草莓</label>
							</a> 
							<a href="/CakePrj/cake/findCake?str1=taste&str2=黑森林">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>黑森林</label>
							</a> 
							
						</div>
					</div>
				</section>
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Weight</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Half KG</label>
						</div>		
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>One KG</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>TwO KG</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>More</label>
						</div>
					</div>
				</section>	
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Color</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>White</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Pink</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Gold</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Silver</label>
						</div>
					</div>
				</section>			 
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//products-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-2 footer-grid">
					<h4>company</h4>
					<ul>
						<li><a href="products.html">products</a></li>
						<li><a href="#">Work Here</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Happenings</a></li>
						<li><a href="#">Dealer Locator</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>service</h4>
					<ul>
						<li><a href="#">Support</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Warranty</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>order & returns</h4>
					<ul>
						<li><a href="#">Order Status</a></li>
						<li><a href="#">Shipping Policy</a></li>
						<li><a href="#">Return Policy</a></li>
						<li><a href="#">Digital Gift Card</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>legal</h4>
					<ul>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Terms and Conditions</a></li>
						<li><a href="#">Social Responsibility</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid icons">
					<h4>Connect with Us</h4>
					<ul>
						<li><a href="#"><img src="../static/images/i1.png" alt=""/>Follow us on Facebook</a></li>
						<li><a href="#"><img src="../static/images/i2.png" alt=""/>Follow us on Twitter</a></li>
						<li><a href="#"><img src="../static/images/i3.png" alt=""/>Follow us on Google-plus</a></li>
						<li><a href="#"><img src="../static/images/i4.png" alt=""/>Follow us on Pinterest</a></li>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.17sucai.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
	</div>
</body>
</html>