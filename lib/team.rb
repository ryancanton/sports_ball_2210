class Team

  attr_reader :name,
              :roster,
              :city

  def initialize(name, city)
    @name = name
    @roster = []
    @city = city
  end

  def player_count
    @roster.count
  end

  def add_player(player)
    @roster.push(player)
  end

end
