class Player 
  attr_reader :player_name, :lives

  def initialize(player_name)
    @player_name = player_name
    @lives = 3
  end

  def lost_life
    @lives -= 1
  end

  def has_lives?
    @lives > 0
  end

end 
