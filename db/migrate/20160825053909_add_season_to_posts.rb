class AddSeasonToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :season, foreign_key: true
  end
end
