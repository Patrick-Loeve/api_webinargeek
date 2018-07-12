class Subscription < ApplicationRecord
	belongs_to :broadcast, counter_cache: true
	validates :email, presence: true
	
end
