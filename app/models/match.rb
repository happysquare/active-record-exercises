class Match < ActiveRecord::Base
  has_one :home_lineup, class_name: 'Lineup', foreign_key: 'home_match_id'
  has_one :away_lineup, class_name: 'Lineup', foreign_key: 'away_match_id'
  has_one :home_team, through: :home_lineup, source: :team
end
