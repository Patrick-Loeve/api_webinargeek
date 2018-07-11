class Webinar < ApplicationRecord
	has_many :episodes, dependent: :destroy
end
