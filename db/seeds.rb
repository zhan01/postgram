# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = {}

ActiveRecord::Base.transaction do
	30.times do
		user['first_name'] = Faker::Name.first_name 
		user['last_name'] = Faker::Name.last_name
		user['username'] = user['first_name'] + "-" + user['last_name']
		user['email'] = Faker::Internet.email
		user['password_digest'] = "12345678"
		user['country'] = ['Australia', 'New Zealand', 'Russia', 'Kazakhstan', 'USA', 'UK'].sample
		user['newsletter'] = ['true', 'false'].sample
		User.create(user)
	end
end 

admin = {}
ActiveRecord::Base.transaction do
		admin['email'] = "postgram@gmail.com"
		admin['password_digest'] = "12345678"
        admin['role'] = 'admin'
		Admin.create(admin)

end 

# Seed challenge
publish = {}
user_ids = []
User.all.each { |user| user_ids << user.id }

ActiveRecord::Base.transaction do
	50.times do 
		
		publish['description'] = Faker::Hipster.paragraph(1)	
		publish['user_id'] = user_ids.sample
		publish['country'] = ['Australia', 'New Zealand', 'Russia', 'Kazakhstan', 'USA', 'UK'].sample
		Publish.create(publish)
	end
end