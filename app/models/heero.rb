class Heero < ApplicationRecord
  has_many :powers, through: :HeroPower
end
