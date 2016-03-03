class Beach < ActiveRecord::Base
  has_many :crabs

  validates :location, presence: true

  def population
    crabs.count
  end
end
