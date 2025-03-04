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

  it 'correctly assigns players as short or long term' do
    team = Team.new("Angry Unicorns", "Atlantis")
    player_1 = Player.new("Tobias Kingler", 1, 36)
    player_2 = Player.new("Bobby Yobby", 100, 12)
    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.short_term_players).to eq([player_2])
    expect(team.long_term_players).to eq([player_1])
  end

  it 'correctly counts the teams total value' do
    team = Team.new("Angry Unicorns", "Atlantis")
    player_1 = Player.new("Tobias Kingler", 1, 36)
    player_2 = Player.new("Bobby Yobby", 100, 12)
    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.total_value).to eq(1236)
  end

  it 'displays details correctly' do
    team = Team.new("Angry Unicorns", "Atlantis")
    player_1 = Player.new("Tobias Kingler", 1, 36)
    player_2 = Player.new("Bobby Yobby", 100, 12)
    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.details).to eq({"total_value" => 1236, "player_count" => 2})
  end

end
