require './lib/bowling'

RSpec.describe "#score" do
  def roll_many(nb_rolls, knocked_pins)
    nb_rolls.times { @game.roll knocked_pins }
  end

  def roll_spare
    @game.roll 5
    @game.roll 5
  end

  def roll_strike
    @game.roll 10
  end

  before(:each) do
    @game = Game.new
  end

  it "should have a score of zero for a gutter game" do
    roll_many 20, 0

    expect(@game.score).to eq 0
  end

  it "should have a score of 20 for all ones" do
    roll_many 20, 1

    expect(@game.score).to eq 20
  end

  it "should score 16 points for a spare and a 3" do
    roll_spare
    @game.roll 3
    roll_many 17, 0

    expect(@game.score).to eq 16
  end

  it "should score 24 points for a strike, a 3 and a 4" do
    roll_strike
    @game.roll 3
    @game.roll 4
    roll_many 16, 0

    expect(@game.score).to eq 24
  end

  it "should score 300 points for a perfect game" do
    roll_many 12, 10

    expect(@game.score).to eq 300
  end
end
