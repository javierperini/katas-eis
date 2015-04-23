require 'rspec'
require_relative '../model/score.rb'
require_relative '../model/scorer.rb'

describe 'Score' do
  before do
    @score= Score.new("Player 1", "Player 2")

  end
  it 'should return score initialized ' do
    result= "point(0-0) games(0-0) set(0-0)"
    @score.get_result.should == result
  end

  it 'should return point player n°1 ' do
  ##allow(Scorer).to receive(:get_points).and_return("15") ARREGLAR MOCK
    @score.point_player_1
    result= "point(15-0) games(0-0) set(0-0)"
    @score.get_result.should == result
  end

  it 'should return point player n°2 ' do
    ##allow(Scorer).to receive(:get_points).and_return("15") ARREGLAR MOCK
    @score.point_player_2
    result= "point(0-15) games(0-0) set(0-0)"
    @score.get_result.should == result
  end

  it 'should return 2 point player n°1 ' do
    @score.point_player_1
    @score.point_player_1
    result= "point(30-0) games(0-0) set(0-0)"
    @score.get_result.should == result
  end

end