<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<script src="js/unslider.min.js"></script>
<script src="js/jquery-latest.min.js"></script>
<body>
<!-- 首先引入jQuery和unslider -->

<!-- 写点样式，让轮播好看点 -->
<style>
ul, ol { padding: 0;}
.banner { position: relative; overflow: auto; text-align: center;}
.banner li { list-style: none; }
.banner ul li { float: left; }
#b04 { width: 640px;}
#b04 .dots { position: absolute; left: 0; right: 0; bottom: 20px;}
#b04 .dots li 
{ 
	display: inline-block; 
	width: 10px; 
	height: 10px; 
	margin: 0 4px; 
	text-indent: -999em; 
	border: 2px solid #fff; 
	border-radius: 6px; 
	cursor: pointer; 
	opacity: .4; 
	-webkit-transition: background .5s, opacity .5s; 
	-moz-transition: background .5s, opacity .5s; 
	transition: background .5s, opacity .5s;
}
#b04 .dots li.active 
{
	background: #fff;
	opacity: 1;
}
#b04 .arrow { position: absolute; top: 200px;}
#b04 #al { left: 15px;}
#b04 #ar { right: 15px;}
</style>
<!-- 把要轮播的地方写上来 -->
<div class="banner" id="b04">
    <ul>
        <li><img src="images/system/logo.png" alt="" width="640" height="480" ></li>
        <li><img src="images/system/logo2.png" alt="" width="640" height="480" ></li>
        <li><img src="images/system/logo3.png" alt="" width="640" height="480" ></li>
        <!-- <li><img src="04.jpg" alt="" width="640" height="480" ></li>
        <li><img src="05.jpg" alt="" width="640" height="480" ></li> -->
    </ul>
    <a href="javascript:void(0);" class="unslider-arrow04 prev"><img class="arrow" id="al" src="arrowl.png" alt="prev" width="20" height="35"></a>
    <a href="javascript:void(0);" class="unslider-arrow04 next"><img class="arrow" id="ar" src="arrowr.png" alt="next" width="20" height="37"></a>
</div>
<!-- 最后用js控制 -->
<script>
$(document).ready(function(e) {
    var unslider04 = $('#b04').unslider({
		dots: true
	}),
	data04 = unslider04.data('unslider');
	
	$('.unslider-arrow04').click(function() {
        var fn = this.className.split(' ')[1];
        data04[fn]();
    });
});
</script>

</body>
</html>