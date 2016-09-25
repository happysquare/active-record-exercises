require 'csv'
class Importer
  def initialize(csv:, team_id:)
    @csv = csv
    @team_id = team_id
  end

  def parse
    players = []
    CSV.foreach(@csv) do |row|
      name = row[0]
      position = string_to_position row[1]
      height = row[4].to_i || 0
      weight = row[5].to_i || 0
      begin
        date_of_birth = Date.parse row[6]
      rescue
        p "failed for row: #{row}"
        next
      end
      begin
        player = Player.new(
          name: name,
          position: position,
          height: height,
          weight: weight,
          date_of_birth: date_of_birth,
          team_id: @team_id
        )
        player.save
        players << player
      rescue => e
        p "failed for row #{row} error #{e}"
        next
      end
    end
    players
  end

  def string_to_position(str)
    str.downcase!
    positions = str.split('/').map { |s| s.strip }
    Position.find_by_name positions[0].titleize
  end
end
