# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require './Players'
require './Questions'

p1 = Player.new("Player1")
p2 = Player.new("Player2")
 while p1.score != 0 && p2.score !=0
  puts "Player 1: What is " + get_Question() +" equal?"
  ans = gets.chomp
  if ans.to_i == @answer
    puts "Correct"
  else
    puts "Incorrect"
    p1.score -= 1
  end
  break if p1.score == 0
  puts "P1:" + p1.score.to_s + " vs P2: " + p2.score.to_s
  puts "------------ NEW TURN ------------"
  puts "Player 2: What is " + get_Question() +" equal?"
  ans = gets.chomp
  if ans.to_i == @answer
    puts "Correct"
  else
    puts "Incorrect"
    p2.score -= 1
  end
  break if p2.score == 0
  puts "P1:" + p1.score.to_s + " vs P2: " + p2.score.to_s
  puts "------------ NEW TURN ------------"
 end
 
 if p1.score > p2.score
  puts "Player 1 wins with a score " + p1.score.to_s
 else
  puts "Player 2 wins with a score " + p2.score.to_s
 end
 puts "Good Bye!"