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
      if is_strike?(frame_index)
        sum += 10 + strike_bonus(frame_index)
        frame_index += 1
      elsif is_spare?(frame_index)
        sum += 10 + spare_bonus(frame_index)
        frame_index += 2
      else
        sum += nb_knocked_pins(frame_index)
        frame_index += 2
      end
    end
    sum
  end

  private

  def is_strike?(frame_index)
    10 == @rolls[frame_index]
  end

  def is_spare?(frame_index)
    10 == @rolls[frame_index] + @rolls[frame_index + 1]
  end

  def strike_bonus(frame_index)
    @rolls[frame_index + 1] + @rolls[frame_index + 2]
  end

  def spare_bonus(frame_index)
    @rolls[frame_index + 2]
  end

  def nb_knocked_pins(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1]
  end
end
