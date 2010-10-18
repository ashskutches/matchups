<?php include("header.php"); ?>

<div id="wrapper">

	<!-- Featured content -->
	<div id="loopedSlider">
		<div class="slider-nav">	
			<a href="#" class="previous">Prev</a>
			<a href="#" class="next">Next</a>
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
			</ul>		
		</div>		
	
		<div class="container">
			<div class="slides">
				<!-- Featured slide 1 -->
				 <div class="slide slide1">
					<div class="content_slide">
						<a href="portfolio_item.php"><img src="images/content_slide1.jpg" alt="" title="" /></a>
					</div>
					<div class="info_slide">
						<h1 class="bebas-font">Professional</h1>
						<p>There are many variations of passages of Lorem Ipsum available,
						but the majority have suffered alteration in some form, by injected humour, 
						or randomised words which don't look even slightly believable. 
						If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't 
						anything embarrassing hidden in the middle of text. 
						</p>
						<p><a href="portfolio_item.php" class="more_btn">View more</a></p>
					</div>
				</div>
				
				<!-- Featured slide 2 -->
				<div class="slide slide2">
					<div class="info_slide">
						<h1 class="bebas-font">Spider man</h1>
						<p>There are many variations of passages of Lorem Ipsum available,
						but the majority have suffered alteration in some form, by injected humour, 
						or randomised words which don't look even slightly believable. 
						If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't 
						anything embarrassing hidden in the middle of text. 
						</p>
						<p><a href="portfolio_item.php" class="more_btn">View more</a></p>
					</div>
					<div class="content_slide">
						<a href="portfolio_item.php"><img src="images/content_slide2.jpg" alt="" title="" /></a>
					</div>
				</div>
				
				<!-- Featured slide 3 -->
				<div class="slide slide3">
					<div class="content_slide">
						<a href="portfolio_item.php"><img src="images/content_slide3.jpg" alt="" title="" /></a>
					</div>
					<div class="info_slide">
						<h1 class="bebas-font">Iron man 2</h1>
						<p>There are many variations of passages of Lorem Ipsum available</p>
						<a href="portfolio_item.php" class="more_btn">View more</a>
					</div>
				</div>						
			</div>
		</div>		
	</div>
	
	<!-- Homepage content -->
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
