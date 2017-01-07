# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

10.times do
  Shelter.create!({name: Faker::Team.name,
                  photo: Faker::LoremPixel.image,
                  address: Faker::Address.street_address,
                  email: Faker::Internet.email,
                  website: Faker::Internet.url,
                  bio: Faker::Hipster.paragraph})
end

rand_num = Random.new
shelter_num = rand_num.rand(1..10)
cat_dog = ["cat", "dog"]
gender = ["female", "male"]
size = ["small", "medium", "large"]
kids = ["infants", "toddlers", "school-aged", "teens", "none"]
temperament = ["shy", "social", "surprise box"]
exercie_needs = ["low", "medium", "high"]
home_type = ["apartment", "condo", "house"]

50.times do
  Pet.create!({name: Faker::Cat.name,
              photos:  [Faker::LoremPixel.image],
              est_age: shelter_num,
              species: cat_dog.sample(1).join(","),
              gender: gender.sample(1).join(","),
              breed: Faker::Cat.breed,
              size: size.sample(1).join(","),
              hypoallergenic: [Faker::Boolean.boolean].join(","),
              cats: Faker::Boolean.boolean,
              dogs: Faker::Boolean.boolean,
              needs_buddy: Faker::Boolean.boolean,
              kids: [kids.sample(2)],
              temperament: temperament.sample(1).join(","),
              exercie_needs: exercie_needs.sample(1).join(","),
              home_type: [home_type.sample(2)],
              hours_home_alone: shelter_num,
              bio: Faker::Hipster.paragraph,
              intake_date: Faker::Date.between(30.days.ago, Date.today),
              ready_for_adoption: Faker::Boolean.boolean,
              adoption_fee: Faker::Commerce.price,
              special_needs: [Faker::Boolean.boolean],
              shelter_id: shelter_num})
end

10.times do
  Adopter.create!({name: Faker::Name.name,
                  kids: [kids.sample],
                  cats: Faker::Boolean.boolean,
                  dogs: Faker::Boolean.boolean,
                  home_type: home_type.sample(1).join(","),
                  searching_for: cat_dog.sample(1).join(","),
                  ideal_temperament: [temperament.sample(2)],
                  ideal_active_level: [exercie_needs.sample(2)],
                  hours_away_from_home: shelter_num,
                  bio: Faker::Hipster.paragraph})
end
