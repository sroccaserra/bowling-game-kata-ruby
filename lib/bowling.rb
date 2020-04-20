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
    sum = 0
    10.times do
      |frame_index|
      i = 2*frame_index
      first_roll = @rolls[i]
      second_roll = @rolls[i + 1]

      if 10 == first_roll + second_roll
        sum += 10
        sum += @rolls[i + 2]
      else
        sum += first_roll + second_roll
      end
    end

    sum
  end
end
