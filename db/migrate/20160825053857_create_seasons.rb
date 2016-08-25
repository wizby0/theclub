class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.references :group, foreign_key: true
      t.text :name
      t.integer :leader_id
      t.integer :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
