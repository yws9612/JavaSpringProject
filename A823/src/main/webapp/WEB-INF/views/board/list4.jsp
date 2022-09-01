<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>


<style>

@import 'https://fonts.googleapis.com/css?family=Open+Sans:400,700';
*, *:after, *:before {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

html {
  
}

body {
  font-family:"Open Sans", Helvetica, sans-serif;
  font-size:1em;
  height:100%;
}

.mixin-clearfix {
  &:before,
  &:after {
    content: " ";
    display:table;
  }
  
  &:after {
    clear:both;
  }
}


.grid-pad {
  padding-left:20px;
}

[class*='col-'] {
  float: left;
  padding-right: 20px;
}

[class*='col-']:last-of-type {
  padding-right: 0;
}

.col-2-3 {
  width: 66.66%;
}
.col-1-3 {
  width: 33.33%;
}
.col-1-4 {
  width:25%;
  
  @media screen and (max-width:1060px) {
    width:50%;
    margin-bottom:1.5em;
  }
  
  @media screen and (max-width:600px) {
    width:100%;
  }
}

.col-2-4 {
  width:50%;
}

.grid-pad > [class*='col-']:last-of-type {
  padding-right: 20px;
}


.listings-gallery {
  .mixin-clearfix();
  width:100%;
  max-width:1280px;
  margin:4em auto;
}




/* Listing Card General Styles */
.listing-card {
  border:1px solid #e2e2e2;
}

.listing-card__photo {
  width:100%;
  border-bottom:7px solid #000;
  height:12.5em;
  overflow:hidden;
  position:relative;
  
  @media screen and (max-width:1060px) {
    height:20em;
  }
  img {
    width:100%;
    position:absolute;
    top:50%; left:50%;
    transform:translate(-50%, -50%);
    display:block;
  }
}

.listing-card__body {
  padding:20px;
}

.listing-card__description {
  font-size:.8em;
  line-height:1.3;
  margin:2em 0;
}

.listing-card__more-anchor {
  font-size:.9em;
  display:inline-block;
  padding:9px;
  width:100%;
  text-align:center;
  border:1px solid #a5a5a5;
  transition: color .4s ease, background .4s ease, border-color .4s ease;
  text-decoration:none;
  cursor:pointer;
  
  &:hover {
    color:#FFF;
    background:#000;
    border-color:#000;
  }
  
  &:visited { 
    color:#000;
  }
}


/* Listing Header Styles */

.listing-header {
  
}

.listing-header__MLS {
  font-weight:600;
}

.listing-header__address {
  margin-top:.8em;
}

.listing-header__price {
  font-size:.8em;
  margin-top:.4em;
}

.listing-header__bed-bath {
  .mixin-clearfix();
  display:block;
  font-size:.85em;
  margin:.6em 0 0;
}

.listing-header__bed, .listing-header__bath {
  float:left;
}

.listing-header__bed {
  padding-right:10px;
  margin-right:10px;
  border-right:1px solid #000;
}

.listing-header__bath {
  
}
</style>

<head>
</head>

<body>

<script>

$(function(){
	  
	  function resizeImages($el) {
	    var $image,
	        $container,
	        maxW,
	        maxH,
	        ratio,
	        width,
	        height;
	    
	    $container = $($el.find('.listing-card__photo'));
	    $image = $($container.find('img'));

	    
	    maxW = $container.width();
	    maxH = $container.height();
	    width = $image[0].clientWidth;
	    height = $image[0].clientHeight;  
	    
	    ratio = 0;
	  
	    function checkWidth() {
	      return width < maxW;
	    }
	    
	    function checkHeight() {
	      return height < maxH;
	    }
	    
	    //Height is smaller then container
	    if (checkHeight()) {
	     //Calc the ratio\
	      ratio = maxH / height;
	      console.log('height does not match');
	      
	       console.log('Setting height to: ' + maxH);
	      //Set Height to container height
	      $image.css('height', maxH);
	      
	      //Scale width up but maintain ratio
	      $image.css('width', 'auto');
	      
	      if ($image[0].outerWidth < maxW) {
	        console.log("nope"); 
	      }
	    }
	  }
	  
	  
	  var test = $(".test-card"); 
	  
	  resizeImages(test);  
	  
	});

</script>
<div class="listings-gallery">
  <div class="grid grid-pad">
    <div class="col-1-4">
      <div class="listing-card">
        <div class="listing-card__photo test-card">
          <img src="http://placehold.it/800x600"/>
        </div>
        <div class="listing-card__body">
          <header class="listing-header">
            <p class="listing-header__MLS">MLS 123456</p>
            <h3 class="listing-header__price">$750,000</h3>
            <h4 class="listing-header__address">145 Anywhere St.</h4>
            <span class="listing-header__bed-bath">
              <p class="listing-header__bed">2 Beds</p>
              <p class="listing-header__bath">1 Bath</p>
            </span>
          </header>
          <section>
          <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
          <a href="#" class="listing-card__more-anchor">More...</a>
        </section>
        </div>
      </div>
    </div>
    <div class="col-1-4">
      <div class="listing-card test-card">
        <div class="listing-card__photo">
        <img src="http://placehold.it/500x300"/>
      </div>
        <div class="listing-card__body">
        <header class="listing-header">
          <p class="listing-header__MLS">MLS 123456</p>
          <h3 class="listing-header__price">$750,000</h3>
          <h4 class="listing-header__address">145 Anywhere St.</h4>
          <span class="listing-header__bed-bath">
            <p class="listing-header__bed">2 Beds</p>
            <p class="listing-header__bath">1 Bath</p>
          </span>
        </header>
        <section>
          <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
          <a class="listing-card__more-anchor">More...</a>
        </section>
      </div>
    </div>
    </div>
    <div class="col-1-4">
      <div class="listing-card test-card">
        <div class="listing-card__photo">
        <img src="http://placehold.it/200x200"/>
      </div>
        <div class="listing-card__body">
      <header class="listing-header">
        <p class="listing-header__MLS">MLS 123456</p>
        <h3 class="listing-header__price">$750,000</h3>
        <h4 class="listing-header__address">145 Anywhere St.</h4>
        <span class="listing-header__bed-bath">
          <p class="listing-header__bed">2 Beds</p>
          <p class="listing-header__bath">1 Bath</p>
        </span>
      </header>
      <section>
        <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
        <a class="listing-card__more-anchor">More...</a>
      </section>
    </div>
      </div>
    </div>
    <div class="col-1-4">
      <div class="listing-card test-card">
        <div class="listing-card__photo">
      <img src="http://placehold.it/200x100"/>
    </div>
        <div class="listing-card__body">
      <header class="listing-header">
        <p class="listing-header__MLS">MLS 123456</p>
        <h3 class="listing-header__price">$750,000</h3>
        <h4 class="listing-header__address">145 Anywhere St.</h4>
        <span class="listing-header__bed-bath">
          <p class="listing-header__bed">2 Beds</p>
          <p class="listing-header__bath">1 Bath</p>
        </span>
      </header>
      <section>
        <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
        <a class="listing-card__more-anchor">More...</a>
      </section>
    </div>
      </div>
    </div>
  </div>
</div>

<div class="listings-gallery">
  <div class="grid grid-pad">
    <div class="col-1-4">
      <div class="listing-card">
        <div class="listing-card__photo test-card">
          <img src="http://placehold.it/800x600"/>
        </div>
        <div class="listing-card__body">
          <header class="listing-header">
            <p class="listing-header__MLS">MLS 123456</p>
            <h3 class="listing-header__price">$750,000</h3>
            <h4 class="listing-header__address">145 Anywhere St.</h4>
            <span class="listing-header__bed-bath">
              <p class="listing-header__bed">2 Beds</p>
              <p class="listing-header__bath">1 Bath</p>
            </span>
          </header>
          <section>
          <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
          <a href="#" class="listing-card__more-anchor">More...</a>
        </section>
        </div>
      </div>
    </div>
    <div class="col-1-4">
      <div class="listing-card test-card">
        <div class="listing-card__photo">
        <img src="http://placehold.it/500x300"/>
      </div>
        <div class="listing-card__body">
        <header class="listing-header">
          <p class="listing-header__MLS">MLS 123456</p>
          <h3 class="listing-header__price">$750,000</h3>
          <h4 class="listing-header__address">145 Anywhere St.</h4>
          <span class="listing-header__bed-bath">
            <p class="listing-header__bed">2 Beds</p>
            <p class="listing-header__bath">1 Bath</p>
          </span>
        </header>
        <section>
          <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
          <a class="listing-card__more-anchor">More...</a>
        </section>
      </div>
    </div>
    </div>
    <div class="col-1-4">
      <div class="listing-card test-card">
        <div class="listing-card__photo">
        <img src="http://placehold.it/200x200"/>
      </div>
        <div class="listing-card__body">
      <header class="listing-header">
        <p class="listing-header__MLS">MLS 123456</p>
        <h3 class="listing-header__price">$750,000</h3>
        <h4 class="listing-header__address">145 Anywhere St.</h4>
        <span class="listing-header__bed-bath">
          <p class="listing-header__bed">2 Beds</p>
          <p class="listing-header__bath">1 Bath</p>
        </span>
      </header>
      <section>
        <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
        <a class="listing-card__more-anchor">More...</a>
      </section>
    </div>
      </div>
    </div>
    <div class="col-1-4">
      <div class="listing-card test-card">
        <div class="listing-card__photo">
      <img src="http://placehold.it/200x100"/>
    </div>
        <div class="listing-card__body">
      <header class="listing-header">
        <p class="listing-header__MLS">MLS 123456</p>
        <h3 class="listing-header__price">$750,000</h3>
        <h4 class="listing-header__address">145 Anywhere St.</h4>
        <span class="listing-header__bed-bath">
          <p class="listing-header__bed">2 Beds</p>
          <p class="listing-header__bath">1 Bath</p>
        </span>
      </header>
      <section>
        <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
        <a class="listing-card__more-anchor">More...</a>
      </section>
    </div>
      </div>
    </div>
  </div>
</div>

<div class="listings-gallery">
  <div class="grid grid-pad">
    <div class="col-1-4">
      <div class="listing-card">
        <div class="listing-card__photo test-card">
          <img src="http://placehold.it/800x600"/>
        </div>
        <div class="listing-card__body">
          <header class="listing-header">
            <p class="listing-header__MLS">MLS 123456</p>
            <h3 class="listing-header__price">$750,000</h3>
            <h4 class="listing-header__address">145 Anywhere St.</h4>
            <span class="listing-header__bed-bath">
              <p class="listing-header__bed">2 Beds</p>
              <p class="listing-header__bath">1 Bath</p>
            </span>
          </header>
          <section>
          <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
          <a href="#" class="listing-card__more-anchor">More...</a>
        </section>
        </div>
      </div>
    </div>
    <div class="col-1-4">
      <div class="listing-card test-card">
        <div class="listing-card__photo">
        <img src="http://placehold.it/500x300"/>
      </div>
        <div class="listing-card__body">
        <header class="listing-header">
          <p class="listing-header__MLS">MLS 123456</p>
          <h3 class="listing-header__price">$750,000</h3>
          <h4 class="listing-header__address">145 Anywhere St.</h4>
          <span class="listing-header__bed-bath">
            <p class="listing-header__bed">2 Beds</p>
            <p class="listing-header__bath">1 Bath</p>
          </span>
        </header>
        <section>
          <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
          <a class="listing-card__more-anchor">More...</a>
        </section>
      </div>
    </div>
    </div>
    <div class="col-1-4">
      <div class="listing-card test-card">
        <div class="listing-card__photo">
        <img src="http://placehold.it/200x200"/>
      </div>
        <div class="listing-card__body">
      <header class="listing-header">
        <p class="listing-header__MLS">MLS 123456</p>
        <h3 class="listing-header__price">$750,000</h3>
        <h4 class="listing-header__address">145 Anywhere St.</h4>
        <span class="listing-header__bed-bath">
          <p class="listing-header__bed">2 Beds</p>
          <p class="listing-header__bath">1 Bath</p>
        </span>
      </header>
      <section>
        <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
        <a class="listing-card__more-anchor">More...</a>
      </section>
    </div>
      </div>
    </div>
    <div class="col-1-4">
      <div class="listing-card test-card">
        <div class="listing-card__photo">
      <img src="http://placehold.it/200x100"/>
    </div>
        <div class="listing-card__body">
      <header class="listing-header">
        <p class="listing-header__MLS">MLS 123456</p>
        <h3 class="listing-header__price">$750,000</h3>
        <h4 class="listing-header__address">145 Anywhere St.</h4>
        <span class="listing-header__bed-bath">
          <p class="listing-header__bed">2 Beds</p>
          <p class="listing-header__bath">1 Bath</p>
        </span>
      </header>
      <section>
        <p class="listing-card__description">Beautiful villa outside St. Paul, classic home feel with modern twist. Free WIFI, utilities included. Non smokers only, no pets, no people, no body with a soul.</p>
        <a class="listing-card__more-anchor">More...</a>
      </section>
    </div>
      </div>
    </div>
  </div>
</div>
	</body>
</html>