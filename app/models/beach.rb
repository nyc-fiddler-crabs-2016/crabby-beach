class Beach < ActiveRecord::Base
  has_many :crabs

  validates :location, presence: true, uniqueness: {message: "already exists"}

  def population
    crabs.count
  end

  def empty?
    population < 1
  end
end
