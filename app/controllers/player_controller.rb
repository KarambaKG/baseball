class PlayerController < ApplicationController

  def add_metric_best_runner
    p1 = Player.first
    p1.matches_metrics_player.create(match_id: 1, metric_id: 1, team_id: 1)
  end

  def add_metric_best_goalkeeper
    p1 = Player.first
    p1.matches_metrics_player.create(match_id: 2, metric_id: 2, team_id: 1)
  end

  def have_metric_best_runner_for_last_5_matches
    p1 = Player.first
    p1.matches_metrics_player.where(metric_id: 1).order(created_at: :desc).limit(5).count
  end

  def top_5_players_by_best_runner_in_all_teams
    player_ids = MatchesMetricsPlayer.where(metric_id: 1).pluck(:player_id)
    counts = player_ids.group_by{|i| i}.map{|k,v| [k, v.count] }

    creating_hash  = Hash[*counts.flatten]
    creating_hash.sort_by {|k,v| v}.reverse
  end

  def top_5_players_by_best_runner_in_one_team
    player_ids = MatchesMetricsPlayer.where(metric_id: 1, team_id: 2).pluck(:player_id)
    counts = player_ids.group_by{|i| i}.map{|k,v| [k, v.count] }

    creating_hash  = Hash[*counts.flatten]
    creating_hash.sort_by {|k,v| v}.reverse
  end

end
