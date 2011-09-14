class PairsWith < ActiveRecord::Base

  belongs_to :programmer, :foreign_key => "programmer_id", :class_name => "Programmer"
  belongs_to :pair, :foreign_key => "pair_id", :class_name => "Programmer"
  validates_presence_of :pair_id, :programmer_id

   def number_of_times_paired
      attributes['number_of_times_paired']
    end
  def pair_id
       attributes['pair_id']
     end
  def programmer_id
       attributes['programmer_id']
  end

def self.get_all_pairs
     PairsWith.all.collect{|pairs|pairs.pair_id}
end
  def self.get_all_programmers
       PairsWith.all.collect{|pairs|pairs.programmer_id}
     end

 def self.get_number_of_pairs
   PairsWith.all.collect{|pairs|pairs.id}.length
 end

   def self.get_times_paired
       PairsWith.all.collect{|pairs|pairs.id}.length
 end
  def self.get_pair_matrix

    @programmer = Programmer.get_all_programmers
    @pairchart_length = PairsWith.get_number_of_pairs
    @pair_list=PairsWith.get_all_pairs
    @programmer_list=PairsWith.get_all_programmers
    @number_of_times_paired=PairsWith.get_times_paired

     count_one = @pairchart_length
     count_two = @pairchart_length

     @pairchart=[]

    puts "xxxxxxxxxxxxxxxxxxxxxx"
     0.upto(count_one-1)  do |i|
            @pairchart << Array.new(@pairchart_length)
            0.upto(count_two-1) do |j|
            @pairchart[i][j]=0
            end
     end
            0.upto(@number_of_times_paired)  do |i|
               #if (@pair_list[i]!=nil && @programmer_list[i]!=nil)
                @pairchart[@pair_list[i]][@programmer_list[i]] = 5
                #end
            end

     0.upto(count_one-1)  do |i|
            0.upto(count_two-1) do |j|
             puts @pairchart[i][j]
            end
     end


    return @pairchart



end
end