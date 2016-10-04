# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

current_expertise = []
current_skill = []
current_language = []
current_type = []

#create expertise
Expertise.delete_all
expertises = ["Middle East", "South Asia", "Latin America", "Africa", "Europe", "USA", "East Asia", "South East Asia"]
expertises.each do |name|
  e = Expertise.create(name: name)
  current_expertise << e.id
end

# create skills
Skill.delete_all
skills = ["Social Media", "Advocacy", "Data Mapping", "Web Development", "Research", "Cyber Security"]
skills.each do |name|
  s = Skill.create(name: name)
  current_skill << s.id
end

# create languages
Language.delete_all
languages = ["English", "French", "Spanish", "Italian", "Portuguese", "Arabic", "Urdu", "Hindi", "Chinese"]
languages.each do |name|
  l = Language.create(name: name)
  current_language << l.id
end

# create type
Type.delete_all
types = ["Digital Security", "Physical Security", "Advocacy", "Data Visualization", "Social Media"]
types.each do |name|
  t = Type.create(name: name)
  current_type << t.id
end

# create user
User.delete_all
40.times do
  name = Faker::Name.name
  User.create(fullname: name,
              contact: Faker::Internet.email(name),
              affiliation: Faker::Company.name,
              bio: Faker::Hacker.say_something_smart,
              trainings: Faker::Company.catch_phrase,
              expertise_ids: current_expertise.to_a.shuffle.take(rand(1..(current_expertise.length))),
              skill_ids: current_skill.to_a.shuffle.take(rand(1..(current_skill.length))),
              language_ids: current_language.to_a.shuffle.take(rand(1..(current_language.length))),
              type_ids: current_type.to_a.shuffle.take(rand(1..(current_type.length))),
              )
end

puts "created 40 users"


