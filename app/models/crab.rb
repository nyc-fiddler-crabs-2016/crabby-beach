class Crab < ActiveRecord::Base
  belongs_to :beach

  validates :name, :disposition, presence: true
  validates :claw_size, numericality: true
end
