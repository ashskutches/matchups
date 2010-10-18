<?php include("header.php"); ?>

<div id="wrapper">
	
	<!-- 3d slider -->
	<iframe id="piecemaker" src ="script/piecemaker/titanium-3d.php" 
width="980" height="396" frameborder="0" scrolling="no"></iframe>
<script type="text/javascript">document.getElementById('piecemaker').allowTransparency="true";</script>
	
	<!-- Home content -->
	<div id="home-content">
		<div class="col3 item1">
				<h2 class="bebas-font"><a href="portfolio.php">Recent items</a></h2>
				<p>A showcase of recent portfolio items.</p>
		</div>
		<div class="col3 item2">
				<h2 class="bebas-font"><a href="blog.php">Latest news</a></h2>
				<p>Keep informed of all the latest news.</p>
		</div>
		<div class="col3 item3 no_border">
				<h2 class="bebas-font"><a href="contact.php">Get a quote</a></h2>
				<p>We're designing your future.</p>		
		</div>
	</div>
	<div class="clearfloat"></div>
	
<?php include("footer.php"); ?>