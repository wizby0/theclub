class WelcomeController < ApplicationController
	def index
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
