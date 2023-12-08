class Game
  
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player_1
  end 

  def play
    while @player_1.has_lives? && @player_2.has_lives?
      new_turn
      question = Question.new
      puts "#{@current_player.name}: #{question.ask}"
      user_answer = get.chomp.to_i
      if question.correct?(user_answer)
        puts "YES! You are correct."
      else
        puts "Seriously? No!"
        @current_player.lost_life
      end
      show_lives
      switch_player
    end
    game_over
  end

  def new_turn
    puts "----- NEW TURN -----"
  end

  def game_over
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def show_lives
    puts "P1 #{player_1.lives}/#{player_1.total_lives} vs P2 #{player_2.lives}/#{player_2.total_lives}"
  end

  def switch_player
    @current_player = (@current_player == @player_1) ? @player_2 : @player_1
  end

end