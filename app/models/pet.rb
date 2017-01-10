class Pet < ActiveRecord::Base
  belongs_to :shelter
  has_and_belongs_to_many :adopters
  scope :species, -> (species) { where species: species }
  scope :cats, -> (cats) { where cats: cats }
  scope :dogs, -> (dogs) { where dogs: dogs }
  scope :kids, -> (kids) { where kids: kids }
  scope :home_type, -> (home_type) { where home_type: home_type }
end
