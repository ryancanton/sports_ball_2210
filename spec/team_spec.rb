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


end
