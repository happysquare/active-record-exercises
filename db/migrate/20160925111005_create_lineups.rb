class CreateLineups < ActiveRecord::Migration
  def change
    create_table :lineups do |t|
      t.integer :home_match_id
      t.integer :away_match_id
      t.integer :team_id
      t.integer :lhp
      t.integer:thp
      t.integer :hook

      t.timestamps null: false
    end
  end
end
