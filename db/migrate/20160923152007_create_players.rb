class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :team_id
      t.float :weight
      t.date :date_of_birth
      t.integer :position_id

      t.timestamps null: false
    end
  end
end
