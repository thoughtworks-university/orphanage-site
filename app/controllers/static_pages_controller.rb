class StaticPagesController < ApplicationController
  def home
		@photo_set = PhotoSet.find(:home)
		render 'home'
	end

  def about_us
    @photo_set = PhotoSet.find(:home)
	 	render 'about_us'
 	end

  def how_you_can_help
		@photo_set = PhotoSet.find(:home)
	 	render 'how_you_can_help'
 	end

  def contact_us
		@photo_set = PhotoSet.find(:home)
	 	render 'contact_us'
 	end

  def test
		@photo_set = PhotoSet.find(:home)
	 	render 'image_test'
 	end
end
