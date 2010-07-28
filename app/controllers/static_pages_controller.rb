class StaticPagesController < ApplicationController
  def home
    create_image_slideshow
		render 'home'
	end

  def about_us
    create_image_slideshow
	 	render 'about_us'
 	end

  def how_you_can_help
    create_image_slideshow
	 	render 'how_you_can_help'
 	end

  def contact_us
    create_image_slideshow
	 	render 'contact_us'
 	end

  def test
    create_image_slideshow
	 	render 'image_test'
 	end

  def create_image_slideshow
    @images = Dir[RAILS_ROOT+'/public/images/*.jpg'] 
		captions = Dir[RAILS_ROOT+'/public/images/*.txt']  
		captionsArray = captions.map { |e| "\""+open(e).read+"\"" }
		@captionsArray = "[#{captionsArray.join(",").gsub(/\n/,"")}];" 
  end
end
