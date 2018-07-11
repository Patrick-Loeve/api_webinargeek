FactoryBot.define do
  factory :broadcast do
  		
  		broadcast_date { Faker::Date.forward(23)  }
		episode_id { Faker::Number.number(10) } 
		subscriptions_count  { Faker::Number.number(10) }
		
    end
 end

 