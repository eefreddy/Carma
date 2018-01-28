class Trip < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  default_scope -> { order(created_at: :desc) }

  geocoded_by :start_location, :latitude  => :start_latitude, :longitude => :start_longitude
  after_validation :geocode, :if => :start_location_changed?

  geocoded_by :destination, :latitude  => :end_latitude, :longitude => :end_longitude
  after_validation :geocode, :if => :destination_changed?
end
