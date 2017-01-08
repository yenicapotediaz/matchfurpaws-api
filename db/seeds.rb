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


cat_dog = ["cat", "dog"]
gender = ["female", "male"]
size = ["small", "medium", "large"]
kids = ["infants", "toddlers", "school-aged", "teens", "none"]
temperament = ["shy", "social", "surprise box"]
exercise_needs = ["low", "medium", "high"]
home_type = ["apartment/condo", "house"]

50.times do
  Pet.create!({name: Faker::Cat.name,
              photos:  Faker::LoremPixel.image,
              est_age: Faker::Number.between(1, 10),
              species: cat_dog.sample(1).join(","),
              gender: gender.sample(1).join(","),
              breed: Faker::Cat.breed,
              size: size.sample(1).join(","),
              cats: Faker::Boolean.boolean,
              dogs: Faker::Boolean.boolean,
              kids: kids.sample(1).join(","),
              temperament: temperament.sample(1).join(","),
              exercise_needs: exercise_needs.sample(1).join(","),
              home_type: home_type.sample(1).join(","),
              bio: Faker::Hipster.paragraph,
              intake_date: Faker::Date.between(30.days.ago, Date.today),
              adoption_fee: Faker::Commerce.price,
              shelter_id: Faker::Number.between(1, 10)})
end

10.times do
  Adopter.create!({name: Faker::Name.name,
                  kids: kids.sample(1).join(","),
                  cats: Faker::Boolean.boolean,
                  dogs: Faker::Boolean.boolean,
                  home_type: home_type.sample(1).join(","),
                  searching_for: cat_dog.sample(1).join(","),
                  ideal_temperament: temperament.sample(1).join(","),
                  ideal_active_level: exercise_needs.sample(1).join(","),
                  bio: Faker::Hipster.paragraph})
end
