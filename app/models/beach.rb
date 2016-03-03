class Beach < ActiveRecord::Base
  has_many :crabs

  validates :location, presence: true
end
