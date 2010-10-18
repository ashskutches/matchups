<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>	
	<script src="../../script/swfobject.js" type="text/javascript"></script>
	<style type="text/css">
		#flashcontent	{
		/*margin-top:100px;
		background:#000;*/
		padding:10px;
		color:#fff;
		text-align:center
		}
		a	{color:red;}
	</style>
</head>
<body style="background: transparent;">

<div id="flashcontent">
<p>You need to <a href="http://www.adobe.com/products/flashplayer/" target="_blank">upgrade your Flash Player</a> to version 9 or newer.</p>
</div><!-- end flashcontent -->

<script type="text/javascript">
// <![CDATA[
var flashvars = {};
var attributes = {};
var params = {};
params.wmode = "transparent";
params.menu = "false";

swfobject.embedSWF("piecemaker.swf", "flashcontent", "100%", "420", "10",false, flashvars, params, attributes);


// ]]>

</script>

</body>
</html>