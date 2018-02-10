<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<link href=${pageContext.request.contextPath}/web/css/home/coolbaby.css rel="stylesheet"> 
<!-- <link rel="stylesheet" href=${pageContext.request.contextPath}/web/css/home/flaticon.css> -->
<!-- <link rel="stylesheet" href=${pageContext.request.contextPath}/web/css/home/colorbox.css> -->
<link rel="stylesheet" href=${pageContext.request.contextPath}/web/css/suntorycss/css/bootstrap.min.css>
<link rel="stylesheet" href=${pageContext.request.contextPath}/web/css/suntorycss/css/jquery-ui.css>
<link rel="stylesheet" href=${pageContext.request.contextPath}/web/css/suntorycss/css/font-awesome.min.css>
<link rel="stylesheet" href=${pageContext.request.contextPath}/web/css/suntorycss/css/suntory-main.css>
<!-- <script src=${pageContext.request.contextPath}/web/js/suntoryjs/js/jquery.min.js></script> -->
<script src=${pageContext.request.contextPath}/web/js/suntoryjs/js/jquery-1.11.3.min.js></script>
<script src=${pageContext.request.contextPath}/web/js/suntoryjs/js/bootstrap.min.js></script>

<script src=${pageContext.request.contextPath}/web/js/suntoryjs/js/jquery-ui.js></script>

<link rel="stylesheet" type="text/css" href=${pageContext.request.contextPath}web/css/cart/jquery-ui.css>

<style>
	#ajax-overlay{
		background: rgba(0,0,0,0.5);
		position: fixed;
		height:100%;
		width: 100%;
		top:0px;
		left:0px;
		z-index: 99999999999999999999;
	}
	
	.ajax-spinner{
		position: absolute;
		top:50%;
		left:50%;
		transform : translate(50%,50%);
		color: white;
		font-size: 30px;
	}
	
	body{
		font-family: Roboto
	}


	.navbar-default .navbar-nav>li>a {
	    color: #333232;
	    font-weight: 500;
	}
	
	.navbar-default .suntory-nav .navbar-nav>.active>a, .navbar-default .suntory-nav .navbar-nav>.active>a:focus, .navbar-default .suntory-nav .navbar-nav>.active>a:hover {
	    background: #5BC2DC;
	    color: white;
	}
	
	section.navbar > .background > .container{
		padding: 10px 10px;
	}
	
	.navbar .background {
	    padding-top: 0px;
	}
	
	.suntory-nav .nav > li:hover .suntory-nav .nav > li > a{
	    color: white;
	}
	#ajax-search-input{
		border-radius: 4px 0px 0px 4px;
	}
	  
	.search-btn{
		float: right;background: #5BC2DC;height: 34px;width: 13%;text-align: center;border-radius: 0px 5px 5px 0px;cursor:pointer;
	}
	
	.search-btn:hover{
		background: #2BA8C8;
	}
	
	#user-signing-option > a{
		color: #62a3c1;
		font-weight: 500;
	}
	.btn-shopping-cart .fa-shopping-cart{
		line-height: 0px;
	    vertical-align: text-bottom;
	    font-size: 24px;
	}
	    
	.btn-group.language > a{
		 color: #333;
	}
	
	.navbar-secondary-menu .btn-group{
		vertical-align: bottom;
	}
	
	.navbar-secondary-menu .btn-group:hover>.dropdown-menu{
		margin-top:0px;
	}
	
	.suntory-nav .nav > li:hover > a{
	    color:white;
	}
	
	#productBar{
		border: 1px solid #80808021;
		border-top:0px;
	    font-weight: 500;	
	}
	
	#productBar li:hover a{
		color:white;
	}
	
	.form-control:focus {
	    border-color: #3fbfe0b3;
	    outline: 0;
	    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px #00bcd457;
	    box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px #00bcd457;
	}

</style>

<script>
var ctx= '${pageContext.request.contextPath}'
var userFullName = '${userFullName}';
var userEmail= '${userEmail}';
var imageBaseUrl = '${initParam.imageBaseUrl}';

var currentPage = '<%=request.getParameter("param")%>';
var currentPageFromController = '<%=session.getAttribute("currentPage")%>';

$("#QuickOrder").addClass("active");

//alert('currentPageFromController====' +currentPageFromController);

/* var header = document.getElementById("testid");
alert("header " + header);
var btns = header.getElementsByClassName("headermenu");
alert("btns " + btns);

for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
 */


/* function highlightMenu(currentPageFromController){
	alert('currentPageFromController in function '+currentPageFromController);
	//document.getElementById("home").className = 'active';
	if(currentPageFromController == "home") {
		document.getElementById("home").className = 'active';
		 document.getElementById("QuickOrder").className = '';
		document.getElementById("myorders").className = '';
		document.getElementById("account").className = ''; 
	}
	else if(currentPageFromController == "QuickOrder") {
		alert("inside quickorder");
		
		document.getElementById("home").className = '';
 		document.getElementById("QuickOrder").className = 'active';
		document.getElementById("myorders").className = '';
		document.getElementById("account").className = ''; 
	}
	else if(currentPageFromController == "myorders") {
 		document.getElementById("home").className = '';
		document.getElementById("QuickOrder").className = '';
 		document.getElementById("myorders").className = 'active';
 		document.getElementById("account").className = '';
 	}
	else if(currentPageFromController == "account") {
 		document.getElementById("home").className = '';
		document.getElementById("QuickOrder").className = '';
		document.getElementById("myorders").className = '';
		document.getElementById("account").className = 'active';
	}
	else {
		document.getElementById("home").className = 'active';
		 document.getElementById("QuickOrder").className = '';
		document.getElementById("myorders").className = '';
		document.getElementById("account").className = ''; 
	}
	 
	 
	// document.getElementById("account")
} */
highlightMenu(currentPageFromController);


var skuListString = '${skuList}';
var currentSkuList = [];
if(skuListString && skuListString != '[]' ){
	currentSkuList = skuListString.substring(1,skuListString.length-1).split(', ');
}
showPage(currentPage);
$(document).ajaxStart(function() {
	$('body').append("<div id='ajax-overlay' ><i class='fa fa-spinner fa-spin ajax-spinner' ></i></div>");
});
$(document).ajaxStop(function() {
	$('#ajax-overlay').remove();
});
window.onerror = function(){
	$('#ajax-overlay').remove();
}


</script>


<style>
/*==============================
       -- Shopping cart -- 
==============================*/
.shopping_cart {
  cursor: pointer;
  text-align: right;
  position: relative;
  top: 0;
}
.shopping_cart div.shop-box-wrap {
  display: block;
  text-transform: uppercase;
  color: #777777;
  overflow: hidden;
  height: 40px;
  padding-top: 10px;
}
.shopping_cart div.shop-box-wrap .cart_title {
  color: #333;
  float: left;
  text-decoration: none;
  font: 700 16px/18px "Roboto", sans-serif;
  padding: 9px 13px 10px;
  margin-right: 10px;
  display: none;
}
.shopping_cart div.shop-box-wrap .st3 {
  font: 400 13px/25px "Roboto", sans-serif;
  color: #fff;
  background: #c69c6d;
  text-align: center;
  width: 25px;
  position: relative;
  webkit-border-radius: 500px;
  -moz-border-radius: 500px;
  border-radius: 500px;
  display: inline-block;
  -moz-transition: all 0.4s ease 0s;
  -webkit-transition: all 0.4s ease 0s;
  -o-transition: all 0.4s ease 0s;
  /* Icon Spin */
  vertical-align: middle;
  -webkit-transform: translateZ(0);
  transform: translateZ(0);
  box-shadow: 0 0 1px transparent;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  -moz-osx-font-smoothing: grayscale;
}
.shopping_cart div.shop-box-wrap .st3:before {
  content: "";
  position: absolute;
  right: 16px;
  font-size: 41px;
  color: #000;
  padding: 0;
  opacity: 0;
  -ms-filter: 'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)';
  -moz-transition: all 0.4s ease 0s;
  -webkit-transition: all 0.4s ease 0s;
  -o-transition: all 0.4s ease 0s;
  font-family: "FontAwesome";
  -webkit-transition-duration: 1.2s;
  transition-duration: 1.2s;
  -webkit-transition-property: opacity, transform;
  transition-property: opacity, transform;
  -webkit-transition-timing-function: ease-in-out;
  transition-timing-function: ease-in-out;
}
.shopping_cart div.shop-box-wrap em {
  font-style: normal;
}
.shopping_cart div.shop-box-wrap i {
  font-style: normal;
  display: none;
}
.shopping_cart div.shop-box-wrap:hover .st3 {
  background-color: #000;
  color: #fff;
}
.shopping_cart div.shop-box-wrap:hover .st3:before {
  -webkit-transform: rotate(360deg);
  transform: rotate(360deg);
  -webkit-transition-property: opacity, transform;
  transition-property: opacity, transform;
  opacity: .45;
  -ms-filter: 'progid:DXImageTransform.Microsoft.Alpha(Opacity=45)';
}

.shopping_cart_content {
  position: absolute;
  top: 54px;
  right: -23px;
  z-index: 1110;
  background: #484848;
  text-transform: uppercase;
  text-align: center;
  color: white;
  width: 300px;
  margin-top: 0px;
  -moz-transition: opacity 0.2s 0.1s ease-out, visibility 0.1s 0.1s linear;
  -webkit-transition: opacity 0.3s ease-out, visibility 0.1s 0.1s linear;
  -o-transition: opacity 0.3s ease-out, visibility 0.1s 0.1s linear;
  transition: opacity 0.3s ease-out, visibility 0.1s 0.1s linear;
  display: none;
}
.shopping_cart_content .none {
  padding: 15px;
  -webkit-text-shadow: 0 -2px 0 #000;
  -moz-text-shadow: 0 -2px 0 #000;
  text-shadow: 0 -2px 0 #000;
}

.cart-down {
  padding: 0;
  margin: 0;
  list-style: none;
  background: #fff;
  border: 1px solid #b8b8b8;
  cursor: default;
}
.cart-down .cart_item {
  text-align: left;
}
.cart-down li {
  width: 100%;
  padding: 15px;
  overflow: hidden;
  position: relative;
}
.cart-down li .cart-img {
  float: left;
  margin-right: 10px;
}
.cart-down li .cart-img img {
  width: 35px;
  height: auto;
}
.cart-down li .center-info {
  float: left;
  width: 54%;
  font-family: "Roboto", sans-serif;
  font-weight: 400;
  margin-top: 20px;
}
.cart-down li .center-info .cart-name {
  color: #333;
  text-decoration: none;
  font-size: 13px;
  text-transform: none;
  display: inline;
  font-weight: bold;
}
.cart-down li .center-info .cart-name:hover {
  color: #19bde8;
}
.cart-down li .center-info .prod-info {
  width: 100%;
  overflow: hidden;
  margin-top: 5px;
  color: #888;
}
.cart-down li .center-info .prod-info .model {
  display: block;
}
.cart-down li .quantity em {
  font-style: normal;
}
.cart-down li .delete {
  position: absolute;
  right: 15px;
  top: 16px;
}
.cart-down li .delete:before {
  content: '\f014';
  color: #333;
  font: 300 18px/18px "FontAwesome";
  display: inline-block;
  -moz-transition: all 0.4s ease 0s;
  -webkit-transition: all 0.4s ease 0s;
  -o-transition: all 0.4s ease 0s;
}
.cart-down li .delete:hover:before {
  color: #19bde8;
}
.cart-down .cart-price-total {
  background: #222;
  padding: 15px;
  margin: 0 -15px 15px;
  text-align: right;
  border-top: 3px solid #19bde8;
  border-bottom: 3px solid #19bde8;
  font: 700 16px/18px "Roboto", sans-serif;
  color: #fff;
  text-transform: uppercase;
}
.cart-down .cart-bottom {
  padding: 0 0 15px;
  overflow: hidden;
}
.cart-down .cart-bottom a {
  float: right;
  margin-left: 15px;
}

.cart-price{
	font-size:14px;
	color:black;
}

.cart-down .cart-bottom .btn-success1 {
  padding: 0 6px;
  color: #000;
  position: relative;
  font: bold 14px/31px "Roboto", sans-serif;
  text-transform: none;
  border: 1px solid #b8b8b8;
  -webkit-text-shadow: 0 -1px 0 #fff;
  -moz-text-shadow: 0 -1px 0 #fff;
  text-shadow: 0 -1px 0 #fff;
  -webkit-box-shadow: 0 14px 10px #dbdbdb inset;
  -moz-box-shadow: 0 14px 10px #dbdbdb inset;
  box-shadow: 0 14px 10px #dbdbdb inset;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  -moz-transition: all 0.4s ease 0s;
  -webkit-transition: all 0.4s ease 0s;
  -o-transition: all 0.4s ease 0s;
  background: #fcfcfc;
}
.cart-down .cart-bottom .btn-success1:hover {
  color: #fff;
  background: #16b8e2;
  border-color: #1292b3;
  -webkit-text-shadow: 0 1px 0 #1292b3;
  -moz-text-shadow: 0 1px 0 #1292b3;
  text-shadow: 0 1px 0 #1292b3;
  -webkit-box-shadow: inset 0 0 10px #18bbe6;
  -moz-box-shadow: inset 0 0 10px #18bbe6;
  box-shadow: inset 0 0 10px #18bbe6;
}

.cart-down li + li {
  border-top: 1px solid #b8b8b8;
  /* padding-bottom: 0; */
}

    
/* .btn {
  padding: 0 6px;
  color: #000;
  position: relative;
font: bold 14px/31px "Roboto", sans-serif; 
  font-size: 0.9em !important;
  text-transform: uppercase !important;
  text-transform: none;
  border: 1px solid #b8b8b8;
  -webkit-text-shadow:none !important;
  -moz-text-shadow: none !important;
  text-shadow: none !important;
  -webkit-box-shadow: none !important;
  -moz-box-shadow: none !important;
  box-shadow: none !important;
  -webkit-border-radius: 0 !important;
  -moz-border-radius: 0 !important;
  border-radius: 0 !important;
  -moz-transition: all 0.4s ease 0s;
  -webkit-transition: all 0.4s ease 0s;
  -o-transition: all 0.4s ease 0s;
  background: #fcfcfc;
}
.btn:hover {
  color: #fff;
  background: #16b8e2;
  border-color: #1292b3;
  -webkit-text-shadow: 0 1px 0 #1292b3;
  -moz-text-shadow: 0 1px 0 #1292b3;
  text-shadow: 0 1px 0 #1292b3;
  -webkit-box-shadow: inset 0 0 10px #18bbe6;
  -moz-box-shadow: inset 0 0 10px #18bbe6;
  box-shadow: inset 0 0 10px #18bbe6;
} */

.btn-group {
  display: block;
}

.btn-group a:hover,
.btn-group a:focus {
  color: #fff;
}


.btn-group, .btn-group-vertical {
    position: relative;
    display: inline-block;
    vertical-align: middle;
}

.menuScrollerWrapper{
	z-index:99999;
}


.background .row {
    width: initial;
}

.search-section{
	width:80%;
	height:46px;
	/* line-height:46px; */
	display: inline-block;
}

.search-section input[type=text]{
	height: 34px;
    width: 100%;
    border-radius: 3px;
    border: 1px solid rgba(128, 128, 128, 0);
    padding-left: 12px;
    box-shadow: 0 1px 4px 0 rgba(0,0,0,0.26);
}

.product-count{
	position: absolute;
    display: block;
    left: 37px;
    top: 12px;
    background: #c69c6d;
    height: 20px;
    width: 18px;
    line-height: 20px;
    border-radius: 50%;
}

.shoppingcart-box .title{
	margin:0px;
}
.shoppingcart-box {
    width: 320px;
    padding: 0px;
}

.shopping_cart_content{
    top: 0px;
    right: 0px;
    width: initial;
    display: block
}
.shopping_cart {
	width: 100%;
}

.menu_cart{
	min-height: 90px;
}

.empty-cart{
	width: 320px;
}

section.navbar{
	margin-top:0px
}


.navbar-secondary-menu {
	position: relative;
	z-index: 1200;
	height: 42px;
/* 	overflow:hidden;
 */	text-align: right;
	padding: 3px;
}

.hidden-cart{
	display: none;
}

.cart-div-on-scroll{
	position: absolute;
    right: 0px;
    top: 10px;
}

.navbar {
    z-index: 1030;
}

.qorder-table{
	margin:auto;
	border: 0px;
	width: 100%;
}

.qorder-table td,.qorder-table tr{
	border: 0px;
	
}

.qorder-table td{
	padding: 5px 10px;
}

.qorder-table td:nth-child(1){
	width:40%;
}

.qorder-table td:nth-child(2){
	width: 20%
}

.qorder-table td:nth-child(3){
	width: 40%
}

.qorder-table td:nth-child(3) img{
	width:30%;
}

.qorder-item-number,.qorder-item-qty{
	border: 1px solid #ccc;
    margin-bottom: 5px;
    font-size: 14px;
    height: 40px;
    width: 100%;
    border-radius: 2px;
    padding: 0px 5px; 
}

.qorder-item-number::-webkit-inner-spin-button, 
.qorder-item-number::-webkit-outer-spin-button { 
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    margin: 0; 
}

.qorder-item-number:focus,.qorder-item-qty:focus{
	border: 1px solid #10B2DA;
}

.qorder-item-qty{
	width: 100%;
	text-align: center;
}

.btn-custom{
	background: rgba(0, 0, 0, 0.89);
    color: #BC8D6D;
}

.item-preview{
	vertical-align: middle;
	font-size:15px;
}

.item-cost{
	color: #0063C6;
}

.item-name{
	font-size:11px;
}

.shopping_cart_content{
	width:100%;
}

.profile-img{
	border-radius: 50%;
	height:50px;
	width:auto;
}

#user-info > div{
	text-align:center;
	background: rgba(66, 139, 202, 0.8);
    margin-top: -5px;
    padding-top: 12px;
    margin-bottom:10px;
}


.username{
	font-weight: bold;
    color: white;
    line-height: 30px;
}

li{
	list-style: none;
}

.dropdown-menu li{
	cursor:pointer;
}

#errormsg{
margin-right:306px;
float:right;}

.prod-count-input{
	height: 20px;
    width: 25px;
    /* border-radius: 3px; */
    border: 0px;
    text-align:center;
    color:#888;
    font-weight:bold;
    font-size:14px;
    color:black;
    /* border: 1px solid #DBDBDB;	 */
}
.prod-count-input:hover,.prod-count-input:focus{
	
}

.edit-btn{
    float: right;
    color: #404040;
    font-size: 18px !important;
    display: none !important;
}

.edit-btn:hover{
	color: #00B0F0;
}

.block-important{
	display: block !important;	
}

.invalid-error{
	border: 1px solid red;
}

#qorder-error{
	color:red;
	display: inline-block;
	float: left;
	height:30px;
	font-weight: bold;
    margin-top: 10px;
}

.qorder-table th{
	text-align:center;
}

.submenu-block .name{
	font-weight:bold;
}

.cart-hide{
	display:none;
}

#chat-frame{
	top:0px;
} 


@media (min-width: 768px) {
	.navbar-logo img{
		margin-top:10px;
	}
	
}

@media (max-width: 767px){
	.navbar-compact .header-left .navbar-logo {
    	width:70% !important;
    	z-index: 1000;
	}
	.navbar.navbar-compact .hidden-cart{
		display: block;
	}
	
	 .search-section{
	    width: 65%;
    	margin-left: 15px;
    	height: 46px;
    	margin-top: 10px;
    	display: inline-block;
	 }
}


@media (device-height: 1024px) and (device-width: 768px) and (orientation: portrait){
	body.responsive .navbar-main-menu .item .btn-main {
	    padding: 0 6px !important;
	}
}

#user-signing-option{
	width: initial;
	line-height: 20px;
	margin-left: 20px;
}

#user-signing-option > a:hover,
#user-signing-option >  a:visited,
#user-signing-option >  a:active,
#user-signing-option >  a:focus{
	text-decoration:underline !important;
	color:black !important;
}


.delete{
	cursor:pointer;
}


	
</style>
<header>
		<!-- Search -->
		<%-- <div id="openSearch">
			<div class="container">
				<div class="inside">
					<form id="searchHeader" method="get"  >
						<div class="input-outer">
							<input type="text" class="search-input" value="SEARCH..." onblur="if (this.value == &#39;&#39;) {this.value = &#39;SEARCH...&#39;;}" onfocus="if(this.value == &#39;SEARCH...&#39;) {this.value = &#39;&#39;;}">
						</div>
						<div class="button-outer">
							<button type="button" class="pull-right search-close"><i class="icon">X</i></button>
							<a href="${pageContext.request.contextPath}/web/searchResult.jsp">
							<button type="button" class="pull-right" ><i class="icon icon-xl flaticon-zoom45"></i></button>
							</a>
						</div>
					</form>
				</div>
			</div>
		</div> --%>
		
		<div style="display: none;position: fixed;top: 0px;z-index: 999999;background: white;border-radius: 1%;right: 0;" id="shopping-popup" class="menu_cart">
			<div  class="shoppingcart-box">
				<div class="title">
					cart
					<button type="button" id="cboxClose" onclick="closeShoppingPopUp();" style="opacity:1;">close</button>
				</div>
				<div class=" hidden" id="liTemplate">
					<div class="item animate-delay fadeInRight">
						<div class="image">
						</div>
						<div class="description">
							<span class="product-name"></span><strong class="price"></strong>
						</div>
						<div class="buttons">
							<a  class="icon icon-sm flaticon-write13"></a><a  ></a>
						</div>
					</div>
				</div>
				<div class="shopping_cart" id="shopping_cart">
 			<div class="shopping_cart_content" id="shopping_cart_content">
						<div class="none empty-cart" > Your cart is empty</div> </div>
					</div>
			</div>
		</div>
		<%-- <div class="back-to-top">
			<span class="arrow-up"><img src="${pageContext.request.contextPath}/web/images/home/icon-scroll-arrow.png" alt=""></span><img src="${pageContext.request.contextPath}/web/images/home/icon-scroll-mouse.png" alt="">
		</div> --%>
		<!-- //end Back to top -->
		<section class="navbar">
		<div class="background">
			<div class="container">
				<div class="row">
					<div class="header-left col-sm-5 col-md-6">
						<div class="row">
							<!-- <div class="navbar-welcome col-md-6 compact-hidden hidden-sm hidden-xs">
								Welcome John!
							</div> -->
							<!-- Mobile menu Button-->
							<div class="col-xs-2 visible-xs">
								<div class="expand-nav compact-hidden">
									<a  id="off-canvas-menu-toggle" class="cboxElement" onclick="openMobileShoppingPopUp();" style="cursor: pointer;"><span class="icon icon-xl flaticon-menu29"></span></a>
								</div>
							</div>
							<!-- //end Mobile menu Button -->
							<!-- Logo -->
							<div class="navbar-logo col-xs-10 col-sm-10 col-md-4 text-center">
								<a href='${pageContext.request.contextPath}/' ><img src="${pageContext.request.contextPath}/web/images/suntoryimage/image/suntory_logo.png" alt="Coolbaby" style="height: 40px;"></a>
							</div>
							<!-- //end Logo -->
							<div class="clearfix visible-xs">
							</div>
							<!-- Secondary menu -->
							<%-- <div class="top-link pull-right hidden-cart cart-hide" >
								<div class="btn-outer btn-shopping-cart">
									<a  class="btn btn-xs btn-default open-cart cboxElement" data-toggle="dropdown" onclick="openShoppingPopUp('secondary');" style='position:relative;'  >
										<span class="icon icon-md flaticon-shopping66"></span>
										<span class="st3 product-count" style='position: absolute;left: 23px;top: 4px;height: 20px;width: 18px;line-height: 18px;'>0</span>
									</a>
									<div class="hidden">
								
								</div>
								</div>
							</div> --%>
						</div>
					</div>
					<div class="navbar-secondary-menu col-sm-7 col-md-6 compact-hidden">
						<div class='search-section' style="display: none;" >
							<input type="text" id='searchInput' placeholder='Search Store' />
						</div>
						<div class="btn-group" id='user-signing-option'>
						</div>
						<script type="text/javascript">
						</script>
						 <div class="btn-group">
							<a   title="Language" class=" dropdown-toggle" data-toggle="dropdown"><i class="fa fa-lg fa-language" aria-hidden="true"></i><span class="drop-title"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href='javascript:changeLanguage("en_US")' ><span class="icon-flag icon-flag-en">&nbsp;</span> English</a></li>
								<li><a href="javascript:changeLanguage('fr_FR')" ><span class="icon-flag icon-flag-fr">&nbsp;</span> French</a></li>
							</ul>
						</div> 
					
						
						
						<div class="btn-group">
							<div class="btn-outer btn-shopping-cart">
								<a class="btn btn-xs btn-default open-cart cboxElement " onclick="openShoppingPopUp('primary');">
									<i class="fa fa-lg fa-shopping-cart" aria-hidden="true"></i>
									<core:if test='<%=session.getAttribute("basketCount")!=null %>'>
									<span class="st3 product-count" > <%=session.getAttribute("basketCount")%></span>
		                            </core:if>
									
								</a>
							</div>
						</div>
					<!-- 	<div class="btn-group">
							<div class="btn-outer btn-search" onclick='openSearch(this)'>
								<a   class="btn btn-xs btn-default" data-toggle="dropdown"><span class="icon icon-lg flaticon-zoom45" ></span></a>
							</div>
						</div> -->
						
						<div class="btn-group close-btn" onclick='closeSearch(this)'  style="display:none;">
							<div class="btn-outer" >
								<a   class="btn btn-xs btn-default" >
								<span class="icon icon-lg flaticon-close19" ></span></a>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			<!-- Main menu -->
			
			
			<nav class="navbar navbar-default text-center">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>      
    </div>
    <div class="collapse navbar-collapse zerohorizontalpadding suntory-nav" id="myNavbar">
      <ul id="headermenus" class="nav navbar-nav ">
        <li class="headermenu"  id="home"><a href='${pageContext.request.contextPath}/'><spring:message code="header.home" text="HOME" /></a></li>
<%--         <li class="active"><a href='${pageContext.request.contextPath}/'>HOME</a></li> --%>
		<li class="headermenu"  id="productinfo"><a href='javascript:showPage("productinfo")'><spring:message code="header.products" text="PRODUCTS" /></a>
		<div id="productBar">
		<ul>
		<li ><a href="javascript:openCategoryProducts('Concentrates');"><spring:message code="header.Concentrates" text="Concentrates" /></a></li>
		<li><a href="javascript:openCategoryProducts('Finished');">Finished</a></li>
		</ul>
		</div>
		</li>
        <li id="QuickOrder"><a href='javascript:showPage("QuickOrder")'><spring:message code="header.quickorder" text="QUICK ORDER" /></a></li>
        <li class="headermenu" id="myorders"><a href='javascript:showPage("myorders")'><spring:message code="header.myorders" text="MY ORDERS" /></a></li>
        <li class="headermenu"  id="account"><a href='javascript:showPage("account")'><spring:message code="header.myaccount" text="MY ACCOUNT" /></a></li>
      </ul>
	  <div class="col-sm-4 pull-right" style="padding-top:8px;">

			
			<input id="ajax-search-input" style="display:inline-block;width:87%" type="text" name="srch" class="form-control" placeholder="<spring:message code="header.search" text="FIND YOUR PRODUCT" />">								
			<div class='search-btn' >

				<span class="fa fa-search" style="color: white;line-height: 37px;font-size: 18px; cursor:pointer" onclick='javascript:showpageSearch("searchResult")'></span>
				
			</div>
	  </div>
	  	
    </div>
    
  </div>
  <div id="errormsg" style="color:red"></div>
</nav>
		</section>
		<!-- Navbar height -->
		<div class="navbar-height">
		</div>
		<!-- //end Navbar height -->
		</header>
   <script>
   
      </script>
	
	<div id="cboxOverlay" style="display: none;cursor: pointer;"  onclick="closeWhenClickedOut();" ></div>
<div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;">
	<div id="cboxWrapper">
	<div>
		<div id="cboxTopLeft" style="float: left;"></div>
		<div id="cboxTopCenter" style="float: left;"></div>
		<div id="cboxTopRight" style="float: left;"></div>
	</div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div>
		<div id="cboxContent" style="float: left;">
		<div id="cboxTitle" style="float: left;"></div>
		<div id="cboxCurrent" style="float: left;"></div>
		<button type="button" id="cboxPrevious"></button>
		<button type="button" id="cboxNext"></button>
		<button id="cboxSlideshow"></button>
		<div id="cboxLoadingOverlay" style="float: left;"></div>
		<div id="cboxLoadingGraphic" style="float: left;"></div>
		</div>
		<div id="cboxMiddleRight" style="float: left;"></div>
	</div>
	<div style="clear: left;">
	<div id="cboxBottomLeft" style="float: left;"></div>
	<div id="cboxBottomCenter" style="float: left;"></div>
	<div id="cboxBottomRight" style="float: left;"></div>
	</div>
	</div>
<div style="position: absolute; width: 9999px; visibility: hidden; display: none; max-width: none;"></div>
</div>

<!-- Mobile view - Menu pop up- STARTS -->
 <div id="menu-popup" class="menu_cart" style="display:none;width: 300px;height: 621px;position: absolute;top: 0;right: 0;z-index: 99999;">
 <nav id="off-canvas-menu"><span class="icon icon-xl flaticon-delete30" id="off-canvas-menu-close"></span>
<button type="button" id="cboxClose" onclick="closeMobileShoppingPopUp();" style="opacity:1;color: white;"></button>
	<ul class="expander-list">
		<li><span class="name"><a href="${pageContext.request.contextPath}/">Home</a></span></li>
		<li><span class="name"><span class="expander">+</span><a href="index.html">Lighting</a></span>
		<ul style="display: none;" id="mobile_categories">
			<%-- <li><span class="name"><a href=${pageContext.request.contextPath}/searchpage.plps?searchtext=recessed >Recessed</a></span></li>
			<li data-showfor='B' style='display:none !important'  ><span class="name"><a href=${pageContext.request.contextPath}/searchpage.plps?searchtext=Downlights>Downlights</a></span></li>
			<li><span class="name"><a href='${pageContext.request.contextPath}/searchpage.plps?searchtext=Multiple lighting systems'>Multiple lighting systems</a></span></li>
			<li data-showfor='B' style='display:none !important'  ><span class="name"><a href=${pageContext.request.contextPath}/searchpage.plps?searchtext=Projectors>Projectors</a></span></li>
			<li data-showfor='B' style='display:none !important'  ><span class="name"><a href=${pageContext.request.contextPath}/searchpage.plps?searchtext=Battens>Battens</a></span></li>
			<li data-showfor='B' style='display:none !important'  ><span class="name"><a href='${pageContext.request.contextPath}/searchpage.plps?searchtext=Installer Based Smart Sensors'>Installer Based Smart Sensors</a></span></li>
			<li><span class="name"><a href='${pageContext.request.contextPath}/searchpage.plps?searchtext=Halogen Lamps'>Halogen Lamps</a></span></li>
			<li data-showfor='B' style='display:none !important'  ><span class="name"><a href='${pageContext.request.contextPath}/searchpage.plps?searchtext=Road and Urban Lighting'>Road and Urban Lighting</a></span></li>
			<li><span class="name"><a href='${pageContext.request.contextPath}/searchpage.plps?searchtext=LED Lamps'>LED Lamps</a></span></li>
			<li><span class="name"><a href='${pageContext.request.contextPath}/searchpage.plps?searchtext=LED Tubes'>LED Tubes</a></span></li> --%>
		</ul>
		</li>
		<li><span class="name"><a href="javascript:showPage('myorders')">My Orders </a></span>
		</li>
		<li><span class="name"><a href="javascript:showPage('account')" >My Account</a></span>
		</li>
		<li><span class="name"><a href="javascript:openQuickOrderPopUp()">Quick Order</a></span>
		</li>
		</ul>
	</nav>
</div>
<script>
if(typeof PhilipsLanding == "undefined"){
	$('.header-left').addClass('col-xs-12');
	$('.navbar-secondary-menu.col-sm-7').attr('class','navbar-secondary-menu col-sm-7 col-md-6 col-xs-12 compact-hidden' ).css({'padding':'0px','margin-left':'0px'});
}




</script>
 <!-- <script src=${pageContext.request.contextPath}/web/js/home/prototype.js.download></script> -->
	
	<script src=${pageContext.request.contextPath}/web/js/home/modernizr.custom.02163.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/home/jquery.finger.min.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/home/doubletaptogo.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/home/bootstrap.min.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/home/jquery.easing.1.3.min.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/home/slick.min.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/home/jquery.parallax.min.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/home/jquery.inview.min.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/home/jquery.liMarquee.min.js.download></script>
	<!-- <script src=${pageContext.request.contextPath}/web/js/home/jquery.colorbox-min.js.download></script> -->
	<script src=${pageContext.request.contextPath}/web/js/home/jquery.plugin.min.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/home/jquery.countdown.min.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/home/coolbaby.js></script>
	<script src=${pageContext.request.contextPath}/web/js/home/layout-panel.js.download></script>
	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script type="text/javascript" src=${pageContext.request.contextPath}/web/js/home/jquery.themepunch.plugins.min.js.download></script>
	<script type="text/javascript" src=${pageContext.request.contextPath}/web/js/home/jquery.themepunch.revolution.min.js.download></script>
	<script type="text/javascript" src=${pageContext.request.contextPath}/web/js/home/jquery.themepunch.ini.js.download></script>
	<script src=${pageContext.request.contextPath}/web/js/common/owl.carousel.js></script>
	
	
	
	
	
	<div class="modal fade" id="quickordermodal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="border-bottom:0px;">Quick Order</h4>
        </div>
        <div class="modal-body">
        	<table class=qorder-table >
        		<thead>
	        		<tr>
	        			<th>Item#</th>
	        			<th>Qty</th>
	        		</tr>
        		</thead>
        		<tbody id='qorder-rows'>
	        		<tr>
	        			<td><input type='number' onblur="onblurInput(this)" maxlength='10' class='qorder-item-number' /></td>
	        			<td><input type='number' onblur="onblurInput(this)" maxlength='3' min=1 max=10000 class='qorder-item-qty' /></td>
	        			<td class='item-preview'></td>
	        		</tr>
	        		<tr>
	        			<td><input type='number' onblur="onblurInput(this)"  maxlength='10'  class='qorder-item-number' /></td>
	        			<t
	        			.d><input type='number' onblur="onblurInput(this)"  maxlength='3' min=1 max=10000 class='qorder-item-qty' /></td>
	        			<td class='item-preview'></td>
	        		</tr>
	        		<tr>
	        			<td><input type='number' onblur="onblurInput(this)" maxlength='10'   class='qorder-item-number' /></td>
	        			<td><input type='number' onblur="onblurInput(this)" maxlength='3' min=1 max=10000 class='qorder-item-qty' /></td>
	        			<td class='item-preview'></td>
	        		</tr>
	        		<tr>
	        			<td><input type='number' onblur="onblurInput(this)" maxlength='10'  class='qorder-item-number' /></td>
	        			<td><input type='number' onblur="onblurInput(this)" maxlength='3' min=1 max=10000 class='qorder-item-qty' /></td>
	        			<td class='item-preview'></td>
	        		</tr>
	        		<tr>
	        			<td><input type='number' onblur="onblurInput(this)" maxlength='10'  class='qorder-item-number' /></td>
	        			<td><input type='number' onblur="onblurInput(this)" maxlength='3' min=1 max=10000 class='qorder-item-qty' /></td>
	        			<td class='item-preview'></td>
	        		</tr>
	        		<tr>
	        			<td><input type='number' class='qorder-item-number' /></td>
	        			<td><input type='number' min=1 max=10000 class='qorder-item-qty' /></td>
	        			<td class='item-preview'></td>
	        		</tr>
        		</tbody>
        	</table>
        	<span id='qorder-error' ></span>
        
        </div>
        <div class="modal-footer">
          <h3 class='total-amount-qorder'></h3>
          <button type="button" class="btn btn-default btn-custom" onclick='processQuickOrder("addtocart")' >Add to Cart</button>
          <!-- <button type="button" class="btn btn-default btn-custom" onclick='processQuickOrder("checkout")'>Checkout</button> -->
        </div>
      </div>
      
    </div>
  </div>
<script>
window.$ = jQuery;
<%-- var currentPage = '<%=request.getParameter("param")%>';
 --%>var cartNotAllowed = ['cart','delivery','summary','payment','order','signup'];
if(cartNotAllowed.indexOf(currentPage) < 0){
	$('.cart-hide').removeClass('cart-hide');
}else{
	$('.cart-hide').remove();
}

function openShoppingPopUp(menuType){
	goToListPage();
	event.stopPropagation();
	return;
	
	/* if(menuType=='primary'){
		jQuery("#shopping-popup").css("top","31px")
	}
	else if(menuType=='secondary'){
		jQuery("#shopping-popup").css("top","69px")
	}
	
	jQuery("#cboxOverlay").fadeIn(function(){
		jQuery("#shopping-popup").fadeIn();
	}); */
}

/* function closeShoppingPopUp(){
	jQuery("#shopping-popup").fadeOut(function(){
		jQuery("#cboxOverlay").fadeOut();
	});
}
	
function openMobileShoppingPopUp(){
		jQuery(window).scrollTop(0);
		jQuery("#cboxOverlay").fadeIn(function(){
			jQuery("#menu-popup").fadeIn();
		});
	}	
	
function closeMobileShoppingPopUp(){
		jQuery("#menu-popup").fadeOut(function(){
			jQuery("#cboxOverlay").fadeOut();
		});
}
	
function closeWhenClickedOut(){
	jQuery(".menu_cart").hide();
   	jQuery("#cboxOverlay").fadeOut();
} */

var searchActive = false;

function closeSearch(ele){
	$('.search-section,.close-btn').hide();
	$(ele).siblings('.btn-group:not(.close-btn)').fadeIn();
	$('.btn-search').attr('onclick','openSearch(this)')
	searchActive = false;
}


function openSearch(ele){
	$(ele).parent().siblings('.btn-group').hide()
	$('.close-btn,.search-section').show();
	$('#searchInput').focus();
	$(ele).attr('onclick','callSearchPageWithText();')
	searchActive = true;
}

window.onkeypress = function(){
	if(event.charCode == 13 && searchActive){
		callSearchPageWithText();
	}
}
$('.qorder-item-number').keydown(function(){
	if(event.key == 'e' || event.key == '.'){
		event.preventDefault();
		event.stopPropagation();
		return false;
	}
})

var qOrderproductInfo = {};
$('.qorder-item-number').on('input',function(){
	var ele = this;
	if(ele.value){
		var image  = '<img src="'+ctx+'/web/images/common/loading.gif" style="height:25px;width:auto;margin:auto;" />';
		$(ele).parent().siblings('.item-preview').html(image);
		makeAjaxGETCall(ctx+'/productinfoforquickorder.plps?productid='+ele.value.trim(),function(message,response){
			if(message == 'OK'){
				var data = eval('('+ response +')').data;
				if(data != 'N/A'){
					qOrderproductInfo[ele.value.trim()] = data;
					$(ele).parent().parent().attr('data-productid',ele.value.trim());
					$(ele).parent().siblings('.item-preview').html('<img src='+ctx+'/web/products/'+data.IMAGE_PATH+' style="height:45px;width: auto;float:left" />'+
							'<div style="float:right;width:70%;text-align:left;" ><span class=item-cost >'+data.OUR_PRICE+' $</span><br>'+
							'<span class=item-name >'+data.PRODUCT_NAME+' $</span></div>');
					$(ele).parent().siblings().find('.qorder-item-qty').val(1); 
					return;
				}
			}
		})
	}
	$(ele).parent().siblings('.item-preview').html('');
	$(ele).parent().siblings().find('.qorder-item-qty').val('');
	$(ele).parent().parent().removeAttr('data-productid');
	
})



 function processQuickOrder(action){
	var orderInfo = []; 
	var updateInfo = [];
	var tempIds = [];
	var validRequest = true;
	$('#qorder-rows tr[data-productid]').each(function(){
		var prodId = $(this).attr('data-productid');
		if(tempIds.indexOf(prodId) >= 0){
			
			// DUPLICATE IDS FOUND
			$(this).find('input').addClass('invalid-error');
			$(this).find('input').addClass('active');
			validRequest = false;
			return false;
		}
		tempIds.push(prodId);
		if(cartIds.indexOf(prodId) < 0){
			tempIds.push(prodId);
			var details = qOrderproductInfo[prodId];
			orderInfo.push({
				'productDetailsID' : prodId,
				'productName' : qOrderproductInfo[prodId].PRODUCT_NAME,
				'productImagePath' : qOrderproductInfo[prodId].IMAGE_PATH,
				'quantity' : $(this).find('.qorder-item-qty').val(),
				'price' : qOrderproductInfo[prodId].OUR_PRICE
			})
		}else{
			updateInfo.push({'productDetailsID' : prodId, "quantity" : $(this).find('.qorder-item-qty').val()});
		}
	});
	
	// DUPLICATE IDS FOUND
	if(!validRequest){
		$('#qorder-error').html('Please remove the duplicate Id\'s');
		return;
	}
	// NO ITEMS ADDED
	if(orderInfo.length == 0 && updateInfo.length == 0){
		$('#qorder-error').html('Please add the products');
		return;
	}

	makeAjaxPOSTCall(ctx+'/addtocartquickorder.plps',function(message,response){
		if(message == 'OK'){
			var response = eval('('+response+')');
			if(response.status == 'success'){
				if(action == 'checkout'){
					window.open(ctx+"/showPage.plps?page=cart","_self");
				}else{
					$('#qorder-error').html('<font color=green >Added to cart Successfully</font>');
					$('.item-preview').html('');
					$('#qorder-rows tr').removeAttr('data-productid');
					$('.qorder-item-number,.qorder-item-qty').val('');
					/* populateCartDataOnload(); */
				}
			}
		}
	},"data="+JSON.stringify({'cartdata':orderInfo,'updateInfo' : updateInfo }));
} 


function openQuickOrderPopUp(){
	closeWhenClickedOut();
	if(!userName){
		requestedPage = 'quickOrder';
		$('#page-overlay').fadeIn(5000);
		return;
	}

	requestedPage = '';
	$('#qorder-error').html('');
	$('#quickordermodal').modal('show');		
	
} 
function openCategoryProducts(category){
	var param = 'CategoryProduct&categoryId='+category;
	var url = ctx + '/showPage.mgt?param='+param;
	if(userFullName){ 
		window.open(url,'_self');
	}else{
		$('#login-popup').modal('show');
		afterLoginPage = param;
	}

	
} 
$('#qorder-rows input').focus(function(){
	$('.invalid-error').removeClass('invalid-error');	
	$('#qorder-error').html('');
})


function onblurInput(ele){
	var validContent = $(ele).closest('tr').attr('data-productid');
	if(!validContent){
		console.log($(ele).closest('tr').find('input'));
		$(ele).closest('tr').find('input').val('');
		return;
	}

	if($(ele).hasClass('qorder-item-qty') && validContent && (!ele.value || ele.value == 0 )){
		ele.value = 1;
	}
}

$('#qorder-rows input').on('input',function(){
	var maxLength = $(this).attr('maxlength');
	if(this.value.length > maxLength ){
		this.value = this.value.slice(0,maxLength);
	}
});

$('#MainPopupIframe').load(function(){
       $(this).show();
       console.log('laod the iframe')
   });

var categoryIdMap = {};
$(document).ready(function(){
	
	if(currentSkuList)
		//$('.product-count').html(currentSkuList.length)
	
	var url = typeof PhilipsLanding != 'undefined' ? ctx+'/getlandingpagedata.mgt' : ctx+'/fetchcategories.mgt';
	$.get(url)
	.done(function(response){
		console.log(response);
		var categories = response.categories; 
		var str = '', mobstr = '';
		
		for(var id in categories){
			str +='<div class="col-md-3 col-lg-2"><div class="submenu-block">'+
				  '<a class="name" data-catid='+id+' data-catname='+categories[id]+' href="javascript:;" onclick="categorySearch(this)">'+categories[id]+'</a></div></div>'; 
			mobstr+='<li><span class="name"><a href="${pageContext.request.contextPath}/searchpage.mgt?searchtype=category_id&value='+categories[id]+'&condition=eq">'+categories[id]+'</a></span></li>'
			categoryIdMap[id] = {'name' : categories[id], 'data' : []};
		}
		jQuery(".product_categories").html(str);
		jQuery("#mobile_categories").html(mobstr);
		if(window.makeSliders)
			makeSliders(response.productList);
		
	});
	var catUrl = ctx + '/loadcategories.mgt';
	$.get(catUrl)
	.done(function(response){
		console.log(response);
		var childCategories = response.children_data;
		var str ='<ul>';
		for(var id in childCategories){
			str +='<li><a href="javascript:openCategoryProducts('+childCategories[id].id+');">'+childCategories[id].name+'</a></li>'; 
		}
		
		str+='</ul></div>';
		$('#productBar').html(str);
		
	});
	
});




function categorySearch(ele){
	var catData = $(ele).data();
	var parameters = 'searchtype=category_id&value='+catData.catid+'&condition=eq&searchtext='+catData.catname;
	if(typeof categoryResultsPage != 'undefined' ){
		$.get(ctx + '/searchproducts.mgt?'+parameters)
		.done(function(response){
			if(response.status == 'success'){
				searchresult = JSON.stringify(response)
				productList = response.data
				searchText = catData.catname;
				if($('#grid').is('.active'))
					renderGridview();
				else 
					renderListView();
				
				window.history.pushState(null,null, ctx + '/searchpage.mgt?'+parameters)
			}
		})
	}else{
		window.open(ctx + '/searchpage.mgt?'+parameters, '_self');
	}
}

/**
 * User signing operations 
 */
 

// Used to determine if the user has requested for myorders or myaccount 
var afterLoginPage = "account";
 
function login(){
 	var username = $('#username').val().trim();
	var password = $('#password').val().trim();
	var userType = $('#userType').val().trim();
	if(userType == "Select"){
		alert("Please Select the User");
	}	
	$('#login-btn').addClass('disabled');
	$("#login-alert-messages").css("display","none");
	$.post( ctx + '/login.mgt', "username="+username+'&password='+password+'&userType='+userType)
	.done(function(response){
		if (response.status == 'success') {
            if ($.type(response.userinfo) === "object") {
            	$("#login-alert-messages").css("display","block").html("<div class='alert alert-success'><strong>Success!</strong> Loggedin Successfully.</div>");
            	if(afterLoginPage){
    				window.open(ctx + '/showPage.mgt?param='+afterLoginPage,'_self');
    				return;
    			}
    			
    			userFullName = response.userinfo.firstname +' '+response.userinfo.lastname;
    			userEmail= response.userinfo.email;
    			checkLogin();
    			window.location.reload();
    			$('#login-popup').modal('hide');
    			return;
            } else {
                  $("#login-alert-messages").css("display","block").html("<div class='alert alert-danger'><strong></strong> Oops..! There is some problem to make a request. Please try again.</div>");
            }
      } else if($.type(response.data) === "object") {
            $("#login-alert-messages").css("display","block").html("<div class='alert alert-danger'><strong></strong>Authentication failed</div>");

      } else {
            $("#login-alert-messages").css("display","block").html("<div class='alert alert-danger'><strong></strong> Unexpected Error.</div>");
      }

		/* if(response.status == 'success'){
			
			if(afterLoginPage){
				window.open(ctx + '/showPage.mgt?param='+afterLoginPage,'_self');
				return;
			}
			
			userFullName = response.userinfo.firstname +' '+response.userinfo.lastname;
			userEmail= response.userinfo.email;
			checkLogin();
			$('#login-popup').modal('hide');
			return;
		}
		$('#login-message').html('Authentication Failed'); */
	})
	.fail(function(error){
		//$('#login-message').html('Unexpected Error');
		 $("#login-alert-messages").css("display","block").html("<div class='alert alert-danger'><strong></strong> Unexpected Error.</div>");
	})
	.always(function(){
		$('#login-btn').removeClass('disabled');
	})
}

function logout(){
	window.open(ctx +'/logout.mgt','_self');
}

function showLogin(){
	$('#login-popup').modal('show');
}


function checkLogin(){
	if(userFullName){
		$('#user-signing-option').html('<a href="javascript:logout()" data-toggle="dropdown" >Welcome, '+userFullName+'</a>'+
									   '<ul class="dropdown-menu" style="margin-top: 0px;" role="menu" ><li onclick="logout();" style="text-align:center;"  >Log out</li></ul>');
	}else{
		$('#user-signing-option').html('<a href="javascript:showLogin();" >Login</a>');
	}
}
checkLogin()

function showPage(param){
	if(userFullName){
		alert(param);
		//highlightMenu();
		//if(document.getElementById(param) == currentPage) {
		/* 	alert('inside if active class');
	alert('current page = '+currentPage);
			document.getElementById(param).className = 'active';
alert('inside if active class');
		//} */
		
		//element.setAttribute("className", "active");
		//this.getElement().className = 'active';
		window.open(ctx + '/showPage.mgt?param='+param,'_self');
/* 		document.getElementById(param).className = 'active';
 */
 
 //highlightMenu();
	}else{
		$('#login-popup').modal('show');
		afterLoginPage = param;
	}
}


/* function highlightMenu(currentPageFromController){
	alert('currentPageFromController in function '+currentPageFromController);
	//document.getElementById("home").className = 'active';
	if(currentPageFromController == "home") {
		document.getElementById("home").className = 'active';
		 document.getElementById("QuickOrder").className = '';
		document.getElementById("myorders").className = '';
		document.getElementById("account").className = ''; 
	}
	else if(currentPageFromController == "QuickOrder") {
		alert("inside quickorder");
		
		document.getElementById("home").className = '';
 		document.getElementById("QuickOrder").className = 'active';
		document.getElementById("myorders").className = '';
		document.getElementById("account").className = ''; 
	}
	else if(currentPageFromController == "myorders") {
 		document.getElementById("home").className = '';
		document.getElementById("QuickOrder").className = '';
 		document.getElementById("myorders").className = 'active';
 		document.getElementById("account").className = '';
 	}
	else if(currentPageFromController == "account") {
 		document.getElementById("home").className = '';
		document.getElementById("QuickOrder").className = '';
		document.getElementById("myorders").className = '';
		document.getElementById("account").className = 'active';
	}
	else {
		document.getElementById("home").className = 'active';
		 document.getElementById("QuickOrder").className = '';
		document.getElementById("myorders").className = '';
		document.getElementById("account").className = ''; 
	}
	 
	 
	// document.getElementById("account")
}
 */
//highlightMenu(currentPageFromController);

function goToListPage(){
	
	window.open(ctx + '/showPage.mgt?param=cart','_self');
	
}

<%-- $(document).ready(function(){
	var unauthorizedAccess = '<%=request.getParameter("error")%>';
	if(unauthorizedAccess && unauthorizedAccess != 'null'){
		showLogin();
	}
}) --%>

/* $(document).ready(function () {
	$('.main-menu li.active').removeClass('active');
    var url = window.location;
    $('ul.main-menu a[href="'+ url +'"]').parent().addClass('active');
    $('ul.main-menu a').filter(function() {
         return this.href == url;
    }).parent().addClass('active');
	 
	$('ul.sub-menu a[href="'+ url +'"]').parents(".productmenu").addClass('active');
    $('ul.sub-menu a').filter(function() {
         return this.href == url;
    }).parents(".productmenu").addClass('active');
}); */


/* $(document).ready(function(){
	  $('ul.sub-menu li a').click(function(){
	    $('ul.sub-menu li a').removeClass("active");
	    $(this).addClass("active");
	});
	}); */


function changeLanguage(language){
	var locStr=window.location.toString();
	$.get(ctx+'/changelanguage.mgt?language='+language+'&currentURL=|'+locStr+'|')
	.done(function(response){
		console.log(response);
		window.location = response;
		window.location.reload();
	});
}





function showpageSearch(param)
{
	var key=document.getElementById("ajax-search-input").value;
	key=key.trim();
	 if(key=='')
	 {
		 $("#errormsg").html("Enter a product to search");
	 }
	 else
	 {
		 if(userFullName)
		 {
			 window.open(ctx+'/showPage.mgt?param='+param+'&key='+key,'_self');
			 }
		 else
		 {
			 $('#login-popup').modal('show');
			 afterLoginPage = param;
		 }
	 }
	}
	
/* var header = document.getElementById("headermenus");
alert("header " + header);
var btns = header.getElementsByClassName("headermenu");
alert("btns " + btns);

for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
} */	
$("#QuickOrder").addClass("active");
</script>
<script type="text/javascript" src=${pageContext.request.contextPath}/web/js/common/jquery-ui.min.js ></script>

<script>
function highlightMenu(currentPageFromController){
	var header = document.getElementById("headermenus");
	alert("header " + header);
	var btns = header.getElementsByClassName("headermenu");
	alert('btns = '+btns);
	//$(".headermenu").addClass("active");
	
	//$("#QuickOrder").addClass("active");
	//el.addClass("active");
	//function highlightMenu(currentPageFromController){
		alert('currentPageFromController in function '+currentPageFromController);
		//document.getElementById("home").className = 'active';
		if(currentPageFromController == "home") {
			$("#home").addClass("active");
			//document.getElementById("home").addClass('active');
			 document.getElementById("QuickOrder").className = '';
			document.getElementById("myorders").className = '';
			document.getElementById("account").className = ''; 
		}
		else if(currentPageFromController == "QuickOrder") {
			alert("inside quickorder");
			$("#home").addClass("QuickOrder");

			document.getElementById("home").className = '';
	 		//document.getElementById("QuickOrder").addClass = 'active';
			document.getElementById("myorders").className = '';
			document.getElementById("account").className = ''; 
		}
		else if(currentPageFromController == "myorders") {
			$("#home").addClass("myorders");

	 		document.getElementById("home").className = '';
			document.getElementById("QuickOrder").className = '';
	 		//document.getElementById("myorders").className = 'active';
	 		document.getElementById("account").className = '';
	 	}
		else if(currentPageFromController == "account") {
	 		document.getElementById("home").className = '';
			document.getElementById("QuickOrder").className = '';
			document.getElementById("myorders").className = '';
			document.getElementById("account").className = 'active';
		}
		else {
			document.getElementById("home").className = 'active';
			 document.getElementById("QuickOrder").className = '';
			document.getElementById("myorders").className = '';
			document.getElementById("account").className = ''; 
		}
		 
		 
		// document.getElementById("account")
	}
	
	
	
	
	
	
	
	
	
	alert('btn.length = '+btns.length);
	/* for (var i = 0; i < btns.length; i++) {
		alert('btns[+' + i + '] = ' + btns[i]);
	  btns[i].addEventListener("click", function() {
	    var current = document.getElementsByClassName("active");
	    alert('current = '+current);
	    current[i].className = current[i].className.replace(" active", "");
	    alert('current[ '+ i+ ' ].className = '+current[i].className);

	    this.className += " active";
	 // }
	  
	  );
	} */	
//}
//highlightMenu();




</script>
	