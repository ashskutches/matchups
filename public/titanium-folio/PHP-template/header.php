<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
	<meta charset="UTF-8" />
	<title>Titanium Folio | PROFESSIONAL SHOWCASE THEME</title>
	<?php 
		// Used for style change
		if(!empty($_COOKIE['style'])) $style = $_COOKIE['style'];
		else $style = '-0';		

		$path = $_SERVER['PHP_SELF'];
		$page = basename($path);
		$page = basename($path, '.php');
	?>

	<link rel="profile" href="http://gmpg.org/xfn/11" />
	<link rel="stylesheet" type="text/css" media="all" href="style.css" />
	
	<link rel="stylesheet" type="text/css"  href="style/style<?php echo $style ?>.css" id="stylesheet" />
		
	<link rel="stylesheet" type="text/css"  href="script/fancybox/jquery.fancybox-1.3.1.css" />
	
	<link rel="shortcut icon" href="favicon.ico" type="image/vnd.microsoft.icon" />
	<link rel="icon" href="favicon.ico" type="image/vnd.microsoft.icon" />
	
	<script src="script/jquery-1.4.2.min.js" type="text/javascript"></script>
	
	<script src="script/cufon-yui.js" type="text/javascript"></script>
	<script src="script/Bebas_Neue_400.font.js" type="text/javascript"></script>	
	
	<script src="script/jquery.quicksand.min.js" type="text/javascript"></script>
	<script src="script/jquery.easing.1.3.js" type="text/javascript"></script>
	<script src="script/jquery-css-transform.js" type="text/javascript"></script>
	<script src="script/jquery-animate-css-rotate-scale.js" type="text/javascript"></script>
	
	<script type="text/javascript" src="script/fancybox/jquery.fancybox-1.3.1.js"></script>
	
	<script src="script/loopedslider.js" type="text/javascript"></script>
	
	<script src="script/myJS.js" type="text/javascript"></script>
	
	<script type="text/javascript"> var n1=<?php echo $n1; ?>; var n2=<?php echo $n2; ?>; </script>    
	<script src="script/sendmail.js" type="text/javascript"></script>
		
</head>

<body>

<div id="header">
	<div class="header-content">
		<div class="buy_theme">
			<a href="">
				<img src="images/pixel.png" class="buy_theme_btn" alt="" title="" />
			</a>
		</div>		
		<div class="logo">
			<a href="index.php"><img src="images/pixel.png" class="logo" alt="" title="" /></a>
		</div>
	
		<!-- Main menu -->
		<div id="access" role="navigation">
			<div class="menu">
				<ul>
					<li <?php if($page == 'index') echo ' class="current_page_item"'; ?>>
						<a href="index.php" class="bebas-font">Home</a>
					</li>
					<li class="page_item page-item-2 <?php if($page == 'about') echo 'current_page_item'; ?>">
						<a href="about.php" class="bebas-font">About</a>
					</li>
					<li class="page_item page-item-2 <?php if($page == 'left-sidebar' || $page == 'right-sidebar' || $page == 'full-width' || $page == 'custom-404') echo 'current_page_item'; ?>">
						<a href="left-sidebar.php" class="bebas-font">Pages</a>
						<ul>
							<li><a href="left-sidebar.php">Left sidebar</a></li>
							<li><a href="right-sidebar.php">Right sidebar</a></li>
							<li><a href="full-width.php">Full width</a></li>
							<li><a href="custom-404.php">Custom 404</a></li>
						</ul>
					</li>
					<li class="page_item page-item-2 <?php if($page == 'typography' || $page == 'layout') echo 'current_page_item'; ?>">
						<a href="typography.php" class="bebas-font">Skins</a>
						<ul>
						      <li>
                                <a href="javascript:;">23 different styles</a>
                                    <ul id="style-switcher">
                                        <li><a href="style-switcher.php?style=-0" >Style default</a></li>
                                        <li><a href="style-switcher.php?style=1" >Style 1</a></li>
                                        <li><a href="style-switcher.php?style=2">Style 2</a></li>
                                        <li><a href="style-switcher.php?style=3">Style 3</a></li>
                                        <li><a href="style-switcher.php?style=4">Style 4</a></li>
                                        <li><a href="style-switcher.php?style=5">Style 5</a></li>
                                        <li><a href="style-switcher.php?style=6">Style 6</a></li>
                                        <li><a href="style-switcher.php?style=7">Style 7</a></li>
                                        <li><a href="style-switcher.php?style=8">Style 8</a></li>
                                        <li><a href="style-switcher.php?style=9">Style 9</a></li>
                                        <li><a href="style-switcher.php?style=10">Style 10</a></li>
                                        <li><a href="style-switcher.php?style=11">Style 11</a></li>
                                        <li><a href="style-switcher.php?style=12">Style 12</a></li>
                                        <li><a href="style-switcher.php?style=13">Style 13</a></li>
                                        <li><a href="style-switcher.php?style=14">Style 14</a></li>
                                        <li><a href="style-switcher.php?style=15">Style 15</a></li>
                                        <li><a href="style-switcher.php?style=16">Style 16</a></li>
                                        <li><a href="style-switcher.php?style=17">Style 17</a></li>
                                        <li><a href="style-switcher.php?style=18">Style 18</a></li>
                                        <li><a href="style-switcher.php?style=19">Style 19</a></li>
                                        <li><a href="style-switcher.php?style=20">Style 20</a></li>
                                        <li><a href="style-switcher.php?style=21">Style 21</a></li>
                                        <li><a href="style-switcher.php?style=22">Style 22</a></li>
                                    </ul>                                    
                              </li>
                              <li><a href="layout.php">Layout</a></li>
                              <li><a href="typography.php">Typography</a></li>
						</ul>
					</li>
					<li class="page_item page-item-2 <?php if($page == 'blog' || $page == 'simple-blog-page') echo 'current_page_item'; ?>">
						<a href="blog.php" class="bebas-font">Blog</a>
						  <ul>
						      <li><a href="blog.php">Blog page</a></li>
						      <li><a href="simple-blog-page.php">Simple page</a></li>
						  </ul>
					</li>
					<li class="page_item page-item-2 <?php if($page == 'portfolio') echo 'current_page_item'; ?>">
						<a href="portfolio.php" class="bebas-font">Portfolio</a>
					</li>
					<li class="page_item page-item-2">
						<a href="" class="bebas-font">Features</a>
						  <ul>
						      <li><a href="3d-slider.php">3D slider</a></li>
						      <li><a href="index.php">jQuery loop slider</a></li>
						  </ul>
					</li>
					<li class="page_item page-item-2 <?php if($page == 'contact') echo 'current_page_item'; ?>">
						<a href="contact.php" class="bebas-font">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>