class Team < ActiveRecord::Base
  has_many :players
  has_many :lineups

  def forwards
    players.forwards
  end

  def backs
    players.backs
  end

  def self.with_forwards
    joins(players: :position).order(:name).distinct
  end
end
