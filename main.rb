=begin
  Create a 2-Player math game where players take turns to answer simple math addition problems. 
  A new math question is generated for each turn by picking two numbers between 1 and 20. 
  The player whose turn it is is prompted the question and must answer correctly or lose a life.
=end

puts "Welcome, Player 1! Let's play a game."
puts "Say hi to Player 2."
puts "What's your name?"
player_name = gets.chomp
player_1 = Player.new(player_name)
player_2 = player_2
player_2 = Player.new(player_2)

game1 = Game.new(player_1, player_2)
game.start