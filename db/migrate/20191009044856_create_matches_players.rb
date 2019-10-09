class CreateMatchesPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :matches_players do |t|
      t.references :player, foreign_key: true
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
