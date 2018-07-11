class Broadcast < ApplicationRecord
	belongs_to :episode
	has_many :subscriptions, dependent: :destroy
end
