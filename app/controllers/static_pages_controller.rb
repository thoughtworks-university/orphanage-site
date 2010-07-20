class StaticPagesController < ApplicationController
  def home
		render 'home'
	end

  def about_us
	 	render 'about_us'
 	end

  def how_you_can_help
	 	render 'how_you_can_help'
 	end

  def contact_us
	 	render 'contact_us'
 	end

  def test
		@images = Dir[RAILS_ROOT+'/public/images/*.jpg'] 
		captions = Dir[RAILS_ROOT+'/public/images/*.txt']  
		captionsArray = captions.map { |e| "\""+open(e).read+"\"" }
		@captionsArray = "[#{captionsArray.join(",").gsub(/\n/,"")}];"
	 	render 'image_test'
 	end
end
