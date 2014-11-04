class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find[params[:id].to_i]
	end

	def new
		
	end

	def create
		render :text => "Uploading the picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end
end
