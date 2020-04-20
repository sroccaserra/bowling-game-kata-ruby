class Game
  def initialize
    @rolls = Array.new(21, 0)
    @current_roll = 0
  end

  def roll(knocked_pins)
    @rolls[@current_roll] = knocked_pins
    @current_roll += 1
  end

  def score
    @rolls.sum
  end
end
