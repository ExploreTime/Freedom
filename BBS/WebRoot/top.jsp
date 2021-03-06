<%@page import="com.oralce.model.Users"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="resource" scope="session" var="resource" />
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="http://cdn.bootcss.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/bootstrap/2.3.2/css/bootstrap-responsive.min.css" rel="stylesheet">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="js/unslider.min.js"></script>
<!-- <script src="js/jquery-latest.min.js"></script> -->
<fmt:requestEncoding value="UTF-8" />
<center>
	<div style="width:1000px;height:250px;padding-left: 0px">
		<div
			style="width:100%;border:1px solid green;height:45px;background-color:gray;">
			<div
				style="width:100px;border:1px solid green;height:40px;float: left;padding-top:6px;">论坛</div>
			<c:choose>
				<c:when test="${empty sessionScope.loginedUser}">
					<div
						style="width:100px;border:1px solid green;padding-top:6px;float:right;">

						<a href='<c:url value='login.jsp'></c:url>'>登录</a>
						&nbsp;&nbsp;&nbsp;<a href="#">注册</a>
					</div>
				</c:when>
				<c:otherwise>
					<div
						style="width:200px;height: 100px;position: relative ;left:400px;top:3px;">
						<img src="${sessionScope.loginedUser.headimage}"
							style="border-radius:30px;" width:100%;height="20px"> <b
							style="font-size: 20px;color:white; text-shadow: purple 1px 1px 1px; font-family:华文行楷;">${sessionScope.loginedUser.nickname}</b>
						&nbsp;&nbsp;&nbsp;<a href="<c:url value='logoff.jsp'></c:url>">退出</a>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<div
			style="width:100%;border:1px solid purple;height:30px;text-align:left;padding-left: 0px;">
			<a href="<c:url value="loaddata.jsp"></c:url>"><fmt:message
					key="nav_1" bundle="${sessionScope.resource}"></fmt:message>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
				href="<c:url value="bankuai.jsp"></c:url>"><fmt:message
					key="nav_2" bundle="${sessionScope.resource}"></fmt:message>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="retieprocess.jsp"></c:url>"><fmt:message
					key="nav_3" bundle="${sessionScope.resource}"></fmt:message>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="public.jsp"></c:url>"><fmt:message
					key="nav_4" bundle="${sessionScope.resource}"></fmt:message>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="profile.jsp"></c:url>"><fmt:message
					key="nav_5" bundle="${sessionScope.resource}"></fmt:message>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:choose>
				<c:when test="${empty sessionScope.loginedUser}">
					<a
						href='<c:url value='login.jsp'><c:param name='noticeMessage' value='unlogined'></c:param></c:url>'><fmt:message
							key="nav_6" bundle="${sessionScope.resource}"></fmt:message>
					</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
	      </c:when>
				<c:otherwise>
					<a href='<c:url value='fatie.jsp'></c:url>'><fmt:message
							key="nav_6" bundle="${sessionScope.resource}"></fmt:message>
					</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      </c:otherwise>
			</c:choose>
			<%--  <c:out value="<%=request.getLocale()%>"></c:out> --%>
			<c:set var="browser" scope="page" value="<%=request.getLocale()%>"></c:set>
			<select onchange="javascript:change(this.value)">
				<c:choose>
					<c:when test="${empty param.lan}">
						<c:choose>
							<c:when test="${pageScope.browser eq 'zh_CN'}">
								<option value="zh_CN" selected="selected">中国</option>
								<option value="en_US">English</option>
							</c:when>
							<c:otherwise>
								<option value="zh_CN">中国</option>
								<option value="en_US" selected="selected">English</option>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${param.lan eq 'zh_CN'}">
								<option value="zh_CN" selected="selected">中国</option>
								<option value="en_US">English</option>
							</c:when>
							<c:otherwise>
								<option value="zh_CN">中国</option>
								<option value="en_US" selected="selected">English</option>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
			</select>
		</div>
		<body>
<div class="banner" style="margin-left: 0px;">
    <ul>
        <li><img src="images/system/logo.png" style="align:center;width:100%;float: left;margin-left:0px;padding-right:0px;position: relative;left: -25px"></li>
        <li><img src="images/system/logo2.png" style="align:center;width:100%;float: left;margin-left:0px;padding-right:0px;position: relative;left: -25px"></li>
        <li><img src="images/system/logo3.png" style="align:center;width:100%;float: left;margin-left:0px;padding-right:0px;position: relative;left: -25px"></li>
    </ul>
</div>
<style>
.banner { position: relative; overflow: auto; }
    .banner li { list-style: none; }
        .banner ul li { float: left; }
        </style>
<script>
$(function() {
    $('.banner').unslider();
});
</script>
<style>

.banner{ 
	position: relative;
     overflow: auto;
  }
.banner li{ list-style: none;} 
.banner ul li { float:center; }
</style>
<script>
(function($, f) {
var Unslider = function() {
	
	//  Object clone
	var _ = this;

	//  Set some options
	_.o = {
		speed: 500,     // animation speed, false for no transition (integer or boolean)
		delay: 2000,    // delay between slides, false for no autoplay (integer or boolean)
		init: 0,        // init delay, false for no delay (integer or boolean)
		pause: !f,      // pause on hover (boolean)
		loop: !f,       // infinitely looping (boolean)
		keys: f,        // keyboard shortcuts (boolean)
		dots: f,        // display dots pagination (boolean)
		arrows: f,      // display prev/next arrows (boolean)
		prev: '&larr;', // text or html inside prev button (string)
		next: '&rarr;', // same as for prev option
		fluid: f,       // is it a percentage width? (boolean)
		starting: f,    // invoke before animation (function with argument)
		complete: f,    // invoke after animation (function with argument)
		items: '>ul',   // slides container selector
		item: '>li',    // slidable items selector
		easing: 'swing',// easing function to use for animation
		autoplay: true  // enable autoplay on initialisation
	};

	_.init = function(el, o) {
		//  Check whether we're passing any options in to Unslider
		_.o = $.extend(_.o, o);

		_.el = el;
		_.ul = el.find(_.o.items);
		_.max = [el.outerWidth() | 0, el.outerHeight() | 0];
		_.li = _.ul.find(_.o.item).each(function(index) {
			var me = $(this),
				width = me.outerWidth(),
				height = me.outerHeight();

			//  Set the max values
			if (width > _.max[0]) _.max[0] = width;
			if (height > _.max[1]) _.max[1] = height;
		});


		//  Cached vars
		var o = _.o,
			ul = _.ul,
			li = _.li,
			len = li.length;

		//  Current indeed
		_.i = 0;

		//  Set the main element
		el.css({width: _.max[0], height: li.first().outerHeight(), overflow: 'hidden'});

		//  Set the relative widths
		ul.css({position: 'relative', left: 0, width: (len * 100) + '%'});
		if(o.fluid) {
			li.css({'float': 'left', width: (100 / len) + '%'});
		} else {
			li.css({'float': 'left', width: (_.max[0]) + 'px'});
		}

		//  Autoslide
		o.autoplay && setTimeout(function() {
			if (o.delay | 0) {
				_.play();

				if (o.pause) {
					el.on('mouseover mouseout', function(e) {
						_.stop();
						e.type === 'mouseout' && _.play();
					});
				};
			};
		}, o.init | 0);

		//  Keypresses
		if (o.keys) {
			$(document).keydown(function(e) {
				switch(e.which) {
					case 37:
						_.prev(); // Left
						break;
					case 39:
						_.next(); // Right
						break;
					case 27:
						_.stop(); // Esc
						break;
				};
			});
		};

		//  Dot pagination
		o.dots && nav('dot');

		//  Arrows support
		o.arrows && nav('arrow');

		//  Patch for fluid-width sliders. Screw those guys.
		o.fluid && $(window).resize(function() {
			_.r && clearTimeout(_.r);

			_.r = setTimeout(function() {
				var styl = {height: li.eq(_.i).outerHeight()},
					width = el.outerWidth();

				ul.css(styl);
				styl['width'] = Math.min(Math.round((width / el.parent().width()) * 100), 100) + '%';
				el.css(styl);
				li.css({ width: width + 'px' });
			}, 50);
		}).resize();

		//  Move support
		if ($.event.special['move'] || $.Event('move')) {
			el.on('movestart', function(e) {
				if ((e.distX > e.distY && e.distX < -e.distY) || (e.distX < e.distY && e.distX > -e.distY)) {
					e.preventDefault();
				}else{
					el.data("left", _.ul.offset().left / el.width() * 100);
				}
			}).on('move', function(e) {
				var left = 100 * e.distX / el.width();
			        var leftDelta = 100 * e.deltaX / el.width();
				_.ul[0].style.left = parseInt(_.ul[0].style.left.replace("%", ""))+leftDelta+"%";

				_.ul.data("left", left);
			}).on('moveend', function(e) {
				var left = _.ul.data("left");
				if (Math.abs(left) > 30){
					var i = left > 0 ? _.i-1 : _.i+1;
					if (i < 0 || i >= len) i = _.i;
					_.to(i);
				}else{
					_.to(_.i);
				}
			});
		};

		return _;
	};

	//  Move Unslider to a slide index
	_.to = function(index, callback) {
	
		if (_.t) {
			_.stop();
			_.play();
                }
		var o = _.o,
			el = _.el,
			ul = _.ul,
			li = _.li,
			current = _.i,
			target = li.eq(index);

		$.isFunction(o.starting) && !callback && o.starting(el, li.eq(current));

		//  To slide or not to slide
		if ((!target.length || index < 0) && o.loop === f) return;

		//  Check if it's out of bounds
		if (!target.length) index = 0;
		if (index < 0) index = li.length - 1;
		target = li.eq(index);

		var speed = callback ? 5 : o.speed | 0,
			easing = o.easing,
			obj = {height: target.outerHeight()};

		if (!ul.queue('fx').length) {
			//  Handle those pesky dots
			el.find('.dot').eq(index).addClass('active').siblings().removeClass('active');

			el.animate(obj, speed, easing) && ul.animate($.extend({left: '-' + index + '00%'}, obj), speed, easing, function(data) {
				_.i = index;

				$.isFunction(o.complete) && !callback && o.complete(el, target);
			});
		};
	};

	//  Autoplay functionality
	_.play = function() {
		
		_.t = setInterval(function() {
			_.to(_.i + 1);
		}, _.o.delay | 0);
	};

	//  Stop autoplay
	_.stop = function() {
		
		_.t = clearInterval(_.t);
		return _;
	};

	//  Move to previous/next slide
	_.next = function() {
	
		return _.stop().to(_.i + 1);
	};

	_.prev = function() {
		
		return _.stop().to(_.i - 1);
	};

	//  Create dots and arrows
	function nav(name, html) {
		
		if (name == 'dot') {
			html = '<ol class="dots">';
				$.each(_.li, function(index) {
					html += '<li class="' + (index === _.i ? name + ' active' : name) + '">' + ++index + '</li>';
				});
			html += '</ol>';
		} else {
			html = '<div class="';
			html = html + name + 's">' + html + name + ' prev">' + _.o.prev + '</div>' + html + name + ' next">' + _.o.next + '</div></div>';
		};

		_.el.addClass('has-' + name + 's').append(html).find('.' + name).click(function() {
			var me = $(this);
			me.hasClass('dot') ? _.stop().to(me.index()) : me.hasClass('prev') ? _.prev() : _.next();
		});
	};
};

//  Create a jQuery plugin
$.fn.unslider = function(o) {

	var len = this.length;

	//  Enable multiple-slider support
	return this.each(function(index) {
		//  Cache a copy of $(this), so it
		var me = $(this),
			key = 'unslider' + (len > 1 ? '-' + ++index : ''),
			instance = (new Unslider).init(me, o);

		//  Invoke an Unslider instance
		me.data(key, instance).data('key', key);
	});
};

Unslider.version = "1.0.0";
})(jQuery, false);

</script>

</body><br>