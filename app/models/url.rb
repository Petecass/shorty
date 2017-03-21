class Url < ApplicationRecord

  validates :full_url, :http_status, presence: true
  validates :short_url, uniqueness: true

  before_create :generate_short_url

  def generate_short_url
    self.short_url = SecureRandom.hex(3)
  end
end
