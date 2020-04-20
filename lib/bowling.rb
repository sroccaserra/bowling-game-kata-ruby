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
    frame_index = 0
    10.times do
      first_roll = @rolls[frame_index]
      second_roll = @rolls[frame_index + 1]

      if 10 == first_roll + second_roll
        sum += 10
        sum += @rolls[frame_index + 2]
      else
        sum += first_roll + second_roll
      end

      frame_index += 2
    end

    sum
  end
end
