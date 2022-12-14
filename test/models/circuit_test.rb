# == Schema Information
#
# Table name: circuits
#
#  id               :integer          not null, primary key
#  circuit_length   :float            not null
#  fastest_lap_time :float            not null
#  location         :text             not null
#  name             :string           not null
#  number_of_laps   :integer          not null
#  weather          :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer          not null
#
# Indexes
#
#  index_circuits_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require "test_helper"

class CircuitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
