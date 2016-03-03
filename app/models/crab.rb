class Crab < ActiveRecord::Base
  validates :name, :disposition, presence: true
  validates :claw_size, numericality: true
end
