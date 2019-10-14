class AddTeamIdToMatchesMetricsPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :matches_metrics_players, :team_id, :integer
  end
end
