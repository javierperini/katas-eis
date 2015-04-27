require 'rspec'
require_relative '../model/score.rb'
require_relative '../model/scorer.rb'

describe 'Score' do
  before do
    @score= Score.new('Player 1', 'Player 2')
  end

  it 'should return score initialized ' do
    result= 'point(0-0) games(0-0) set(0-0)'
    expect(@score.get_result).to eq result
  end

  it 'should return point player n°1 ' do
    @score.point_player_1
    result= 'point(15-0) games(0-0) set(0-0)'
    expect(@score.get_result).to eq result
  end

  it 'should return point player n°2 ' do
    @score.point_player_2
    result= 'point(0-15) games(0-0) set(0-0)'
    expect(@score.get_result).to eq result
  end

  it 'should return 2 points player n°1 ' do
    @score.point_player_1
    @score.point_player_1
    result= 'point(30-0) games(0-0) set(0-0)'
    expect(@score.get_result).to eq result
  end

  it 'should return 3 points player n°1 ' do
    for i in 0..2
      @score.point_player_1
    end
    result= 'point(40-0) games(0-0) set(0-0)'
    expect(@score.get_result).to eq result
  end

  it 'should return 1 game player n°1 ' do
    for i in 0..3
        @score.point_player_1
    end
    result= 'point(0-0) games(1-0) set(0-0)'
    expect(@score.get_result).to eq result
  end

  it 'should return 1 game player n°1 and reset points player n° 2' do
    @score.point_player_2
    for i in 0..3
      @score.point_player_1
    end
    result= 'point(0-0) games(1-0) set(0-0)'
    expect(@score.get_result).to eq result
  end

  it 'should return  advantage player n°1' do
    for i in 0..2
      @score.point_player_2
      @score.point_player_1
    end
    @score.point_player_1
    result= 'point(AD-40) games(0-0) set(0-0)'
    expect(@score.get_result).to eq result
  end

  it 'should return  point player n°2  if advantage player n°1' do
    for i in 0..3
      @score.point_player_1
      @score.point_player_2
    end
    result= 'point(40-40) games(0-0) set(0-0)'
    expect(@score.get_result).to eq result
  end

  it 'should return  1 set player n°1' do
    for i in 0..23
      @score.point_player_1
    end
    result= 'point(0-0) games(0-0) set(1-0)'
    expect(@score.get_result).to eq result
  end

  it 'should return  winner is player n°1' do
    for i in 0..46
      @score.point_player_1
    end
    result= 'Winner is Player 1'
    expect(@score.get_result).to eq result
  end

end