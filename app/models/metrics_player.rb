class MetricsPlayer < ApplicationRecord
  belongs_to :player
  belongs_to :metric
end
