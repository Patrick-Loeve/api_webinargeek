module Api 
	module V1

		class WebinarsController < ApplicationController
			before_action  :set_webinar, only: [:show]

			def index
				@webinars = Webinar.all 
				render json: @webinars
			end 

			def show
		   		render json: @webinar
		  	end

		  	private


		  	def set_webinar
		  		 @webinar = Webinar.find(params[:id])
		  	end
		end
	end 
end 
