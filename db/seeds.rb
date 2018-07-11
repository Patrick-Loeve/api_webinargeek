# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_webinars
	5.times do 	
        Webinar.create(
            title: Faker::Movie.quote
        )
    end
end

def seed_episodes

    webinars = Webinar.all
 	webinars.each do |webinar|		
        3.times do
            Episode.create(
                title: Faker::TheITCrowd.quote, 
                webinar_id: webinar.id 
            )  
        end
    end  
end

def seed_broadcasts
	episodes = Episode.all
	episodes.each do |episode|
		2.times do 
			Broadcast.create(
					broadcast_date: Faker::Date.forward(23),
					episode_id: episode.id,
					subscriptions_count: 0 
				)
		end
	end
end 

def seed_subscriptions
	broadcasts = Broadcast.all
	broadcasts.each do |broadcast|
		2.times do 
			Subscription.create(
				broadcast_id: broadcast.id,
				watched: Faker::Boolean.boolean,
				email: Faker::TheITCrowd.email,
				firstname: Faker::Name.first_name,
				surname: Faker::Name.last_name,
				registration_ip: Faker::Internet.public_ip_v4_address
			)	
		
		end	
	end

end


seed_webinars
seed_episodes
seed_broadcasts
seed_subscriptions


