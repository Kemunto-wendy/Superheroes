class Power < ApplicationRecord
  validates :description, length: {minimum:20}
  has_many :heeros, through: :HeroPower
end
