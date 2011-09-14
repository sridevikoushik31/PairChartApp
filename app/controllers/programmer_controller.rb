class ProgrammerController < ApplicationController
  # GET /programmer
  # GET /programmer.json
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
   # @programmer.name= params[:new_programmer]
    puts "sjdfbbkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkssdfb"
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

  def show_programmer_list
    @programmer = Programmer.get_all_programmers

  end
  # GET /programmer/1
  # GET /programmer/1.json
  def show
    @programmer = Programmer.get_all_programmers
    @pairchart_length = PairsWith.get_number_of_pairs
    @pair_list=PairsWith.get_all_pairs
    @programmer_list=PairsWith.get_all_programmers
    @number_of_times_paired=PairsWith.get_times_paired
    #puts @pair_list.first.class
        0.upto(@pairchart_length)  do |i| 
      #       @pairchart=[]
      #        0.upto(@pairchart_length) do |j|
      #        @pairchart << Array.new(@pairchart_length)
      #        @pairchart[i][j]
      #        @pairchart[i][j].to_i=0
      #        end
      #     
            end
      
      
      
      
      
      
      #        0.upto(@pairchart_length)  do |i|
      #           
      #          
      #           if (@pair_list[i].nil? || @programmer_list[i].nil?)
      #           #@pairchart[][0]=1
      ##            
      ##            @pairchart[[@pair_list[i]][@programmer_list[i]] = @number_of_times_paired[i]]
      #            end
      #        end
    ##              
    # puts @pairchart_length
    #
   # @pairswiths= PairsWith.get_all_pairs
    #respond_to do |format|
    #  format.html # show.html.erb
    #  format.json { render :json => @programmer }
    #end
    
    #render 'programmer/show'
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
    puts "hjhjhjhjhjhjhjhjdddddddddddddddddddddddddddddhjhjhjhjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj"
     if @programmer.save
       flash[:notice]="saved successfully"
      else
     flash[:error] ="could not save"
    end
       render 'programmer/welcome'
    end

  # PUT /programmer/1
  # PUT /programmer/1.json
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

  # DELETE /programmer/1
  # DELETE /programmer/1.json
  def destroy
    @programmer = Programmer.find(params[:id])
    @programmer.destroy

    respond_to do |format|
      format.html { redirect_to programmers_url }
      format.json { head :ok }
    end
  end

  end

