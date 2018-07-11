class WebinarSerializer < ActiveModel::Serializer
include Rails.application.routes.url_helpers
  attributes :id, :title, :links
  has_many :episodes
  def links
  	{
  		self: api_v1_webinar_path(object.id)	
  	}
  end
end
