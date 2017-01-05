class Pet < ActiveRecord::Base
  belongs_to :shelter
  has_and_belongs_to_many :adopters
end
