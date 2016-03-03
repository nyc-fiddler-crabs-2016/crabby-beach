class Crab < ActiveRecord::Base
  belongs_to :beach

  validates :name, :disposition, presence: true, uniqueness: true
  validates :claw_size, numericality: true

  def lives_at?(beach_to_match)
    self.beach == beach_to_match
  end
end
