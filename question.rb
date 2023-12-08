class Question
  def initialize
    @num_1 = rand(1...20)
    @num_2 = rand(1...20)
    @answer = @num_1 + @num_2
  end

  def ask
    puts "What does #{num_1} plus #{num_2} equal?"
  end

  def correct?(player_answer)
    player_answer == @answer
  end

end