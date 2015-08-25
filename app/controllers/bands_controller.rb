class BandsController < ApplicationController

	def index
		@band = Band.all
	end

	def new
		@band = Band.new
	end

	def create
		@band = Band.create(band_params)
		redirect_to bands_path
	end

	def edit
		@band = Band.find(params[:id])
	end

	def update
		@band = Band.find(params[:id])
		@band.update(band_params)
		redirect_to bands_path
	end

	def destroy
		@band = Band.find(params[:id])
		@band.delete
		redirect_to bands_path
	end

	private
	def band_params
		params.require(:band).permit(:name, :genre, :explicit_lyrics)
	end



	
end
