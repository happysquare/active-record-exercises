class Player < ActiveRecord::Base
  belongs_to :team
  belongs_to :position
  has_many :lineups

  def self.forwards
    joins(:position).merge(Position.forwards)
  end

  def self.backs
    joins(:position).merge(Position.backs)
  end
end
