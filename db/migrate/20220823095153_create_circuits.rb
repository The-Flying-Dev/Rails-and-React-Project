class CreateCircuits < ActiveRecord::Migration[6.1]
  def change
    create_table :circuits do |t|
      t.string :name, null: false
      t.text :location, null: false
      t.float :circuit_length, null: false
      t.integer :number_of_laps, null: false
      t.float :fastest_lap_time, null: false
      t.string :weather, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
