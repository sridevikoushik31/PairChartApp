require "spec_helper"

describe PairsWithController do
    fixtures :programmers

    #it " should flash show notice when save successful" do
    # Programmer.any_instance.stubs(:valid?).returns(true)
    #  post 'create'
    # assigns[:programmer].should_not be_new_record
    #  flash[:notice].should_not be_nil
    #  response.should render_template('programmer/welcome')
    #end
    # it " should flash error when save unsuccessful" do
    # Programmer.any_instance.stubs(:valid?).returns(false)
    #  post 'create'
    #  assigns[:programmer].should be_new_record
    #  flash[:error].should_not be_nil
    #   response.should render_template('programmer/welcome')
    # end

    it "should pass params to the pairswith model" do
      post 'create', :pairswith => { :}
      assigns[:programmer].name.should == 'abcd'
    end

  end
