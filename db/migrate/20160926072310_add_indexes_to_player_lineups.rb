class AddIndexesToPlayerLineups < ActiveRecord::Migration
  def change
    add_index :player_lineups, :lineup_id
    add_index :player_lineups, :player_id
  end
end
