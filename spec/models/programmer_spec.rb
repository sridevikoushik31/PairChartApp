require "rspec"
require "spec_helper"
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')


describe Programmer do
    before :each do
      @programmer=Programmer.new
      @programmer.name="sridevi"
    end
    describe "#new" do
    it "should return a new programmer object" do
    @programmer.should be_instance_of(Programmer)
   end
  # it "should take one argument"
   #lambda{Programmer.new "Sridevi"}.should_not raise_exception ArgumentError
   #programmer= Programmer.new
   end
  describe "#name" do
     it "returns correct name" do
       @programmer.name.should == "sridevi"
     end
  end

  describe "test for validity" do
     it "should be invalid if name is not given" do
       person_unknown=Programmer.new
       person_unknown.should_not be_valid
     end
  end

   describe "save only if valid" do
     it "should be not save invalid object" do
       person_unknown=Programmer.new
       person_unknown.save.should == false
     end
     describe "should return all the programmers" do
       it "should " do
         @programmers_list=Programmer.get_all_programmers
         @programmers_list.length.should_not be_nil
       end
     end
  #describe "" do
  #  it ""
  #  should have_many(:pairswith)
  #end
  #   describe Programmer do
  #     it "should have many pairings"
  #      Programmer.should have_many(:pairs_withs)
  #   end
  #  #it { should belong_to(:user) }
    #it { should have_many(:comments) }
    #it { should have_and_belong_to_many(:tags) }



  end
  end