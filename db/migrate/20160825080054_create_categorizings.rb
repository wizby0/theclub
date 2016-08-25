class CreateCategorizings < ActiveRecord::Migration[5.0]
  def change
    create_table :categorizings do |t|
      t.references :category, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
