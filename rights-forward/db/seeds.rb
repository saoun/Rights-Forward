# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create user
User.delete_all
20.times do
  name = Faker::Name.name
  User.create(fullname: name,
              contact: Faker::Internet.email(name),
              affiliation: Faker::Company.name,
              bio: Faker::Hacker.say_something_smart)
end

puts "created 20 users"

# create skills
Skill.delete_all
skills = ["Internet", "Advocacy", "DataViz"]
skills.each do |name|
  Skill.create(name: name)
end

# create languages
Language.delete_all
languages = ["French", "Arabic", "Spanish", "English", "Urdu", "Hindi", "Italian", "Portuguese", "Chinese"]
languages.each do |name|
  Language.create(name: name)
end

# create type
Type.delete_all
types = ["Digital Security", "Physical Security", "Advocacy", "Data Visualization", "Social Media"]
types.each do |name|
  Type.create(name: name)
end

#create expertise
Expertise.delete_all
expertises = ["Middle East", "South Asia", "Latin America", "Africa", "Europe", "USA", "East Asia", "South East Asia"]
expertises.each do |name|
  Expertise.create(name: name)
end
