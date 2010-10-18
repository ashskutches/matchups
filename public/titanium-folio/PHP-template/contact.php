<?php
  //used for captcha
  session_start();
  $n1 = rand(0, 10);
  $n2 = rand(0, 10);
  $_SESSION['captcha'] = $n1 + $n2;
?>
<?php include("header.php"); ?>

<div id="wrapper">
	<!-- Page header -->
	<div class="page_header">
		<h1 class="bebas-font">Contact</h1>
		<h2 class="bebas-font">providing client services in web, print and multimedia design</h2>
		<div class="clearfloat"></div>
	</div>
	
	<!-- Breadcrumb -->
	<div class="breadcrumb">
		<ul>
			<li><a href="index.php">Home</a>&nbsp;&nbsp;//&nbsp;&nbsp;</li>
			<li>Contact</li>
		</ul>
		<div class="clearfloat"></div>
	</div>
	
	<!-- Page content -->
	<div class="page_content">	
		<div class="col2">
			<h2 class="bebas-font">How to find us</h2>
			
			<img src="http://maps.google.com/maps/api/staticmap?center=Eroilor,Cluj-Napoca,Romania&zoom=15&size=460x460&maptype=roadmap
&markers=color:red|label:T|46.770012,23.594178&sensor=true
" alt="" />

			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
			</p>
			<div class="hr_line"></div>
			<h2 class="bebas-font">Contact info</h2>
			<h4 class="bebas-font">Titanium Folio</h4>
			<p>
				Phone: 305-555-4545<br />
				Fax: 305-555-4545<br />
				Email: <a href="mailto:mail@yoursitename.com">mail@yoursitename.com</a><br />
			</p>
		</div>
		
		<div class="col2">			
			<div class="contact_form">
				<h2 class="bebas-font">Contact form</h2>
	            <form action="#" method="post" id="sendEmail">                      
			      <p>
			        <label>Name:</label>
			        <input type="text" id="name" class="field" name="nume" />
			      </p>
			      <p>
			        <label>E-mail:</label>
			        <input type="text" id="email" class="field" name="email" />
			      </p>
			      <p>
			        <label>Message:</label>
			        <textarea class="field_textarea" rows="" cols="" id="message" name="message"></textarea>
			      </p>				     		  
				  <p>
			        <label><?php echo $n1 . ' + ' . $n2; ?> = </label>
			        <input type="text" id="captcha" class="captcha_field" name="captcha" />
			      </p>				                    			  
			      <p id="loading"><input type="submit" id="submit" value="Send" class="titanium_button bebas-font" /></p>
	            </form>
			</div> 			
		</div>
		<div class="clearfloat"></div>
	</div>
	
<?php include("footer.php"); ?>