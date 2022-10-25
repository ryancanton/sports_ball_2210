require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
  it 'correctly instantiates' do
    team = Team.new("Angry Unicorns", "Atlantis")

    expect(team).to be_an_instance_of(Team)
    expect(team.name).to eq("Angry Unicorns")
    expect(team.city).to eq("Atlantis")
    expect(team.roster).to eq([])
  end

  it 'can add players to roster' do
    team = Team.new("Angry Unicorns", "Atlantis")
    player = Player.new("Tobias Kingler", 1, 36)
    team.add_player(player)

    expect(team.roster).to eq([player])
  end

  it 'correctly returns the player count' do
    team = Team.new("Angry Unicorns", "Atlantis")
    player = Player.new("Tobias Kingler", 1, 36)

    expect(team.player_count).to eq(0)
    team.add_player(player)
    expect(team.player_count).to eq(1)
  end

end
