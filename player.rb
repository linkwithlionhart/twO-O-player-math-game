class Player 
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
    @total_lives = 3
  end

  def lost_life
    @lives -= 1
  end

  def has_lives?
    @lives > 0
  end

end 
