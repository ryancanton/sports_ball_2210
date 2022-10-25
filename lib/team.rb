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

  def long_term_players
    long_term_players = roster.map do |player|
      if (player.contract_length > 24)
        player
      end
    end
  end

  def short_term_players
    short_term_players = roster.map do |player|
      if (player.contract_length <= 24)
        player
      end
    end
  end

  def total_value
    value = 0
    roster.each do |player|
      value += player.total_cost
    end
  end

  def details
    {"total_value" => self.total_value, "player_count" => self.player_count}
  end
end
