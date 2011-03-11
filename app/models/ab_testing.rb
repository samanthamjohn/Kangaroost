class AbTesting < ActiveRecord::Base
  attr_accessor :logo, :tagline, :preview_image, :short_description, :sliders
  
  def self.setup_test(test_type = nil)
    test_type ||= rand(3)
    test_type = test_type.to_i
    test = self.new(test: test_type)
    case test_type
    when 0 
      test.execute_test_zero
    when 1
      test.execute_test_one
    when 2
      test.execute_test_two
    end
    return test
  end


  def execute_test_zero
    @logo = "https://s3.amazonaws.com/Kangaroost/img/kangaroostlogo2.png"
    @tagline = "A new way to travel."
    @short_description = "Give and get points.  Stay all over. <br />  Why wait?  Start now."
    @preview_image = "https://s3.amazonaws.com/Kangaroost/img/centerpicSJ.png"
    @sliders = [
	  "<div class='oneOfFour'>
		  <a href='assets/scr02.jpg' class='lightbox' title='Example caption'><img src='https://s3.amazonaws.com/Kangaroost/img/scr02-thumb.png' alt='thumb' /></a>
	  </div>
  <div class='threeOfFour last'>
		  <h4>1) Sign up using Facebook</h4>
		  <p>Kangaroost shows you who's in your network:  your friends, their friends, fellow alum, etc.</p>
	  </div>",
	  "<div class='oneOfFour'>
		  <a href='assets/scr02.jpg' class='lightbox' title='Example caption'><img src='https://s3.amazonaws.com/Kangaroost/img/scr02-thumb.png' alt='thumb' /></a>
	  </div>
  <div class='threeOfFour last'>
		  <h4>2) Get points</h4>
		  <p>Earn Kangaroost points by letting people in your network use your place.  
		  You probably already let your friends and maybe their friends to use your places anyway when available.  
		  Now get points for this!
		  </p>
	  </div>",
	  "<div class='oneOfFour'>
		  <a href='assets/scr02.jpg' class='lightbox' title='Example caption'><img src='https://s3.amazonaws.com/Kangaroost/img/scr02-thumb.png' alt='thumb' /></a>
	  </div>
  <div class='threeOfFour last'>
		  <h4>3) Stay for free!</h4>
		  <p>Use your Kangaroost points when you need to travel.  Stay for free.  
		  </p>
	  </div>"
    ]
  end

  def execute_test_one
    @logo = "https://s3.amazonaws.com/Kangaroost/img/kangaroostlogo2.png"
    @tagline = "Put your place into the pool."
    @short_description = "Get points for sharing your place.<br />Then travel without spending a dime."
    @preview_image = "https://s3.amazonaws.com/Kangaroost/img/centerpicSJ.png"
    @sliders = [
      "<div class='oneOfFour'>
		  <a href='assets/scr02.jpg' class='lightbox' title='Example caption'><img src='https://s3.amazonaws.com/Kangaroost/img/scr02-thumb.png' alt='thumb' /></a>
	  </div>
  <div class='threeOfFour last'>
		  <h4>1) Sign up using Facebook</h4>
		  <p>Kangaroost shows you who's in your network:  your friends, their friends, fellow alum, etc.</p>
	  </div>",
		"<div class='oneOfFour'>
		    <a href='assets/scr02.jpg' class='lightbox' title='Example caption'><img src='https://s3.amazonaws.com/Kangaroost/img/scr02-thumb.png' alt='thumb' /></a>
		</div>
	<div class='threeOfFour last'>
		    <h4>2) Get points</h4>
		    <p>Earn Kangaroost points by letting people in your network use your place.  
			You probably already let your friends and maybe their friends to use your places anyway when available.  
			Now get points for this!
			</p>
		</div>",
		"<div class='oneOfFour'>
		    <a href='assets/scr02.jpg' class='lightbox' title='Example caption'><img src='https://s3.amazonaws.com/Kangaroost/img/scr02-thumb.png' alt='thumb' /></a>
		</div>
	<div class='threeOfFour last'>
		    <h4>3) Stay for free!</h4>
		    <p>Use your Kangaroost points when you need to travel.  Stay for free.  
			</p>
		</div>"
    ]
  end

  def execute_test_two
    @logo = "https://s3.amazonaws.com/Kangaroost/img/kangaroostlogo2.png"
    @tagline = "Travel more. You won't need to spring for lodging."
    @short_description = "Kangaroost helps you find a place to stay with people you just may already know."
    @preview_image = "https://s3.amazonaws.com/Kangaroost/img/centerpicSJ.png"
    @sliders = [
      "<div class='oneOfFour'>
	    <a href='assets/scr02.jpg' class='lightbox' title='Example caption'><img src='https://s3.amazonaws.com/Kangaroost/img/scr02-thumb.png' alt='thumb' /></a>
		</div>
		<div class='threeOfFour last'>
		  <h4>So you need to go somewhere...</h4>
		    <p>...And you end up spending $400 on hotel bills.  <br />What you didn't know was that your friend's sister's place was empty that week and you could have stayed there.That's where Kangaroost comes in.</p>",
      "<div class='oneOfFour'>
	    <a href='assets/scr02.jpg' class='lightbox' title='Example caption'><img src='https://s3.amazonaws.com/Kangaroost/img/scr02-thumb.png' alt='thumb' /></a>
		</div>
		<div class='threeOfFour last'>
		  <p>A lot of people already stay with friends when they travel.
		  They let friends use their own places when available.  
		  But it's hard to figure out exactly who has what space when.</p>
		</div>",
        "<div class='oneOfFour'>
		    <a href='assets/scr02.jpg' class='lightbox' title='Example caption'><img src='https://s3.amazonaws.com/Kangaroost/img/scr02-thumb.png' alt='thumb' /></a>
		  </div>
		  <div class='threeOfFour last'>
		    <p>Kangaroost helps you find out with a click of a button.  
			Just connect your facebook, provide your zip code, and we'll do the rest. </p>
		    </div>"
    ]
  end
end
