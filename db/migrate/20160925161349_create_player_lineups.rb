class CreatePlayerLineups < ActiveRecord::Migration
  def change
    create_table :player_lineups do |t|
      t.integer :player_id
      t.integer :lineup_id
      t.integer :position_id

      t.timestamps null: false
    end
  end
end
