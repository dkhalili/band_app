class VenuesController < ApplicationController

	def index
		@venues = Venue.all

	end

	def show
		@venue = Venue.find(params[:id])
		@events = @venue.events
		# @band = Band.find(@events.band_id)
	end

	def new
		@venue = Venue.new
	end	

	def create
		# binding.pry
		@venue = Venue.create(venue_params)
		redirect_to venues_path
	end		

	def edit
	end	

	def update
	end		

	  private
	  def venue_params
	    params
	      .require(:venue)
	      .permit(:name, :city, :state, :family_friendly)
	  end	

end