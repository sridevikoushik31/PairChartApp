class ProgrammerController < ApplicationController

  def index
    @programmers = Programmer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @programmers }
    end
  end

 def add
   @programmer=Programmer.new
   
 end
  def list
    @programmer=Programmer.new()
    puts params[:new_programmer]
    if(!@programmer.save)
      flash[:error]="specify a name"
    end
     flash[:error]="specify a name"
   render 'programmer/welcome'
  end


    def get
       @programmer = Programmer.get_all_programmers
    end


  def show

    @pairchart=PairsWith.get_pair_matrix
    @programmers=Programmer.get_all_programmers
    @number_of_pairs=PairsWith.get_number_of_pairs
      
      
      
  end

  # GET /programmer/new
  # GET /programmer/new.json
  def new
    @programmer = Programmer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @programmer }
    end
  end

  # GET /programmer/1/edit
  def edit
    @programmer = Programmer.find(params[:id])
  end

  # POST /programmer
  # POST /programmer.json
  def create
    @programmer = Programmer.new()
    puts params[:programmer_name_id]
     if @programmer.save
       flash[:notice]="saved successfully"
      else
     flash[:error] ="could not save"
    end
       render 'programmer/welcome'
    end

  def update
    @programmer = Programmer.find(params[:id])

    respond_to do |format|
      if @programmer.update_attributes(params[:programmer])
        format.html { redirect_to @programmer, :notice => 'Programmer was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @programmer.errors, :status => :unprocessable_entity }
      end
    end
  end
 end

