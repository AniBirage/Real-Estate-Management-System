<?php require "includes/header.php"; ?>
<?php require "config/config.php"; ?>
<?php 


  $select = $conn->query("SELECT * FROM props ORDER BY name DESC");
  $select->execute();

  $props = $select->fetchAll(PDO::FETCH_OBJ);


  

?>
  
 

    <div class="slide-one-item home-slider owl-carousel">
     <?php foreach($props as $prop) : ?>

        <div class="site-blocks-cover overlay" style="background-image: url(<?php echo THUMBNAILMURL; ?>/<?php echo $prop->image; ?>);" data-aos="fade" data-stellar-background-ratio="0.5">
          <div class="container">
            <div class="row align-items-center justify-content-center text-center">
                <div class="col-md-10">
                  <span class="d-inline-block bg-<?php if($prop->type == "rent") { echo "success"; } else { echo "danger"; }?> text-white px-3 mb-3 property-offer-type rounded"><?php echo $prop->type; ?></span>
                  <h1 class="mb-2"><?php echo $prop->name; ?></h1>
                  <p class="mb-5"><strong class="h2 text-success font-weight-bold">$<?php echo $prop->price; ?></strong></p>
                  <p><a href="property-details.php?id=<?php echo $prop->id; ?>" class="btn btn-white btn-outline-white py-3 px-5 rounded-0 btn-2">See Details</a></p>
                </div>
            </div>
          </div>
        </div>  
      <?php endforeach; ?>

   

    </div>




        <div class="row">
          <div class="col-md-12">
            <div class="view-options bg-white py-3 px-3 d-md-flex align-items-center">
              <div class="mr-auto">
                
              </div>
              <div class="ml-auto d-flex align-items-center">
                <div>
                </div>


               
              </div>
            </div>
          </div>
        </div>
       
      </div>
    </div>

    <div class="site-section site-section-sm bg-light">
      <div class="container">
      
        <div class="row mb-5">
          <?php foreach($props as $prop) : ?>
          <div class="col-md-6 col-lg-4 mb-4">
            <div class="property-entry h-100">
              <a href="property-details.php?id=<?php echo $prop->id; ?>" class="property-thumbnail">
                <div class="offer-type-wrap">
                  <span class="offer-type bg-<?php if($prop->type == "Rent") { echo "success"; } else { echo "danger"; }?>"><?php echo $prop->type; ?></span>
                </div>
                <img src="<?php echo THUMBNAILMURL;?>/<?php echo $prop->image; ?>" alt="Image" class="img-fluid">
              </a>
              <div class="p-4 property-body">
                <h2 class="property-title"><a href="property-details.php?id=<?php echo $prop->id; ?>"><?php echo $prop->name; ?></a></h2>
                <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span> <?php echo $prop->location; ?></span>
                <strong class="property-price text-primary mb-3 d-block text-success">$<?php echo $prop->price; ?></strong>
                <style>
                  .property-specs {
                  padding-right: 25px;
                  }
                </style>
                <ul class="property-specs-wrap mb-3 mb-lg-0">
                  <li>
                    <span class="property-specs">Beds</span>
                    <span class="property-specs-number"><?php echo $prop->beds; ?></span>
                  </li>
                  <li>
                    <span class="property-specs">Baths</span>
                    <span class="property-specs-number"><?php echo $prop->baths; ?></span>
                  </li>
                  <li>
                    <span class="property-specs">SQ FT</span>
                    <span class="property-specs-number"><?php echo $prop->sq_ft; ?></span>
                    
                  </li>
                </ul>

              </div>
            </div>
          </div>
          <?php endforeach; ?>

        </div>
     
        
      </div>
    </div>

    <!-- <div class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center">
            <div class="site-section-title">
              <h2>Recent Blog</h2>
            </div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis maiores quisquam saepe architecto error corporis aliquam. Cum ipsam a consectetur aut sunt sint animi, pariatur corporis, eaque, deleniti cupiditate officia.</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="100">
            <a href="#"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">Art Gossip by Mike Charles</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="200">
            <a href="#"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">Art Gossip by Mike Charles</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="300">
            <a href="#"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">Art Gossip by Mike Charles</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>

        </div>

      </div>
    </div> -->
<?php require "includes/footer.php"; ?>
