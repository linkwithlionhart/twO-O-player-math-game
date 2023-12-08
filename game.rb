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
      print "#{@current_player.name}: "
      print "#{question.ask}"
      user_answer = gets.chomp.to_i
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
    winner = @player_1.lives > @player_2.lives ? @player_1 : @player_2
    puts "#{winner.name} wins with a score of #{winner.lives}/#{winner.total_lives}"
    puts "Good bye!"
  end

  def show_lives
    puts "P1 #{@player_1.lives}/#{@player_1.total_lives} vs P2 #{@player_2.lives}/#{@player_2.total_lives}"
  end

  def switch_player
    @current_player = (@current_player == @player_1) ? @player_2 : @player_1
  end

end