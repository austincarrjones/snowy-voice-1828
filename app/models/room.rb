class Room < ApplicationRecord
  belongs_to :hotel
  has_many :rooms_guests
  has_many :guests, through: :rooms_guests

  def guests_count
    guests.count
  end
end