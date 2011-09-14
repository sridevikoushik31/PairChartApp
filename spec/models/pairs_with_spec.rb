require "rspec"
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')


describe PairsWith do
  before  :each do
    @pairswith=PairsWith.new
    @pairswith.programmer_id=2
    @pairswith.pair_id=2
  end
   describe "#new" do
     it "should return a new pair with object" do
           @pairswith.should be_instance_of(PairsWith)
     end
   end

  describe "#save" do
    it "should not save if invalid" do
         invalid_pair_obj=PairsWith.new
      invalid_pair_obj.save.should == false
    end
  end

   describe "test for validity" do
     it "should be invalid if either of the ids is not specified" do
       invalid_pair_obj=PairsWith.new
       invalid_pair_obj.should_not be_valid
     end
   end

  describe "test to save if valid" do
    it "should save if valid attributes are present" do
      @pairswith.save.should == true
    end
  end
  describe "should return pair matrix" do
    it "should return the populated pair matrix" do
      @pair_matrix=PairsWith.get_pair_matrix
      @pair_matrix.should be_an_instance_of(Array)
    end
  end



end