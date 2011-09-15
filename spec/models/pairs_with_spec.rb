require "rspec"
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')


describe PairsWith do
  before  :each do
    @pairswith=PairsWith.new
    @pairswith.programmer_id=3
    @pairswith.pair_id=2
    @pairswith.number_of_times_paired=4
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
      @pair_matrix.length.should == PairsWith.get_number_of_pairs
    end
  end

  describe "should check for valid pairs" do
   it "should not save if pair combination is not unique"  do
     invalid_pair=PairsWith.new
     invalid_pair.programmer_id=1
     invalid_pair.pair_id=1
     invalid_pair.number_of_times_paired=3
    invalid_pair.save.should == false

   end
 end
end