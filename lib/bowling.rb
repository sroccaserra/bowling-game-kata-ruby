class Game
  def initialize
    @rolls = []
  end

  def roll(knocked_pins)
    @rolls << knocked_pins
  end

  def score
    @rolls.sum
  end
end
