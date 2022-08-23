class CircuitSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :circuit_length, :number_of_laps, :fastest_lap_time, :weather, :user_id

  belongs_to :user
end
