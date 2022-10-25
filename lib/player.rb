class Player

  def initialize(name, monthly_cost, contract_length)
    @first_name = name.split(" ")[0]
    @last_name = name.split(" ")[1]
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nil
  end



end
