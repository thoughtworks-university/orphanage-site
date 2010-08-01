class StaticPagesController < ApplicationController
  def home
		@photo_set = PhotoSet.find(:home)
		render 'home'
	end

  def how_you_can_help
		@photo_set = PhotoSet.find(:how_you_can_help)
	 	render 'how_you_can_help'
 	end
 	 	
 	def donate
		@photo_set = PhotoSet.find(:donate)
	 	render 'donate'
 	end
end
