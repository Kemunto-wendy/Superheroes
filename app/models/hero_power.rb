class HeroPower < ApplicationRecord
  validates :strength, inclusion: {in:["Weak", "Average", "Strong"]}
  belongs_to :Heero
  belongs_to :Power
end
