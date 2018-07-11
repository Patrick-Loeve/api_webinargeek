module Api
	module V1

		class SubscriptionsController < ApplicationController
			before_action :set_subscription, only: [:show]
			def index 
				@subscriptions = Subscription.all
				render json: @subscriptions
			end

			def show 
				render json: @subscription
			end

			def create 
			
				 subscription = Subscription.new(subscription_params)
				 if subscription.save
				 		
				 	render json: {
				 		success: true,
				 		message: "Yeah!"
				 	}.to_json

				 else
					puts "subscription.errors.messages = #{subscription.errors.messages}"
				 	render status: 422, json: {
				 		success: false
				 		
				 	}.to_json
				 			
				 		
				 end
			end 

			private

			def subscription_params
				params.permit(:watched, :email, :firstname, :surname, :registration_ip, :broadcast_id)
			end

			def set_subscription
				@subscription = Subscription.find(params[:id])
			end			

		end
	end
end 





	