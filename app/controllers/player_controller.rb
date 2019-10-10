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



  private

  def player_params
    params.require(:player).permit(:name, :team_id)
  end

end
