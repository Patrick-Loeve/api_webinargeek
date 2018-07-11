module Api
	module V1

		class BroadcastsController < ApplicationController
			before_action :set_episode
		  	before_action :set_episode_broadcast, only: [:show]	


			def index
				render json: @episode.broadcasts
			end

			def show
				render json: @broadcast		
			end

			private

			def set_episode
		    	@episode = Episode.find(params[:episode_id])
		  	end

		  	def set_episode_broadcast
		    	@broadcast = @episode.broadcasts.find_by!(id: params[:id]) if @episode
		  	end
		end
	end
end 