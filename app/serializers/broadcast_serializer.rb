class BroadcastSerializer < ActiveModel::Serializer
	belongs_to :episode
	has_many :subscriptions
  	
  	attributes :id, :broadcast_date, :episode_id, :subscriptions_count

  	
    
end
