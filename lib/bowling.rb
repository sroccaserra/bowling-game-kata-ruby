class Game
  def initialize
    @sum = 0
  end

  def roll(knocked_pins)
    @sum += knocked_pins
  end

  def score
    @sum
  end
end
