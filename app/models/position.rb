class Position < ActiveRecord::Base
  has_many :players

  def self.forwards
    where(name: [
      'Prop',
      "Prop (Loose Head)",
      "Hooker",
      "Prop (Tight Head)",
      "Lock",
      "Flanker",
      "Number 8"
    ])
  end

  def self.backs
    where(name: [
      "Scrumhalf",
      "Flyhalf",
      "Left Wing",
      "Inside Centre",
      "Outside Centre",
      "Right Wing",
      "Full Back",
      "Wing",
      "Outside Back",
      "Utility Back",
      "Outside Back"
    ])
  end
end
