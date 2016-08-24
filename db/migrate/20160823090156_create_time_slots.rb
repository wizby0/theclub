class CreateTimeSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :time_slots do |t|
      t.references :user, foreign_key: true
      t.integer :usage_id
      t.integer :wday
      t.integer :start_hour_and_min
      t.integer :end_hour_and_min

      t.timestamps
    end
  end
end
