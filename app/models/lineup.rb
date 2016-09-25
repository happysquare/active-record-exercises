class Lineup < ActiveRecord::Base
  belongs_to :home_match,
    class_name: 'Match', foreign_key: 'home_match_id'
  belongs_to :away_match,
    class_name: 'Match', foreign_key: 'away_match_id'
  belongs_to :team
end
