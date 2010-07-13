ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'static_pages', :action => 'home'
  map.connect 'home', :controller => 'static_pages', :action => 'home'
  map.connect 'about-us', :controller => 'static_pages', :action => 'about_us'
  map.connect 'contact-us', :controller => 'static_pages', :action => 'contact_us'
  map.connect 'how-you-can-help', :controller => 'static_pages', :action => 'how_you_can_help'
end
