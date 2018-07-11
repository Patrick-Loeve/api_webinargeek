class EpisodeSerializer < ActiveModel::Serializer
include Rails.application.routes.url_helpers
  attributes :id, :title
  belongs_to :webinar
  has_many :broadcasts
  
end
