class Adopter < ActiveRecord::Base
  has_and_belongs_to_many :pets
  has_one :user, as: :userable
end
