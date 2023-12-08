class Game
  
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player_1
  end 

  def play
    while @player_1.has_lives? && player_2.has_lives?
      new_turn
      question = Question.new
      puts "#{@current_player.name}"
  end

  def new_turn
    puts "----- NEW TURN -----"
  end

  def game_over
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end