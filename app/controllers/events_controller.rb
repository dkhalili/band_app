class EventsController < ApplicationController

	def index
		@venues = Venue.all
	end


	def new
		@venue = Venue.find(params[:venue_id])
		@bands = Band.all
		@event = Event.new
	end

	def create		

		@event = Event.create(event_params)
		redirect_to venues_path

	end

  	def show
  		@event = Event.find(params[:id])

  	end


private

    def event_params
      params.require(:event).permit(:date, :alcohol_served,:band_id).merge({venue_id: params[:venue_id]})
    end

end