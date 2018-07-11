module Api
	module V1
		class EpisodesController < ApplicationController
			before_action  :set_episode, only: [:show]

			def index
				@episodes = Episode.all 
				render json: @episodes
			end 

			def show
		   		render json: @episode
		  	end

		  	private


		  	def set_episode
		  		 @episode = Episode.find(params[:id])
		  	end
		end
	end
end


