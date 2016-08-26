class WelcomeController < ApplicationController
	def index
		@posts = Post.all
		# @posts = Post.last(7) #display recent 7 posts
		
		@categories = Category.all
	end


	def map
		@locations = Location.all
		@hash = Gmaps4rails.build_markers(@locations) do |loca, marker|
			marker.lat loca.latitude
			marker.lng loca.longitude
		    marker.infowindow render_to_string(
		      :partial => "/welcome/location_info", 
		      :locals => {location: loca}
		    )
		end
	end


end
