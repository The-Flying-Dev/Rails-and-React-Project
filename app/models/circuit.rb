class Circuit < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :location, presence: true
  validates :circuit_length, presence: true
  validates :number_of_laps, presence: true
  validates :fastest_lap_time, presence: true
  validates :weather, presence: true
end
