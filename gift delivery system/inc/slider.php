	<div class="header_bottom">
		<div class="header_bottom_left">
			<div class="section group">
				<?php 
				$getSrilanka = $pd->latestFromSrilanka();

				if ($getSrilanka) {
					while ($result = $getSrilanka->fetch_assoc()) {
				
				 ?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php?proid=<?php echo $result['productId']; ?>"> <img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Srilanka</h2>
						<p><?php echo $result['productName']; ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>">Add to cart</a></span></div>
				   </div>
			   </div>

			   <?php }} ?>	

			   <?php 
				$getChina = $pd->latestFromChina();

				if ($getChina) {
					while ($result = $getChina->fetch_assoc()) {
				
				 ?>		
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php?proid=<?php echo $result['productId']; ?>"> <img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>China</h2>
						<p><?php echo $result['productName']; ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>">Add to cart</a></span></div>
				   </div>
			   </div>

				 <?php }} ?>	
			</div>
			<div class="section group">

				  <?php 
				$getUK = $pd->latestFromUK();

				if ($getUK) {
					while ($result = $getUK->fetch_assoc()) {
				
				 ?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php?proid=<?php echo $result['productId']; ?>"> <img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>UK</h2>
						<p><?php echo $result['productName']; ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>">Add to cart</a></span></div>
				   </div>
			   </div>

			   <?php }} ?>

			     <?php 
				$getAmerica = $pd->latestFromAmerica();

				if ($getAmerica) {
					while ($result = $getAmerica->fetch_assoc()) {
				
				 ?>			
				
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php?proid=<?php echo $result['productId']; ?>"> <img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>America</h2>
						<p><?php echo $result['productName']; ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>">Add to cart</a></span></div>
				   </div>
			   </div>
				<?php }} ?>
			</div>
		  <div class="clear"></div>
		</div>
			 <div class="header_bottom_right_images">
		   <!-- FlexSlider -->
             
			<section class="slider">
				  <div class="flexslider">
					<ul class="slides">
						<li><img src="images/f1.jpg" alt=""/></li>
						<li><img src="images/f2.jpg" alt=""/></li>
						<li><img src="images/f3.jpg" alt=""/></li>
						<li><img src="images/f4.jpg" alt=""/></li>
				    </ul>
				  </div>
	      </section>
<!-- FlexSlider -->
	    </div>
	  <div class="clear"></div>
  </div>	
