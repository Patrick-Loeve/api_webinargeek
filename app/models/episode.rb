class Episode < ApplicationRecord
	belongs_to  :webinar
	has_many :broadcasts, dependent: :destroy
end
