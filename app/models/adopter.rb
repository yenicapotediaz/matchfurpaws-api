class Adopter < ActiveRecord::Base
  has_and_belongs_to_many :pets
end
