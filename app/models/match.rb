class Match < ApplicationRecord
  has_many :matches_metrics_player
  has_many :metrics, through: :matches_metrics_player
  has_many :players, through: :matches_metrics_player


  # has_and_belongs_to_many :metrics
  # has_and_belongs_to_many :players
end
