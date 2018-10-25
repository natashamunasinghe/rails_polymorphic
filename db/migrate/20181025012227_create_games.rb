class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :location
      t.integer :home_team_id
      t.integer :away_team_id

      t.timestamps
    end

    add_index :games, [:home_team_id, :away_team_id]
  end
end
