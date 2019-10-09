class MatchesMetricsPlayer < ApplicationRecord
  belongs_to :match
  belongs_to :metric
  belongs_to :player
end
