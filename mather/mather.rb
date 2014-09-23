class Mather
  def method1(arg1=nil)
    return arg1.reverse if arg1.is_a?(String)
    return arg1.to_i if arg1.is_a?(Float)
    0
  end
end

describe Mather do
  before { @mather = Mather.new }
  describe :method1 do
    it "should return 0 when we pass nothin" do
      @mather.method1.should == 0
    end
    
    it "should return a string reverse if we pass a string" do
      @mather.method1('Ironhack').should == "kcahnorI"
    end

    it "should return the integer part of a float number" do
      @mather.method1(1.7).should == 1
    end
  end
end

