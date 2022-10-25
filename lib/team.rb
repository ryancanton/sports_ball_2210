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
    long_term_players.delete(nil)
    long_term_players
  end

  def short_term_players
    short_term_players = roster.map do |player|
      if (player.contract_length <= 24)
        player
      end
    end
    short_term_players.delete(nil)
    short_term_players
  end

  def total_value
    value = 0
    roster.each do |player|
      value += player.total_cost
    end
    value
  end

  def details
    {"total_value" => self.total_value, "player_count" => self.player_count}
  end

  def average_cost_of_player
    cost = 0
    roster.each do |player|
      cost += player.total_cost
    end
    cost = cost.to_f / player_count
  end

  def players_by_last_name
    players = roster.map do |player|
      player.last_name
    end
  end


end
