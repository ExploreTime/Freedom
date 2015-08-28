<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
   <title>Bootstrap 实例 - 弹出框（Popover）插件方法</title>
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
</head>

<body>
<%--

<div class="container" style="padding: 100px 50px 10px;" >
   <button type="button" class="btn btn-default popover-show" 
      title="Popover title" data-container="body" 
      data-toggle="popover" data-placement="left" 
      data-content="左侧的 Popover 中的一些内容 —— show 方法">
      左侧的 Popover
   </button>
   <button type="button" class="btn btn-primary popover-hide" 
      title="Popover title" data-container="body" 
      data-toggle="popover" data-placement="top" 
      data-content="顶部的 Popover 中的一些内容 —— hide 方法">
      顶部的 Popover
   </button>
   <button type="button" class="btn btn-success popover-show" 
      title="Popover title" data-container="body" 
      data-toggle="popover" data-placement="bottom" 
      data-content="底部的 Popover 中的一些内容 —— destroy 方法">
      底部的 Popover
   </button>
   <button type="button" class="btn btn-warning popover-toggle" 
      title="Popover title" data-container="body" 
      data-toggle="popover" data-placement="right" 
      data-content="右侧的 Popover 中的一些内容 —— toggle 方法">
      右侧的 Popover
   </button><br><br><br><br><br><br>
   <p class="popover-options">
      <a href="#" type="button" class="btn btn-warning" title="<h2>Title</h2>"  
         data-container="body" data-toggle="popover" data-content="
         <h4>Popover 中的一些内容 —— options 方法</h4>">
         Popover
      </a>
   </p>
   <script>
      $(function () { $('.popover-show').popover('show');});
      $(function () { $('.popover-hide').popover('hide');});
      $(function () { $('.popover-show').popover('show');});
      $(function () { $('.popover-toggle').popover('toggle');});
     $(function () { $(".popover-options a").popover({html : true });});
   </script>
</div> --%>
           <!-- Large modal -->
						 <!-- <button type="button"  class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button>
						<div class="modal fade bs-example-modal-lg"  style="height:20px"  tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
						  <div class="modal-dialog modal-lg">
						    <div class="modal-content">
						    nishi SBhnfgfghrhrhdf45e4hgf56hf4hdf23h132dfhdf<br/>
						    egdfghfdhfdf<br/>
						    hfdhfh<br/>
						    <br/>
						    <br/>
						    <br/>
						    </div>
						  </div>
						</div> -->
						<!-- <div id="pop_content" class="popover fade right"> -->
						<button type="button " class="btn btn-default popover-hide" 
                         title="" data-container="body" 
                         data-toggle="popover" data-placement="left" 
                         <div class="popover-content"><img src="1.jpg" style="width:80px;height:80px;"></button></div>
                         </div>
						 <span style="color:red ;align:center;">${b.users.nickname}</span>
                        </button>
                <div class="arrow"></div>
                 <h2 class="popover-title"></h2>
                 
             

	<script>
		$(".pop").each(function() {
			var $pElem = $(this);
			$pElem.popover({
				html : true,
				trigger : "manual",
				title : getPopoverTitle($pElem.attr("id")),
				content : getPopoverContent($pElem.attr("id")),
				container : 'body',
				animation : false
			});
		}).on("mouseenter",

		function() {
			var _this = this;
			$(this).popover("show");
			console.log("mouse entered");
			$(".popover").on("mouseleave", function() {
				$(_this).popover('hide');
			});
		}).on("mouseleave",

		function() {
			var _this = this;
			setTimeout(function() {
				if (!$(".popover:hover").length) {
					$(_this).popover("hide");
				}
			}, 100);
		});

		function getPopoverTitle(target) {
			return $("#" + target + "_content > h2.popover-title").html();
		};

		function getPopoverContent(target) {
			return $("#" + target + "_content > div.popover-content").html();
		};
	</script>

</body>
</html>
