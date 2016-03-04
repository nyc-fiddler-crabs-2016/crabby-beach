class Crab < ActiveRecord::Base
  belongs_to :beach

  validates :name, :disposition, presence: true, uniqueness: true
  validates :claw_size, numericality: true

  def lives_at?(beach_to_match)
    self.beach == beach_to_match
  end

  def password
    @password ||= BCrypt::Password.new(self.password_digest)
  end

  def password=(plaintext_password)
    @password = BCrypt::Password.create(plaintext_password)
    self.password_digest = @password
  end
end
