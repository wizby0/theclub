class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :text
      t.string :category
      t.integer :leader_id
      t.string :start_time
      t.string :integer
      t.string :end_time
      t.string :integer

      t.timestamps
    end
  end
end
