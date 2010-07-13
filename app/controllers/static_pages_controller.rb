class StaticPagesController < ApplicationController
  def home; render 'home'; end
  def about_us; render 'about_us'; end
  def how_you_can_help; render 'how_you_can_help'; end
  def contact_us; render 'contact_us'; end
end