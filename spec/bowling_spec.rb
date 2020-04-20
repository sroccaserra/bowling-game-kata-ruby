require './lib/bowling'

RSpec.describe "#score" do
  it "should have a score of zero for a gutter game" do
    game = Game.new
    20.times { game.roll 0 }
    expect(game.score).to eq 0
  end

  it "should have a score of 20 for all ones" do
    game = Game.new
    20.times { game.roll 1 }
    expect(game.score).to eq 20
  end
end
