# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'salman7x@yahoo.com', password: 'password', name: 'Salman Khan', 
avatar: Faker::Avatar.image(Faker::Number.number(10), "50x50", "jpg"),
lat: (Faker::Address.latitude).to_f,
lng: (Faker::Address.longitude).to_f,
phone: Faker::PhoneNumber.cell_phone 
) 


100.times do 
user = RandomuserLocal.generate
fullname = user[:name][:first].capitalize + ' ' + user[:name][:last].capitalize;

User.create(
email: user[:email], password: user[:password], name: fullname,
avatar: user[:picture], 
lat: (Faker::Address.latitude).to_f,
lng: (Faker::Address.longitude).to_f,
phone: user[:cell] 
)  end

User.all.each do |user|  2.times {user.posts.create(body: Faker::Hacker.say_something_smart) } end


