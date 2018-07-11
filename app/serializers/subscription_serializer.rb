class SubscriptionSerializer < ActiveModel::Serializer
	belongs_to :broadcast
    attributes :id, :broadcast_id, :watched, :email, :firstname, :surname, :registration_ip   

    
end


 