class Player

  def initialize(name)
    @name = name
    @score = 3
  end
  attr_writer :score
  attr_reader :score
end