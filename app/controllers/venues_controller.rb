class VenuesController < ApplicationController

	def index
		@venues = Venue.all

	end

	def show
		@venue = Venue.find(params[:id])
		@events = @venue.events
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
		@venue = Venue.find(params[:id])
	end	

	def update
		@venue = Venue.find(params[:id])
		@venue.update(venue_params)
		redirect_to venue_path
	end		


	def destroy
		@venue = Venue.find(params[:id])
		@venue.delete
		redirect_to venues_path
	end


	  private
	  def venue_params
	    params
	      .require(:venue)
	      .permit(:name, :city, :state, :family_friendly)
	  end	

end