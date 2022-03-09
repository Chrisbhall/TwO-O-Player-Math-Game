
def get_Question()
  questions = [" - ", " * ", " + ", " / "]
  num1 = rand(1..10)
  num2 = rand(1..10)
  symbol = rand(0..3)
  quest = ""
  quest += num1.to_s + questions[symbol] + num2.to_s
  if symbol == 0
    @answer = num1 - num2
  elsif symbol == 1
    @answer = num1 * num2
  elsif symbol == 2
    @answer = num1 + num2
  else
    @answer = num1 / num2
  end
  return quest
end