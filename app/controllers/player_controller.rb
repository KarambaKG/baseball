class PlayerController < ApplicationController

  def index
    @players = Player.all
  end

  def add_metric_best_runner
    @player = Player.find(params[:id])
    @player.matches_metrics_player.create(match_id: 1, metric_id: 1)
  end

  def add_metric_best_goalkeeper
    @player = Player.find(params[:id])
    @player.matches_metrics_player.create(match_id: 2, metric_id: 2)
  end

  def have_best_runner_metric_for_last_5_matches
    p1 = Player.first
    p1.matches_metrics_player.where(metric_id: 1).order(created_at: :desc).limit(5).count
  end

  def top_5_players_by_best_runner_in_all_teams
    player_ids = MatchesMetricsPlayer.where(metric_id: 1).pluck(:player_id)
    counts = player_ids.group_by{|i| i}.map{|k,v| [k, v.count] }

    sorted_hash = Hash[*counts.flatten]
  end

  private

  def player_params
    params.require(:player).permit(:name, :team_id)
  end

end





arr = [1, 1, 6]
counts = arr.group_by{|i| i}.map{|k,v| [k, v.count] }
Hash[*counts.flatten]

arr.max_by{|k,v| v}