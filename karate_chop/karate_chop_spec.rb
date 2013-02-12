require 'rspec'
require 'karate_chop'

describe KarateChop do
  before :each do
    @karate_chop = KarateChop.new
  end

  it "test karate chop" do
    @karate_chop.chop(3, []).should == -1
    @karate_chop.chop(3, [1]).should == -1
    @karate_chop.chop(1, [1]).should == 0
    @karate_chop.chop(1, [1, 3, 5]).should == 0
    @karate_chop.chop(3, [1, 3, 5]).should == 1
    @karate_chop.chop(5, [1, 3, 5]).should == 2
    @karate_chop.chop(0, [1, 3, 5]).should == -1
    @karate_chop.chop(2, [1, 3, 5]).should == -1
    @karate_chop.chop(4, [1, 3, 5]).should == -1
    @karate_chop.chop(6, [1, 3, 5]).should == -1
    @karate_chop.chop(1, [1, 3, 5, 7]).should == 0
    @karate_chop.chop(3, [1, 3, 5, 7]).should == 1
    @karate_chop.chop(5, [1, 3, 5, 7]).should == 2
    @karate_chop.chop(7, [1, 3, 5, 7]).should == 3
    @karate_chop.chop(0, [1, 3, 5, 7]).should == -1
    @karate_chop.chop(2, [1, 3, 5, 7]).should == -1
    @karate_chop.chop(4, [1, 3, 5, 7]).should == -1
    @karate_chop.chop(6, [1, 3, 5, 7]).should == -1
    @karate_chop.chop(8, [1, 3, 5, 7]).should == -1
  end
end
