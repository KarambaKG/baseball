class Player < ApplicationRecord
  has_many :matches_metrics_player
  has_many :matches, through: :matches_metrics_player
  has_many :metrics, through: :matches_metrics_player

  # has_and_belongs_to_many :matches
  # has_and_belongs_to_many :metrics
  belongs_to :team
end
