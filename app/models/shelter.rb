class Shelter < ActiveRecord::Base
  has_many :pets
  has_one :user, as: :userable
end
