require './lib/bowling'

RSpec.describe "#score" do
  def roll_many(nb_rolls, knocked_pins)
    nb_rolls.times { @game.roll knocked_pins }
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
end
