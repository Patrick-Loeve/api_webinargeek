FactoryBot.define do
  factory :subscription do

  		broadcast_id nil
		watched { Faker::Boolean.boolean } 
		email  { Faker::TheITCrowd.email }
		firstname { Faker::Name.first_name }
		surname { Faker::Name.last_name }
		registration_ip { Faker::Internet.public_ip_v4_address }
    
  end
end

