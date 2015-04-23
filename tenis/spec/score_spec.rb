require 'rspec'
require_relative '../model/score.rb'

describe 'Score' do

  it 'should return score initialized ' do
    score= Score.new
    result= "point(0-0) games(0-0) set(0-0)"
    score.get_result().should == result
  end
end