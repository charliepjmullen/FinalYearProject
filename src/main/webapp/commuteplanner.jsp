<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<meta name="csrf-token" content="{{ csrf_token() }}">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBFPWYqo7eTVGJhmehhcndY1R8Dc-vQuXE&amp;libraries=geometry&amp;"></script>
	
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<style>
/* Nav Side Bar  */
.nav-side-menu {
	overflow: auto;
	font-family: verdana;
	font-size: 12px;
	font-weight: 200;
	background-color: #2e353d;
	position: fixed;
	top: 0px;
	width: 300px;
	height: 100%;
	color: #e1ffff;
}

.nav-side-menu .brand {
	background-color: #23282e;
	line-height: 50px;
	display: block;
	text-align: center;
	font-size: 14px;
}

.nav-side-menu .toggle-btn {
	display: none;
}

.nav-side-menu ul, .nav-side-menu li {
	list-style: none;
	padding: 0px;
	margin: 0px;
	line-height: 35px;
	cursor: pointer;
	/*    
    .collapsed{
       .arrow:before{
                 font-family: FontAwesome;
                 content: "\f053";
                 display: inline-block;
                 padding-left:10px;
                 padding-right: 10px;
                 vertical-align: middle;
                 float:right;
            }
     }
*/
}

.nav-side-menu ul :not(collapsed) .arrow:before, .nav-side-menu li :not(collapsed) .arrow:before
	{
	font-family: FontAwesome;
	content: "\f078";
	display: inline-block;
	padding-left: 10px;
	padding-right: 10px;
	vertical-align: middle;
	float: right;
}

.nav-side-menu ul .active, .nav-side-menu li .active {
	border-left: 3px solid #d19b3d;
	background-color: #4f5b69;
}

.nav-side-menu ul .sub-menu li.active, .nav-side-menu li .sub-menu li.active
	{
	color: #d19b3d;
}

.nav-side-menu ul .sub-menu li.active a, .nav-side-menu li .sub-menu li.active a
	{
	color: #d19b3d;
}

.nav-side-menu ul .sub-menu li, .nav-side-menu li .sub-menu li {
	background-color: #181c20;
	border: none;
	line-height: 28px;
	border-bottom: 1px solid #23282e;
	margin-left: 0px;
}

.nav-side-menu ul .sub-menu li:hover, .nav-side-menu li .sub-menu li:hover
	{
	background-color: #020203;
}

.nav-side-menu ul .sub-menu li:before, .nav-side-menu li .sub-menu li:before
	{
	font-family: FontAwesome;
	content: "\f105";
	display: inline-block;
	padding-left: 10px;
	padding-right: 10px;
	vertical-align: middle;
}

.nav-side-menu li {
	padding-left: 0px;
	border-left: 3px solid #2e353d;
	border-bottom: 1px solid #23282e;
}

.nav-side-menu li a {
	text-decoration: none;
	color: #e1ffff;
}

.nav-side-menu li a i {
	padding-left: 10px;
	width: 20px;
	padding-right: 20px;
}

.nav-side-menu li:hover {
	border-left: 3px solid #d19b3d;
	background-color: #4f5b69;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	-ms-transition: all 1s ease;
	transition: all 1s ease;
}

@media ( max-width : 767px) {
	.nav-side-menu {
		position: relative;
		width: 100%;
		margin-bottom: 10px;
	}
	.nav-side-menu .toggle-btn {
		display: block;
		cursor: pointer;
		position: absolute;
		right: 10px;
		top: 10px;
		z-index: 10 !important;
		padding: 3px;
		background-color: #ffffff;
		color: #000;
		width: 40px;
		text-align: center;
	}
	.brand {
		text-align: left !important;
		font-size: 22px;
		padding-left: 20px;
		line-height: 50px !important;
	}
}

@media ( min-width : 767px) {
	.nav-side-menu .menu-list .menu-content {
		display: block;
	}
	
.inputbox{
    position: absolute;
    left: 200px;
	width : 50%;
}

    .logoimage {
    position: absolute;
    top: 0px;
    left: 0px;
    height : 100%;
    width: 22%;
}
}
</style>
<script>
var geocoder = new google.maps.Geocoder();

var PostCodeid1 = '#address';
$(function() {
	$(PostCodeid1).autocomplete({
		source : function(request, response) {
			geocoder.geocode({
				'address' : request.term,
				componentRestrictions : {
					country : "ie"
				}
			}, function(results, status) {
				response($.map(results, function(item) {
					return {
						label : item.formatted_address,
						value : item.formatted_address,
						lat : item.geometry.location.lat(),
						lon : item.geometry.location.lng()
					};
				}));
			});
		}
	});
});

var PostCodeid2 = '#address2';
$(function() {
	$(PostCodeid2).autocomplete({
		source : function(request, response) {
			geocoder.geocode({
				'address' : request.term,
				componentRestrictions : {
					country : "ie"
				}
			}, function(results, status) {
				response($.map(results, function(item) {
					return {
						label : item.formatted_address,
						value : item.formatted_address,
						lat : item.geometry.location.lat(),
						lon : item.geometry.location.lng()
					};
				}));
			});
		}
	});
});

var PostCodeid3 = '#address3';
$(function() {
	$(PostCodeid3).autocomplete({
		source : function(request, response) {
			geocoder.geocode({
				'address' : request.term,
				componentRestrictions : {
					country : "ie"
				}
			}, function(results, status) {
				response($.map(results, function(item) {
					return {
						label : item.formatted_address,
						value : item.formatted_address,
						lat : item.geometry.location.lat(),
						lon : item.geometry.location.lng()
					};
				}));
			});
		}
	});
});

function saveCommuteAddresses(){

	var address = document.getElementById("address").value;
	var addressnickname = document.getElementById("addressnickname").value;
/* 	var address3 = document.getElementById("address3").value; */

	
	$.ajax({
 	type: "POST",
 	url: "/savecommutes",
 	data: { address: address,
 		    addressnickname: addressnickname
          }, // parameters
    datatype: 'json'
});
}



</script>
</head>
<body>
  <div id="custom-bootstrap-menu-savedareas" class="navbar navbar-default " role="navigation">
    <div class="container-fluid">
        <div class="navbar-header"><a class="navbar-brand" href="/" style="max-width: 30%;">
    <img class = "logoimage" src="${pageContext.request.contextPath}/resources/images/logo2.PNG">
 </a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
            </button>
        </div>
				<div class="collapse navbar-collapse navbar-menubuilder">

					<div id ="topnavbar">
					<ul class="nav navbar-nav navbar-right">
						<li><c:if
								test="${pageContext.request.userPrincipal.name != null}">
								<form id="logoutForm" method="POST"
									action="${contextPath}/logout">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
								</form>

								<a>Welcome ${pageContext.request.userPrincipal.name}</a>

							</c:if></li>
							
						<li><a onclick="document.forms['logoutForm'].submit()">Logout</a>
		
						</li>
					</ul>
					</div>
				</div>
    </div>
</div>

<div class = "inputbox">
	
	<h4>Welcome to Suss, Dublin's only application to get the Suss on areas. You're nearly ready to use all of Suss' features. </h4>
	<h4>To get started enter an address you visit regularly and give it a nickname. This will come in handy later. </h4>
	<h4>Or click skip for now to move on. Enjoy! </h4>
	<br>
	<br>
	<br>
 <input type="text" id="address" class="form-control"   placeholder="Enter an address here" style ="width: 70%"/><br>
 <input type="text" id="addressnickname" class="form-control" placeholder="Pick a nickname for this address e.g Home, Work, Bird/fellas Gaf" width="70%" />
	
 
  
  <input type="button" id="routebtn" class="btn" value="Save Commute locations" onclick="saveCommuteAddresses(), location.href = '/'" /><br> 

	<h4><a href = "/skip">Skip For Now</a></h4>
</div>
<br>


</body>
</html>