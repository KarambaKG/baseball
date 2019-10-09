class CreateMetricsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :metrics_players do |t|
      t.references :player, foreign_key: true
      t.references :metric, foreign_key: true

      t.timestamps
    end
  end
end
